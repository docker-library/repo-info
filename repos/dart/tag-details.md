<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `dart`

-	[`dart:3`](#dart3)
-	[`dart:3-sdk`](#dart3-sdk)
-	[`dart:3.12`](#dart312)
-	[`dart:3.12-sdk`](#dart312-sdk)
-	[`dart:3.12.2`](#dart3122)
-	[`dart:3.12.2-sdk`](#dart3122-sdk)
-	[`dart:3.13.0-282.3.beta`](#dart3130-2823beta)
-	[`dart:3.13.0-282.3.beta-sdk`](#dart3130-2823beta-sdk)
-	[`dart:beta`](#dartbeta)
-	[`dart:beta-sdk`](#dartbeta-sdk)
-	[`dart:latest`](#dartlatest)
-	[`dart:sdk`](#dartsdk)
-	[`dart:stable`](#dartstable)
-	[`dart:stable-sdk`](#dartstable-sdk)

## `dart:3`

```console
$ docker pull dart@sha256:13140e26d84f4fda57cea31942222112aeb2eec10e5e6874c1c0f70beed189ab
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

### `dart:3` - linux; amd64

```console
$ docker pull dart@sha256:230b39cac238748c3181dc8eab4e2cb11f2da0914369ea766acd987bdfb27bd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.0 MB (310952917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae1c28e4cf8432240c5e39e59d5959a5375d2dd53998705dadbf4d48788be147`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:44:16 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:44:16 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 14 Jul 2026 01:44:17 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 14 Jul 2026 01:44:17 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 01:44:17 GMT
WORKDIR /root
# Tue, 14 Jul 2026 01:44:27 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b11a9744cfb1b6e735a62d97e527a790c02b381930dc463b7af55d3f1c3145e`  
		Last Modified: Tue, 14 Jul 2026 01:45:00 GMT  
		Size: 42.5 MB (42508627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b04dfc966caaee9eaaa59f80b992f3bd6d4327a5bcafe1fcb9808874d82ef18a`  
		Last Modified: Tue, 14 Jul 2026 01:44:58 GMT  
		Size: 1.9 MB (1869783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23edec85789d9afb2985b7f0773087f03214ddd75948d66f8cc244ea42538c25`  
		Last Modified: Tue, 14 Jul 2026 01:45:03 GMT  
		Size: 236.8 MB (236793570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3` - unknown; unknown

```console
$ docker pull dart@sha256:79b32a9bc41181a095eacc2d984aa747ad1535f27048b6827781d648481cb3d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6af2eeae55aa993ee2699b647ebf73db19ef100d6c18805f941a882cf9a7c0ef`

```dockerfile
```

-	Layers:
	-	`sha256:159e6b261a0311f5d791ee03267325ec01a6a530ff60977fd883f8564b08e5c3`  
		Last Modified: Tue, 14 Jul 2026 01:44:58 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3` - linux; arm variant v7

```console
$ docker pull dart@sha256:70ff9295d9cffa66deab044c0e28b30e08efb8599e47312d82b5b8e727ce47ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.1 MB (226077199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00453eb6fa353dc5aac2050b7beca6bac26a261602d5b4a37fff7220a1b13ce6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:33:42 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:33:43 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 14 Jul 2026 02:33:43 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 14 Jul 2026 02:33:43 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:33:43 GMT
WORKDIR /root
# Tue, 14 Jul 2026 02:33:51 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9b59d60b0778d6438b52311e6042c518dd228d82d38c099a5483d0b4c05501a`  
		Last Modified: Tue, 14 Jul 2026 02:34:14 GMT  
		Size: 37.5 MB (37511611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc7989d8dcf84fcbf70474aa40200bfecf15db8a37c0abf5f3f26547d2d80e2`  
		Last Modified: Tue, 14 Jul 2026 02:34:13 GMT  
		Size: 1.3 MB (1273157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e20ac6001a366bc5a3d411c998636f325b35327356c1b049184ecf5828c2af5`  
		Last Modified: Tue, 14 Jul 2026 02:34:17 GMT  
		Size: 161.1 MB (161085932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3` - unknown; unknown

```console
$ docker pull dart@sha256:f0da35966025ac1aae5f4720cb625094b720044cf6b001b85849eac10c3d315e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bbc5bb7e7895ebae28e0aa6240ad047defc722efc9b634382340d35fdf939a3`

```dockerfile
```

-	Layers:
	-	`sha256:107e671295534b73040349e2b7c5f00024f8968a7de06fae27b305b8f05a236f`  
		Last Modified: Tue, 14 Jul 2026 02:34:13 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:04ba929f54bf8e10b2902ad40717381e77b300034a771cfaa4e0f1c3bfd9bdcc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.4 MB (309401979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a65f2849dc1c57386aef6ae2eee89c4b0dfc112e9a94630916ca255b08ed7ac6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:47:37 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:37 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 14 Jul 2026 01:47:37 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 14 Jul 2026 01:47:37 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 01:47:37 GMT
WORKDIR /root
# Tue, 14 Jul 2026 01:47:48 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d19af0c1d7ddf1e01eefa406c41d288270bec0141377fd841e3986dc6961bc69`  
		Last Modified: Tue, 14 Jul 2026 01:48:21 GMT  
		Size: 42.3 MB (42288478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ba00ca71cf1b8769d4574306837e6750a9adcc91d61d931561e24e0d2c47585`  
		Last Modified: Tue, 14 Jul 2026 01:48:19 GMT  
		Size: 1.6 MB (1564383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d589e7f5cd422bdfc9163e3a645e8f304752060836049a1ee720f90b762b0ba`  
		Last Modified: Tue, 14 Jul 2026 01:48:24 GMT  
		Size: 235.4 MB (235405381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3` - unknown; unknown

```console
$ docker pull dart@sha256:d300dfd531ee01853f1381cf493685ea71da8bce9e02b8e4aca737f5c1d18064
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cf68a24fce9208bef7ff140de58c5a75ce77c5231324f829289a115db198eda`

```dockerfile
```

-	Layers:
	-	`sha256:be095f6eddc0886daf6bdfb91fc34d32e44efed7434a19b7cd22cbba62a2ffc5`  
		Last Modified: Tue, 14 Jul 2026 01:48:19 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3` - linux; riscv64

```console
$ docker pull dart@sha256:b8c68ad6b81b1daa88fe5912c31f4123307ed8defb9f7198174c837bd459e612
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.3 MB (248336863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e49cee274a87937c33045d3dda2ec098ac560ddc66c2a4025a2635d3525dc99b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Wed, 15 Jul 2026 17:35:55 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 15 Jul 2026 17:35:57 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 15 Jul 2026 17:35:57 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 15 Jul 2026 17:35:57 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 15 Jul 2026 17:35:57 GMT
WORKDIR /root
# Wed, 15 Jul 2026 17:36:41 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:3ed37bd5491de4685b6418abd6b83c4b16cc06b7a51e46da7f154c5a149a41a5`  
		Last Modified: Tue, 14 Jul 2026 00:30:18 GMT  
		Size: 28.3 MB (28278203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a79242e9ee8e02c54c19cc387b7e5caaa22cd4ef33321868873943970c3903e`  
		Last Modified: Wed, 15 Jul 2026 17:40:54 GMT  
		Size: 41.6 MB (41581218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e7fa4e699718ce7ae8eb2ae9174d993519062296061f614e6456a3e9adec03a`  
		Last Modified: Wed, 15 Jul 2026 17:40:41 GMT  
		Size: 1.6 MB (1564444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ed9be29d6138cfb006615048082026cbe7b2ca00c446b1272a53ddd731b95d8`  
		Last Modified: Wed, 15 Jul 2026 17:41:13 GMT  
		Size: 176.9 MB (176912966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3` - unknown; unknown

```console
$ docker pull dart@sha256:694ede84f411a8aed8a0a4d85467b7e5a1f784dfe35dddad59a5775a1223eca5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8ed5bfd56b80f17bbc1bd6336c403052b7675fff3fb296c7d2fefb7e9f1d84f`

```dockerfile
```

-	Layers:
	-	`sha256:eeff16bad1f06c897b4b24b7d3ec30e340d585317638a42302ea35e4dc2afcd3`  
		Last Modified: Wed, 15 Jul 2026 17:40:41 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3-sdk`

```console
$ docker pull dart@sha256:13140e26d84f4fda57cea31942222112aeb2eec10e5e6874c1c0f70beed189ab
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

### `dart:3-sdk` - linux; amd64

```console
$ docker pull dart@sha256:230b39cac238748c3181dc8eab4e2cb11f2da0914369ea766acd987bdfb27bd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.0 MB (310952917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae1c28e4cf8432240c5e39e59d5959a5375d2dd53998705dadbf4d48788be147`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:44:16 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:44:16 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 14 Jul 2026 01:44:17 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 14 Jul 2026 01:44:17 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 01:44:17 GMT
WORKDIR /root
# Tue, 14 Jul 2026 01:44:27 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b11a9744cfb1b6e735a62d97e527a790c02b381930dc463b7af55d3f1c3145e`  
		Last Modified: Tue, 14 Jul 2026 01:45:00 GMT  
		Size: 42.5 MB (42508627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b04dfc966caaee9eaaa59f80b992f3bd6d4327a5bcafe1fcb9808874d82ef18a`  
		Last Modified: Tue, 14 Jul 2026 01:44:58 GMT  
		Size: 1.9 MB (1869783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23edec85789d9afb2985b7f0773087f03214ddd75948d66f8cc244ea42538c25`  
		Last Modified: Tue, 14 Jul 2026 01:45:03 GMT  
		Size: 236.8 MB (236793570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:79b32a9bc41181a095eacc2d984aa747ad1535f27048b6827781d648481cb3d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6af2eeae55aa993ee2699b647ebf73db19ef100d6c18805f941a882cf9a7c0ef`

```dockerfile
```

-	Layers:
	-	`sha256:159e6b261a0311f5d791ee03267325ec01a6a530ff60977fd883f8564b08e5c3`  
		Last Modified: Tue, 14 Jul 2026 01:44:58 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:70ff9295d9cffa66deab044c0e28b30e08efb8599e47312d82b5b8e727ce47ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.1 MB (226077199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00453eb6fa353dc5aac2050b7beca6bac26a261602d5b4a37fff7220a1b13ce6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:33:42 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:33:43 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 14 Jul 2026 02:33:43 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 14 Jul 2026 02:33:43 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:33:43 GMT
WORKDIR /root
# Tue, 14 Jul 2026 02:33:51 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9b59d60b0778d6438b52311e6042c518dd228d82d38c099a5483d0b4c05501a`  
		Last Modified: Tue, 14 Jul 2026 02:34:14 GMT  
		Size: 37.5 MB (37511611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc7989d8dcf84fcbf70474aa40200bfecf15db8a37c0abf5f3f26547d2d80e2`  
		Last Modified: Tue, 14 Jul 2026 02:34:13 GMT  
		Size: 1.3 MB (1273157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e20ac6001a366bc5a3d411c998636f325b35327356c1b049184ecf5828c2af5`  
		Last Modified: Tue, 14 Jul 2026 02:34:17 GMT  
		Size: 161.1 MB (161085932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:f0da35966025ac1aae5f4720cb625094b720044cf6b001b85849eac10c3d315e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bbc5bb7e7895ebae28e0aa6240ad047defc722efc9b634382340d35fdf939a3`

```dockerfile
```

-	Layers:
	-	`sha256:107e671295534b73040349e2b7c5f00024f8968a7de06fae27b305b8f05a236f`  
		Last Modified: Tue, 14 Jul 2026 02:34:13 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:04ba929f54bf8e10b2902ad40717381e77b300034a771cfaa4e0f1c3bfd9bdcc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.4 MB (309401979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a65f2849dc1c57386aef6ae2eee89c4b0dfc112e9a94630916ca255b08ed7ac6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:47:37 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:37 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 14 Jul 2026 01:47:37 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 14 Jul 2026 01:47:37 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 01:47:37 GMT
WORKDIR /root
# Tue, 14 Jul 2026 01:47:48 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d19af0c1d7ddf1e01eefa406c41d288270bec0141377fd841e3986dc6961bc69`  
		Last Modified: Tue, 14 Jul 2026 01:48:21 GMT  
		Size: 42.3 MB (42288478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ba00ca71cf1b8769d4574306837e6750a9adcc91d61d931561e24e0d2c47585`  
		Last Modified: Tue, 14 Jul 2026 01:48:19 GMT  
		Size: 1.6 MB (1564383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d589e7f5cd422bdfc9163e3a645e8f304752060836049a1ee720f90b762b0ba`  
		Last Modified: Tue, 14 Jul 2026 01:48:24 GMT  
		Size: 235.4 MB (235405381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:d300dfd531ee01853f1381cf493685ea71da8bce9e02b8e4aca737f5c1d18064
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cf68a24fce9208bef7ff140de58c5a75ce77c5231324f829289a115db198eda`

```dockerfile
```

-	Layers:
	-	`sha256:be095f6eddc0886daf6bdfb91fc34d32e44efed7434a19b7cd22cbba62a2ffc5`  
		Last Modified: Tue, 14 Jul 2026 01:48:19 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:b8c68ad6b81b1daa88fe5912c31f4123307ed8defb9f7198174c837bd459e612
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.3 MB (248336863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e49cee274a87937c33045d3dda2ec098ac560ddc66c2a4025a2635d3525dc99b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Wed, 15 Jul 2026 17:35:55 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 15 Jul 2026 17:35:57 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 15 Jul 2026 17:35:57 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 15 Jul 2026 17:35:57 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 15 Jul 2026 17:35:57 GMT
WORKDIR /root
# Wed, 15 Jul 2026 17:36:41 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:3ed37bd5491de4685b6418abd6b83c4b16cc06b7a51e46da7f154c5a149a41a5`  
		Last Modified: Tue, 14 Jul 2026 00:30:18 GMT  
		Size: 28.3 MB (28278203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a79242e9ee8e02c54c19cc387b7e5caaa22cd4ef33321868873943970c3903e`  
		Last Modified: Wed, 15 Jul 2026 17:40:54 GMT  
		Size: 41.6 MB (41581218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e7fa4e699718ce7ae8eb2ae9174d993519062296061f614e6456a3e9adec03a`  
		Last Modified: Wed, 15 Jul 2026 17:40:41 GMT  
		Size: 1.6 MB (1564444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ed9be29d6138cfb006615048082026cbe7b2ca00c446b1272a53ddd731b95d8`  
		Last Modified: Wed, 15 Jul 2026 17:41:13 GMT  
		Size: 176.9 MB (176912966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:694ede84f411a8aed8a0a4d85467b7e5a1f784dfe35dddad59a5775a1223eca5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8ed5bfd56b80f17bbc1bd6336c403052b7675fff3fb296c7d2fefb7e9f1d84f`

```dockerfile
```

-	Layers:
	-	`sha256:eeff16bad1f06c897b4b24b7d3ec30e340d585317638a42302ea35e4dc2afcd3`  
		Last Modified: Wed, 15 Jul 2026 17:40:41 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.12`

```console
$ docker pull dart@sha256:13140e26d84f4fda57cea31942222112aeb2eec10e5e6874c1c0f70beed189ab
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

### `dart:3.12` - linux; amd64

```console
$ docker pull dart@sha256:230b39cac238748c3181dc8eab4e2cb11f2da0914369ea766acd987bdfb27bd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.0 MB (310952917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae1c28e4cf8432240c5e39e59d5959a5375d2dd53998705dadbf4d48788be147`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:44:16 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:44:16 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 14 Jul 2026 01:44:17 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 14 Jul 2026 01:44:17 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 01:44:17 GMT
WORKDIR /root
# Tue, 14 Jul 2026 01:44:27 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b11a9744cfb1b6e735a62d97e527a790c02b381930dc463b7af55d3f1c3145e`  
		Last Modified: Tue, 14 Jul 2026 01:45:00 GMT  
		Size: 42.5 MB (42508627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b04dfc966caaee9eaaa59f80b992f3bd6d4327a5bcafe1fcb9808874d82ef18a`  
		Last Modified: Tue, 14 Jul 2026 01:44:58 GMT  
		Size: 1.9 MB (1869783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23edec85789d9afb2985b7f0773087f03214ddd75948d66f8cc244ea42538c25`  
		Last Modified: Tue, 14 Jul 2026 01:45:03 GMT  
		Size: 236.8 MB (236793570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.12` - unknown; unknown

```console
$ docker pull dart@sha256:79b32a9bc41181a095eacc2d984aa747ad1535f27048b6827781d648481cb3d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6af2eeae55aa993ee2699b647ebf73db19ef100d6c18805f941a882cf9a7c0ef`

```dockerfile
```

-	Layers:
	-	`sha256:159e6b261a0311f5d791ee03267325ec01a6a530ff60977fd883f8564b08e5c3`  
		Last Modified: Tue, 14 Jul 2026 01:44:58 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.12` - linux; arm variant v7

```console
$ docker pull dart@sha256:70ff9295d9cffa66deab044c0e28b30e08efb8599e47312d82b5b8e727ce47ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.1 MB (226077199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00453eb6fa353dc5aac2050b7beca6bac26a261602d5b4a37fff7220a1b13ce6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:33:42 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:33:43 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 14 Jul 2026 02:33:43 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 14 Jul 2026 02:33:43 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:33:43 GMT
WORKDIR /root
# Tue, 14 Jul 2026 02:33:51 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9b59d60b0778d6438b52311e6042c518dd228d82d38c099a5483d0b4c05501a`  
		Last Modified: Tue, 14 Jul 2026 02:34:14 GMT  
		Size: 37.5 MB (37511611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc7989d8dcf84fcbf70474aa40200bfecf15db8a37c0abf5f3f26547d2d80e2`  
		Last Modified: Tue, 14 Jul 2026 02:34:13 GMT  
		Size: 1.3 MB (1273157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e20ac6001a366bc5a3d411c998636f325b35327356c1b049184ecf5828c2af5`  
		Last Modified: Tue, 14 Jul 2026 02:34:17 GMT  
		Size: 161.1 MB (161085932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.12` - unknown; unknown

```console
$ docker pull dart@sha256:f0da35966025ac1aae5f4720cb625094b720044cf6b001b85849eac10c3d315e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bbc5bb7e7895ebae28e0aa6240ad047defc722efc9b634382340d35fdf939a3`

```dockerfile
```

-	Layers:
	-	`sha256:107e671295534b73040349e2b7c5f00024f8968a7de06fae27b305b8f05a236f`  
		Last Modified: Tue, 14 Jul 2026 02:34:13 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.12` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:04ba929f54bf8e10b2902ad40717381e77b300034a771cfaa4e0f1c3bfd9bdcc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.4 MB (309401979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a65f2849dc1c57386aef6ae2eee89c4b0dfc112e9a94630916ca255b08ed7ac6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:47:37 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:37 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 14 Jul 2026 01:47:37 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 14 Jul 2026 01:47:37 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 01:47:37 GMT
WORKDIR /root
# Tue, 14 Jul 2026 01:47:48 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d19af0c1d7ddf1e01eefa406c41d288270bec0141377fd841e3986dc6961bc69`  
		Last Modified: Tue, 14 Jul 2026 01:48:21 GMT  
		Size: 42.3 MB (42288478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ba00ca71cf1b8769d4574306837e6750a9adcc91d61d931561e24e0d2c47585`  
		Last Modified: Tue, 14 Jul 2026 01:48:19 GMT  
		Size: 1.6 MB (1564383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d589e7f5cd422bdfc9163e3a645e8f304752060836049a1ee720f90b762b0ba`  
		Last Modified: Tue, 14 Jul 2026 01:48:24 GMT  
		Size: 235.4 MB (235405381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.12` - unknown; unknown

```console
$ docker pull dart@sha256:d300dfd531ee01853f1381cf493685ea71da8bce9e02b8e4aca737f5c1d18064
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cf68a24fce9208bef7ff140de58c5a75ce77c5231324f829289a115db198eda`

```dockerfile
```

-	Layers:
	-	`sha256:be095f6eddc0886daf6bdfb91fc34d32e44efed7434a19b7cd22cbba62a2ffc5`  
		Last Modified: Tue, 14 Jul 2026 01:48:19 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.12` - linux; riscv64

```console
$ docker pull dart@sha256:b8c68ad6b81b1daa88fe5912c31f4123307ed8defb9f7198174c837bd459e612
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.3 MB (248336863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e49cee274a87937c33045d3dda2ec098ac560ddc66c2a4025a2635d3525dc99b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Wed, 15 Jul 2026 17:35:55 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 15 Jul 2026 17:35:57 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 15 Jul 2026 17:35:57 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 15 Jul 2026 17:35:57 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 15 Jul 2026 17:35:57 GMT
WORKDIR /root
# Wed, 15 Jul 2026 17:36:41 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:3ed37bd5491de4685b6418abd6b83c4b16cc06b7a51e46da7f154c5a149a41a5`  
		Last Modified: Tue, 14 Jul 2026 00:30:18 GMT  
		Size: 28.3 MB (28278203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a79242e9ee8e02c54c19cc387b7e5caaa22cd4ef33321868873943970c3903e`  
		Last Modified: Wed, 15 Jul 2026 17:40:54 GMT  
		Size: 41.6 MB (41581218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e7fa4e699718ce7ae8eb2ae9174d993519062296061f614e6456a3e9adec03a`  
		Last Modified: Wed, 15 Jul 2026 17:40:41 GMT  
		Size: 1.6 MB (1564444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ed9be29d6138cfb006615048082026cbe7b2ca00c446b1272a53ddd731b95d8`  
		Last Modified: Wed, 15 Jul 2026 17:41:13 GMT  
		Size: 176.9 MB (176912966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.12` - unknown; unknown

```console
$ docker pull dart@sha256:694ede84f411a8aed8a0a4d85467b7e5a1f784dfe35dddad59a5775a1223eca5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8ed5bfd56b80f17bbc1bd6336c403052b7675fff3fb296c7d2fefb7e9f1d84f`

```dockerfile
```

-	Layers:
	-	`sha256:eeff16bad1f06c897b4b24b7d3ec30e340d585317638a42302ea35e4dc2afcd3`  
		Last Modified: Wed, 15 Jul 2026 17:40:41 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.12-sdk`

```console
$ docker pull dart@sha256:13140e26d84f4fda57cea31942222112aeb2eec10e5e6874c1c0f70beed189ab
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

### `dart:3.12-sdk` - linux; amd64

```console
$ docker pull dart@sha256:230b39cac238748c3181dc8eab4e2cb11f2da0914369ea766acd987bdfb27bd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.0 MB (310952917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae1c28e4cf8432240c5e39e59d5959a5375d2dd53998705dadbf4d48788be147`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:44:16 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:44:16 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 14 Jul 2026 01:44:17 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 14 Jul 2026 01:44:17 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 01:44:17 GMT
WORKDIR /root
# Tue, 14 Jul 2026 01:44:27 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b11a9744cfb1b6e735a62d97e527a790c02b381930dc463b7af55d3f1c3145e`  
		Last Modified: Tue, 14 Jul 2026 01:45:00 GMT  
		Size: 42.5 MB (42508627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b04dfc966caaee9eaaa59f80b992f3bd6d4327a5bcafe1fcb9808874d82ef18a`  
		Last Modified: Tue, 14 Jul 2026 01:44:58 GMT  
		Size: 1.9 MB (1869783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23edec85789d9afb2985b7f0773087f03214ddd75948d66f8cc244ea42538c25`  
		Last Modified: Tue, 14 Jul 2026 01:45:03 GMT  
		Size: 236.8 MB (236793570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.12-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:79b32a9bc41181a095eacc2d984aa747ad1535f27048b6827781d648481cb3d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6af2eeae55aa993ee2699b647ebf73db19ef100d6c18805f941a882cf9a7c0ef`

```dockerfile
```

-	Layers:
	-	`sha256:159e6b261a0311f5d791ee03267325ec01a6a530ff60977fd883f8564b08e5c3`  
		Last Modified: Tue, 14 Jul 2026 01:44:58 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.12-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:70ff9295d9cffa66deab044c0e28b30e08efb8599e47312d82b5b8e727ce47ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.1 MB (226077199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00453eb6fa353dc5aac2050b7beca6bac26a261602d5b4a37fff7220a1b13ce6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:33:42 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:33:43 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 14 Jul 2026 02:33:43 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 14 Jul 2026 02:33:43 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:33:43 GMT
WORKDIR /root
# Tue, 14 Jul 2026 02:33:51 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9b59d60b0778d6438b52311e6042c518dd228d82d38c099a5483d0b4c05501a`  
		Last Modified: Tue, 14 Jul 2026 02:34:14 GMT  
		Size: 37.5 MB (37511611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc7989d8dcf84fcbf70474aa40200bfecf15db8a37c0abf5f3f26547d2d80e2`  
		Last Modified: Tue, 14 Jul 2026 02:34:13 GMT  
		Size: 1.3 MB (1273157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e20ac6001a366bc5a3d411c998636f325b35327356c1b049184ecf5828c2af5`  
		Last Modified: Tue, 14 Jul 2026 02:34:17 GMT  
		Size: 161.1 MB (161085932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.12-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:f0da35966025ac1aae5f4720cb625094b720044cf6b001b85849eac10c3d315e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bbc5bb7e7895ebae28e0aa6240ad047defc722efc9b634382340d35fdf939a3`

```dockerfile
```

-	Layers:
	-	`sha256:107e671295534b73040349e2b7c5f00024f8968a7de06fae27b305b8f05a236f`  
		Last Modified: Tue, 14 Jul 2026 02:34:13 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.12-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:04ba929f54bf8e10b2902ad40717381e77b300034a771cfaa4e0f1c3bfd9bdcc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.4 MB (309401979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a65f2849dc1c57386aef6ae2eee89c4b0dfc112e9a94630916ca255b08ed7ac6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:47:37 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:37 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 14 Jul 2026 01:47:37 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 14 Jul 2026 01:47:37 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 01:47:37 GMT
WORKDIR /root
# Tue, 14 Jul 2026 01:47:48 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d19af0c1d7ddf1e01eefa406c41d288270bec0141377fd841e3986dc6961bc69`  
		Last Modified: Tue, 14 Jul 2026 01:48:21 GMT  
		Size: 42.3 MB (42288478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ba00ca71cf1b8769d4574306837e6750a9adcc91d61d931561e24e0d2c47585`  
		Last Modified: Tue, 14 Jul 2026 01:48:19 GMT  
		Size: 1.6 MB (1564383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d589e7f5cd422bdfc9163e3a645e8f304752060836049a1ee720f90b762b0ba`  
		Last Modified: Tue, 14 Jul 2026 01:48:24 GMT  
		Size: 235.4 MB (235405381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.12-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:d300dfd531ee01853f1381cf493685ea71da8bce9e02b8e4aca737f5c1d18064
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cf68a24fce9208bef7ff140de58c5a75ce77c5231324f829289a115db198eda`

```dockerfile
```

-	Layers:
	-	`sha256:be095f6eddc0886daf6bdfb91fc34d32e44efed7434a19b7cd22cbba62a2ffc5`  
		Last Modified: Tue, 14 Jul 2026 01:48:19 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.12-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:b8c68ad6b81b1daa88fe5912c31f4123307ed8defb9f7198174c837bd459e612
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.3 MB (248336863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e49cee274a87937c33045d3dda2ec098ac560ddc66c2a4025a2635d3525dc99b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Wed, 15 Jul 2026 17:35:55 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 15 Jul 2026 17:35:57 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 15 Jul 2026 17:35:57 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 15 Jul 2026 17:35:57 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 15 Jul 2026 17:35:57 GMT
WORKDIR /root
# Wed, 15 Jul 2026 17:36:41 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:3ed37bd5491de4685b6418abd6b83c4b16cc06b7a51e46da7f154c5a149a41a5`  
		Last Modified: Tue, 14 Jul 2026 00:30:18 GMT  
		Size: 28.3 MB (28278203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a79242e9ee8e02c54c19cc387b7e5caaa22cd4ef33321868873943970c3903e`  
		Last Modified: Wed, 15 Jul 2026 17:40:54 GMT  
		Size: 41.6 MB (41581218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e7fa4e699718ce7ae8eb2ae9174d993519062296061f614e6456a3e9adec03a`  
		Last Modified: Wed, 15 Jul 2026 17:40:41 GMT  
		Size: 1.6 MB (1564444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ed9be29d6138cfb006615048082026cbe7b2ca00c446b1272a53ddd731b95d8`  
		Last Modified: Wed, 15 Jul 2026 17:41:13 GMT  
		Size: 176.9 MB (176912966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.12-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:694ede84f411a8aed8a0a4d85467b7e5a1f784dfe35dddad59a5775a1223eca5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8ed5bfd56b80f17bbc1bd6336c403052b7675fff3fb296c7d2fefb7e9f1d84f`

```dockerfile
```

-	Layers:
	-	`sha256:eeff16bad1f06c897b4b24b7d3ec30e340d585317638a42302ea35e4dc2afcd3`  
		Last Modified: Wed, 15 Jul 2026 17:40:41 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.12.2`

```console
$ docker pull dart@sha256:13140e26d84f4fda57cea31942222112aeb2eec10e5e6874c1c0f70beed189ab
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

### `dart:3.12.2` - linux; amd64

```console
$ docker pull dart@sha256:230b39cac238748c3181dc8eab4e2cb11f2da0914369ea766acd987bdfb27bd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.0 MB (310952917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae1c28e4cf8432240c5e39e59d5959a5375d2dd53998705dadbf4d48788be147`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:44:16 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:44:16 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 14 Jul 2026 01:44:17 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 14 Jul 2026 01:44:17 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 01:44:17 GMT
WORKDIR /root
# Tue, 14 Jul 2026 01:44:27 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b11a9744cfb1b6e735a62d97e527a790c02b381930dc463b7af55d3f1c3145e`  
		Last Modified: Tue, 14 Jul 2026 01:45:00 GMT  
		Size: 42.5 MB (42508627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b04dfc966caaee9eaaa59f80b992f3bd6d4327a5bcafe1fcb9808874d82ef18a`  
		Last Modified: Tue, 14 Jul 2026 01:44:58 GMT  
		Size: 1.9 MB (1869783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23edec85789d9afb2985b7f0773087f03214ddd75948d66f8cc244ea42538c25`  
		Last Modified: Tue, 14 Jul 2026 01:45:03 GMT  
		Size: 236.8 MB (236793570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.12.2` - unknown; unknown

```console
$ docker pull dart@sha256:79b32a9bc41181a095eacc2d984aa747ad1535f27048b6827781d648481cb3d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6af2eeae55aa993ee2699b647ebf73db19ef100d6c18805f941a882cf9a7c0ef`

```dockerfile
```

-	Layers:
	-	`sha256:159e6b261a0311f5d791ee03267325ec01a6a530ff60977fd883f8564b08e5c3`  
		Last Modified: Tue, 14 Jul 2026 01:44:58 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.12.2` - linux; arm variant v7

```console
$ docker pull dart@sha256:70ff9295d9cffa66deab044c0e28b30e08efb8599e47312d82b5b8e727ce47ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.1 MB (226077199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00453eb6fa353dc5aac2050b7beca6bac26a261602d5b4a37fff7220a1b13ce6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:33:42 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:33:43 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 14 Jul 2026 02:33:43 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 14 Jul 2026 02:33:43 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:33:43 GMT
WORKDIR /root
# Tue, 14 Jul 2026 02:33:51 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9b59d60b0778d6438b52311e6042c518dd228d82d38c099a5483d0b4c05501a`  
		Last Modified: Tue, 14 Jul 2026 02:34:14 GMT  
		Size: 37.5 MB (37511611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc7989d8dcf84fcbf70474aa40200bfecf15db8a37c0abf5f3f26547d2d80e2`  
		Last Modified: Tue, 14 Jul 2026 02:34:13 GMT  
		Size: 1.3 MB (1273157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e20ac6001a366bc5a3d411c998636f325b35327356c1b049184ecf5828c2af5`  
		Last Modified: Tue, 14 Jul 2026 02:34:17 GMT  
		Size: 161.1 MB (161085932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.12.2` - unknown; unknown

```console
$ docker pull dart@sha256:f0da35966025ac1aae5f4720cb625094b720044cf6b001b85849eac10c3d315e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bbc5bb7e7895ebae28e0aa6240ad047defc722efc9b634382340d35fdf939a3`

```dockerfile
```

-	Layers:
	-	`sha256:107e671295534b73040349e2b7c5f00024f8968a7de06fae27b305b8f05a236f`  
		Last Modified: Tue, 14 Jul 2026 02:34:13 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.12.2` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:04ba929f54bf8e10b2902ad40717381e77b300034a771cfaa4e0f1c3bfd9bdcc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.4 MB (309401979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a65f2849dc1c57386aef6ae2eee89c4b0dfc112e9a94630916ca255b08ed7ac6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:47:37 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:37 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 14 Jul 2026 01:47:37 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 14 Jul 2026 01:47:37 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 01:47:37 GMT
WORKDIR /root
# Tue, 14 Jul 2026 01:47:48 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d19af0c1d7ddf1e01eefa406c41d288270bec0141377fd841e3986dc6961bc69`  
		Last Modified: Tue, 14 Jul 2026 01:48:21 GMT  
		Size: 42.3 MB (42288478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ba00ca71cf1b8769d4574306837e6750a9adcc91d61d931561e24e0d2c47585`  
		Last Modified: Tue, 14 Jul 2026 01:48:19 GMT  
		Size: 1.6 MB (1564383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d589e7f5cd422bdfc9163e3a645e8f304752060836049a1ee720f90b762b0ba`  
		Last Modified: Tue, 14 Jul 2026 01:48:24 GMT  
		Size: 235.4 MB (235405381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.12.2` - unknown; unknown

```console
$ docker pull dart@sha256:d300dfd531ee01853f1381cf493685ea71da8bce9e02b8e4aca737f5c1d18064
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cf68a24fce9208bef7ff140de58c5a75ce77c5231324f829289a115db198eda`

```dockerfile
```

-	Layers:
	-	`sha256:be095f6eddc0886daf6bdfb91fc34d32e44efed7434a19b7cd22cbba62a2ffc5`  
		Last Modified: Tue, 14 Jul 2026 01:48:19 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.12.2` - linux; riscv64

```console
$ docker pull dart@sha256:b8c68ad6b81b1daa88fe5912c31f4123307ed8defb9f7198174c837bd459e612
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.3 MB (248336863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e49cee274a87937c33045d3dda2ec098ac560ddc66c2a4025a2635d3525dc99b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Wed, 15 Jul 2026 17:35:55 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 15 Jul 2026 17:35:57 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 15 Jul 2026 17:35:57 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 15 Jul 2026 17:35:57 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 15 Jul 2026 17:35:57 GMT
WORKDIR /root
# Wed, 15 Jul 2026 17:36:41 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:3ed37bd5491de4685b6418abd6b83c4b16cc06b7a51e46da7f154c5a149a41a5`  
		Last Modified: Tue, 14 Jul 2026 00:30:18 GMT  
		Size: 28.3 MB (28278203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a79242e9ee8e02c54c19cc387b7e5caaa22cd4ef33321868873943970c3903e`  
		Last Modified: Wed, 15 Jul 2026 17:40:54 GMT  
		Size: 41.6 MB (41581218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e7fa4e699718ce7ae8eb2ae9174d993519062296061f614e6456a3e9adec03a`  
		Last Modified: Wed, 15 Jul 2026 17:40:41 GMT  
		Size: 1.6 MB (1564444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ed9be29d6138cfb006615048082026cbe7b2ca00c446b1272a53ddd731b95d8`  
		Last Modified: Wed, 15 Jul 2026 17:41:13 GMT  
		Size: 176.9 MB (176912966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.12.2` - unknown; unknown

```console
$ docker pull dart@sha256:694ede84f411a8aed8a0a4d85467b7e5a1f784dfe35dddad59a5775a1223eca5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8ed5bfd56b80f17bbc1bd6336c403052b7675fff3fb296c7d2fefb7e9f1d84f`

```dockerfile
```

-	Layers:
	-	`sha256:eeff16bad1f06c897b4b24b7d3ec30e340d585317638a42302ea35e4dc2afcd3`  
		Last Modified: Wed, 15 Jul 2026 17:40:41 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.12.2-sdk`

```console
$ docker pull dart@sha256:13140e26d84f4fda57cea31942222112aeb2eec10e5e6874c1c0f70beed189ab
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

### `dart:3.12.2-sdk` - linux; amd64

```console
$ docker pull dart@sha256:230b39cac238748c3181dc8eab4e2cb11f2da0914369ea766acd987bdfb27bd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.0 MB (310952917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae1c28e4cf8432240c5e39e59d5959a5375d2dd53998705dadbf4d48788be147`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:44:16 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:44:16 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 14 Jul 2026 01:44:17 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 14 Jul 2026 01:44:17 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 01:44:17 GMT
WORKDIR /root
# Tue, 14 Jul 2026 01:44:27 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b11a9744cfb1b6e735a62d97e527a790c02b381930dc463b7af55d3f1c3145e`  
		Last Modified: Tue, 14 Jul 2026 01:45:00 GMT  
		Size: 42.5 MB (42508627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b04dfc966caaee9eaaa59f80b992f3bd6d4327a5bcafe1fcb9808874d82ef18a`  
		Last Modified: Tue, 14 Jul 2026 01:44:58 GMT  
		Size: 1.9 MB (1869783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23edec85789d9afb2985b7f0773087f03214ddd75948d66f8cc244ea42538c25`  
		Last Modified: Tue, 14 Jul 2026 01:45:03 GMT  
		Size: 236.8 MB (236793570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.12.2-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:79b32a9bc41181a095eacc2d984aa747ad1535f27048b6827781d648481cb3d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6af2eeae55aa993ee2699b647ebf73db19ef100d6c18805f941a882cf9a7c0ef`

```dockerfile
```

-	Layers:
	-	`sha256:159e6b261a0311f5d791ee03267325ec01a6a530ff60977fd883f8564b08e5c3`  
		Last Modified: Tue, 14 Jul 2026 01:44:58 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.12.2-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:70ff9295d9cffa66deab044c0e28b30e08efb8599e47312d82b5b8e727ce47ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.1 MB (226077199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00453eb6fa353dc5aac2050b7beca6bac26a261602d5b4a37fff7220a1b13ce6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:33:42 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:33:43 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 14 Jul 2026 02:33:43 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 14 Jul 2026 02:33:43 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:33:43 GMT
WORKDIR /root
# Tue, 14 Jul 2026 02:33:51 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9b59d60b0778d6438b52311e6042c518dd228d82d38c099a5483d0b4c05501a`  
		Last Modified: Tue, 14 Jul 2026 02:34:14 GMT  
		Size: 37.5 MB (37511611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc7989d8dcf84fcbf70474aa40200bfecf15db8a37c0abf5f3f26547d2d80e2`  
		Last Modified: Tue, 14 Jul 2026 02:34:13 GMT  
		Size: 1.3 MB (1273157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e20ac6001a366bc5a3d411c998636f325b35327356c1b049184ecf5828c2af5`  
		Last Modified: Tue, 14 Jul 2026 02:34:17 GMT  
		Size: 161.1 MB (161085932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.12.2-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:f0da35966025ac1aae5f4720cb625094b720044cf6b001b85849eac10c3d315e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bbc5bb7e7895ebae28e0aa6240ad047defc722efc9b634382340d35fdf939a3`

```dockerfile
```

-	Layers:
	-	`sha256:107e671295534b73040349e2b7c5f00024f8968a7de06fae27b305b8f05a236f`  
		Last Modified: Tue, 14 Jul 2026 02:34:13 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.12.2-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:04ba929f54bf8e10b2902ad40717381e77b300034a771cfaa4e0f1c3bfd9bdcc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.4 MB (309401979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a65f2849dc1c57386aef6ae2eee89c4b0dfc112e9a94630916ca255b08ed7ac6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:47:37 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:37 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 14 Jul 2026 01:47:37 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 14 Jul 2026 01:47:37 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 01:47:37 GMT
WORKDIR /root
# Tue, 14 Jul 2026 01:47:48 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d19af0c1d7ddf1e01eefa406c41d288270bec0141377fd841e3986dc6961bc69`  
		Last Modified: Tue, 14 Jul 2026 01:48:21 GMT  
		Size: 42.3 MB (42288478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ba00ca71cf1b8769d4574306837e6750a9adcc91d61d931561e24e0d2c47585`  
		Last Modified: Tue, 14 Jul 2026 01:48:19 GMT  
		Size: 1.6 MB (1564383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d589e7f5cd422bdfc9163e3a645e8f304752060836049a1ee720f90b762b0ba`  
		Last Modified: Tue, 14 Jul 2026 01:48:24 GMT  
		Size: 235.4 MB (235405381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.12.2-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:d300dfd531ee01853f1381cf493685ea71da8bce9e02b8e4aca737f5c1d18064
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cf68a24fce9208bef7ff140de58c5a75ce77c5231324f829289a115db198eda`

```dockerfile
```

-	Layers:
	-	`sha256:be095f6eddc0886daf6bdfb91fc34d32e44efed7434a19b7cd22cbba62a2ffc5`  
		Last Modified: Tue, 14 Jul 2026 01:48:19 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.12.2-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:b8c68ad6b81b1daa88fe5912c31f4123307ed8defb9f7198174c837bd459e612
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.3 MB (248336863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e49cee274a87937c33045d3dda2ec098ac560ddc66c2a4025a2635d3525dc99b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Wed, 15 Jul 2026 17:35:55 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 15 Jul 2026 17:35:57 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 15 Jul 2026 17:35:57 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 15 Jul 2026 17:35:57 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 15 Jul 2026 17:35:57 GMT
WORKDIR /root
# Wed, 15 Jul 2026 17:36:41 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:3ed37bd5491de4685b6418abd6b83c4b16cc06b7a51e46da7f154c5a149a41a5`  
		Last Modified: Tue, 14 Jul 2026 00:30:18 GMT  
		Size: 28.3 MB (28278203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a79242e9ee8e02c54c19cc387b7e5caaa22cd4ef33321868873943970c3903e`  
		Last Modified: Wed, 15 Jul 2026 17:40:54 GMT  
		Size: 41.6 MB (41581218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e7fa4e699718ce7ae8eb2ae9174d993519062296061f614e6456a3e9adec03a`  
		Last Modified: Wed, 15 Jul 2026 17:40:41 GMT  
		Size: 1.6 MB (1564444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ed9be29d6138cfb006615048082026cbe7b2ca00c446b1272a53ddd731b95d8`  
		Last Modified: Wed, 15 Jul 2026 17:41:13 GMT  
		Size: 176.9 MB (176912966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.12.2-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:694ede84f411a8aed8a0a4d85467b7e5a1f784dfe35dddad59a5775a1223eca5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8ed5bfd56b80f17bbc1bd6336c403052b7675fff3fb296c7d2fefb7e9f1d84f`

```dockerfile
```

-	Layers:
	-	`sha256:eeff16bad1f06c897b4b24b7d3ec30e340d585317638a42302ea35e4dc2afcd3`  
		Last Modified: Wed, 15 Jul 2026 17:40:41 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.13.0-282.3.beta`

```console
$ docker pull dart@sha256:71961f9ba5511c085fb94705306132d2aaf1d8cedafa13b7e4da01744052a1da
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

### `dart:3.13.0-282.3.beta` - linux; amd64

```console
$ docker pull dart@sha256:4c6036718d8f3d79b1fd358ffca054e3e30b8e4fab5d417ee13ae8a57208e1c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.5 MB (316506530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44647d3b452ecee106dc035ee9b78a4831e3bce9b4d13e1cfc0a1f1b1c888c9b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:00:46 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 29 Jul 2026 18:00:47 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 29 Jul 2026 18:00:47 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 29 Jul 2026 18:00:47 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:00:47 GMT
WORKDIR /root
# Wed, 29 Jul 2026 18:00:58 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=65b8452103f0b238923603c74ad4760d28a99d07455923837c018c3b96b4fd69;             SDK_ARCH="x64";;         armhf)             DART_SHA256=de9af74b072ade0e5d61a1065df8b0c04dc58907805352f50ddd1715731270a2;             SDK_ARCH="arm";;         arm64)             DART_SHA256=9aeb16aebd0e8395d25d5ebec5ccb2acc0792af0e6f8e22b73ad65652e447ef3;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=bfcaae0c68a8547884a352bf5ca4839e7feb9bcc2c92aa6978525ab3a1e63895;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.13.0-282.3.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0163a8368e88992578bad3e8bf8d804d5e3f0b74106bbf5ad91971d7cc7d04dc`  
		Last Modified: Wed, 29 Jul 2026 18:01:30 GMT  
		Size: 42.5 MB (42516947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2221830bfaeeae913e0b29ae9661addd0d3e806b24439bca5a57ffda1a0adf46`  
		Last Modified: Wed, 29 Jul 2026 18:01:28 GMT  
		Size: 1.9 MB (1869788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a79c63fadac38ece551632db43749745fb888b6354cd36f98a32bbb2b97f5839`  
		Last Modified: Wed, 29 Jul 2026 18:01:34 GMT  
		Size: 242.3 MB (242338858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.0-282.3.beta` - unknown; unknown

```console
$ docker pull dart@sha256:01d9500ae51c774d09cb93e7934f3983690fa97ef6db320ab4cd26bb2966e1c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 KB (18923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b4c7fb5275a5ebf65dfc7d0c86e1c5d4b5c6af0bcd19f05da1c1934f95ff759`

```dockerfile
```

-	Layers:
	-	`sha256:091731d01628c32e71f17b1fd3f660d210d1acd86bdc62bbcb653cf04bc905e2`  
		Last Modified: Wed, 29 Jul 2026 18:01:28 GMT  
		Size: 18.9 KB (18923 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.0-282.3.beta` - linux; arm variant v7

```console
$ docker pull dart@sha256:4c3af9dd04389ec20259e06c0bd1af62b5588fd41bff12b622d1f87168f58512
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.4 MB (230423651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d07f94d93ec0c9fd91f7576c8aaf1d59f7f365880f47302868a3d1670233dbe`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:04:12 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 29 Jul 2026 18:04:13 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 29 Jul 2026 18:04:13 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 29 Jul 2026 18:04:13 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:04:13 GMT
WORKDIR /root
# Wed, 29 Jul 2026 18:04:21 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=65b8452103f0b238923603c74ad4760d28a99d07455923837c018c3b96b4fd69;             SDK_ARCH="x64";;         armhf)             DART_SHA256=de9af74b072ade0e5d61a1065df8b0c04dc58907805352f50ddd1715731270a2;             SDK_ARCH="arm";;         arm64)             DART_SHA256=9aeb16aebd0e8395d25d5ebec5ccb2acc0792af0e6f8e22b73ad65652e447ef3;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=bfcaae0c68a8547884a352bf5ca4839e7feb9bcc2c92aa6978525ab3a1e63895;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.13.0-282.3.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ef8884a5cf74015b068c42cf30e0da92f3c4f5acf16773d120cb17dad30b758`  
		Last Modified: Wed, 29 Jul 2026 18:04:45 GMT  
		Size: 37.5 MB (37516324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77edf825fd65d0dc3aa526afba2ebf42e904127057d48455960f47259d6f3185`  
		Last Modified: Wed, 29 Jul 2026 18:04:43 GMT  
		Size: 1.3 MB (1273148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae2d7f2028554bba2c2edcb6c93d6f6e24d8c64b76bdcce1dbd1a0ea2fe8cedf`  
		Last Modified: Wed, 29 Jul 2026 18:04:47 GMT  
		Size: 165.4 MB (165427680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.0-282.3.beta` - unknown; unknown

```console
$ docker pull dart@sha256:0c68741b1f8906dfcaf9ef55d4c356e213be7c4bb168a694ad6b0c104e552e23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca4854c4188d24afbd5a4b126cc39282f57b4181903c09d8664ed96c5612c9d2`

```dockerfile
```

-	Layers:
	-	`sha256:3df4ee89ccb8c90cdc6629a32afc9ad4f3f0e9712d4c3c56ba6ff65ce110c0e3`  
		Last Modified: Wed, 29 Jul 2026 18:04:43 GMT  
		Size: 19.0 KB (19028 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.0-282.3.beta` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:bfa29cf56c8973cd524b8cf0aa147a4dfd2caf8280033945cf377d41a8808d76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.2 MB (315188197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7e85af8304c24f9db843196805825e55511d5a78e787e5ae23dee7832d20aa9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 17:59:32 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 29 Jul 2026 17:59:33 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 29 Jul 2026 17:59:33 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 29 Jul 2026 17:59:33 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 17:59:33 GMT
WORKDIR /root
# Wed, 29 Jul 2026 17:59:47 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=65b8452103f0b238923603c74ad4760d28a99d07455923837c018c3b96b4fd69;             SDK_ARCH="x64";;         armhf)             DART_SHA256=de9af74b072ade0e5d61a1065df8b0c04dc58907805352f50ddd1715731270a2;             SDK_ARCH="arm";;         arm64)             DART_SHA256=9aeb16aebd0e8395d25d5ebec5ccb2acc0792af0e6f8e22b73ad65652e447ef3;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=bfcaae0c68a8547884a352bf5ca4839e7feb9bcc2c92aa6978525ab3a1e63895;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.13.0-282.3.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:637c916a3d615ca6198efc6a4caa63a488bd61871ad53a822eb7471d428b5746`  
		Last Modified: Wed, 29 Jul 2026 18:00:19 GMT  
		Size: 42.3 MB (42310422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f41b3c7e424820b9196cdf1cadc834e38c42ac3318f8f1d57fae6fd7ae2e939a`  
		Last Modified: Wed, 29 Jul 2026 18:00:17 GMT  
		Size: 1.6 MB (1564382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:179592d61d29f526a3d7cf676e4b4b1d1b9a4202993199c47f50637993613314`  
		Last Modified: Wed, 29 Jul 2026 18:00:24 GMT  
		Size: 241.2 MB (241169656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.0-282.3.beta` - unknown; unknown

```console
$ docker pull dart@sha256:1c04309641008f1f8edde40f8494568b17ffdb788fc9f26d5524900cd762ef4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 KB (19057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a5893fdf6fea550a1f6d2af004d8918545c73039205add5fd64fbb2ee71f8e8`

```dockerfile
```

-	Layers:
	-	`sha256:2b071bafc14ace641f609f5b3bed9aa21b5c0c602e43ad7c94f3781537f122fe`  
		Last Modified: Wed, 29 Jul 2026 18:00:17 GMT  
		Size: 19.1 KB (19057 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.0-282.3.beta` - linux; riscv64

```console
$ docker pull dart@sha256:6057a9f9fa3fa30af10d94075a2c828d9df2e331a13433ddf705334faa6bbd14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.7 MB (252656622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ccca6cd62d4fb12809a123c180a1ae935e9b18006c905244822ba9e81d40c78`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Thu, 30 Jul 2026 00:48:44 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 30 Jul 2026 00:48:46 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 30 Jul 2026 00:48:46 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 30 Jul 2026 00:48:46 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Jul 2026 00:48:46 GMT
WORKDIR /root
# Thu, 30 Jul 2026 00:49:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=65b8452103f0b238923603c74ad4760d28a99d07455923837c018c3b96b4fd69;             SDK_ARCH="x64";;         armhf)             DART_SHA256=de9af74b072ade0e5d61a1065df8b0c04dc58907805352f50ddd1715731270a2;             SDK_ARCH="arm";;         arm64)             DART_SHA256=9aeb16aebd0e8395d25d5ebec5ccb2acc0792af0e6f8e22b73ad65652e447ef3;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=bfcaae0c68a8547884a352bf5ca4839e7feb9bcc2c92aa6978525ab3a1e63895;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.13.0-282.3.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:3ed37bd5491de4685b6418abd6b83c4b16cc06b7a51e46da7f154c5a149a41a5`  
		Last Modified: Tue, 14 Jul 2026 00:30:18 GMT  
		Size: 28.3 MB (28278203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e5eec5de93eda1f804fd6cee506eaf42ec3e89eb74e15d8e181700fab5b1a92`  
		Last Modified: Thu, 30 Jul 2026 00:54:11 GMT  
		Size: 41.6 MB (41584145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fd45de0b7011191708ee64e62e8e408021f18cf6992781615d622f01d3e9e1e`  
		Last Modified: Thu, 30 Jul 2026 00:53:59 GMT  
		Size: 1.6 MB (1564444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be0ca957c4419adfa92e27e8c426e22382950cafce26fc4abbddefc7ba137cc5`  
		Last Modified: Thu, 30 Jul 2026 00:54:32 GMT  
		Size: 181.2 MB (181229798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.0-282.3.beta` - unknown; unknown

```console
$ docker pull dart@sha256:756179451f0621800305645b6bfdac313fc7e03bb7e0c4cabc699143ee33eb5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (18971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20c7ecd0e0c95c0e58f2238752ca0a935629424b2f0e82a8b4d1253e00ace929`

```dockerfile
```

-	Layers:
	-	`sha256:d2cc72f80f49399fd2768bfb16b1890f1bd99c1614f5c62deae718ce676054e6`  
		Last Modified: Thu, 30 Jul 2026 00:53:58 GMT  
		Size: 19.0 KB (18971 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.13.0-282.3.beta-sdk`

```console
$ docker pull dart@sha256:71961f9ba5511c085fb94705306132d2aaf1d8cedafa13b7e4da01744052a1da
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

### `dart:3.13.0-282.3.beta-sdk` - linux; amd64

```console
$ docker pull dart@sha256:4c6036718d8f3d79b1fd358ffca054e3e30b8e4fab5d417ee13ae8a57208e1c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.5 MB (316506530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44647d3b452ecee106dc035ee9b78a4831e3bce9b4d13e1cfc0a1f1b1c888c9b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:00:46 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 29 Jul 2026 18:00:47 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 29 Jul 2026 18:00:47 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 29 Jul 2026 18:00:47 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:00:47 GMT
WORKDIR /root
# Wed, 29 Jul 2026 18:00:58 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=65b8452103f0b238923603c74ad4760d28a99d07455923837c018c3b96b4fd69;             SDK_ARCH="x64";;         armhf)             DART_SHA256=de9af74b072ade0e5d61a1065df8b0c04dc58907805352f50ddd1715731270a2;             SDK_ARCH="arm";;         arm64)             DART_SHA256=9aeb16aebd0e8395d25d5ebec5ccb2acc0792af0e6f8e22b73ad65652e447ef3;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=bfcaae0c68a8547884a352bf5ca4839e7feb9bcc2c92aa6978525ab3a1e63895;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.13.0-282.3.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0163a8368e88992578bad3e8bf8d804d5e3f0b74106bbf5ad91971d7cc7d04dc`  
		Last Modified: Wed, 29 Jul 2026 18:01:30 GMT  
		Size: 42.5 MB (42516947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2221830bfaeeae913e0b29ae9661addd0d3e806b24439bca5a57ffda1a0adf46`  
		Last Modified: Wed, 29 Jul 2026 18:01:28 GMT  
		Size: 1.9 MB (1869788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a79c63fadac38ece551632db43749745fb888b6354cd36f98a32bbb2b97f5839`  
		Last Modified: Wed, 29 Jul 2026 18:01:34 GMT  
		Size: 242.3 MB (242338858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.0-282.3.beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:01d9500ae51c774d09cb93e7934f3983690fa97ef6db320ab4cd26bb2966e1c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 KB (18923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b4c7fb5275a5ebf65dfc7d0c86e1c5d4b5c6af0bcd19f05da1c1934f95ff759`

```dockerfile
```

-	Layers:
	-	`sha256:091731d01628c32e71f17b1fd3f660d210d1acd86bdc62bbcb653cf04bc905e2`  
		Last Modified: Wed, 29 Jul 2026 18:01:28 GMT  
		Size: 18.9 KB (18923 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.0-282.3.beta-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:4c3af9dd04389ec20259e06c0bd1af62b5588fd41bff12b622d1f87168f58512
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.4 MB (230423651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d07f94d93ec0c9fd91f7576c8aaf1d59f7f365880f47302868a3d1670233dbe`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:04:12 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 29 Jul 2026 18:04:13 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 29 Jul 2026 18:04:13 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 29 Jul 2026 18:04:13 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:04:13 GMT
WORKDIR /root
# Wed, 29 Jul 2026 18:04:21 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=65b8452103f0b238923603c74ad4760d28a99d07455923837c018c3b96b4fd69;             SDK_ARCH="x64";;         armhf)             DART_SHA256=de9af74b072ade0e5d61a1065df8b0c04dc58907805352f50ddd1715731270a2;             SDK_ARCH="arm";;         arm64)             DART_SHA256=9aeb16aebd0e8395d25d5ebec5ccb2acc0792af0e6f8e22b73ad65652e447ef3;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=bfcaae0c68a8547884a352bf5ca4839e7feb9bcc2c92aa6978525ab3a1e63895;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.13.0-282.3.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ef8884a5cf74015b068c42cf30e0da92f3c4f5acf16773d120cb17dad30b758`  
		Last Modified: Wed, 29 Jul 2026 18:04:45 GMT  
		Size: 37.5 MB (37516324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77edf825fd65d0dc3aa526afba2ebf42e904127057d48455960f47259d6f3185`  
		Last Modified: Wed, 29 Jul 2026 18:04:43 GMT  
		Size: 1.3 MB (1273148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae2d7f2028554bba2c2edcb6c93d6f6e24d8c64b76bdcce1dbd1a0ea2fe8cedf`  
		Last Modified: Wed, 29 Jul 2026 18:04:47 GMT  
		Size: 165.4 MB (165427680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.0-282.3.beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:0c68741b1f8906dfcaf9ef55d4c356e213be7c4bb168a694ad6b0c104e552e23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca4854c4188d24afbd5a4b126cc39282f57b4181903c09d8664ed96c5612c9d2`

```dockerfile
```

-	Layers:
	-	`sha256:3df4ee89ccb8c90cdc6629a32afc9ad4f3f0e9712d4c3c56ba6ff65ce110c0e3`  
		Last Modified: Wed, 29 Jul 2026 18:04:43 GMT  
		Size: 19.0 KB (19028 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.0-282.3.beta-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:bfa29cf56c8973cd524b8cf0aa147a4dfd2caf8280033945cf377d41a8808d76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.2 MB (315188197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7e85af8304c24f9db843196805825e55511d5a78e787e5ae23dee7832d20aa9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 17:59:32 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 29 Jul 2026 17:59:33 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 29 Jul 2026 17:59:33 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 29 Jul 2026 17:59:33 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 17:59:33 GMT
WORKDIR /root
# Wed, 29 Jul 2026 17:59:47 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=65b8452103f0b238923603c74ad4760d28a99d07455923837c018c3b96b4fd69;             SDK_ARCH="x64";;         armhf)             DART_SHA256=de9af74b072ade0e5d61a1065df8b0c04dc58907805352f50ddd1715731270a2;             SDK_ARCH="arm";;         arm64)             DART_SHA256=9aeb16aebd0e8395d25d5ebec5ccb2acc0792af0e6f8e22b73ad65652e447ef3;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=bfcaae0c68a8547884a352bf5ca4839e7feb9bcc2c92aa6978525ab3a1e63895;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.13.0-282.3.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:637c916a3d615ca6198efc6a4caa63a488bd61871ad53a822eb7471d428b5746`  
		Last Modified: Wed, 29 Jul 2026 18:00:19 GMT  
		Size: 42.3 MB (42310422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f41b3c7e424820b9196cdf1cadc834e38c42ac3318f8f1d57fae6fd7ae2e939a`  
		Last Modified: Wed, 29 Jul 2026 18:00:17 GMT  
		Size: 1.6 MB (1564382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:179592d61d29f526a3d7cf676e4b4b1d1b9a4202993199c47f50637993613314`  
		Last Modified: Wed, 29 Jul 2026 18:00:24 GMT  
		Size: 241.2 MB (241169656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.0-282.3.beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:1c04309641008f1f8edde40f8494568b17ffdb788fc9f26d5524900cd762ef4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 KB (19057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a5893fdf6fea550a1f6d2af004d8918545c73039205add5fd64fbb2ee71f8e8`

```dockerfile
```

-	Layers:
	-	`sha256:2b071bafc14ace641f609f5b3bed9aa21b5c0c602e43ad7c94f3781537f122fe`  
		Last Modified: Wed, 29 Jul 2026 18:00:17 GMT  
		Size: 19.1 KB (19057 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.0-282.3.beta-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:6057a9f9fa3fa30af10d94075a2c828d9df2e331a13433ddf705334faa6bbd14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.7 MB (252656622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ccca6cd62d4fb12809a123c180a1ae935e9b18006c905244822ba9e81d40c78`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Thu, 30 Jul 2026 00:48:44 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 30 Jul 2026 00:48:46 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 30 Jul 2026 00:48:46 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 30 Jul 2026 00:48:46 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Jul 2026 00:48:46 GMT
WORKDIR /root
# Thu, 30 Jul 2026 00:49:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=65b8452103f0b238923603c74ad4760d28a99d07455923837c018c3b96b4fd69;             SDK_ARCH="x64";;         armhf)             DART_SHA256=de9af74b072ade0e5d61a1065df8b0c04dc58907805352f50ddd1715731270a2;             SDK_ARCH="arm";;         arm64)             DART_SHA256=9aeb16aebd0e8395d25d5ebec5ccb2acc0792af0e6f8e22b73ad65652e447ef3;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=bfcaae0c68a8547884a352bf5ca4839e7feb9bcc2c92aa6978525ab3a1e63895;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.13.0-282.3.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:3ed37bd5491de4685b6418abd6b83c4b16cc06b7a51e46da7f154c5a149a41a5`  
		Last Modified: Tue, 14 Jul 2026 00:30:18 GMT  
		Size: 28.3 MB (28278203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e5eec5de93eda1f804fd6cee506eaf42ec3e89eb74e15d8e181700fab5b1a92`  
		Last Modified: Thu, 30 Jul 2026 00:54:11 GMT  
		Size: 41.6 MB (41584145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fd45de0b7011191708ee64e62e8e408021f18cf6992781615d622f01d3e9e1e`  
		Last Modified: Thu, 30 Jul 2026 00:53:59 GMT  
		Size: 1.6 MB (1564444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be0ca957c4419adfa92e27e8c426e22382950cafce26fc4abbddefc7ba137cc5`  
		Last Modified: Thu, 30 Jul 2026 00:54:32 GMT  
		Size: 181.2 MB (181229798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.0-282.3.beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:756179451f0621800305645b6bfdac313fc7e03bb7e0c4cabc699143ee33eb5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (18971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20c7ecd0e0c95c0e58f2238752ca0a935629424b2f0e82a8b4d1253e00ace929`

```dockerfile
```

-	Layers:
	-	`sha256:d2cc72f80f49399fd2768bfb16b1890f1bd99c1614f5c62deae718ce676054e6`  
		Last Modified: Thu, 30 Jul 2026 00:53:58 GMT  
		Size: 19.0 KB (18971 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:beta`

```console
$ docker pull dart@sha256:71961f9ba5511c085fb94705306132d2aaf1d8cedafa13b7e4da01744052a1da
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

### `dart:beta` - linux; amd64

```console
$ docker pull dart@sha256:4c6036718d8f3d79b1fd358ffca054e3e30b8e4fab5d417ee13ae8a57208e1c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.5 MB (316506530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44647d3b452ecee106dc035ee9b78a4831e3bce9b4d13e1cfc0a1f1b1c888c9b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:00:46 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 29 Jul 2026 18:00:47 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 29 Jul 2026 18:00:47 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 29 Jul 2026 18:00:47 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:00:47 GMT
WORKDIR /root
# Wed, 29 Jul 2026 18:00:58 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=65b8452103f0b238923603c74ad4760d28a99d07455923837c018c3b96b4fd69;             SDK_ARCH="x64";;         armhf)             DART_SHA256=de9af74b072ade0e5d61a1065df8b0c04dc58907805352f50ddd1715731270a2;             SDK_ARCH="arm";;         arm64)             DART_SHA256=9aeb16aebd0e8395d25d5ebec5ccb2acc0792af0e6f8e22b73ad65652e447ef3;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=bfcaae0c68a8547884a352bf5ca4839e7feb9bcc2c92aa6978525ab3a1e63895;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.13.0-282.3.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0163a8368e88992578bad3e8bf8d804d5e3f0b74106bbf5ad91971d7cc7d04dc`  
		Last Modified: Wed, 29 Jul 2026 18:01:30 GMT  
		Size: 42.5 MB (42516947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2221830bfaeeae913e0b29ae9661addd0d3e806b24439bca5a57ffda1a0adf46`  
		Last Modified: Wed, 29 Jul 2026 18:01:28 GMT  
		Size: 1.9 MB (1869788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a79c63fadac38ece551632db43749745fb888b6354cd36f98a32bbb2b97f5839`  
		Last Modified: Wed, 29 Jul 2026 18:01:34 GMT  
		Size: 242.3 MB (242338858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:01d9500ae51c774d09cb93e7934f3983690fa97ef6db320ab4cd26bb2966e1c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 KB (18923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b4c7fb5275a5ebf65dfc7d0c86e1c5d4b5c6af0bcd19f05da1c1934f95ff759`

```dockerfile
```

-	Layers:
	-	`sha256:091731d01628c32e71f17b1fd3f660d210d1acd86bdc62bbcb653cf04bc905e2`  
		Last Modified: Wed, 29 Jul 2026 18:01:28 GMT  
		Size: 18.9 KB (18923 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta` - linux; arm variant v7

```console
$ docker pull dart@sha256:4c3af9dd04389ec20259e06c0bd1af62b5588fd41bff12b622d1f87168f58512
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.4 MB (230423651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d07f94d93ec0c9fd91f7576c8aaf1d59f7f365880f47302868a3d1670233dbe`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:04:12 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 29 Jul 2026 18:04:13 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 29 Jul 2026 18:04:13 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 29 Jul 2026 18:04:13 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:04:13 GMT
WORKDIR /root
# Wed, 29 Jul 2026 18:04:21 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=65b8452103f0b238923603c74ad4760d28a99d07455923837c018c3b96b4fd69;             SDK_ARCH="x64";;         armhf)             DART_SHA256=de9af74b072ade0e5d61a1065df8b0c04dc58907805352f50ddd1715731270a2;             SDK_ARCH="arm";;         arm64)             DART_SHA256=9aeb16aebd0e8395d25d5ebec5ccb2acc0792af0e6f8e22b73ad65652e447ef3;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=bfcaae0c68a8547884a352bf5ca4839e7feb9bcc2c92aa6978525ab3a1e63895;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.13.0-282.3.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ef8884a5cf74015b068c42cf30e0da92f3c4f5acf16773d120cb17dad30b758`  
		Last Modified: Wed, 29 Jul 2026 18:04:45 GMT  
		Size: 37.5 MB (37516324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77edf825fd65d0dc3aa526afba2ebf42e904127057d48455960f47259d6f3185`  
		Last Modified: Wed, 29 Jul 2026 18:04:43 GMT  
		Size: 1.3 MB (1273148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae2d7f2028554bba2c2edcb6c93d6f6e24d8c64b76bdcce1dbd1a0ea2fe8cedf`  
		Last Modified: Wed, 29 Jul 2026 18:04:47 GMT  
		Size: 165.4 MB (165427680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:0c68741b1f8906dfcaf9ef55d4c356e213be7c4bb168a694ad6b0c104e552e23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca4854c4188d24afbd5a4b126cc39282f57b4181903c09d8664ed96c5612c9d2`

```dockerfile
```

-	Layers:
	-	`sha256:3df4ee89ccb8c90cdc6629a32afc9ad4f3f0e9712d4c3c56ba6ff65ce110c0e3`  
		Last Modified: Wed, 29 Jul 2026 18:04:43 GMT  
		Size: 19.0 KB (19028 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:bfa29cf56c8973cd524b8cf0aa147a4dfd2caf8280033945cf377d41a8808d76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.2 MB (315188197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7e85af8304c24f9db843196805825e55511d5a78e787e5ae23dee7832d20aa9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 17:59:32 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 29 Jul 2026 17:59:33 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 29 Jul 2026 17:59:33 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 29 Jul 2026 17:59:33 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 17:59:33 GMT
WORKDIR /root
# Wed, 29 Jul 2026 17:59:47 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=65b8452103f0b238923603c74ad4760d28a99d07455923837c018c3b96b4fd69;             SDK_ARCH="x64";;         armhf)             DART_SHA256=de9af74b072ade0e5d61a1065df8b0c04dc58907805352f50ddd1715731270a2;             SDK_ARCH="arm";;         arm64)             DART_SHA256=9aeb16aebd0e8395d25d5ebec5ccb2acc0792af0e6f8e22b73ad65652e447ef3;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=bfcaae0c68a8547884a352bf5ca4839e7feb9bcc2c92aa6978525ab3a1e63895;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.13.0-282.3.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:637c916a3d615ca6198efc6a4caa63a488bd61871ad53a822eb7471d428b5746`  
		Last Modified: Wed, 29 Jul 2026 18:00:19 GMT  
		Size: 42.3 MB (42310422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f41b3c7e424820b9196cdf1cadc834e38c42ac3318f8f1d57fae6fd7ae2e939a`  
		Last Modified: Wed, 29 Jul 2026 18:00:17 GMT  
		Size: 1.6 MB (1564382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:179592d61d29f526a3d7cf676e4b4b1d1b9a4202993199c47f50637993613314`  
		Last Modified: Wed, 29 Jul 2026 18:00:24 GMT  
		Size: 241.2 MB (241169656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:1c04309641008f1f8edde40f8494568b17ffdb788fc9f26d5524900cd762ef4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 KB (19057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a5893fdf6fea550a1f6d2af004d8918545c73039205add5fd64fbb2ee71f8e8`

```dockerfile
```

-	Layers:
	-	`sha256:2b071bafc14ace641f609f5b3bed9aa21b5c0c602e43ad7c94f3781537f122fe`  
		Last Modified: Wed, 29 Jul 2026 18:00:17 GMT  
		Size: 19.1 KB (19057 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta` - linux; riscv64

```console
$ docker pull dart@sha256:6057a9f9fa3fa30af10d94075a2c828d9df2e331a13433ddf705334faa6bbd14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.7 MB (252656622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ccca6cd62d4fb12809a123c180a1ae935e9b18006c905244822ba9e81d40c78`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Thu, 30 Jul 2026 00:48:44 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 30 Jul 2026 00:48:46 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 30 Jul 2026 00:48:46 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 30 Jul 2026 00:48:46 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Jul 2026 00:48:46 GMT
WORKDIR /root
# Thu, 30 Jul 2026 00:49:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=65b8452103f0b238923603c74ad4760d28a99d07455923837c018c3b96b4fd69;             SDK_ARCH="x64";;         armhf)             DART_SHA256=de9af74b072ade0e5d61a1065df8b0c04dc58907805352f50ddd1715731270a2;             SDK_ARCH="arm";;         arm64)             DART_SHA256=9aeb16aebd0e8395d25d5ebec5ccb2acc0792af0e6f8e22b73ad65652e447ef3;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=bfcaae0c68a8547884a352bf5ca4839e7feb9bcc2c92aa6978525ab3a1e63895;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.13.0-282.3.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:3ed37bd5491de4685b6418abd6b83c4b16cc06b7a51e46da7f154c5a149a41a5`  
		Last Modified: Tue, 14 Jul 2026 00:30:18 GMT  
		Size: 28.3 MB (28278203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e5eec5de93eda1f804fd6cee506eaf42ec3e89eb74e15d8e181700fab5b1a92`  
		Last Modified: Thu, 30 Jul 2026 00:54:11 GMT  
		Size: 41.6 MB (41584145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fd45de0b7011191708ee64e62e8e408021f18cf6992781615d622f01d3e9e1e`  
		Last Modified: Thu, 30 Jul 2026 00:53:59 GMT  
		Size: 1.6 MB (1564444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be0ca957c4419adfa92e27e8c426e22382950cafce26fc4abbddefc7ba137cc5`  
		Last Modified: Thu, 30 Jul 2026 00:54:32 GMT  
		Size: 181.2 MB (181229798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:756179451f0621800305645b6bfdac313fc7e03bb7e0c4cabc699143ee33eb5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (18971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20c7ecd0e0c95c0e58f2238752ca0a935629424b2f0e82a8b4d1253e00ace929`

```dockerfile
```

-	Layers:
	-	`sha256:d2cc72f80f49399fd2768bfb16b1890f1bd99c1614f5c62deae718ce676054e6`  
		Last Modified: Thu, 30 Jul 2026 00:53:58 GMT  
		Size: 19.0 KB (18971 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:beta-sdk`

```console
$ docker pull dart@sha256:71961f9ba5511c085fb94705306132d2aaf1d8cedafa13b7e4da01744052a1da
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

### `dart:beta-sdk` - linux; amd64

```console
$ docker pull dart@sha256:4c6036718d8f3d79b1fd358ffca054e3e30b8e4fab5d417ee13ae8a57208e1c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.5 MB (316506530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44647d3b452ecee106dc035ee9b78a4831e3bce9b4d13e1cfc0a1f1b1c888c9b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:00:46 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 29 Jul 2026 18:00:47 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 29 Jul 2026 18:00:47 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 29 Jul 2026 18:00:47 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:00:47 GMT
WORKDIR /root
# Wed, 29 Jul 2026 18:00:58 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=65b8452103f0b238923603c74ad4760d28a99d07455923837c018c3b96b4fd69;             SDK_ARCH="x64";;         armhf)             DART_SHA256=de9af74b072ade0e5d61a1065df8b0c04dc58907805352f50ddd1715731270a2;             SDK_ARCH="arm";;         arm64)             DART_SHA256=9aeb16aebd0e8395d25d5ebec5ccb2acc0792af0e6f8e22b73ad65652e447ef3;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=bfcaae0c68a8547884a352bf5ca4839e7feb9bcc2c92aa6978525ab3a1e63895;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.13.0-282.3.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0163a8368e88992578bad3e8bf8d804d5e3f0b74106bbf5ad91971d7cc7d04dc`  
		Last Modified: Wed, 29 Jul 2026 18:01:30 GMT  
		Size: 42.5 MB (42516947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2221830bfaeeae913e0b29ae9661addd0d3e806b24439bca5a57ffda1a0adf46`  
		Last Modified: Wed, 29 Jul 2026 18:01:28 GMT  
		Size: 1.9 MB (1869788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a79c63fadac38ece551632db43749745fb888b6354cd36f98a32bbb2b97f5839`  
		Last Modified: Wed, 29 Jul 2026 18:01:34 GMT  
		Size: 242.3 MB (242338858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:01d9500ae51c774d09cb93e7934f3983690fa97ef6db320ab4cd26bb2966e1c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 KB (18923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b4c7fb5275a5ebf65dfc7d0c86e1c5d4b5c6af0bcd19f05da1c1934f95ff759`

```dockerfile
```

-	Layers:
	-	`sha256:091731d01628c32e71f17b1fd3f660d210d1acd86bdc62bbcb653cf04bc905e2`  
		Last Modified: Wed, 29 Jul 2026 18:01:28 GMT  
		Size: 18.9 KB (18923 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:4c3af9dd04389ec20259e06c0bd1af62b5588fd41bff12b622d1f87168f58512
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.4 MB (230423651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d07f94d93ec0c9fd91f7576c8aaf1d59f7f365880f47302868a3d1670233dbe`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:04:12 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 29 Jul 2026 18:04:13 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 29 Jul 2026 18:04:13 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 29 Jul 2026 18:04:13 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:04:13 GMT
WORKDIR /root
# Wed, 29 Jul 2026 18:04:21 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=65b8452103f0b238923603c74ad4760d28a99d07455923837c018c3b96b4fd69;             SDK_ARCH="x64";;         armhf)             DART_SHA256=de9af74b072ade0e5d61a1065df8b0c04dc58907805352f50ddd1715731270a2;             SDK_ARCH="arm";;         arm64)             DART_SHA256=9aeb16aebd0e8395d25d5ebec5ccb2acc0792af0e6f8e22b73ad65652e447ef3;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=bfcaae0c68a8547884a352bf5ca4839e7feb9bcc2c92aa6978525ab3a1e63895;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.13.0-282.3.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ef8884a5cf74015b068c42cf30e0da92f3c4f5acf16773d120cb17dad30b758`  
		Last Modified: Wed, 29 Jul 2026 18:04:45 GMT  
		Size: 37.5 MB (37516324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77edf825fd65d0dc3aa526afba2ebf42e904127057d48455960f47259d6f3185`  
		Last Modified: Wed, 29 Jul 2026 18:04:43 GMT  
		Size: 1.3 MB (1273148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae2d7f2028554bba2c2edcb6c93d6f6e24d8c64b76bdcce1dbd1a0ea2fe8cedf`  
		Last Modified: Wed, 29 Jul 2026 18:04:47 GMT  
		Size: 165.4 MB (165427680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:0c68741b1f8906dfcaf9ef55d4c356e213be7c4bb168a694ad6b0c104e552e23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca4854c4188d24afbd5a4b126cc39282f57b4181903c09d8664ed96c5612c9d2`

```dockerfile
```

-	Layers:
	-	`sha256:3df4ee89ccb8c90cdc6629a32afc9ad4f3f0e9712d4c3c56ba6ff65ce110c0e3`  
		Last Modified: Wed, 29 Jul 2026 18:04:43 GMT  
		Size: 19.0 KB (19028 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:bfa29cf56c8973cd524b8cf0aa147a4dfd2caf8280033945cf377d41a8808d76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.2 MB (315188197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7e85af8304c24f9db843196805825e55511d5a78e787e5ae23dee7832d20aa9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 17:59:32 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 29 Jul 2026 17:59:33 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 29 Jul 2026 17:59:33 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 29 Jul 2026 17:59:33 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 17:59:33 GMT
WORKDIR /root
# Wed, 29 Jul 2026 17:59:47 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=65b8452103f0b238923603c74ad4760d28a99d07455923837c018c3b96b4fd69;             SDK_ARCH="x64";;         armhf)             DART_SHA256=de9af74b072ade0e5d61a1065df8b0c04dc58907805352f50ddd1715731270a2;             SDK_ARCH="arm";;         arm64)             DART_SHA256=9aeb16aebd0e8395d25d5ebec5ccb2acc0792af0e6f8e22b73ad65652e447ef3;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=bfcaae0c68a8547884a352bf5ca4839e7feb9bcc2c92aa6978525ab3a1e63895;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.13.0-282.3.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:637c916a3d615ca6198efc6a4caa63a488bd61871ad53a822eb7471d428b5746`  
		Last Modified: Wed, 29 Jul 2026 18:00:19 GMT  
		Size: 42.3 MB (42310422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f41b3c7e424820b9196cdf1cadc834e38c42ac3318f8f1d57fae6fd7ae2e939a`  
		Last Modified: Wed, 29 Jul 2026 18:00:17 GMT  
		Size: 1.6 MB (1564382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:179592d61d29f526a3d7cf676e4b4b1d1b9a4202993199c47f50637993613314`  
		Last Modified: Wed, 29 Jul 2026 18:00:24 GMT  
		Size: 241.2 MB (241169656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:1c04309641008f1f8edde40f8494568b17ffdb788fc9f26d5524900cd762ef4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 KB (19057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a5893fdf6fea550a1f6d2af004d8918545c73039205add5fd64fbb2ee71f8e8`

```dockerfile
```

-	Layers:
	-	`sha256:2b071bafc14ace641f609f5b3bed9aa21b5c0c602e43ad7c94f3781537f122fe`  
		Last Modified: Wed, 29 Jul 2026 18:00:17 GMT  
		Size: 19.1 KB (19057 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:6057a9f9fa3fa30af10d94075a2c828d9df2e331a13433ddf705334faa6bbd14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.7 MB (252656622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ccca6cd62d4fb12809a123c180a1ae935e9b18006c905244822ba9e81d40c78`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Thu, 30 Jul 2026 00:48:44 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 30 Jul 2026 00:48:46 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 30 Jul 2026 00:48:46 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 30 Jul 2026 00:48:46 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Jul 2026 00:48:46 GMT
WORKDIR /root
# Thu, 30 Jul 2026 00:49:36 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=65b8452103f0b238923603c74ad4760d28a99d07455923837c018c3b96b4fd69;             SDK_ARCH="x64";;         armhf)             DART_SHA256=de9af74b072ade0e5d61a1065df8b0c04dc58907805352f50ddd1715731270a2;             SDK_ARCH="arm";;         arm64)             DART_SHA256=9aeb16aebd0e8395d25d5ebec5ccb2acc0792af0e6f8e22b73ad65652e447ef3;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=bfcaae0c68a8547884a352bf5ca4839e7feb9bcc2c92aa6978525ab3a1e63895;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.13.0-282.3.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:3ed37bd5491de4685b6418abd6b83c4b16cc06b7a51e46da7f154c5a149a41a5`  
		Last Modified: Tue, 14 Jul 2026 00:30:18 GMT  
		Size: 28.3 MB (28278203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e5eec5de93eda1f804fd6cee506eaf42ec3e89eb74e15d8e181700fab5b1a92`  
		Last Modified: Thu, 30 Jul 2026 00:54:11 GMT  
		Size: 41.6 MB (41584145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fd45de0b7011191708ee64e62e8e408021f18cf6992781615d622f01d3e9e1e`  
		Last Modified: Thu, 30 Jul 2026 00:53:59 GMT  
		Size: 1.6 MB (1564444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be0ca957c4419adfa92e27e8c426e22382950cafce26fc4abbddefc7ba137cc5`  
		Last Modified: Thu, 30 Jul 2026 00:54:32 GMT  
		Size: 181.2 MB (181229798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:756179451f0621800305645b6bfdac313fc7e03bb7e0c4cabc699143ee33eb5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (18971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20c7ecd0e0c95c0e58f2238752ca0a935629424b2f0e82a8b4d1253e00ace929`

```dockerfile
```

-	Layers:
	-	`sha256:d2cc72f80f49399fd2768bfb16b1890f1bd99c1614f5c62deae718ce676054e6`  
		Last Modified: Thu, 30 Jul 2026 00:53:58 GMT  
		Size: 19.0 KB (18971 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:latest`

```console
$ docker pull dart@sha256:13140e26d84f4fda57cea31942222112aeb2eec10e5e6874c1c0f70beed189ab
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

### `dart:latest` - linux; amd64

```console
$ docker pull dart@sha256:230b39cac238748c3181dc8eab4e2cb11f2da0914369ea766acd987bdfb27bd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.0 MB (310952917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae1c28e4cf8432240c5e39e59d5959a5375d2dd53998705dadbf4d48788be147`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:44:16 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:44:16 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 14 Jul 2026 01:44:17 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 14 Jul 2026 01:44:17 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 01:44:17 GMT
WORKDIR /root
# Tue, 14 Jul 2026 01:44:27 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b11a9744cfb1b6e735a62d97e527a790c02b381930dc463b7af55d3f1c3145e`  
		Last Modified: Tue, 14 Jul 2026 01:45:00 GMT  
		Size: 42.5 MB (42508627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b04dfc966caaee9eaaa59f80b992f3bd6d4327a5bcafe1fcb9808874d82ef18a`  
		Last Modified: Tue, 14 Jul 2026 01:44:58 GMT  
		Size: 1.9 MB (1869783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23edec85789d9afb2985b7f0773087f03214ddd75948d66f8cc244ea42538c25`  
		Last Modified: Tue, 14 Jul 2026 01:45:03 GMT  
		Size: 236.8 MB (236793570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:latest` - unknown; unknown

```console
$ docker pull dart@sha256:79b32a9bc41181a095eacc2d984aa747ad1535f27048b6827781d648481cb3d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6af2eeae55aa993ee2699b647ebf73db19ef100d6c18805f941a882cf9a7c0ef`

```dockerfile
```

-	Layers:
	-	`sha256:159e6b261a0311f5d791ee03267325ec01a6a530ff60977fd883f8564b08e5c3`  
		Last Modified: Tue, 14 Jul 2026 01:44:58 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:latest` - linux; arm variant v7

```console
$ docker pull dart@sha256:70ff9295d9cffa66deab044c0e28b30e08efb8599e47312d82b5b8e727ce47ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.1 MB (226077199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00453eb6fa353dc5aac2050b7beca6bac26a261602d5b4a37fff7220a1b13ce6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:33:42 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:33:43 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 14 Jul 2026 02:33:43 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 14 Jul 2026 02:33:43 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:33:43 GMT
WORKDIR /root
# Tue, 14 Jul 2026 02:33:51 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9b59d60b0778d6438b52311e6042c518dd228d82d38c099a5483d0b4c05501a`  
		Last Modified: Tue, 14 Jul 2026 02:34:14 GMT  
		Size: 37.5 MB (37511611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc7989d8dcf84fcbf70474aa40200bfecf15db8a37c0abf5f3f26547d2d80e2`  
		Last Modified: Tue, 14 Jul 2026 02:34:13 GMT  
		Size: 1.3 MB (1273157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e20ac6001a366bc5a3d411c998636f325b35327356c1b049184ecf5828c2af5`  
		Last Modified: Tue, 14 Jul 2026 02:34:17 GMT  
		Size: 161.1 MB (161085932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:latest` - unknown; unknown

```console
$ docker pull dart@sha256:f0da35966025ac1aae5f4720cb625094b720044cf6b001b85849eac10c3d315e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bbc5bb7e7895ebae28e0aa6240ad047defc722efc9b634382340d35fdf939a3`

```dockerfile
```

-	Layers:
	-	`sha256:107e671295534b73040349e2b7c5f00024f8968a7de06fae27b305b8f05a236f`  
		Last Modified: Tue, 14 Jul 2026 02:34:13 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:latest` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:04ba929f54bf8e10b2902ad40717381e77b300034a771cfaa4e0f1c3bfd9bdcc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.4 MB (309401979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a65f2849dc1c57386aef6ae2eee89c4b0dfc112e9a94630916ca255b08ed7ac6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:47:37 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:37 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 14 Jul 2026 01:47:37 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 14 Jul 2026 01:47:37 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 01:47:37 GMT
WORKDIR /root
# Tue, 14 Jul 2026 01:47:48 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d19af0c1d7ddf1e01eefa406c41d288270bec0141377fd841e3986dc6961bc69`  
		Last Modified: Tue, 14 Jul 2026 01:48:21 GMT  
		Size: 42.3 MB (42288478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ba00ca71cf1b8769d4574306837e6750a9adcc91d61d931561e24e0d2c47585`  
		Last Modified: Tue, 14 Jul 2026 01:48:19 GMT  
		Size: 1.6 MB (1564383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d589e7f5cd422bdfc9163e3a645e8f304752060836049a1ee720f90b762b0ba`  
		Last Modified: Tue, 14 Jul 2026 01:48:24 GMT  
		Size: 235.4 MB (235405381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:latest` - unknown; unknown

```console
$ docker pull dart@sha256:d300dfd531ee01853f1381cf493685ea71da8bce9e02b8e4aca737f5c1d18064
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cf68a24fce9208bef7ff140de58c5a75ce77c5231324f829289a115db198eda`

```dockerfile
```

-	Layers:
	-	`sha256:be095f6eddc0886daf6bdfb91fc34d32e44efed7434a19b7cd22cbba62a2ffc5`  
		Last Modified: Tue, 14 Jul 2026 01:48:19 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:latest` - linux; riscv64

```console
$ docker pull dart@sha256:b8c68ad6b81b1daa88fe5912c31f4123307ed8defb9f7198174c837bd459e612
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.3 MB (248336863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e49cee274a87937c33045d3dda2ec098ac560ddc66c2a4025a2635d3525dc99b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Wed, 15 Jul 2026 17:35:55 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 15 Jul 2026 17:35:57 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 15 Jul 2026 17:35:57 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 15 Jul 2026 17:35:57 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 15 Jul 2026 17:35:57 GMT
WORKDIR /root
# Wed, 15 Jul 2026 17:36:41 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:3ed37bd5491de4685b6418abd6b83c4b16cc06b7a51e46da7f154c5a149a41a5`  
		Last Modified: Tue, 14 Jul 2026 00:30:18 GMT  
		Size: 28.3 MB (28278203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a79242e9ee8e02c54c19cc387b7e5caaa22cd4ef33321868873943970c3903e`  
		Last Modified: Wed, 15 Jul 2026 17:40:54 GMT  
		Size: 41.6 MB (41581218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e7fa4e699718ce7ae8eb2ae9174d993519062296061f614e6456a3e9adec03a`  
		Last Modified: Wed, 15 Jul 2026 17:40:41 GMT  
		Size: 1.6 MB (1564444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ed9be29d6138cfb006615048082026cbe7b2ca00c446b1272a53ddd731b95d8`  
		Last Modified: Wed, 15 Jul 2026 17:41:13 GMT  
		Size: 176.9 MB (176912966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:latest` - unknown; unknown

```console
$ docker pull dart@sha256:694ede84f411a8aed8a0a4d85467b7e5a1f784dfe35dddad59a5775a1223eca5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8ed5bfd56b80f17bbc1bd6336c403052b7675fff3fb296c7d2fefb7e9f1d84f`

```dockerfile
```

-	Layers:
	-	`sha256:eeff16bad1f06c897b4b24b7d3ec30e340d585317638a42302ea35e4dc2afcd3`  
		Last Modified: Wed, 15 Jul 2026 17:40:41 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:sdk`

```console
$ docker pull dart@sha256:13140e26d84f4fda57cea31942222112aeb2eec10e5e6874c1c0f70beed189ab
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
$ docker pull dart@sha256:230b39cac238748c3181dc8eab4e2cb11f2da0914369ea766acd987bdfb27bd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.0 MB (310952917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae1c28e4cf8432240c5e39e59d5959a5375d2dd53998705dadbf4d48788be147`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:44:16 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:44:16 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 14 Jul 2026 01:44:17 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 14 Jul 2026 01:44:17 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 01:44:17 GMT
WORKDIR /root
# Tue, 14 Jul 2026 01:44:27 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b11a9744cfb1b6e735a62d97e527a790c02b381930dc463b7af55d3f1c3145e`  
		Last Modified: Tue, 14 Jul 2026 01:45:00 GMT  
		Size: 42.5 MB (42508627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b04dfc966caaee9eaaa59f80b992f3bd6d4327a5bcafe1fcb9808874d82ef18a`  
		Last Modified: Tue, 14 Jul 2026 01:44:58 GMT  
		Size: 1.9 MB (1869783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23edec85789d9afb2985b7f0773087f03214ddd75948d66f8cc244ea42538c25`  
		Last Modified: Tue, 14 Jul 2026 01:45:03 GMT  
		Size: 236.8 MB (236793570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:79b32a9bc41181a095eacc2d984aa747ad1535f27048b6827781d648481cb3d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6af2eeae55aa993ee2699b647ebf73db19ef100d6c18805f941a882cf9a7c0ef`

```dockerfile
```

-	Layers:
	-	`sha256:159e6b261a0311f5d791ee03267325ec01a6a530ff60977fd883f8564b08e5c3`  
		Last Modified: Tue, 14 Jul 2026 01:44:58 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:70ff9295d9cffa66deab044c0e28b30e08efb8599e47312d82b5b8e727ce47ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.1 MB (226077199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00453eb6fa353dc5aac2050b7beca6bac26a261602d5b4a37fff7220a1b13ce6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:33:42 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:33:43 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 14 Jul 2026 02:33:43 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 14 Jul 2026 02:33:43 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:33:43 GMT
WORKDIR /root
# Tue, 14 Jul 2026 02:33:51 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9b59d60b0778d6438b52311e6042c518dd228d82d38c099a5483d0b4c05501a`  
		Last Modified: Tue, 14 Jul 2026 02:34:14 GMT  
		Size: 37.5 MB (37511611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc7989d8dcf84fcbf70474aa40200bfecf15db8a37c0abf5f3f26547d2d80e2`  
		Last Modified: Tue, 14 Jul 2026 02:34:13 GMT  
		Size: 1.3 MB (1273157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e20ac6001a366bc5a3d411c998636f325b35327356c1b049184ecf5828c2af5`  
		Last Modified: Tue, 14 Jul 2026 02:34:17 GMT  
		Size: 161.1 MB (161085932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:f0da35966025ac1aae5f4720cb625094b720044cf6b001b85849eac10c3d315e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bbc5bb7e7895ebae28e0aa6240ad047defc722efc9b634382340d35fdf939a3`

```dockerfile
```

-	Layers:
	-	`sha256:107e671295534b73040349e2b7c5f00024f8968a7de06fae27b305b8f05a236f`  
		Last Modified: Tue, 14 Jul 2026 02:34:13 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:04ba929f54bf8e10b2902ad40717381e77b300034a771cfaa4e0f1c3bfd9bdcc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.4 MB (309401979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a65f2849dc1c57386aef6ae2eee89c4b0dfc112e9a94630916ca255b08ed7ac6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:47:37 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:37 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 14 Jul 2026 01:47:37 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 14 Jul 2026 01:47:37 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 01:47:37 GMT
WORKDIR /root
# Tue, 14 Jul 2026 01:47:48 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d19af0c1d7ddf1e01eefa406c41d288270bec0141377fd841e3986dc6961bc69`  
		Last Modified: Tue, 14 Jul 2026 01:48:21 GMT  
		Size: 42.3 MB (42288478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ba00ca71cf1b8769d4574306837e6750a9adcc91d61d931561e24e0d2c47585`  
		Last Modified: Tue, 14 Jul 2026 01:48:19 GMT  
		Size: 1.6 MB (1564383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d589e7f5cd422bdfc9163e3a645e8f304752060836049a1ee720f90b762b0ba`  
		Last Modified: Tue, 14 Jul 2026 01:48:24 GMT  
		Size: 235.4 MB (235405381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:d300dfd531ee01853f1381cf493685ea71da8bce9e02b8e4aca737f5c1d18064
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cf68a24fce9208bef7ff140de58c5a75ce77c5231324f829289a115db198eda`

```dockerfile
```

-	Layers:
	-	`sha256:be095f6eddc0886daf6bdfb91fc34d32e44efed7434a19b7cd22cbba62a2ffc5`  
		Last Modified: Tue, 14 Jul 2026 01:48:19 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:sdk` - linux; riscv64

```console
$ docker pull dart@sha256:b8c68ad6b81b1daa88fe5912c31f4123307ed8defb9f7198174c837bd459e612
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.3 MB (248336863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e49cee274a87937c33045d3dda2ec098ac560ddc66c2a4025a2635d3525dc99b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Wed, 15 Jul 2026 17:35:55 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 15 Jul 2026 17:35:57 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 15 Jul 2026 17:35:57 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 15 Jul 2026 17:35:57 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 15 Jul 2026 17:35:57 GMT
WORKDIR /root
# Wed, 15 Jul 2026 17:36:41 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:3ed37bd5491de4685b6418abd6b83c4b16cc06b7a51e46da7f154c5a149a41a5`  
		Last Modified: Tue, 14 Jul 2026 00:30:18 GMT  
		Size: 28.3 MB (28278203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a79242e9ee8e02c54c19cc387b7e5caaa22cd4ef33321868873943970c3903e`  
		Last Modified: Wed, 15 Jul 2026 17:40:54 GMT  
		Size: 41.6 MB (41581218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e7fa4e699718ce7ae8eb2ae9174d993519062296061f614e6456a3e9adec03a`  
		Last Modified: Wed, 15 Jul 2026 17:40:41 GMT  
		Size: 1.6 MB (1564444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ed9be29d6138cfb006615048082026cbe7b2ca00c446b1272a53ddd731b95d8`  
		Last Modified: Wed, 15 Jul 2026 17:41:13 GMT  
		Size: 176.9 MB (176912966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:694ede84f411a8aed8a0a4d85467b7e5a1f784dfe35dddad59a5775a1223eca5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8ed5bfd56b80f17bbc1bd6336c403052b7675fff3fb296c7d2fefb7e9f1d84f`

```dockerfile
```

-	Layers:
	-	`sha256:eeff16bad1f06c897b4b24b7d3ec30e340d585317638a42302ea35e4dc2afcd3`  
		Last Modified: Wed, 15 Jul 2026 17:40:41 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:stable`

```console
$ docker pull dart@sha256:13140e26d84f4fda57cea31942222112aeb2eec10e5e6874c1c0f70beed189ab
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

### `dart:stable` - linux; amd64

```console
$ docker pull dart@sha256:230b39cac238748c3181dc8eab4e2cb11f2da0914369ea766acd987bdfb27bd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.0 MB (310952917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae1c28e4cf8432240c5e39e59d5959a5375d2dd53998705dadbf4d48788be147`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:44:16 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:44:16 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 14 Jul 2026 01:44:17 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 14 Jul 2026 01:44:17 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 01:44:17 GMT
WORKDIR /root
# Tue, 14 Jul 2026 01:44:27 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b11a9744cfb1b6e735a62d97e527a790c02b381930dc463b7af55d3f1c3145e`  
		Last Modified: Tue, 14 Jul 2026 01:45:00 GMT  
		Size: 42.5 MB (42508627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b04dfc966caaee9eaaa59f80b992f3bd6d4327a5bcafe1fcb9808874d82ef18a`  
		Last Modified: Tue, 14 Jul 2026 01:44:58 GMT  
		Size: 1.9 MB (1869783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23edec85789d9afb2985b7f0773087f03214ddd75948d66f8cc244ea42538c25`  
		Last Modified: Tue, 14 Jul 2026 01:45:03 GMT  
		Size: 236.8 MB (236793570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable` - unknown; unknown

```console
$ docker pull dart@sha256:79b32a9bc41181a095eacc2d984aa747ad1535f27048b6827781d648481cb3d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6af2eeae55aa993ee2699b647ebf73db19ef100d6c18805f941a882cf9a7c0ef`

```dockerfile
```

-	Layers:
	-	`sha256:159e6b261a0311f5d791ee03267325ec01a6a530ff60977fd883f8564b08e5c3`  
		Last Modified: Tue, 14 Jul 2026 01:44:58 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable` - linux; arm variant v7

```console
$ docker pull dart@sha256:70ff9295d9cffa66deab044c0e28b30e08efb8599e47312d82b5b8e727ce47ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.1 MB (226077199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00453eb6fa353dc5aac2050b7beca6bac26a261602d5b4a37fff7220a1b13ce6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:33:42 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:33:43 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 14 Jul 2026 02:33:43 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 14 Jul 2026 02:33:43 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:33:43 GMT
WORKDIR /root
# Tue, 14 Jul 2026 02:33:51 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9b59d60b0778d6438b52311e6042c518dd228d82d38c099a5483d0b4c05501a`  
		Last Modified: Tue, 14 Jul 2026 02:34:14 GMT  
		Size: 37.5 MB (37511611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc7989d8dcf84fcbf70474aa40200bfecf15db8a37c0abf5f3f26547d2d80e2`  
		Last Modified: Tue, 14 Jul 2026 02:34:13 GMT  
		Size: 1.3 MB (1273157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e20ac6001a366bc5a3d411c998636f325b35327356c1b049184ecf5828c2af5`  
		Last Modified: Tue, 14 Jul 2026 02:34:17 GMT  
		Size: 161.1 MB (161085932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable` - unknown; unknown

```console
$ docker pull dart@sha256:f0da35966025ac1aae5f4720cb625094b720044cf6b001b85849eac10c3d315e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bbc5bb7e7895ebae28e0aa6240ad047defc722efc9b634382340d35fdf939a3`

```dockerfile
```

-	Layers:
	-	`sha256:107e671295534b73040349e2b7c5f00024f8968a7de06fae27b305b8f05a236f`  
		Last Modified: Tue, 14 Jul 2026 02:34:13 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:04ba929f54bf8e10b2902ad40717381e77b300034a771cfaa4e0f1c3bfd9bdcc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.4 MB (309401979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a65f2849dc1c57386aef6ae2eee89c4b0dfc112e9a94630916ca255b08ed7ac6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:47:37 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:37 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 14 Jul 2026 01:47:37 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 14 Jul 2026 01:47:37 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 01:47:37 GMT
WORKDIR /root
# Tue, 14 Jul 2026 01:47:48 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d19af0c1d7ddf1e01eefa406c41d288270bec0141377fd841e3986dc6961bc69`  
		Last Modified: Tue, 14 Jul 2026 01:48:21 GMT  
		Size: 42.3 MB (42288478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ba00ca71cf1b8769d4574306837e6750a9adcc91d61d931561e24e0d2c47585`  
		Last Modified: Tue, 14 Jul 2026 01:48:19 GMT  
		Size: 1.6 MB (1564383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d589e7f5cd422bdfc9163e3a645e8f304752060836049a1ee720f90b762b0ba`  
		Last Modified: Tue, 14 Jul 2026 01:48:24 GMT  
		Size: 235.4 MB (235405381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable` - unknown; unknown

```console
$ docker pull dart@sha256:d300dfd531ee01853f1381cf493685ea71da8bce9e02b8e4aca737f5c1d18064
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cf68a24fce9208bef7ff140de58c5a75ce77c5231324f829289a115db198eda`

```dockerfile
```

-	Layers:
	-	`sha256:be095f6eddc0886daf6bdfb91fc34d32e44efed7434a19b7cd22cbba62a2ffc5`  
		Last Modified: Tue, 14 Jul 2026 01:48:19 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable` - linux; riscv64

```console
$ docker pull dart@sha256:b8c68ad6b81b1daa88fe5912c31f4123307ed8defb9f7198174c837bd459e612
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.3 MB (248336863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e49cee274a87937c33045d3dda2ec098ac560ddc66c2a4025a2635d3525dc99b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Wed, 15 Jul 2026 17:35:55 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 15 Jul 2026 17:35:57 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 15 Jul 2026 17:35:57 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 15 Jul 2026 17:35:57 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 15 Jul 2026 17:35:57 GMT
WORKDIR /root
# Wed, 15 Jul 2026 17:36:41 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:3ed37bd5491de4685b6418abd6b83c4b16cc06b7a51e46da7f154c5a149a41a5`  
		Last Modified: Tue, 14 Jul 2026 00:30:18 GMT  
		Size: 28.3 MB (28278203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a79242e9ee8e02c54c19cc387b7e5caaa22cd4ef33321868873943970c3903e`  
		Last Modified: Wed, 15 Jul 2026 17:40:54 GMT  
		Size: 41.6 MB (41581218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e7fa4e699718ce7ae8eb2ae9174d993519062296061f614e6456a3e9adec03a`  
		Last Modified: Wed, 15 Jul 2026 17:40:41 GMT  
		Size: 1.6 MB (1564444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ed9be29d6138cfb006615048082026cbe7b2ca00c446b1272a53ddd731b95d8`  
		Last Modified: Wed, 15 Jul 2026 17:41:13 GMT  
		Size: 176.9 MB (176912966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable` - unknown; unknown

```console
$ docker pull dart@sha256:694ede84f411a8aed8a0a4d85467b7e5a1f784dfe35dddad59a5775a1223eca5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8ed5bfd56b80f17bbc1bd6336c403052b7675fff3fb296c7d2fefb7e9f1d84f`

```dockerfile
```

-	Layers:
	-	`sha256:eeff16bad1f06c897b4b24b7d3ec30e340d585317638a42302ea35e4dc2afcd3`  
		Last Modified: Wed, 15 Jul 2026 17:40:41 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:stable-sdk`

```console
$ docker pull dart@sha256:13140e26d84f4fda57cea31942222112aeb2eec10e5e6874c1c0f70beed189ab
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

### `dart:stable-sdk` - linux; amd64

```console
$ docker pull dart@sha256:230b39cac238748c3181dc8eab4e2cb11f2da0914369ea766acd987bdfb27bd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.0 MB (310952917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae1c28e4cf8432240c5e39e59d5959a5375d2dd53998705dadbf4d48788be147`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:44:16 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:44:16 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 14 Jul 2026 01:44:17 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 14 Jul 2026 01:44:17 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 01:44:17 GMT
WORKDIR /root
# Tue, 14 Jul 2026 01:44:27 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b11a9744cfb1b6e735a62d97e527a790c02b381930dc463b7af55d3f1c3145e`  
		Last Modified: Tue, 14 Jul 2026 01:45:00 GMT  
		Size: 42.5 MB (42508627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b04dfc966caaee9eaaa59f80b992f3bd6d4327a5bcafe1fcb9808874d82ef18a`  
		Last Modified: Tue, 14 Jul 2026 01:44:58 GMT  
		Size: 1.9 MB (1869783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23edec85789d9afb2985b7f0773087f03214ddd75948d66f8cc244ea42538c25`  
		Last Modified: Tue, 14 Jul 2026 01:45:03 GMT  
		Size: 236.8 MB (236793570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:79b32a9bc41181a095eacc2d984aa747ad1535f27048b6827781d648481cb3d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6af2eeae55aa993ee2699b647ebf73db19ef100d6c18805f941a882cf9a7c0ef`

```dockerfile
```

-	Layers:
	-	`sha256:159e6b261a0311f5d791ee03267325ec01a6a530ff60977fd883f8564b08e5c3`  
		Last Modified: Tue, 14 Jul 2026 01:44:58 GMT  
		Size: 20.6 KB (20616 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:70ff9295d9cffa66deab044c0e28b30e08efb8599e47312d82b5b8e727ce47ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.1 MB (226077199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00453eb6fa353dc5aac2050b7beca6bac26a261602d5b4a37fff7220a1b13ce6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:33:42 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:33:43 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 14 Jul 2026 02:33:43 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 14 Jul 2026 02:33:43 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:33:43 GMT
WORKDIR /root
# Tue, 14 Jul 2026 02:33:51 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9b59d60b0778d6438b52311e6042c518dd228d82d38c099a5483d0b4c05501a`  
		Last Modified: Tue, 14 Jul 2026 02:34:14 GMT  
		Size: 37.5 MB (37511611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc7989d8dcf84fcbf70474aa40200bfecf15db8a37c0abf5f3f26547d2d80e2`  
		Last Modified: Tue, 14 Jul 2026 02:34:13 GMT  
		Size: 1.3 MB (1273157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e20ac6001a366bc5a3d411c998636f325b35327356c1b049184ecf5828c2af5`  
		Last Modified: Tue, 14 Jul 2026 02:34:17 GMT  
		Size: 161.1 MB (161085932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:f0da35966025ac1aae5f4720cb625094b720044cf6b001b85849eac10c3d315e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bbc5bb7e7895ebae28e0aa6240ad047defc722efc9b634382340d35fdf939a3`

```dockerfile
```

-	Layers:
	-	`sha256:107e671295534b73040349e2b7c5f00024f8968a7de06fae27b305b8f05a236f`  
		Last Modified: Tue, 14 Jul 2026 02:34:13 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:04ba929f54bf8e10b2902ad40717381e77b300034a771cfaa4e0f1c3bfd9bdcc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.4 MB (309401979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a65f2849dc1c57386aef6ae2eee89c4b0dfc112e9a94630916ca255b08ed7ac6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:47:37 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:37 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 14 Jul 2026 01:47:37 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 14 Jul 2026 01:47:37 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 01:47:37 GMT
WORKDIR /root
# Tue, 14 Jul 2026 01:47:48 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d19af0c1d7ddf1e01eefa406c41d288270bec0141377fd841e3986dc6961bc69`  
		Last Modified: Tue, 14 Jul 2026 01:48:21 GMT  
		Size: 42.3 MB (42288478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ba00ca71cf1b8769d4574306837e6750a9adcc91d61d931561e24e0d2c47585`  
		Last Modified: Tue, 14 Jul 2026 01:48:19 GMT  
		Size: 1.6 MB (1564383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d589e7f5cd422bdfc9163e3a645e8f304752060836049a1ee720f90b762b0ba`  
		Last Modified: Tue, 14 Jul 2026 01:48:24 GMT  
		Size: 235.4 MB (235405381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:d300dfd531ee01853f1381cf493685ea71da8bce9e02b8e4aca737f5c1d18064
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cf68a24fce9208bef7ff140de58c5a75ce77c5231324f829289a115db198eda`

```dockerfile
```

-	Layers:
	-	`sha256:be095f6eddc0886daf6bdfb91fc34d32e44efed7434a19b7cd22cbba62a2ffc5`  
		Last Modified: Tue, 14 Jul 2026 01:48:19 GMT  
		Size: 20.8 KB (20822 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:b8c68ad6b81b1daa88fe5912c31f4123307ed8defb9f7198174c837bd459e612
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.3 MB (248336863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e49cee274a87937c33045d3dda2ec098ac560ddc66c2a4025a2635d3525dc99b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Wed, 15 Jul 2026 17:35:55 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 15 Jul 2026 17:35:57 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 15 Jul 2026 17:35:57 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 15 Jul 2026 17:35:57 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 15 Jul 2026 17:35:57 GMT
WORKDIR /root
# Wed, 15 Jul 2026 17:36:41 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:3ed37bd5491de4685b6418abd6b83c4b16cc06b7a51e46da7f154c5a149a41a5`  
		Last Modified: Tue, 14 Jul 2026 00:30:18 GMT  
		Size: 28.3 MB (28278203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a79242e9ee8e02c54c19cc387b7e5caaa22cd4ef33321868873943970c3903e`  
		Last Modified: Wed, 15 Jul 2026 17:40:54 GMT  
		Size: 41.6 MB (41581218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e7fa4e699718ce7ae8eb2ae9174d993519062296061f614e6456a3e9adec03a`  
		Last Modified: Wed, 15 Jul 2026 17:40:41 GMT  
		Size: 1.6 MB (1564444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ed9be29d6138cfb006615048082026cbe7b2ca00c446b1272a53ddd731b95d8`  
		Last Modified: Wed, 15 Jul 2026 17:41:13 GMT  
		Size: 176.9 MB (176912966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:694ede84f411a8aed8a0a4d85467b7e5a1f784dfe35dddad59a5775a1223eca5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8ed5bfd56b80f17bbc1bd6336c403052b7675fff3fb296c7d2fefb7e9f1d84f`

```dockerfile
```

-	Layers:
	-	`sha256:eeff16bad1f06c897b4b24b7d3ec30e340d585317638a42302ea35e4dc2afcd3`  
		Last Modified: Wed, 15 Jul 2026 17:40:41 GMT  
		Size: 20.7 KB (20700 bytes)  
		MIME: application/vnd.in-toto+json
