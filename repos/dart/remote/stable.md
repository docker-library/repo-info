## `dart:stable`

```console
$ docker pull dart@sha256:e5138f86e843c181278aeb26a992901b5e3751e6261a01b28d1b57276beed718
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `dart:stable` - linux; amd64

```console
$ docker pull dart@sha256:579d8d9f9d2b5ae90801da74b30b0947ca322b74495208b07303932781287773
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.5 MB (300495797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d09abe87b43500f8e090244248df5e3ebd53716b546fc4d4d134b5f7ee1703ce`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:44 GMT
ADD file:e2398d0bf516084b2b37ba1bb76b86d56e66999831df692461679fbd6a5d8eb6 in / 
# Wed, 11 Jan 2023 02:34:44 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:45:50 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:45:52 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done
# Wed, 11 Jan 2023 03:45:52 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 11 Jan 2023 03:45:52 GMT
ENV PATH=/usr/lib/dart/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Jan 2023 03:45:52 GMT
WORKDIR /root
# Tue, 24 Jan 2023 18:19:39 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=aa2abe166d898b1bc1f67f87836d52087ec29c19e6f8940b4c370f969899d44a;             SDK_ARCH="x64";;         armhf)             DART_SHA256=c1f7bf9e077927beb6dff5d4d124197341ee89dcfedc1dd153de09aaa4818368;             SDK_ARCH="arm";;         arm64)             DART_SHA256=71f312f7448d42386b23361b82380cba2b0f0d60406190d25714b9d21e6f7208;             SDK_ARCH="arm64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/2.19.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin";
```

-	Layers:
	-	`sha256:8740c948ffd4c816ea7ca963f99ca52f4788baa23f228da9581a9ea2edd3fcd7`  
		Last Modified: Wed, 11 Jan 2023 02:39:07 GMT  
		Size: 31.4 MB (31396972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44e6ceb6bff25bb7e23c1f0241699fd427a735539dd70213495fdf8b34ed5b5e`  
		Last Modified: Wed, 11 Jan 2023 03:46:55 GMT  
		Size: 45.1 MB (45073156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c148029c06d512bfa87f2ff720f96e037b633b3e80b2f16e076402d4049cfdd2`  
		Last Modified: Wed, 11 Jan 2023 03:46:48 GMT  
		Size: 2.2 MB (2162035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9f9ecc5f44d781647e3680d4ee0250e019e538b7ee63a498adda8cbb345c3bd`  
		Last Modified: Tue, 24 Jan 2023 18:20:33 GMT  
		Size: 221.9 MB (221863634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `dart:stable` - linux; arm variant v7

```console
$ docker pull dart@sha256:8915ab97107d89f413cdc91a35daaf5ffeebeb95c268a261674c04593690636a
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196683646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ef1f8a4e6b1904a22c0f2ec2d19e8f50fb0a825ff3c6881bf724afa8eb0f3cc`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 04:00:36 GMT
ADD file:3fb94bfd628f3ebd91db74501bd297a817977cc066664f0fa342442b3352e0be in / 
# Wed, 11 Jan 2023 04:00:37 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 04:52:01 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 04:52:03 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done
# Wed, 11 Jan 2023 04:52:03 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 11 Jan 2023 04:52:03 GMT
ENV PATH=/usr/lib/dart/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Jan 2023 04:52:03 GMT
WORKDIR /root
# Tue, 24 Jan 2023 18:33:59 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=aa2abe166d898b1bc1f67f87836d52087ec29c19e6f8940b4c370f969899d44a;             SDK_ARCH="x64";;         armhf)             DART_SHA256=c1f7bf9e077927beb6dff5d4d124197341ee89dcfedc1dd153de09aaa4818368;             SDK_ARCH="arm";;         arm64)             DART_SHA256=71f312f7448d42386b23361b82380cba2b0f0d60406190d25714b9d21e6f7208;             SDK_ARCH="arm64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/2.19.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin";
```

-	Layers:
	-	`sha256:330ad28688ae3fa5f3b241fef3efd076299bec9874e0597b1c16dcf8a165a53d`  
		Last Modified: Wed, 11 Jan 2023 04:07:49 GMT  
		Size: 26.6 MB (26559488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:253ef8a6fd94f64d59b6e1945dd639fdf419e73ac8677087bce3b4481d1e740b`  
		Last Modified: Wed, 11 Jan 2023 04:53:24 GMT  
		Size: 41.0 MB (40955530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d817971bc698f81b85279e3b7aabc2fb1f2acd97c7d29661d79c1a5aa0605733`  
		Last Modified: Wed, 11 Jan 2023 04:53:17 GMT  
		Size: 1.3 MB (1288515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868fd326267e74fbc1c96bb3184c3723a42c097d4833f4bed843a3212b917f59`  
		Last Modified: Tue, 24 Jan 2023 18:35:09 GMT  
		Size: 127.9 MB (127880113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `dart:stable` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:1e161b7b6e47933140414077777fd41b3667338a8448aedadf08b666563589a4
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.9 MB (205936297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b48a8fca4d8ace6cd8c014d81c3b306f2092bacb7b93b4b013cc4833e66f7e46`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:34 GMT
ADD file:92cf2c9ffaaea1a6bc1baa7b681303b1029dfd6ddbfef1792be8b21aaf09235c in / 
# Wed, 11 Jan 2023 02:57:35 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 04:00:43 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 04:00:44 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done
# Wed, 11 Jan 2023 04:00:44 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 11 Jan 2023 04:00:44 GMT
ENV PATH=/usr/lib/dart/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Jan 2023 04:00:44 GMT
WORKDIR /root
# Tue, 24 Jan 2023 17:39:29 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=aa2abe166d898b1bc1f67f87836d52087ec29c19e6f8940b4c370f969899d44a;             SDK_ARCH="x64";;         armhf)             DART_SHA256=c1f7bf9e077927beb6dff5d4d124197341ee89dcfedc1dd153de09aaa4818368;             SDK_ARCH="arm";;         arm64)             DART_SHA256=71f312f7448d42386b23361b82380cba2b0f0d60406190d25714b9d21e6f7208;             SDK_ARCH="arm64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/2.19.0/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin";
```

-	Layers:
	-	`sha256:934ce60d1040c5d4922bae5879321a398777457b7514de02ef69ece49e6aa907`  
		Last Modified: Wed, 11 Jan 2023 03:01:19 GMT  
		Size: 30.0 MB (30044814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2814cdd6986e359cfa22f10d27bdd8c5b227c76d42f20c99a2f4c9bb4dc3b75`  
		Last Modified: Wed, 11 Jan 2023 04:01:35 GMT  
		Size: 45.0 MB (44994736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2faa032a88fd1e7feba61ef9aaac09529900a286c643beeea0e5e2a1c53816`  
		Last Modified: Wed, 11 Jan 2023 04:01:30 GMT  
		Size: 1.6 MB (1562184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:882fca9feb66875982feaed2fa5f7d9c965cd20b27593ba8ec74fef06da8eaa3`  
		Last Modified: Tue, 24 Jan 2023 17:40:06 GMT  
		Size: 129.3 MB (129334563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
