## `dart:beta-sdk`

```console
$ docker pull dart@sha256:4cbca7eccfc5cdb4b3cc03ff0482b5964c85a5db37c15259f28973d773fdab09
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

### `dart:beta-sdk` - unknown; unknown

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

### `dart:beta-sdk` - linux; arm variant v7

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

### `dart:beta-sdk` - unknown; unknown

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

### `dart:beta-sdk` - linux; arm64 variant v8

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

### `dart:beta-sdk` - unknown; unknown

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

### `dart:beta-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:92e31ceadf36b991f285249c814c3b9335f5cfaad9f4e9e826a0dbdb0a925074
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (271975464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:687d1330ed9c1795b8e40ff05ccfeb5667b94f4374cd5d05e1a27e6396c3600c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Wed, 07 Oct 2026 20:18:32 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 07 Oct 2026 20:18:34 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 07 Oct 2026 20:18:34 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 07 Oct 2026 20:18:34 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Oct 2026 20:18:34 GMT
WORKDIR /root
# Wed, 07 Oct 2026 20:26:03 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8424b776a20df02cf61c0fe60b385f6d888c2ee69c58489d050817a137e20a58;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2f3ee3ed4b23fc3ef043399f3c6044b155e17edda653094c9b66a2ae220f17eb;             SDK_ARCH="arm";;         arm64)             DART_SHA256=4af4d3da25c1a94b725aecfeeff0a5fc43306f93152db28b00f6f9d09b7459ea;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=ae68d4f5173f9662a435dc384ebac96c0d8cbb1452b012e9accf8913560af614;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-211.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3baec26a40745c7b95055d32c48efb7ab53bd79b6751fdf40ab2119ea15b6b11`  
		Last Modified: Wed, 07 Oct 2026 20:24:19 GMT  
		Size: 41.6 MB (41601255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3e3c193b308048cfb298c49f10cbcc20573e6b161af84849acafb892c302102`  
		Last Modified: Wed, 07 Oct 2026 20:24:07 GMT  
		Size: 1.6 MB (1563904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24ace43eed9c056e81ddd5e23af959391163e4512c2e7d4e7f114705cfd6bdec`  
		Last Modified: Wed, 07 Oct 2026 20:31:19 GMT  
		Size: 200.5 MB (200476510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:3577369f48d4be2755dc3bffbe926980ffc8990cf736d18898b04bb66fd0c200
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (18971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0ba4301941ad9ba1965cdf3400a189df03e2d2f4c050df34709f94fc30fe452`

```dockerfile
```

-	Layers:
	-	`sha256:c95fc02ef57da6bff1246bf827daf8edc79a91752aaff089c5d532edcdc920df`  
		Last Modified: Wed, 07 Oct 2026 20:30:47 GMT  
		Size: 19.0 KB (18971 bytes)  
		MIME: application/vnd.in-toto+json
