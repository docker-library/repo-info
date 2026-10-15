## `dart:beta`

```console
$ docker pull dart@sha256:d8cc9a49a27311e542259576f5aa2fb3e12d67d3f5f629c7f98593ac52e8ff0e
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
$ docker pull dart@sha256:1fa5eeca5bce8e77427276fdf01b0b8d2a76a0bd17a038a1cd9a27b5c3eb852a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.7 MB (345740408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:accdd81555eac28638a77556785ccc9820b6a3b947e744cf361bacff2820083c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 13 Oct 2026 20:53:56 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 20:53:57 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 13 Oct 2026 20:53:57 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 13 Oct 2026 20:53:57 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 20:53:57 GMT
WORKDIR /root
# Tue, 13 Oct 2026 20:54:09 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8ceaf3e7e022901be224e0c48404c8456a6943f2f9d20dbe6bbe2e3f09f4b63b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=5cbad2c385e29aa29fd0432c4a0ce595f434aff8653d4e08fd6ddc233c0d8928;             SDK_ARCH="arm";;         arm64)             DART_SHA256=74a6b048af5d12068ef5c7173008fee1f5132cd775a5021d5302499cb1f985cd;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=a26f5bb718b10a7d78495f5b7bda0d17ff94d0b4dce3a54c4ff1a9ad6efaa8a5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eee268953676dcc3943818f5434d1e2db2ee774d0e1f020d2ee3f37c7a81c959`  
		Last Modified: Tue, 13 Oct 2026 20:54:43 GMT  
		Size: 42.5 MB (42526107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e613e989b5474e976f3f9cdd8e61225ece3c08dc565312e2e4acc0a1ec52f95`  
		Last Modified: Tue, 13 Oct 2026 20:54:41 GMT  
		Size: 1.9 MB (1869668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c23a43261d07d61c792cd6b5b0e0e3840b2bc988f7ab2009cc928d083cad368`  
		Last Modified: Tue, 13 Oct 2026 20:54:48 GMT  
		Size: 271.5 MB (271501251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:e17a9dc508cca766b0a130583b6ba2690e46947811e11b69a24e965ab81c5123
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 KB (18923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5f1675581509786c4b16156c76b28f4754980cb398908d5bae459f9173b41d6`

```dockerfile
```

-	Layers:
	-	`sha256:1c32713f031a891ebdb9a369283b8e5d3982a2b55d07f5c96e8293679d976a23`  
		Last Modified: Tue, 13 Oct 2026 20:54:41 GMT  
		Size: 18.9 KB (18923 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta` - linux; arm variant v7

```console
$ docker pull dart@sha256:bf0508301a86a0312d80dead4129d224f3c274fc35582b8dc8c113c1eaedd9ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.6 MB (238553756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4992c4485e6aed442c47ad1c72710f0a78bdaaf2f39eb4649cff2d96d65f0dfb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 13 Oct 2026 20:55:15 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 20:55:15 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 13 Oct 2026 20:55:15 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 13 Oct 2026 20:55:15 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 20:55:15 GMT
WORKDIR /root
# Tue, 13 Oct 2026 20:55:26 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8ceaf3e7e022901be224e0c48404c8456a6943f2f9d20dbe6bbe2e3f09f4b63b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=5cbad2c385e29aa29fd0432c4a0ce595f434aff8653d4e08fd6ddc233c0d8928;             SDK_ARCH="arm";;         arm64)             DART_SHA256=74a6b048af5d12068ef5c7173008fee1f5132cd775a5021d5302499cb1f985cd;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=a26f5bb718b10a7d78495f5b7bda0d17ff94d0b4dce3a54c4ff1a9ad6efaa8a5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66b802219692831499109fe2ed4a84e18da36731de098d1e88be05121a8108b6`  
		Last Modified: Tue, 13 Oct 2026 20:55:49 GMT  
		Size: 37.5 MB (37528031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f844bf1330964337dd3db59b525815c979d451c38bb90d14a0efbb228a177708`  
		Last Modified: Tue, 13 Oct 2026 20:55:47 GMT  
		Size: 1.3 MB (1273041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13b9c3bb9271f14001ed751ea40736b1e8471309b108c862146bcb40452fc281`  
		Last Modified: Tue, 13 Oct 2026 20:55:52 GMT  
		Size: 173.5 MB (173494474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:622adf7a13e0c547271e4681e377502ed1b80e3644f5f8643619bbbbdf4aceb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ece69aa02da7ff6761c6f21a0dac1e3773d58ca9a77125ff428a28570253571`

```dockerfile
```

-	Layers:
	-	`sha256:75cadeb258f7f4d6c2c6b282030f9436192a51994519ce389baf91bc1b8f8ffa`  
		Last Modified: Tue, 13 Oct 2026 20:55:47 GMT  
		Size: 19.0 KB (19027 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:394f0a8eecd556116aa6f94603733706e56072b1de3a29203182fff4475ed27f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.8 MB (343826490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9adf1fd1fc9be59ba5792ad52ffd77a983d2574acefebabec06f36f12ab07a7b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 13 Oct 2026 20:53:56 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 20:53:56 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 13 Oct 2026 20:53:56 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 13 Oct 2026 20:53:56 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 20:53:56 GMT
WORKDIR /root
# Tue, 13 Oct 2026 20:54:10 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8ceaf3e7e022901be224e0c48404c8456a6943f2f9d20dbe6bbe2e3f09f4b63b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=5cbad2c385e29aa29fd0432c4a0ce595f434aff8653d4e08fd6ddc233c0d8928;             SDK_ARCH="arm";;         arm64)             DART_SHA256=74a6b048af5d12068ef5c7173008fee1f5132cd775a5021d5302499cb1f985cd;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=a26f5bb718b10a7d78495f5b7bda0d17ff94d0b4dce3a54c4ff1a9ad6efaa8a5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:295fcd2992a275e3bf88fff16418f07a59ff8645f6f4f249dca08d60a94cdf0f`  
		Last Modified: Tue, 13 Oct 2026 20:54:43 GMT  
		Size: 42.3 MB (42320546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7aa0ca0c4cd0c3758d37928f85ce38b999a6718d80fe96fc29670821da3fcef`  
		Last Modified: Tue, 13 Oct 2026 20:54:41 GMT  
		Size: 1.6 MB (1564403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8428c0f5c3f00424625dbb5e26165f722e0226d9473186c51052b4378d203fdf`  
		Last Modified: Tue, 13 Oct 2026 20:54:48 GMT  
		Size: 269.7 MB (269741227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:36d3ed878b1f10aaa87946ca3b4826cd315db76d576d943fbbbd80dc2028501c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 KB (19056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc740b222a62ac504a35b0c4076249b9c1e4e908f2f7239effbd897eecff759d`

```dockerfile
```

-	Layers:
	-	`sha256:6327aaf46a326150037c1677327e4d7aa78d47e2e681ff8d1c67ed4bcbf27ee3`  
		Last Modified: Tue, 13 Oct 2026 20:54:41 GMT  
		Size: 19.1 KB (19056 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta` - linux; riscv64

```console
$ docker pull dart@sha256:c709c3953bb40fa715944ec35141e70b4510d038329c2372252071e747c5cfe4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.0 MB (272990406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd302df363c3f1f2a8f4b523c5ee494a19e0d52f0c45765b61ea60bfd1640479`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Thu, 15 Oct 2026 02:57:17 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 15 Oct 2026 02:57:19 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 15 Oct 2026 02:57:19 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 15 Oct 2026 02:57:19 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Oct 2026 02:57:19 GMT
WORKDIR /root
# Thu, 15 Oct 2026 02:58:12 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8ceaf3e7e022901be224e0c48404c8456a6943f2f9d20dbe6bbe2e3f09f4b63b;             SDK_ARCH="x64";;         armhf)             DART_SHA256=5cbad2c385e29aa29fd0432c4a0ce595f434aff8653d4e08fd6ddc233c0d8928;             SDK_ARCH="arm";;         arm64)             DART_SHA256=74a6b048af5d12068ef5c7173008fee1f5132cd775a5021d5302499cb1f985cd;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=a26f5bb718b10a7d78495f5b7bda0d17ff94d0b4dce3a54c4ff1a9ad6efaa8a5;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-315.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07af1f83fe81039af4cffa1c6579dbc54816533b0a48e1dac85b7b8a4593617d`  
		Last Modified: Thu, 15 Oct 2026 03:03:17 GMT  
		Size: 41.6 MB (41600782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22024fff6451d607867e80a7951fd48440e2a860876f01678ab2a19f9da40e11`  
		Last Modified: Thu, 15 Oct 2026 03:03:05 GMT  
		Size: 1.6 MB (1563905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be0401f808c7fbf7614b2a3d348116cd4c9c30e60918973d7d4f4d6eed83d201`  
		Last Modified: Thu, 15 Oct 2026 03:03:42 GMT  
		Size: 201.5 MB (201491924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:1c77298a31eff777ad024a7afe5ec011c86402a45b465c9c3e50479266ff8dfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (18971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ddfd9db0586d916abf87447084d5969b5d71d80ea62141828a01dc2ea665a17`

```dockerfile
```

-	Layers:
	-	`sha256:74d19f8705b283979729cae9591fd3fbbaa7ab13bd10ff76d9849ddc15b1ddba`  
		Last Modified: Thu, 15 Oct 2026 03:03:05 GMT  
		Size: 19.0 KB (18971 bytes)  
		MIME: application/vnd.in-toto+json
