## `dart:sdk`

```console
$ docker pull dart@sha256:41a3389cce686a3a76e9c5fcd098b26fcc4b88eff601a9e767183cf7cdb8f392
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
$ docker pull dart@sha256:6bb0ac8da25faa4f9310612a20a76b9cc58326d00b516b152fd40ac4db8315cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.9 MB (321897610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e92407773ba6afa2d76a438a2efef39daa8c8e4a9228968b73ba8542317113ba`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 22:31:05 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:31:06 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 15 Sep 2026 22:31:06 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 15 Sep 2026 22:31:06 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:31:06 GMT
WORKDIR /root
# Tue, 15 Sep 2026 22:31:16 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7721c9bff41a945f507275fc1daf17b46e4db4695e03dc844c1e0ce7d0410d05`  
		Last Modified: Tue, 15 Sep 2026 22:31:45 GMT  
		Size: 47.9 MB (47867587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4488c42c649126f630919a33d11a3d5445d10b67209f373f50b874da092fec18`  
		Last Modified: Tue, 15 Sep 2026 22:31:43 GMT  
		Size: 1.9 MB (1869785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b5eafafad36970681a5b60f67a2b668af29c8660414388bddb0bf281f4ce56c`  
		Last Modified: Tue, 15 Sep 2026 22:31:49 GMT  
		Size: 242.4 MB (242367548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:0c2c86cbf3f20540f44a3d3fc4e63fd77f199d1c9a749dd3c04ea1a8f751be3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1b249a1ec582a18a444dd66cd162afd090aa652a07061458e9a166a17603a48`

```dockerfile
```

-	Layers:
	-	`sha256:0d43c1ae7be98f0711b86ed05e0f555308be3bb7a96bd10745c257bf72655f5d`  
		Last Modified: Tue, 15 Sep 2026 22:31:42 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:799daa316df1a91e4b558c4aacbc1606a5f5d30d00abe5a767cab722b7d31bba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.9 MB (234877106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3df34a5139987f56d9f9dc0790278a9049433ec519e1c0dcd21ff637b9ea7b93`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 23:09:10 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 23:09:10 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 15 Sep 2026 23:09:10 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 15 Sep 2026 23:09:10 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 23:09:10 GMT
WORKDIR /root
# Tue, 15 Sep 2026 23:09:19 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1bf30aeb76cb00fa3ddc82173e9e51f836294bc146720f44fd47c61df1ba85f`  
		Last Modified: Tue, 15 Sep 2026 23:09:42 GMT  
		Size: 41.9 MB (41914638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b9c5d80d8b5281721e8b4c1059811dc7f773e842c8261aaf91252184d97a195`  
		Last Modified: Tue, 15 Sep 2026 23:09:41 GMT  
		Size: 1.3 MB (1273150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac568f83463655c1346658ad94bb927ab73070c2dd173500b77fdb54b432936`  
		Last Modified: Tue, 15 Sep 2026 23:09:45 GMT  
		Size: 165.5 MB (165470145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:668eeca27d06b1a63f7eaf5335264dc59b65de5b32b1da9fe0550f1a57db42f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92b8aae52469f23565e913fa67f0246a4ea105ecb7f7531451930d9df547bc40`

```dockerfile
```

-	Layers:
	-	`sha256:b588a24b105229752714a780d78263d6c0859cc77c4dd3be08f7a23da933e042`  
		Last Modified: Tue, 15 Sep 2026 23:09:40 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:a79830ce73fb96da10ec37eae240bface2af1faa57e87f8d5d9b20ca193e5dbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.9 MB (320905425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:289207ae2857ad8160e17df9d26d926bf336b2dfb1c2630ef9a47b44e691dc3d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 22:37:29 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:37:30 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 15 Sep 2026 22:37:30 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 15 Sep 2026 22:37:30 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:37:30 GMT
WORKDIR /root
# Tue, 15 Sep 2026 22:37:43 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6487a10df5eab890d746d14a55f4c70bec3c1c0633f51804eb504cbc0fc395bb;             SDK_ARCH="x64";;         armhf)             DART_SHA256=72c5fa3ce50e6c1c2b42c6c6d3e1df28638497a12e0c7e64fce88d44994c2f1c;             SDK_ARCH="arm";;         arm64)             DART_SHA256=1d545609bdf9da6fb5e68fbd96a599e2836e44ee64379991bd4493ee764d2fdb;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=886aec1d3bc2ee55ac761ad0c4e97e0b0a8a20a5e2e23afafc6ddb82596de01e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.4/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad2ad386b9d84332bdfc34ec892e84cab75b0044470817c8e2a0e28817989459`  
		Last Modified: Tue, 15 Sep 2026 22:38:15 GMT  
		Size: 48.0 MB (47980601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f7817ea29b65f20a000fe21d25d8d418a5f843a5bf554e2ca5fe113dd7b0287`  
		Last Modified: Tue, 15 Sep 2026 22:38:13 GMT  
		Size: 1.6 MB (1564388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a634f0d56bbc0bca88aa28567fed8dae6ebdceb31fdf1286b09a2b10416835a9`  
		Last Modified: Tue, 15 Sep 2026 22:38:19 GMT  
		Size: 241.2 MB (241200822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:6cac5453a66b4787a009ec07b8bfa1e0a26132676b8ca23c14ae00f6efd5c6bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f26f22431a0ee93b0584a67fa1283ee03a15139751d32198c99539635a2f26e2`

```dockerfile
```

-	Layers:
	-	`sha256:2a658c1cec74c93bb8ca1c0ac90d0c1ca64a69222782c6181b1f93a5d0ea4c18`  
		Last Modified: Tue, 15 Sep 2026 22:38:13 GMT  
		Size: 20.8 KB (20820 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:sdk` - linux; riscv64

```console
$ docker pull dart@sha256:a438a10656059346ced0f4c3f3b1b081417fab088553bd3daa2827b5983dbd48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 MB (255348011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe644a3eb317b83b1ca2f5ef5230d94b23ebbb18a293a3df958e60f2dffd963d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 00:27:50 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 02 Sep 2026 14:57:03 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 02 Sep 2026 14:57:03 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 02 Sep 2026 14:57:03 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 Sep 2026 14:57:03 GMT
WORKDIR /root
# Wed, 02 Sep 2026 14:57:49 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=549c182cffbdc6864df7509c16fec646c73fe6cb8a18c2cb572db1292f300cd7;             SDK_ARCH="x64";;         armhf)             DART_SHA256=404cf65532c20a51dd5831c089fec252d04c187f0a46a7e73d1121fae8e2a4d9;             SDK_ARCH="arm";;         arm64)             DART_SHA256=c59c535623f3ab9717e8755237df695f153fb3af3bfb0f6c281b2eb4fefe669e;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=4cb300aefb189d736c19fa7bba13c3406cea79cc6b1eb5893970b1f7c6ce601e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.13.3/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7de52b89a6376974aa7c3405992c54c5193c4b00bfdc64f847a6e59a5d92d455`  
		Last Modified: Thu, 27 Aug 2026 00:35:29 GMT  
		Size: 44.2 MB (44216001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c69509d301c020e85e8a08223f390d5c67ace0bf753ab443b38f536e16a1de9d`  
		Last Modified: Wed, 02 Sep 2026 15:01:51 GMT  
		Size: 1.6 MB (1564447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb7f0209c6fc197859f50222b103c8696d56a090d57f39b6193de0dbb9d19527`  
		Last Modified: Wed, 02 Sep 2026 15:02:17 GMT  
		Size: 181.3 MB (181271068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:03ffdc850691c7faf02d1f30f83bebf3af29e05900470acbacf568125b7bcf00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17b3c2e45275d368ac7e65def7d4dbf9c2d285b88e000d8d01efc736fea8ac3c`

```dockerfile
```

-	Layers:
	-	`sha256:90fe1dc2b96c7959b1203245b19756c140312cfb16dbeb4cc63305b77ff8d2a4`  
		Last Modified: Wed, 02 Sep 2026 15:01:50 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json
