## `dart:beta`

```console
$ docker pull dart@sha256:313c289c62be40f46bb53abefa2c759af3e93125d19bf0e739cea20e7ee85066
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
$ docker pull dart@sha256:013f6f2e25016d0380867deabfe74e1aa55eb3586b0243f3de9cb1c83a34fcbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.5 MB (316537974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6fc238180add2296b59dc1532a8c062599cce35801af51dd9ef93f8dcd6c416`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Thu, 09 Jul 2026 17:15:15 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 17:15:16 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 09 Jul 2026 17:15:16 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 09 Jul 2026 17:15:16 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 Jul 2026 17:15:16 GMT
WORKDIR /root
# Thu, 09 Jul 2026 17:15:28 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=c51830deb8d9b3b64725601b5f2a8b2b3cb49a4cbabdede5274c6cd0550a9e66;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2a7a6c6bde4e8da064380870f1eba5d004784610f3b74dac76fda2793840ab98;             SDK_ARCH="arm";;         arm64)             DART_SHA256=2a8282d286df1834b0c9a274d2ae452d329de4da15fa576979aeb5c0168da1ba;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=13a6bdd628f76c58da53445dc4bc7bc252f09b9a2662e20a8e18d19651b3f5f8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.13.0-282.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed6c94a8f83f6108ffce666247c3091c829b3d07bc4f13a59536144a213a2966`  
		Last Modified: Thu, 09 Jul 2026 17:15:57 GMT  
		Size: 42.5 MB (42505663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e21edd10d1cd3009c16e898531c3a69432156f64f6358421d8ab00847c043bd2`  
		Last Modified: Thu, 09 Jul 2026 17:15:56 GMT  
		Size: 1.9 MB (1869788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53e5e396cdad2cb764a44e4020ef147965a7048d5260d3f193f44fd5ef47f799`  
		Last Modified: Thu, 09 Jul 2026 17:16:02 GMT  
		Size: 242.4 MB (242377072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:666a1d06e93cede7ab0e7d46d32ac8ad2da4ea3e362df03930b187816d3a91ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 KB (18923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f5caabf8c804a07af06b75c488a571495db066adc9c87b4437a764e6d5eeba4`

```dockerfile
```

-	Layers:
	-	`sha256:eb373ac1198e2f195b81564fbb51141cce23058db633cd3baa67148c37773737`  
		Last Modified: Thu, 09 Jul 2026 17:15:55 GMT  
		Size: 18.9 KB (18923 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta` - linux; arm variant v7

```console
$ docker pull dart@sha256:17c4480023cf7350c480ffafd16d6a2451e99bf52b702799fa4404489dba999c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.4 MB (230405448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:294fee5fe63ff64a0a0b6308572c0a1906748576f91732f18a4c544f6310fc80`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Thu, 09 Jul 2026 17:15:29 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 17:15:29 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 09 Jul 2026 17:15:29 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 09 Jul 2026 17:15:29 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 Jul 2026 17:15:29 GMT
WORKDIR /root
# Thu, 09 Jul 2026 17:15:38 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=c51830deb8d9b3b64725601b5f2a8b2b3cb49a4cbabdede5274c6cd0550a9e66;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2a7a6c6bde4e8da064380870f1eba5d004784610f3b74dac76fda2793840ab98;             SDK_ARCH="arm";;         arm64)             DART_SHA256=2a8282d286df1834b0c9a274d2ae452d329de4da15fa576979aeb5c0168da1ba;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=13a6bdd628f76c58da53445dc4bc7bc252f09b9a2662e20a8e18d19651b3f5f8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.13.0-282.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:81c84b0273952340067af970e1fe77a42ea83b4ed1a53319e258d5f1077848f0`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 26.2 MB (26211051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:994f502be678e6f99ca0dc5ca2cc624100f160ff17ba3e2bc6fcdaddb1f7972e`  
		Last Modified: Thu, 09 Jul 2026 17:16:02 GMT  
		Size: 37.5 MB (37510478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92b16f2c4130f0a105b3e314e72fe876c737a0bbaa95b742205ddb8d7e6fa1d5`  
		Last Modified: Thu, 09 Jul 2026 17:16:00 GMT  
		Size: 1.3 MB (1273158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbf80bab73b0732c10a7c41eae412d37ce93d0fd30075794abbabdaadb3dde8b`  
		Last Modified: Thu, 09 Jul 2026 17:16:05 GMT  
		Size: 165.4 MB (165410729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:d44602d1db05943c4910c5d29cbb91ab394bb462bf02f91730e04a39bab455b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b949e5d992efa117c90e35a141263152fd62418f1ee7bebd494139a1c5963ae`

```dockerfile
```

-	Layers:
	-	`sha256:54a348a0f1ae407ffdd1962666fac5e0e7abd69ca46aedba38fe5fa7afb0e70a`  
		Last Modified: Thu, 09 Jul 2026 17:16:00 GMT  
		Size: 19.0 KB (19029 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:aa3aa2c1b3d6b8c0a018b46bb69980a2373e12c10e8b050096abb7cecff7c407
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.2 MB (315162135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d4540f74ce8cc141f22246c9a052710df234a94e0f0d11e4949274e069fa8bc`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Thu, 09 Jul 2026 17:15:09 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 17:15:09 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 09 Jul 2026 17:15:10 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 09 Jul 2026 17:15:10 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 Jul 2026 17:15:10 GMT
WORKDIR /root
# Thu, 09 Jul 2026 17:15:23 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=c51830deb8d9b3b64725601b5f2a8b2b3cb49a4cbabdede5274c6cd0550a9e66;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2a7a6c6bde4e8da064380870f1eba5d004784610f3b74dac76fda2793840ab98;             SDK_ARCH="arm";;         arm64)             DART_SHA256=2a8282d286df1834b0c9a274d2ae452d329de4da15fa576979aeb5c0168da1ba;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=13a6bdd628f76c58da53445dc4bc7bc252f09b9a2662e20a8e18d19651b3f5f8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.13.0-282.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57a38155b6c4e9317f4a8d9c493d108ba35487562fb524d39946f47efe684658`  
		Last Modified: Thu, 09 Jul 2026 17:15:55 GMT  
		Size: 42.3 MB (42285833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddde753824b2353868b61a7134803625808f41d3c3a97c684d4101c7c5a8af64`  
		Last Modified: Thu, 09 Jul 2026 17:15:53 GMT  
		Size: 1.6 MB (1564371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5482dea1e789941d2d9a9ae90c1c92086a9b7c1a3bbaf7f6e2231cff0ef03671`  
		Last Modified: Thu, 09 Jul 2026 17:15:59 GMT  
		Size: 241.2 MB (241163348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:0889a003bfd18f4a7854be53672df084f443e6f93df73c5ff87852594f239fe8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 KB (19056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05545c418f5bc0757ccbfcd63f00369bf39936755c9f6495023e622d94cdb98a`

```dockerfile
```

-	Layers:
	-	`sha256:cc62e1d78664b6326750b954c4472b4151f3136e7e4c81ca3942d84ad8ac3957`  
		Last Modified: Thu, 09 Jul 2026 17:15:53 GMT  
		Size: 19.1 KB (19056 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta` - linux; riscv64

```console
$ docker pull dart@sha256:daec4049c4080772485dccd7065f8f2618118e0b5fc3632ba7c7f6453ba0d814
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.6 MB (252645545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a886ea51576da6869095a8720a1df0fe2f40ee15a7303cd4308af02856b1d74`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Thu, 09 Jul 2026 17:16:00 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 09 Jul 2026 17:16:01 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 09 Jul 2026 17:16:02 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 09 Jul 2026 17:16:02 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 Jul 2026 17:16:02 GMT
WORKDIR /root
# Thu, 09 Jul 2026 17:16:52 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=c51830deb8d9b3b64725601b5f2a8b2b3cb49a4cbabdede5274c6cd0550a9e66;             SDK_ARCH="x64";;         armhf)             DART_SHA256=2a7a6c6bde4e8da064380870f1eba5d004784610f3b74dac76fda2793840ab98;             SDK_ARCH="arm";;         arm64)             DART_SHA256=2a8282d286df1834b0c9a274d2ae452d329de4da15fa576979aeb5c0168da1ba;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=13a6bdd628f76c58da53445dc4bc7bc252f09b9a2662e20a8e18d19651b3f5f8;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.13.0-282.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:58bface994ba631e609596a2ca5032d9d75de27f1b6476034b581e226205adab`  
		Last Modified: Wed, 24 Jun 2026 03:41:42 GMT  
		Size: 28.3 MB (28282378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fed1578c4d30e62bc486dda22933e70a04f2e2fe974a0a44b9ec714c3e23a83`  
		Last Modified: Thu, 09 Jul 2026 17:21:14 GMT  
		Size: 41.6 MB (41578138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a238292c8a2c1ac663945b92cf7b76b33af0496bf8044a9954ac11bd899b0073`  
		Last Modified: Thu, 09 Jul 2026 17:21:03 GMT  
		Size: 1.6 MB (1564449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e45182bad3c18ebe3e2b3271e2a4ce57ac5aa57b3a99e4d178beca59e35086f7`  
		Last Modified: Thu, 09 Jul 2026 17:21:34 GMT  
		Size: 181.2 MB (181220548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:8fb8b5fd826c647a22950aefebb9cc5825990270a8d73df007d236c2c91be2ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (18970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4f33cd715bd9a1104f604cbacf5d5bd7c4fb3f7ee27b757ffdbb20a7142d637`

```dockerfile
```

-	Layers:
	-	`sha256:0218c30373f51e96c0ceab35d3286bc6b09376c11ff17861cce11fb618959a3d`  
		Last Modified: Thu, 09 Jul 2026 17:21:02 GMT  
		Size: 19.0 KB (18970 bytes)  
		MIME: application/vnd.in-toto+json
