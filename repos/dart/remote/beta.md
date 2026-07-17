## `dart:beta`

```console
$ docker pull dart@sha256:e57146928496ba4a88f330a7d7fe6ad44a668807ceb6c15186768a3b8c8baa7e
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
$ docker pull dart@sha256:64a03aa2edec6ba9ec0495165e3cea5dcb4277b7cac460cc1cbafcd5109d0751
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.5 MB (316514049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fbcdd0b88833a444e9a8ac6801781bb82cbbe0eb829784b7204a75268396376`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 17:09:05 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 17:09:05 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 14 Jul 2026 17:09:05 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 14 Jul 2026 17:09:05 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 17:09:05 GMT
WORKDIR /root
# Tue, 14 Jul 2026 17:09:16 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=285beac28ebc4a31dfaf3d46bfedd6502d01bb3ac16c3d69daf73d44d367cf89;             SDK_ARCH="x64";;         armhf)             DART_SHA256=d74cb8c8aaf4f75f9eb75fc1f3e7adff48cffa63ed1a0074cddb54836049193f;             SDK_ARCH="arm";;         arm64)             DART_SHA256=3c80a4d4b1a5dcd042eacadf8668b42d05889a05462f409e967035cb0ba3ed3c;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=89818cef3122d07ac9321a70a85cda17f07324ae733373e03c6545225bbf7cac;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.13.0-282.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b8c4b50b9b150a41fc5d6efd8e03340283b91ca002c125b13fbd6c5d56c6758`  
		Last Modified: Tue, 14 Jul 2026 17:09:44 GMT  
		Size: 42.5 MB (42508644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32058c24ca39323bb516bbd199880d9e834b4dd63f59b3a83ef2d2bf11bb631d`  
		Last Modified: Tue, 14 Jul 2026 17:09:43 GMT  
		Size: 1.9 MB (1869787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12fc152ebb5fdd784093ff79fcd181ee7da824b5f583553474ba04a5172e06be`  
		Last Modified: Tue, 14 Jul 2026 17:09:50 GMT  
		Size: 242.4 MB (242354681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:fe39ed53edb9f62594e0449aa4933106209262881c05efd33f1039a26e3ef0c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 KB (18923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d84d17d7868c985357bf5223502ffafd5747e7b3751953bb2c9847cee3caf74d`

```dockerfile
```

-	Layers:
	-	`sha256:9b8339849c4a99e314336124d2223d07276bb1bd3ed07aeb3030b066a4c34fb8`  
		Last Modified: Tue, 14 Jul 2026 17:09:42 GMT  
		Size: 18.9 KB (18923 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta` - linux; arm variant v7

```console
$ docker pull dart@sha256:21f34bb83021f47bffcbd466a2c9fe5492153ad4843c0dd913ac14da0985f3a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.4 MB (230419500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dac8646821ea7b40ec48d602f40871aeabcb7f3e3c4220409ec350551bf27c69`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 17:08:07 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 17:08:08 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 14 Jul 2026 17:08:08 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 14 Jul 2026 17:08:08 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 17:08:08 GMT
WORKDIR /root
# Tue, 14 Jul 2026 17:08:16 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=285beac28ebc4a31dfaf3d46bfedd6502d01bb3ac16c3d69daf73d44d367cf89;             SDK_ARCH="x64";;         armhf)             DART_SHA256=d74cb8c8aaf4f75f9eb75fc1f3e7adff48cffa63ed1a0074cddb54836049193f;             SDK_ARCH="arm";;         arm64)             DART_SHA256=3c80a4d4b1a5dcd042eacadf8668b42d05889a05462f409e967035cb0ba3ed3c;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=89818cef3122d07ac9321a70a85cda17f07324ae733373e03c6545225bbf7cac;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.13.0-282.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2652e3dc7c512b682946f172063cb811b467ad3de04df64d2f2e0417dd4cbd73`  
		Last Modified: Tue, 14 Jul 2026 17:08:40 GMT  
		Size: 37.5 MB (37511211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9017a7db627631b87cd8d006dd2879bfb43ec3c0d940383d20034a6e01ad50ef`  
		Last Modified: Tue, 14 Jul 2026 17:08:38 GMT  
		Size: 1.3 MB (1273150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c61c06b5f190c1116d816dd038086f6647332aba346fc4008444b80429322e2`  
		Last Modified: Tue, 14 Jul 2026 17:08:43 GMT  
		Size: 165.4 MB (165428640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:55dbc2376e3166e13d13f4f10713bf321dce077ba86bbb7b22cf96ec3d5dedc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93e482e9b35c9ef83066ce20458bcce423d6d0a0e6d7706f67fb5f9a206fa84a`

```dockerfile
```

-	Layers:
	-	`sha256:d0ef601cf6a5cd2fea6e94135c537cea64c697b13202c575c2d99ae004c59a80`  
		Last Modified: Tue, 14 Jul 2026 17:08:38 GMT  
		Size: 19.0 KB (19029 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:b9b14c19ee45d0dfdacc398829f96d2b13a1ce8b004e27c98b33269302902464
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.2 MB (315160773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e425bffb33f436d56c654f3db6853d0c1e330e0b21df8ac366c31049c182f03b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 17:08:48 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 17:08:49 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 14 Jul 2026 17:08:49 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 14 Jul 2026 17:08:49 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 17:08:49 GMT
WORKDIR /root
# Tue, 14 Jul 2026 17:09:01 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=285beac28ebc4a31dfaf3d46bfedd6502d01bb3ac16c3d69daf73d44d367cf89;             SDK_ARCH="x64";;         armhf)             DART_SHA256=d74cb8c8aaf4f75f9eb75fc1f3e7adff48cffa63ed1a0074cddb54836049193f;             SDK_ARCH="arm";;         arm64)             DART_SHA256=3c80a4d4b1a5dcd042eacadf8668b42d05889a05462f409e967035cb0ba3ed3c;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=89818cef3122d07ac9321a70a85cda17f07324ae733373e03c6545225bbf7cac;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.13.0-282.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5977ce698b90b2c2217807a5075f80be26d5979bb7cb5d2d6898b2a7146c8e23`  
		Last Modified: Tue, 14 Jul 2026 17:09:34 GMT  
		Size: 42.3 MB (42288361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de1bf2465ddcbc9b3896b99a1c9c563b7c3c7e41daca4980306a2f79d7a72ed1`  
		Last Modified: Tue, 14 Jul 2026 17:09:32 GMT  
		Size: 1.6 MB (1564384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e247afaa59f05fa937cb8753b44c27ca8e9bd3caa3269a75cbf0b4f549efe160`  
		Last Modified: Tue, 14 Jul 2026 17:09:38 GMT  
		Size: 241.2 MB (241164291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:46b1562b5560b41be694403f4191b1c1cb08be26f4c89c5969be16878fd92d01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 KB (19057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:510f751f4a903ccbdf0eaf820d05c1604d09097628e5b96c312e5d2550ee676a`

```dockerfile
```

-	Layers:
	-	`sha256:a94c30a0e95cdeecfa98cfba52c6cc4db1abc040a774b19b4d1fad1b88f7b4af`  
		Last Modified: Tue, 14 Jul 2026 17:09:32 GMT  
		Size: 19.1 KB (19057 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta` - linux; riscv64

```console
$ docker pull dart@sha256:1bf76046bb87edfe59f0e5d19509abb5adee09844a2343270ce363075cba4bf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.6 MB (252646824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:947ba0e067a0e768674a10f5b89fc7a7a243fb46d860be420bb55a1f06e16451`
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
# Thu, 16 Jul 2026 22:56:54 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=285beac28ebc4a31dfaf3d46bfedd6502d01bb3ac16c3d69daf73d44d367cf89;             SDK_ARCH="x64";;         armhf)             DART_SHA256=d74cb8c8aaf4f75f9eb75fc1f3e7adff48cffa63ed1a0074cddb54836049193f;             SDK_ARCH="arm";;         arm64)             DART_SHA256=3c80a4d4b1a5dcd042eacadf8668b42d05889a05462f409e967035cb0ba3ed3c;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=89818cef3122d07ac9321a70a85cda17f07324ae733373e03c6545225bbf7cac;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.13.0-282.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
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
	-	`sha256:843e93982a2f06c38e782d8b22eddb0c367f8186db31a97ea95f704ded0361c8`  
		Last Modified: Thu, 16 Jul 2026 23:01:20 GMT  
		Size: 181.2 MB (181222927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:2223f6e59a0f391f2fd0a4413b182382eb730df5c0945032da8c4261758bd8f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (18971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc91694d2976e36a22187ed454272ed5315e27325ddd7d1f205371f7c88dfb44`

```dockerfile
```

-	Layers:
	-	`sha256:aef8617fcb66f5fb4d8e2cfbab07f914d1f2f904bbc72680d67bbc457a9256d8`  
		Last Modified: Thu, 16 Jul 2026 23:00:53 GMT  
		Size: 19.0 KB (18971 bytes)  
		MIME: application/vnd.in-toto+json
