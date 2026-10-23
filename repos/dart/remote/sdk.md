## `dart:sdk`

```console
$ docker pull dart@sha256:6acc5a8ef67e606891dcbb51d8c02214d53356409fd253abe28d9fefaa7391ce
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown

### `dart:sdk` - linux; amd64

```console
$ docker pull dart@sha256:21134e87d3885c66bd1e6ec863dde4d6ffd4ebfacddb3ddc56fcc1f98d051ec4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.7 MB (316743960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57c2c209c76bc8052c8b52c8fed4a3223406fe2c8d46bb25d0f540e25e152a2a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Fri, 23 Oct 2026 18:30:16 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 18:30:16 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Fri, 23 Oct 2026 18:30:16 GMT
ENV DART_SDK=/usr/lib/dart
# Fri, 23 Oct 2026 18:30:16 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 18:30:16 GMT
WORKDIR /root
# Fri, 23 Oct 2026 18:30:27 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2ffb1d432a4bd56a608651ed8a21b6d5bc469b59ddac40786313328594fd858`  
		Last Modified: Fri, 23 Oct 2026 18:30:58 GMT  
		Size: 42.5 MB (42525930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:543e61d547fc992297b4b7a454ed4350dceea68b2b67c93404d478ff0ee7f9e3`  
		Last Modified: Fri, 23 Oct 2026 18:30:57 GMT  
		Size: 1.9 MB (1867115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dde890a77b196ae5fe6b71c0dd20cc2b8aafb34ee6b3563ba9cfefc9c9dd4e5e`  
		Last Modified: Fri, 23 Oct 2026 18:31:03 GMT  
		Size: 242.5 MB (242507304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:1e6ddc7473ea3233f22511974e1b0529078c5b440d3684af8a7f63fc92340fad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dadb0938cfc28f9d8387d60c6ce925afc10d48e28074f32f66155c9529227379`

```dockerfile
```

-	Layers:
	-	`sha256:f90feba56a2cd55019f401e34839ecb54ff2aa39cae2eaa9cfdb76aff333ba76`  
		Last Modified: Fri, 23 Oct 2026 18:30:57 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:6dd71b903aad0c677e868059b61f69aa834b307c8d1c2b6d4696ea5cc83f8cd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.6 MB (230561865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4276d28f13484b9be228d59173e5368b7b4c1c3389c115cacc41d7650ecde7f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1792531975'
# Fri, 23 Oct 2026 18:30:18 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 18:30:18 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Fri, 23 Oct 2026 18:30:18 GMT
ENV DART_SDK=/usr/lib/dart
# Fri, 23 Oct 2026 18:30:18 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 18:30:18 GMT
WORKDIR /root
# Fri, 23 Oct 2026 18:30:26 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:f8eb073e557b2fb506b6faa9eae3677b1d49ea8721e51992a31cf5c5c4dd75da`  
		Last Modified: Tue, 20 Oct 2026 23:30:46 GMT  
		Size: 26.3 MB (26258396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeab98c5c2d951a07a56e28db700f289ed8c7e6ee84031e08aad6bd958612cf6`  
		Last Modified: Fri, 23 Oct 2026 18:30:50 GMT  
		Size: 37.5 MB (37529524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0b0e6f6b27a0e730b2d54c0cdbb2001e4dd190b48c0ed11e1d9bc83da6d986a`  
		Last Modified: Fri, 23 Oct 2026 18:30:48 GMT  
		Size: 1.3 MB (1271963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ac8b4be2cd78420705fe5258fd0fa879a502440c445e699c4c3a7ef95a3c04f`  
		Last Modified: Fri, 23 Oct 2026 18:30:55 GMT  
		Size: 165.5 MB (165501950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:daee4cb722dc78bb7541e059e3f16b47658e2e59a43ab9cb03dde60b2747f4c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc19483e3d37b3d7d2c06d98ce176ecae558ac10a06d20a8de76979ed4daec76`

```dockerfile
```

-	Layers:
	-	`sha256:8e7bf177920e38d233e6ea02837c203c0c2d6c64c4df4b7e5fdf748f1552c915`  
		Last Modified: Fri, 23 Oct 2026 18:30:48 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:5008e675beba73a6802e318c2ed14cd2f3dbc20fe0212aa0b07d2c2eb1fdd858
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.4 MB (315443202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:537083d4a952dfdaf88f6252f6a669730713417834f24cc0744b51fc14163c9b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Fri, 23 Oct 2026 18:30:18 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 18:30:18 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Fri, 23 Oct 2026 18:30:18 GMT
ENV DART_SDK=/usr/lib/dart
# Fri, 23 Oct 2026 18:30:18 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 18:30:18 GMT
WORKDIR /root
# Fri, 23 Oct 2026 18:30:29 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=eb99aed266efbcb615c6ae21c12f52cfe935b9f208bccc5fea7f64c21e867229;             SDK_ARCH="x64";;         armhf)             DART_SHA256=05de30a7f588bcaef5e826b27ef262bd48eba02e46dc14726d64df2d4845039b;             SDK_ARCH="arm";;         arm64)             DART_SHA256=887cbb763bc4a1d6f3d7c34a6ea08f0f05211807abf98c06d6e4263907ccac1a;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=e692b8ded49ad1a7f36c34973b2086085704c1e4c2ccfa94fb5d19725a16d048;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.7/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c818fc0546b5aa09770f379fb4ff2b0a0c272294af8aa6e97458fa2a2a56cee`  
		Last Modified: Fri, 23 Oct 2026 18:31:01 GMT  
		Size: 42.3 MB (42322451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31a7920163cdf8d81442ff6e8c5e04979cdfb005cb0f39d3d6dc279bd7eb213f`  
		Last Modified: Fri, 23 Oct 2026 18:30:59 GMT  
		Size: 1.6 MB (1561921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3884d5d69c276af9b62748d9766e4ee6424b27b756720b6c674704d9146cc5da`  
		Last Modified: Fri, 23 Oct 2026 18:31:05 GMT  
		Size: 241.4 MB (241358320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:edcec6365bbad011892af3636af6e205212a4df130c4039ed16a02192d9f214b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f86b60a792668566d8cece61d5165754ae10ac3d8d41749b27c4f4cbdf4994a3`

```dockerfile
```

-	Layers:
	-	`sha256:df12e0b092863ae823dfc5b0daea4035e5302d2a6bd1ed63e5799a4067c366e8`  
		Last Modified: Fri, 23 Oct 2026 18:30:59 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:sdk` - linux; riscv64

```console
$ docker pull dart@sha256:5b019bbd4b6c022564540d8f7f3879a9f100e71cfac8b029f2edbc83a49a6724
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.8 MB (252771423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac899ce42dfb650dc9bdc1bea6d413b416d45dfe2d51cfafbf3adf7efc5c1af4`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1792531975'
# Thu, 22 Oct 2026 05:21:04 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 22 Oct 2026 05:21:05 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 22 Oct 2026 05:21:05 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 22 Oct 2026 05:21:05 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Oct 2026 05:21:05 GMT
WORKDIR /root
# Thu, 22 Oct 2026 05:21:52 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=f80780c01ade17b789cf4dc2425d662f63bdd40eceda53b36c0d46af650de41b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=9c170d73f35f990efceda4c141a062a14142f0b7b45527a4947c25f5d3c8af24;             SDK_ARCH="arm";;         arm64)             DART_SHA256=73753a2e009505a2ba0d0c0bd449e248001a01984c805a3fcc19671dbb9616b1;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=2647c129b19bdb23b6dc4b9f6f8dc9699f173694cb7f5ed667379c35e1fc7651;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.6/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:c1206888a96a9a1d872c517f2fbe95ce8d2ebe30c523c27832270d8b73768b7c`  
		Last Modified: Tue, 20 Oct 2026 23:49:10 GMT  
		Size: 28.3 MB (28333871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74145420d54121f234102e3ba8d490bc6c3fcbd7e5e9f9278df9066ad277a14b`  
		Last Modified: Thu, 22 Oct 2026 05:26:31 GMT  
		Size: 41.6 MB (41602639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69e98f1ead020ab31bff0101687bd57a7930212c4ff2d32cc66894cdd67032b1`  
		Last Modified: Thu, 22 Oct 2026 05:26:18 GMT  
		Size: 1.6 MB (1560315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0990cae6b5dff99e0e15aec9528724fa8558f1aaf0827ff24fcb8e130d677da2`  
		Last Modified: Thu, 22 Oct 2026 05:26:51 GMT  
		Size: 181.3 MB (181274566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:9b744ef404a1fc70ea5827111872fae3329eabbaad210d9a289ba576ffb049ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c49d1d87c4307abf66172e146c781a1536bc32ccb15bc6bb698917a75c915a2`

```dockerfile
```

-	Layers:
	-	`sha256:bca20c852dfc95d84795057ae22a85f61c19d83b20591a19159aa724cbd54e64`  
		Last Modified: Thu, 22 Oct 2026 05:26:18 GMT  
		Size: 20.7 KB (20699 bytes)  
		MIME: application/vnd.in-toto+json
