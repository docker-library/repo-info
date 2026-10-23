## `dart:beta`

```console
$ docker pull dart@sha256:f9cfedb7c638dff62f30cce578b8d917491a64af01453b6e1b50effb224e5698
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
$ docker pull dart@sha256:ccc2bec41ca45a56f09c7466bcf0076cc68734067990f16e82317515102924f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.9 MB (345863295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ce1b3ae0bc4fcbaca069a8093b6865a4d244e954ad6665836362cabda665d9a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Fri, 23 Oct 2026 18:30:16 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 18:30:17 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Fri, 23 Oct 2026 18:30:17 GMT
ENV DART_SDK=/usr/lib/dart
# Fri, 23 Oct 2026 18:30:17 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 18:30:17 GMT
WORKDIR /root
# Fri, 23 Oct 2026 18:30:28 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=4e54a80eeaf04055501ac91708de4a915d61c5c0e1a4e06da4da1d1f511f38ed;             SDK_ARCH="x64";;         armhf)             DART_SHA256=6eb269a079eccd8cafc72e25b183d1037437f597fd8119ec06558ac3b6179cd2;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f9b6819da79893a371b0580395f462a7c4d76e20cb3476eb7f78da4663064414;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=92a0599b5e5223511ba7c29f4f6d5c9fe356d80a2c27f36e5a715fddf35f1bdf;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.3.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3be018b3f894adb69043ce577281e9d58ec0dcc9c7933f50cb2bcd0715cb241c`  
		Last Modified: Fri, 23 Oct 2026 18:31:01 GMT  
		Size: 42.5 MB (42525901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb17ea82c1d69ef28623f12576ac17c7107345f3c871eea1ede81c57c92ca385`  
		Last Modified: Fri, 23 Oct 2026 18:30:59 GMT  
		Size: 1.9 MB (1867118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c4f14cf01007e4e380a7dc912aacbd60ad115f48a688939c2ee4a802fda9dc7`  
		Last Modified: Fri, 23 Oct 2026 18:31:06 GMT  
		Size: 271.6 MB (271626665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:fe7591942bf9452e543430f236c85b31b9d62b406b2a628ada9f9a18252bcc9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 KB (18923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0f5cb208c0ba8798810f868f6efdbd6bd9670005396bd926af164cde4f28063`

```dockerfile
```

-	Layers:
	-	`sha256:8215ac9af0baa4b9d613069aad4dc4fb1a3591190bc1a140315fdc285fbf2b4d`  
		Last Modified: Fri, 23 Oct 2026 18:30:59 GMT  
		Size: 18.9 KB (18923 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta` - linux; arm variant v7

```console
$ docker pull dart@sha256:749845773f438bad5fa32db631b42a8d63f35503e85dda95c58dac591bc714e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.6 MB (238586832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa4e36ef8510752ecb1a4715a197b0ef2d1768059d6fe72f2641665414457e2c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1792531975'
# Fri, 23 Oct 2026 18:30:23 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 18:30:23 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Fri, 23 Oct 2026 18:30:23 GMT
ENV DART_SDK=/usr/lib/dart
# Fri, 23 Oct 2026 18:30:23 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 18:30:23 GMT
WORKDIR /root
# Fri, 23 Oct 2026 18:30:32 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=4e54a80eeaf04055501ac91708de4a915d61c5c0e1a4e06da4da1d1f511f38ed;             SDK_ARCH="x64";;         armhf)             DART_SHA256=6eb269a079eccd8cafc72e25b183d1037437f597fd8119ec06558ac3b6179cd2;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f9b6819da79893a371b0580395f462a7c4d76e20cb3476eb7f78da4663064414;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=92a0599b5e5223511ba7c29f4f6d5c9fe356d80a2c27f36e5a715fddf35f1bdf;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.3.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:f8eb073e557b2fb506b6faa9eae3677b1d49ea8721e51992a31cf5c5c4dd75da`  
		Last Modified: Tue, 20 Oct 2026 23:30:46 GMT  
		Size: 26.3 MB (26258396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19840fc13707e13b2615b2768df3b3f1c51fe0d282f4f39382a466d55d67ace5`  
		Last Modified: Fri, 23 Oct 2026 18:30:55 GMT  
		Size: 37.5 MB (37529563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f70087963134484cc3c5b7dbfc864b5e0ce7f35413b1e8d1fd0cc3823df2eb07`  
		Last Modified: Fri, 23 Oct 2026 18:30:54 GMT  
		Size: 1.3 MB (1271970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45ca0b8494af165a03e9432b95b84de79a83488eedaf8278841131e220b32c51`  
		Last Modified: Fri, 23 Oct 2026 18:30:58 GMT  
		Size: 173.5 MB (173526871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:c8b60d54c5ce3f61fecf6b1d77fb06464c21bb6897d05d3189e9c3c784abfff5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0314fbd045fbca5344a4b90a522f823a8a6b4f716a962b0b104b65c40f5629a8`

```dockerfile
```

-	Layers:
	-	`sha256:41766d466889c520f9f4a972409388f1b8ee240103f05f1924fd640493a4424e`  
		Last Modified: Fri, 23 Oct 2026 18:30:54 GMT  
		Size: 19.0 KB (19029 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:6b2465f46f94d5ad52b83bc30de4976e769f5bf96f017489f663c4dce2f21f0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.0 MB (343955569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eeb60fb289387d6ca83bd63737d582965b5b94197fa71cd6438fd8adb898671f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Fri, 23 Oct 2026 18:30:19 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 18:30:19 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Fri, 23 Oct 2026 18:30:19 GMT
ENV DART_SDK=/usr/lib/dart
# Fri, 23 Oct 2026 18:30:19 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 18:30:19 GMT
WORKDIR /root
# Fri, 23 Oct 2026 18:30:35 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=4e54a80eeaf04055501ac91708de4a915d61c5c0e1a4e06da4da1d1f511f38ed;             SDK_ARCH="x64";;         armhf)             DART_SHA256=6eb269a079eccd8cafc72e25b183d1037437f597fd8119ec06558ac3b6179cd2;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f9b6819da79893a371b0580395f462a7c4d76e20cb3476eb7f78da4663064414;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=92a0599b5e5223511ba7c29f4f6d5c9fe356d80a2c27f36e5a715fddf35f1bdf;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.3.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cb63509895eebda33174bfdcbb62a464e9df5dec0312150744fb28ee0590e49`  
		Last Modified: Fri, 23 Oct 2026 18:31:07 GMT  
		Size: 42.3 MB (42322298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:548151d2b2272c98ed053c223d25bf1c9a9b7cb66989ee22d495e7add30a8051`  
		Last Modified: Fri, 23 Oct 2026 18:31:05 GMT  
		Size: 1.6 MB (1561921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7a385fb996fa00f0cd21040c7458b4b368975c6ab948cd5ed3c43ee102b8530`  
		Last Modified: Fri, 23 Oct 2026 18:31:11 GMT  
		Size: 269.9 MB (269870840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:df8d1982f32d46e9b38b77f20c7b8396dfd4416670d2de1456054ecc2e1ad81b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 KB (19057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9f7a8d5b7dee491093addf3e3db62a3b4cc2b0c56e7d41ed48d874f75a4fb57`

```dockerfile
```

-	Layers:
	-	`sha256:5277590609b7e087cceb92c65c8f71030a0a0ffa0dd139bcf730deff049e9466`  
		Last Modified: Fri, 23 Oct 2026 18:31:05 GMT  
		Size: 19.1 KB (19057 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta` - linux; riscv64

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

### `dart:beta` - unknown; unknown

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
