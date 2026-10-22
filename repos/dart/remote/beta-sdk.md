## `dart:beta-sdk`

```console
$ docker pull dart@sha256:2200010c7151c38af6a0f35f22e43758775031d2a397f50b4fd9281a5d96f59e
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
$ docker pull dart@sha256:a3cdd5d5861eb4724a129d66fe018ac097e9efe6f055268fc425dae4149a057e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.7 MB (345742165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d1bb468d16bc8b74029dd5c5cd5775f746cce011614dc3aa2f3a2446ac4a720`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:46:44 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:46:45 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 21 Oct 2026 00:46:45 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 21 Oct 2026 00:46:45 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:46:45 GMT
WORKDIR /root
# Wed, 21 Oct 2026 00:46:57 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6168ede8e1b2520ca3ae1e0c94c36bc1a07ac68f44d54adc245ef0dedc443ebe;             SDK_ARCH="x64";;         armhf)             DART_SHA256=39bc4a9f219366a434e8439e182f6c29e3e2589323a6693c14db03cc6f90a89a;             SDK_ARCH="arm";;         arm64)             DART_SHA256=aa2d893e5a231520764d3c80eba3ccf3fe45045d740a6c2f8853d98cd0f882cf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=45774c32ec2e425457cf9dec262ed166f587c2f90f233fe09a18c6dd6f8718ea;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:091caa326637b5baf2108450537bcc3e05f54002d0cccb2804a809301c2b7009`  
		Last Modified: Wed, 21 Oct 2026 00:47:31 GMT  
		Size: 42.5 MB (42526540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a862ff5f2013607f147cde834d5aeefb06404400e7f254a1f6856bda9915c5a1`  
		Last Modified: Wed, 21 Oct 2026 00:47:29 GMT  
		Size: 1.9 MB (1867115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:241fcaf3bcfe044954c481d84ae13fc14eb3e0ebe06d80ec45bbad05d1d1f36e`  
		Last Modified: Wed, 21 Oct 2026 00:47:35 GMT  
		Size: 271.5 MB (271504899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:67adea204409f9a2fcea8a7a7e084a104aa09ffb94d02f483c798a6dceac8b89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 KB (18923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffc27474937eb847a3f7d32c10c1009bbcfb2c602fb0e8dabd5e5303c80bb3ae`

```dockerfile
```

-	Layers:
	-	`sha256:fd0a6c318e160e1c4b8b5cf4e3937f0874b4cd5df55d183d7342c3f679b6cd44`  
		Last Modified: Wed, 21 Oct 2026 00:47:29 GMT  
		Size: 18.9 KB (18923 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:c9c5a1343c95eb5f51ffb25988219fb1abf90f6a30f6d7eac280b81db1978bad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.6 MB (238551419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:843b2988921401a6385db4641964334d598ea17b152ddf3052f6fa3ee02d2091`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:29:46 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:29:47 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 21 Oct 2026 01:29:47 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 21 Oct 2026 01:29:47 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:29:47 GMT
WORKDIR /root
# Wed, 21 Oct 2026 01:29:55 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6168ede8e1b2520ca3ae1e0c94c36bc1a07ac68f44d54adc245ef0dedc443ebe;             SDK_ARCH="x64";;         armhf)             DART_SHA256=39bc4a9f219366a434e8439e182f6c29e3e2589323a6693c14db03cc6f90a89a;             SDK_ARCH="arm";;         arm64)             DART_SHA256=aa2d893e5a231520764d3c80eba3ccf3fe45045d740a6c2f8853d98cd0f882cf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=45774c32ec2e425457cf9dec262ed166f587c2f90f233fe09a18c6dd6f8718ea;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:f8eb073e557b2fb506b6faa9eae3677b1d49ea8721e51992a31cf5c5c4dd75da`  
		Last Modified: Tue, 20 Oct 2026 23:30:46 GMT  
		Size: 26.3 MB (26258396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2895e0b1140571e09b3a4c6a9a66460d53e993184c81ffaee6bc121284a93257`  
		Last Modified: Wed, 21 Oct 2026 01:30:19 GMT  
		Size: 37.5 MB (37528328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6828485fb1c7dae63597095d233ff2542616eaea61694d6b90f955dd4e25f2a4`  
		Last Modified: Wed, 21 Oct 2026 01:30:17 GMT  
		Size: 1.3 MB (1271967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7246a9fea112bbe01bc482c9211b63d8a4c7eadffb0b0ee93dc2555b8a767105`  
		Last Modified: Wed, 21 Oct 2026 01:30:22 GMT  
		Size: 173.5 MB (173492696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:851fceb499473e6302136754a6fb77151848478bdc73a61f9ef39150b6da4858
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:835bd08110d91021f9b0b97e1445190eab14c16dcd847fd3ebfe33961e58bf58`

```dockerfile
```

-	Layers:
	-	`sha256:54b4423d45e4b96a20876b608699724207bf12c3d4fab039f90ef26078fbb50d`  
		Last Modified: Wed, 21 Oct 2026 01:30:17 GMT  
		Size: 19.0 KB (19029 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:53708918d654e66bc4f9946514ed3b0cda684aaab805db88f87a079d1b963e67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.8 MB (343834880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bce9e7bd9855cccec0f447afeb085a26b90fddd0140fa943923a3e0a26c3666f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:50:08 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:50:09 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 21 Oct 2026 00:50:09 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 21 Oct 2026 00:50:09 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:50:09 GMT
WORKDIR /root
# Wed, 21 Oct 2026 00:50:22 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6168ede8e1b2520ca3ae1e0c94c36bc1a07ac68f44d54adc245ef0dedc443ebe;             SDK_ARCH="x64";;         armhf)             DART_SHA256=39bc4a9f219366a434e8439e182f6c29e3e2589323a6693c14db03cc6f90a89a;             SDK_ARCH="arm";;         arm64)             DART_SHA256=aa2d893e5a231520764d3c80eba3ccf3fe45045d740a6c2f8853d98cd0f882cf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=45774c32ec2e425457cf9dec262ed166f587c2f90f233fe09a18c6dd6f8718ea;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2b844090f0b01f43f96ad108128c72b08882131cf4927bac2473c900d51da7a`  
		Last Modified: Wed, 21 Oct 2026 00:50:55 GMT  
		Size: 42.3 MB (42332432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:255045e772afb0dfb10e73b6bd14faa7df19c5aba624c0aae65a5a2c16167908`  
		Last Modified: Wed, 21 Oct 2026 00:50:53 GMT  
		Size: 1.6 MB (1561926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e67705f20fbd98f901b7d768ecf8d1a9821f30bb0367b96fd4eb08102a6f135c`  
		Last Modified: Wed, 21 Oct 2026 00:50:59 GMT  
		Size: 269.7 MB (269740012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:1224506da1d7724abecc1d7bb51fec52292a0db155de7346c7e90a2459132f0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 KB (19057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef115589ae84bac4ec333d962c33acce2698c2b8f67a84a68b8a067321b8e244`

```dockerfile
```

-	Layers:
	-	`sha256:a1c77735ecac606a3f2d0cafd5eee0f722da9a2c970fe2f2f246eaf1534b6e4b`  
		Last Modified: Wed, 21 Oct 2026 00:50:53 GMT  
		Size: 19.1 KB (19057 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:840e98e877679b78694af425a74c81fa7cb4f286c1593df26d040415a0b2b742
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.0 MB (272988856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1694d850ff4e43277511ed88ad5959f70ec39fac133a0ab0a6cfb570c14b28b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1792531975'
# Thu, 22 Oct 2026 05:29:53 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 22 Oct 2026 05:29:54 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 22 Oct 2026 05:29:55 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 22 Oct 2026 05:29:55 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Oct 2026 05:29:55 GMT
WORKDIR /root
# Thu, 22 Oct 2026 05:30:47 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=6168ede8e1b2520ca3ae1e0c94c36bc1a07ac68f44d54adc245ef0dedc443ebe;             SDK_ARCH="x64";;         armhf)             DART_SHA256=39bc4a9f219366a434e8439e182f6c29e3e2589323a6693c14db03cc6f90a89a;             SDK_ARCH="arm";;         arm64)             DART_SHA256=aa2d893e5a231520764d3c80eba3ccf3fe45045d740a6c2f8853d98cd0f882cf;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=45774c32ec2e425457cf9dec262ed166f587c2f90f233fe09a18c6dd6f8718ea;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:c1206888a96a9a1d872c517f2fbe95ce8d2ebe30c523c27832270d8b73768b7c`  
		Last Modified: Tue, 20 Oct 2026 23:49:10 GMT  
		Size: 28.3 MB (28333871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c136405e1c24736f254cbcee246b070f5703a652979e64be7ad81061b91b8f87`  
		Last Modified: Thu, 22 Oct 2026 05:35:45 GMT  
		Size: 41.6 MB (41602663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c29fd3f134b4070c063fdf7fd5c0eb36b503905a257a81fdcfe8b65ffa40753`  
		Last Modified: Thu, 22 Oct 2026 05:35:34 GMT  
		Size: 1.6 MB (1560329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:124ed0fd249bb0440a90a0d4eb2025ab7f226590a45b728e1ade12135fb7f108`  
		Last Modified: Thu, 22 Oct 2026 05:36:10 GMT  
		Size: 201.5 MB (201491961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:8e9876f7a2cb20c9c647616819a163bc0e5cf07cddeb7cc10806bb549ee23b7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (18971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08ba598415382e5ad1cebbf5e681cd71757781248412db0c2c4a68d68e930900`

```dockerfile
```

-	Layers:
	-	`sha256:24462d1fe18be23856b73bc200319bed0a6071bc1b9f837c837786cd85bd5a07`  
		Last Modified: Thu, 22 Oct 2026 05:35:33 GMT  
		Size: 19.0 KB (18971 bytes)  
		MIME: application/vnd.in-toto+json
