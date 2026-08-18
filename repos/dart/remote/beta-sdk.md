## `dart:beta-sdk`

```console
$ docker pull dart@sha256:d239f942bfe3ae1b0f3c38465bdc131b3649c1b25b400a45f00bae06c8b5f9a8
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
$ docker pull dart@sha256:96e9384f809495eb5f9878e87ccc504fed0e4a17b4c19b543c5ae5f969265963
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.2 MB (435156086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b4eb6f4fa674e9923abff1eabce1d6d4aae2f0b78ab20b15875b09f06a57cfe`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 17:02:41 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 17:02:41 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 18 Aug 2026 17:02:41 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 18 Aug 2026 17:02:41 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 17:02:41 GMT
WORKDIR /root
# Tue, 18 Aug 2026 17:02:58 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8cd9bf0f283d5c4612a0622124a89183457fcb8eb8d7c2929fb85bafd3c03ac3;             SDK_ARCH="x64";;         armhf)             DART_SHA256=3ca78a19eede87996c57af245979e9114a13a477cc0c71379e8bfa9a628b6e83;             SDK_ARCH="arm";;         arm64)             DART_SHA256=d9f535f8913762f3d716a6f2a69f485bc846ff79d0455497ce1844a795c9a443;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=cf76b79d0ea95f1e3986597c62d11b1aa6eee955f02b8379d721259097fb1f8d;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-95.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c06bc30755098ea7a3ccda6af718515a4113e50b6bdacd323ff36bfef74128ad`  
		Last Modified: Tue, 18 Aug 2026 17:03:36 GMT  
		Size: 42.5 MB (42523948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ba252f3050b24dafd34715183901238fff2fc0c5f3d86e51a70cda16ceaf943`  
		Last Modified: Tue, 18 Aug 2026 17:03:34 GMT  
		Size: 1.9 MB (1869783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76db48427247043b6231e1c432ca8f2a8bcd4382fcf1b78f54b1a90e11c60e2a`  
		Last Modified: Tue, 18 Aug 2026 17:03:42 GMT  
		Size: 361.0 MB (360981558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:1ff009e23c2245a70f318c00ce434a4955a83499667a2ab2b2ee9a171b46cd9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 KB (18918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8edbd564633221b5af13444a67c806d95d44b435d96bdf3fc6c9d0f7b52d2e6`

```dockerfile
```

-	Layers:
	-	`sha256:9540ef669d6336d31da92e0e20d102cf8c4f1f9cdd34217f49a8b2c9dc7d3a13`  
		Last Modified: Tue, 18 Aug 2026 17:03:34 GMT  
		Size: 18.9 KB (18918 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:ddfdad0976b9b304f6656e6a4a2cf8a854d7c67fde39451af45e0fbbff66964d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.9 MB (254885844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9760fbac6484e7d0ead188f581036993ea5a5fc38d5b613f21084be49f663e90`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 17:02:25 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 17:02:25 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 18 Aug 2026 17:02:25 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 18 Aug 2026 17:02:25 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 17:02:25 GMT
WORKDIR /root
# Tue, 18 Aug 2026 17:02:35 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8cd9bf0f283d5c4612a0622124a89183457fcb8eb8d7c2929fb85bafd3c03ac3;             SDK_ARCH="x64";;         armhf)             DART_SHA256=3ca78a19eede87996c57af245979e9114a13a477cc0c71379e8bfa9a628b6e83;             SDK_ARCH="arm";;         arm64)             DART_SHA256=d9f535f8913762f3d716a6f2a69f485bc846ff79d0455497ce1844a795c9a443;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=cf76b79d0ea95f1e3986597c62d11b1aa6eee955f02b8379d721259097fb1f8d;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-95.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47de1447abd3bad3d8d6693d37039e7d8da43778e9b27257337ef0cf31dd3644`  
		Last Modified: Tue, 18 Aug 2026 17:02:58 GMT  
		Size: 37.5 MB (37512710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e7d635463bed93b599256a157bfa9dd63fa9c983e7fff7a41b3e20c5366ab0a`  
		Last Modified: Tue, 18 Aug 2026 17:02:57 GMT  
		Size: 1.3 MB (1273154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:456c667aa5e470b56464147b49e6ccd22dd1abecc3ed16bc0df483a52165bab5`  
		Last Modified: Tue, 18 Aug 2026 17:03:02 GMT  
		Size: 189.9 MB (189893576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:d80723adfff996592a315fe1c9460bed10354982271ea48bd015b729920e8eae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6965ffbbba03511e83755d8a8abe79599ca67074da313a619f6ac7d088167f8`

```dockerfile
```

-	Layers:
	-	`sha256:5d2b868300534dd82ff5634632b42be6cbff28035003215255d2e5beccaa8b48`  
		Last Modified: Tue, 18 Aug 2026 17:02:57 GMT  
		Size: 19.0 KB (19023 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:edf5693040f3eeaa308b2491c1d8c900fb87ea7d0d0650a44cf0c4eee88945c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **432.2 MB (432153039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94b228e9674a75cd4198b6cf90f2090039248197deb219fd4c6c83fbdac33e40`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 17:03:24 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 17:03:25 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 18 Aug 2026 17:03:25 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 18 Aug 2026 17:03:25 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 17:03:25 GMT
WORKDIR /root
# Tue, 18 Aug 2026 17:03:44 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=8cd9bf0f283d5c4612a0622124a89183457fcb8eb8d7c2929fb85bafd3c03ac3;             SDK_ARCH="x64";;         armhf)             DART_SHA256=3ca78a19eede87996c57af245979e9114a13a477cc0c71379e8bfa9a628b6e83;             SDK_ARCH="arm";;         arm64)             DART_SHA256=d9f535f8913762f3d716a6f2a69f485bc846ff79d0455497ce1844a795c9a443;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=cf76b79d0ea95f1e3986597c62d11b1aa6eee955f02b8379d721259097fb1f8d;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.14.0-95.2.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a76b02c843241b46ae5ab319757229190fba761b5ff25a753f0f96192f25b860`  
		Last Modified: Tue, 18 Aug 2026 17:04:28 GMT  
		Size: 42.3 MB (42308147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc4bf4cd189b68157380e9209bec212c76a1e4380f24d74b435e3bcae6928e93`  
		Last Modified: Tue, 18 Aug 2026 17:04:26 GMT  
		Size: 1.6 MB (1564385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dca682740db41c93bc0626becc709284cfd624f8f0d371f97c98bc5a1d01a700`  
		Last Modified: Tue, 18 Aug 2026 17:04:34 GMT  
		Size: 358.1 MB (358136866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:e907a9be81fb5ff8b4f086aafda21bf908abe0baacf9c23377605e6c73f49cb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 KB (19052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2d0d3f6f494100557130ca289c498332f0c316780be545a3b2548ee9a185f0a`

```dockerfile
```

-	Layers:
	-	`sha256:3f1989281e3ea34c5588fc7334dcd3a9381b5551936ba28cf39f067e5e2d1d23`  
		Last Modified: Tue, 18 Aug 2026 17:04:26 GMT  
		Size: 19.1 KB (19052 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta-sdk` - linux; riscv64

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

### `dart:beta-sdk` - unknown; unknown

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
