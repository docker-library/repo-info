## `dart:sdk`

```console
$ docker pull dart@sha256:efc6116982a4d178babd453b05555b37693316945fd6012a2d10232a940caa19
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
$ docker pull dart@sha256:a033bd236919f964358f30fde20298d009931292bb87e7863e17f60e046cb4a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316614983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53b87aedd953e8c732fe9c92b73b563b7a9ddf7e2a8598faa2745602c5c64c5a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:46:42 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:46:43 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 21 Oct 2026 00:46:43 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 21 Oct 2026 00:46:43 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:46:43 GMT
WORKDIR /root
# Wed, 21 Oct 2026 00:46:52 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=f80780c01ade17b789cf4dc2425d662f63bdd40eceda53b36c0d46af650de41b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=9c170d73f35f990efceda4c141a062a14142f0b7b45527a4947c25f5d3c8af24;             SDK_ARCH="arm";;         arm64)             DART_SHA256=73753a2e009505a2ba0d0c0bd449e248001a01984c805a3fcc19671dbb9616b1;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=2647c129b19bdb23b6dc4b9f6f8dc9699f173694cb7f5ed667379c35e1fc7651;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.6/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:345a474e12321b7b19ab79c455da36d437330bc174c6a6950216c668377b7caa`  
		Last Modified: Wed, 21 Oct 2026 00:47:25 GMT  
		Size: 42.5 MB (42526185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b502f68ffe119a8400a345c2f87033c066857792b4af7a6b0c9cb4b733bd1e83`  
		Last Modified: Wed, 21 Oct 2026 00:47:19 GMT  
		Size: 1.9 MB (1867117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b7cfb81abc6382c5e529a7c6023c7584710130f0ed16a6a0860966b9f8938ee`  
		Last Modified: Wed, 21 Oct 2026 00:47:37 GMT  
		Size: 242.4 MB (242378070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:1b6ac8a592320281664e9b67da73c2af2776a9c951fc244745ec2e916b59f53a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ba69af791e336ee48b010784b17809a267c103fbad17131f624db40e8a0d0e3`

```dockerfile
```

-	Layers:
	-	`sha256:99cf9538281df55ba1ee78ad9d35b4e803435d6f51e408fe299809bb5d1fc718`  
		Last Modified: Wed, 21 Oct 2026 00:47:18 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:b229772bf72c6e3caab4146ca0ac5400c79cf3246e69ecce73f07c77acd5324a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230529691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1e61e6467ff67d1610088da45cbb8b5d5388bd88844eeb54f4416b63749e4c5`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:29:44 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:29:44 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 21 Oct 2026 01:29:45 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 21 Oct 2026 01:29:45 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:29:45 GMT
WORKDIR /root
# Wed, 21 Oct 2026 01:29:54 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=f80780c01ade17b789cf4dc2425d662f63bdd40eceda53b36c0d46af650de41b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=9c170d73f35f990efceda4c141a062a14142f0b7b45527a4947c25f5d3c8af24;             SDK_ARCH="arm";;         arm64)             DART_SHA256=73753a2e009505a2ba0d0c0bd449e248001a01984c805a3fcc19671dbb9616b1;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=2647c129b19bdb23b6dc4b9f6f8dc9699f173694cb7f5ed667379c35e1fc7651;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.6/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:f8eb073e557b2fb506b6faa9eae3677b1d49ea8721e51992a31cf5c5c4dd75da`  
		Last Modified: Tue, 20 Oct 2026 23:30:46 GMT  
		Size: 26.3 MB (26258396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eeeafd3630ab6baf60197111f43afd9efa3b50a75d7d7bf89fc5a28e7d4ecd0`  
		Last Modified: Wed, 21 Oct 2026 01:30:16 GMT  
		Size: 37.5 MB (37528292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a03545fd39d8b809b0929e20a7a08a58404332b4eb7204a8fe6d04dc58e48210`  
		Last Modified: Wed, 21 Oct 2026 01:30:14 GMT  
		Size: 1.3 MB (1271957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68fbc641411714cd91dafcde6695f26a3066f6fb8addc9003bab015348154100`  
		Last Modified: Wed, 21 Oct 2026 01:30:18 GMT  
		Size: 165.5 MB (165471014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:f868a3414ac45e74e46d36822f1de3445aa37c23784ab42949f26aaa165aa4de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4d0d2d02490b55e1e7ed16c065dc45e393b455bc0859cb5848b272038463b4d`

```dockerfile
```

-	Layers:
	-	`sha256:68fa93d20f7e8072726807dd0a632aeb6c86e5b07a9b495e55257627ba672232`  
		Last Modified: Wed, 21 Oct 2026 01:30:14 GMT  
		Size: 20.8 KB (20769 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:4d26af5350d889284e03bb9602a31b5edd7391538c9cbbce116a9b70d28fe515
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.3 MB (315310344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:756110d4bc8f62764963bdeb88e960f44e7db648e6d383dac1c618ba36114bfb`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:50:01 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:50:01 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 21 Oct 2026 00:50:01 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 21 Oct 2026 00:50:01 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:50:01 GMT
WORKDIR /root
# Wed, 21 Oct 2026 00:50:14 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=f80780c01ade17b789cf4dc2425d662f63bdd40eceda53b36c0d46af650de41b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=9c170d73f35f990efceda4c141a062a14142f0b7b45527a4947c25f5d3c8af24;             SDK_ARCH="arm";;         arm64)             DART_SHA256=73753a2e009505a2ba0d0c0bd449e248001a01984c805a3fcc19671dbb9616b1;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=2647c129b19bdb23b6dc4b9f6f8dc9699f173694cb7f5ed667379c35e1fc7651;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.6/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e3ac32e16e14e453dadeae413396648847d70fecfca2debd6898ef1fa4d23ee`  
		Last Modified: Wed, 21 Oct 2026 00:50:46 GMT  
		Size: 42.3 MB (42332432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cd5619910afa113c277a5c1d889484580d18dcf2f49b48292fb1777f660114a`  
		Last Modified: Wed, 21 Oct 2026 00:50:44 GMT  
		Size: 1.6 MB (1561923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a4a15b7b04f5fba39116e61fb30aceb4dcb5be25809637589e4ae488637fcb9`  
		Last Modified: Wed, 21 Oct 2026 00:50:50 GMT  
		Size: 241.2 MB (241215479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:83db3b0226b7d24f2d2db2af75469742af7a0927897c248d01b13c6b9ca761ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d074dcc5ad56f046338621de46783e66c9e9423059dab131caf6b6e44f44e05`

```dockerfile
```

-	Layers:
	-	`sha256:cf7dc57541a2900679033f9325972b4e6f33c34ed3fc29fa7c5d5b2265bb0ad1`  
		Last Modified: Wed, 21 Oct 2026 00:50:44 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:sdk` - linux; riscv64

```console
$ docker pull dart@sha256:e072533a579551e026db3fd7b74b6a3a1a5f9bb23be56f1eb4d9e05896288844
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.8 MB (252772829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36adce5abde40dead005f4d30a8490d673126519495a587848696bd27315e384`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 17:48:39 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 20 Oct 2026 17:48:41 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 20 Oct 2026 17:48:41 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 20 Oct 2026 17:48:41 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 17:48:41 GMT
WORKDIR /root
# Tue, 20 Oct 2026 17:49:30 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=f80780c01ade17b789cf4dc2425d662f63bdd40eceda53b36c0d46af650de41b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=9c170d73f35f990efceda4c141a062a14142f0b7b45527a4947c25f5d3c8af24;             SDK_ARCH="arm";;         arm64)             DART_SHA256=73753a2e009505a2ba0d0c0bd449e248001a01984c805a3fcc19671dbb9616b1;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=2647c129b19bdb23b6dc4b9f6f8dc9699f173694cb7f5ed667379c35e1fc7651;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.6/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8cc052fde60a7a6964734c9160d9e5b6bcb90a74766513300e3156590e007f2`  
		Last Modified: Tue, 20 Oct 2026 17:53:57 GMT  
		Size: 41.6 MB (41600589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e82001fd895bcb4d7572df02e77c6a9efc3262773646e35f74fa95566ba3d26`  
		Last Modified: Tue, 20 Oct 2026 17:53:45 GMT  
		Size: 1.6 MB (1563908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:283608222c0e75b179e41232471ca01d44619045715fd544a18e488fe0ae1671`  
		Last Modified: Tue, 20 Oct 2026 17:54:17 GMT  
		Size: 181.3 MB (181274537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:ba1ff18fe0977deaa30093ae0af18307aa03eed9d3a43efbe939294390fa248d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eb2de183a85d5cac4d1fc87332e0051165551fcc26d6fa76f42975c030b7e16`

```dockerfile
```

-	Layers:
	-	`sha256:2ea8ac65b87a36e4cbf23fc6626af69bb966a83497f6e84c3f57c6eec86390a9`  
		Last Modified: Tue, 20 Oct 2026 17:53:44 GMT  
		Size: 20.7 KB (20699 bytes)  
		MIME: application/vnd.in-toto+json
