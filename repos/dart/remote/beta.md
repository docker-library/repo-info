## `dart:beta`

```console
$ docker pull dart@sha256:bf95d121432ef25c16d6635d94b142d2bbf8c2e395b94244e6f723506021d5cd
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
$ docker pull dart@sha256:cd77d42f6e676246d26d4d8ad7a03d9e35177d12f3db5c6fd254113718b81279
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.2 MB (435150126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb719455f28a7e5a42245082de5f05ff01f1cd2e43ed05339b80501b904127a8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 12 Aug 2026 17:26:40 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 17:26:40 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 12 Aug 2026 17:26:40 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 12 Aug 2026 17:26:40 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:26:40 GMT
WORKDIR /root
# Wed, 12 Aug 2026 17:26:57 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=19ca9b7d5ac0276f94997c554b4602e38bb24ab0e2fc0163d04fe8e15d347f44;             SDK_ARCH="x64";;         armhf)             DART_SHA256=5f1d8170894ef98fd1f7675531bda768ba4b5d4cc429ffefdd2bdee361cf90d7;             SDK_ARCH="arm";;         arm64)             DART_SHA256=4cc6d71c1bada7718e67f4d47107cd2b44c7ed5ced997499bc0494344e15b926;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=6d2cfc00ac45a7df49f8977a2ebdb88ce7ebc75957e577bd525f739b9a49b49e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-95.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5921a72263cb7f17d91fa3cfd15aa70a6b37426e4ef089862cedf410c289219`  
		Last Modified: Wed, 12 Aug 2026 17:27:36 GMT  
		Size: 42.5 MB (42523639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbdfbe13ef8e555dbb144605ec9ec596292bcee3ccc0368fc4b0e95824af1954`  
		Last Modified: Wed, 12 Aug 2026 17:27:34 GMT  
		Size: 1.9 MB (1869788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3b643ed4a67112ac7f46a029f797160fcb9884e7fdfbf3fa67f7320719491ce`  
		Last Modified: Wed, 12 Aug 2026 17:27:41 GMT  
		Size: 361.0 MB (360975902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:5934f365de6770feb2240e27127a4e0194f17dc0f6ea3cd30d7057c4b2772e67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 KB (18918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb890461904074878aba555d9ec62e17f12a04877735b1dc270f0acddfcc1781`

```dockerfile
```

-	Layers:
	-	`sha256:ed39aba97aa1c0c046ec8bbbf41e64edba70c66a23ef56f93d9096fdcfb6a4c8`  
		Last Modified: Wed, 12 Aug 2026 17:27:34 GMT  
		Size: 18.9 KB (18918 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta` - linux; arm variant v7

```console
$ docker pull dart@sha256:a4f6718813250b0d6ca82065037dcac4ae569c5eef1080d5d06ee2b58b3f495c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.9 MB (254886352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3893fc7935c0951d9af4606820c8c32b34e9aa31500e4ab54238053d04e016b6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 12 Aug 2026 17:26:11 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 17:26:11 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 12 Aug 2026 17:26:11 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 12 Aug 2026 17:26:11 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:26:11 GMT
WORKDIR /root
# Wed, 12 Aug 2026 17:26:21 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=19ca9b7d5ac0276f94997c554b4602e38bb24ab0e2fc0163d04fe8e15d347f44;             SDK_ARCH="x64";;         armhf)             DART_SHA256=5f1d8170894ef98fd1f7675531bda768ba4b5d4cc429ffefdd2bdee361cf90d7;             SDK_ARCH="arm";;         arm64)             DART_SHA256=4cc6d71c1bada7718e67f4d47107cd2b44c7ed5ced997499bc0494344e15b926;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=6d2cfc00ac45a7df49f8977a2ebdb88ce7ebc75957e577bd525f739b9a49b49e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-95.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f30e8567e23203b335a7713ddbe2820db846424543776fdcd3ab73c29bca71eb`  
		Last Modified: Wed, 12 Aug 2026 17:26:49 GMT  
		Size: 37.5 MB (37513709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d39a9c2b13adb13cae07cac5ea4eaae2a1f80d750e35eda7317610e5b93cb8db`  
		Last Modified: Wed, 12 Aug 2026 17:26:47 GMT  
		Size: 1.3 MB (1273152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8eb2af7185654f468259fc61ef74bc3769f4552b54a1746f17471e2cde7d5b4`  
		Last Modified: Wed, 12 Aug 2026 17:26:52 GMT  
		Size: 189.9 MB (189893087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:5f5435c44b11307a00fdc12a9645e05cd9c08ef064307ff0f0f3fc545a65719b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:470810ea2d21030c9d6477ca25480d630f45a9a590c474c93434e2bdea24ac2c`

```dockerfile
```

-	Layers:
	-	`sha256:dabdfdc275d4ad20788a99c28f2d4ab6549e9ecd7cafa26e342caec82b76a4a9`  
		Last Modified: Wed, 12 Aug 2026 17:26:47 GMT  
		Size: 19.0 KB (19023 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:745247c66e78c06ae75bf9176198521c3939dbf918a1d9be5d4373ba3ad951c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **432.2 MB (432153800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b38b24e982beecbf291aeeb5f0af050437f9077fc307fea2d79373cd436d0f7a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 12 Aug 2026 17:33:54 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 12 Aug 2026 17:33:55 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 12 Aug 2026 17:33:55 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 12 Aug 2026 17:33:55 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:33:55 GMT
WORKDIR /root
# Wed, 12 Aug 2026 17:35:06 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=19ca9b7d5ac0276f94997c554b4602e38bb24ab0e2fc0163d04fe8e15d347f44;             SDK_ARCH="x64";;         armhf)             DART_SHA256=5f1d8170894ef98fd1f7675531bda768ba4b5d4cc429ffefdd2bdee361cf90d7;             SDK_ARCH="arm";;         arm64)             DART_SHA256=4cc6d71c1bada7718e67f4d47107cd2b44c7ed5ced997499bc0494344e15b926;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=6d2cfc00ac45a7df49f8977a2ebdb88ce7ebc75957e577bd525f739b9a49b49e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-95.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a2507d2692dadf5be8a99905ab2e63b9569eeed948180647b6957afc098a826`  
		Last Modified: Wed, 12 Aug 2026 17:34:38 GMT  
		Size: 42.3 MB (42310155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c9044d926f2e01701890eb755121f3770d19af847a6590c2e678a0febb35852`  
		Last Modified: Wed, 12 Aug 2026 17:34:36 GMT  
		Size: 1.6 MB (1564385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:014bdaa547bc5d4091602fc4cf7a188c25d4db2c32c872372fe4ff93b7283f1f`  
		Last Modified: Wed, 12 Aug 2026 17:35:55 GMT  
		Size: 358.1 MB (358135619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:46643672b9ac284d5726231c82f29ef4028cf3594bfb9b9ac8560fd5fedf246f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 KB (19052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b69bbbf8ddf93b64bac41e3f187ccd20709b5a9a71b2796b525710433399be6`

```dockerfile
```

-	Layers:
	-	`sha256:754c706ed45d7ee492989d2e493246a2ae5985c120caf44233d47e7f4310e606`  
		Last Modified: Wed, 12 Aug 2026 17:35:48 GMT  
		Size: 19.1 KB (19052 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta` - linux; riscv64

```console
$ docker pull dart@sha256:5bbe66bc9be42a8ba063f8191d63213de4017a7d8ebec01612207fa7d70fb60b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.9 MB (338883328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2784c1dd0b62de1827c593cd5668d6cd57dc2cb9e18734903ca31d1fc00abe39`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1785715200'
# Thu, 13 Aug 2026 04:31:47 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 13 Aug 2026 04:31:49 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Thu, 13 Aug 2026 04:31:49 GMT
ENV DART_SDK=/usr/lib/dart
# Thu, 13 Aug 2026 04:31:49 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Aug 2026 04:31:49 GMT
WORKDIR /root
# Thu, 13 Aug 2026 04:38:58 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=19ca9b7d5ac0276f94997c554b4602e38bb24ab0e2fc0163d04fe8e15d347f44;             SDK_ARCH="x64";;         armhf)             DART_SHA256=5f1d8170894ef98fd1f7675531bda768ba4b5d4cc429ffefdd2bdee361cf90d7;             SDK_ARCH="arm";;         arm64)             DART_SHA256=4cc6d71c1bada7718e67f4d47107cd2b44c7ed5ced997499bc0494344e15b926;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=6d2cfc00ac45a7df49f8977a2ebdb88ce7ebc75957e577bd525f739b9a49b49e;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-95.1.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:4b662f844c11eb624262cf201f852ccf968e45c6d3c4ec3fa1c5a288fef35ca8`  
		Last Modified: Wed, 05 Aug 2026 00:57:36 GMT  
		Size: 28.3 MB (28278118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5881b62e4c98d558d075f4dd5c49e1c5203ce090d95bb6a9b291fcadc0687c0`  
		Last Modified: Thu, 13 Aug 2026 04:37:02 GMT  
		Size: 41.6 MB (41594102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:708b4122040098ed8df9e7fa656b0d261c667e1341efbbeefe585d2cf6413ebc`  
		Last Modified: Thu, 13 Aug 2026 04:36:49 GMT  
		Size: 1.6 MB (1564448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe6971005a35678a82d822f9a254d8aae6a6b2e0788bbc8e8a59c1510a841f12`  
		Last Modified: Thu, 13 Aug 2026 04:45:15 GMT  
		Size: 267.4 MB (267446628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:040a1eba2808b8616f65896d903b8c88e08442ab44e49f0261b5be68f95d886a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (18966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa1b48588b778867f0fc1cfbc340be933a2b907321d11889be9cac0107ce1c25`

```dockerfile
```

-	Layers:
	-	`sha256:3aff321c133d3464469d1c59c25e45669bbecb70f11d95b5b1b53b1e759677b0`  
		Last Modified: Thu, 13 Aug 2026 04:44:37 GMT  
		Size: 19.0 KB (18966 bytes)  
		MIME: application/vnd.in-toto+json
