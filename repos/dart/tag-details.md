<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `dart`

-	[`dart:3`](#dart3)
-	[`dart:3-sdk`](#dart3-sdk)
-	[`dart:3.12`](#dart312)
-	[`dart:3.12-sdk`](#dart312-sdk)
-	[`dart:3.12.2`](#dart3122)
-	[`dart:3.12.2-sdk`](#dart3122-sdk)
-	[`dart:3.13.0-282.4.beta`](#dart3130-2824beta)
-	[`dart:3.13.0-282.4.beta-sdk`](#dart3130-2824beta-sdk)
-	[`dart:beta`](#dartbeta)
-	[`dart:beta-sdk`](#dartbeta-sdk)
-	[`dart:latest`](#dartlatest)
-	[`dart:sdk`](#dartsdk)
-	[`dart:stable`](#dartstable)
-	[`dart:stable-sdk`](#dartstable-sdk)

## `dart:3`

```console
$ docker pull dart@sha256:8d7b6fcd6d2766e167c2b2e569e6411d981ea8b282d5766372859f4a07b24600
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
$ docker pull dart@sha256:63fe401719e12701a1fa35bfd5fc600e3f5d0287c497cb36e2e6d7c7842a254a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.0 MB (310967918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fc3fc26fee0c74bbf1eb16ec881ea17ca04860daec88ca1187d8007cd926e79`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:31 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:45:31 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 05 Aug 2026 00:45:31 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 05 Aug 2026 00:45:31 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:45:31 GMT
WORKDIR /root
# Wed, 05 Aug 2026 00:45:42 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca6064fdb4ee57472c944ab4e88d4e7cb7bb815e9e49131fa98d7ecd6c402f8b`  
		Last Modified: Wed, 05 Aug 2026 00:46:14 GMT  
		Size: 42.5 MB (42523778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7badd722870543abf73b553b60eb3f18ce87fc18d03b5e8b175d88e657275a95`  
		Last Modified: Wed, 05 Aug 2026 00:46:12 GMT  
		Size: 1.9 MB (1869783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:846e17d72354131b437f2d57f41382536f38ce2003e3b23123c293626649e736`  
		Last Modified: Wed, 05 Aug 2026 00:46:17 GMT  
		Size: 236.8 MB (236793560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3` - unknown; unknown

```console
$ docker pull dart@sha256:d4a3699f239cdbe77f627a07dec7d0023993a095c6eff264fdc948ca012c6923
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5b90a9adce1aaad4a01e3928475cf385580be4f4ecc76b46638ef954fcd3947`

```dockerfile
```

-	Layers:
	-	`sha256:7570c3dd674d66da7e4ec8a64c62a8b7ad045d61a0893576685e872c92c43294`  
		Last Modified: Wed, 05 Aug 2026 00:46:12 GMT  
		Size: 20.6 KB (20615 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3` - linux; arm variant v7

```console
$ docker pull dart@sha256:ed85203b6e59e196ba2adf9e88290660320c9903eba2948c056135712e339140
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.1 MB (226079182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09749d00b69bacce046a6edb8328843b2295bc4bdcf9d42c356862ec5f910ba9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:20:38 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:20:38 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 05 Aug 2026 01:20:38 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 05 Aug 2026 01:20:38 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:20:38 GMT
WORKDIR /root
# Wed, 05 Aug 2026 01:20:47 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8f74326b5cdfe3ab818cdf66c72173ce4eb7d0d705112bd1ee0bc0410cc0677`  
		Last Modified: Wed, 05 Aug 2026 01:21:10 GMT  
		Size: 37.5 MB (37513688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c5a2be87d373955787b12cf67085dcd55eff208690f50be2fe95b547fe4b17e`  
		Last Modified: Wed, 05 Aug 2026 01:21:09 GMT  
		Size: 1.3 MB (1273156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b65f1bfd861f0500397eb702ff7f3d35b00a06b071835efaece03815d6bc20e8`  
		Last Modified: Wed, 05 Aug 2026 01:21:12 GMT  
		Size: 161.1 MB (161085934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3` - unknown; unknown

```console
$ docker pull dart@sha256:c3d065d95903b9ef4f151ae80e3cead5c8679eeb37169408bc2ff23fa7843b10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66695f912de635abc910e9505ad4f1e2d9964aeef45cc6e009c51575ccebc761`

```dockerfile
```

-	Layers:
	-	`sha256:e73019034986db262f40450060b4a5c97a4ff79fd778e2dfd4121f809a4bd935`  
		Last Modified: Wed, 05 Aug 2026 01:21:08 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:867be053fb4ddab1563ceb923816ac6ccb4d624852d0d41caa1600ec702a6675
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.4 MB (309423647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3e72c0332103652250c5bc4e480ac709cbf52568fcb415a1e1115675ceb80d7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:42 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:43 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 05 Aug 2026 00:47:43 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 05 Aug 2026 00:47:43 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:47:43 GMT
WORKDIR /root
# Wed, 05 Aug 2026 00:47:53 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cddfb381db4ca06c1bee7de7a22656e4dbc7547db6e828e6ffd9df39ba88de7a`  
		Last Modified: Wed, 05 Aug 2026 00:48:25 GMT  
		Size: 42.3 MB (42310303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:942f6b36768016d2f0a1a4586242d533c814086decea17ba82bd32d1a10e9c23`  
		Last Modified: Wed, 05 Aug 2026 00:48:23 GMT  
		Size: 1.6 MB (1564388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1066985a1f35105175046ab7a8aa0ca20f372ae273e67d938582d2d71724db3c`  
		Last Modified: Wed, 05 Aug 2026 00:48:29 GMT  
		Size: 235.4 MB (235405315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3` - unknown; unknown

```console
$ docker pull dart@sha256:411f3fb8c118d9420f7f2a85699014244fc86beab67dab502af3a86b0f11ae33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce50b5f66c1a9a0ab937b40e5e1f98433554427e4100efd23bcc3b70bb6361be`

```dockerfile
```

-	Layers:
	-	`sha256:86f4735c370d3867ed2c5fff098ff9b4397e0f7c17f7b3a0a6c94ae018da4d0e`  
		Last Modified: Wed, 05 Aug 2026 00:48:23 GMT  
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
$ docker pull dart@sha256:8d7b6fcd6d2766e167c2b2e569e6411d981ea8b282d5766372859f4a07b24600
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
$ docker pull dart@sha256:63fe401719e12701a1fa35bfd5fc600e3f5d0287c497cb36e2e6d7c7842a254a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.0 MB (310967918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fc3fc26fee0c74bbf1eb16ec881ea17ca04860daec88ca1187d8007cd926e79`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:31 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:45:31 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 05 Aug 2026 00:45:31 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 05 Aug 2026 00:45:31 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:45:31 GMT
WORKDIR /root
# Wed, 05 Aug 2026 00:45:42 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca6064fdb4ee57472c944ab4e88d4e7cb7bb815e9e49131fa98d7ecd6c402f8b`  
		Last Modified: Wed, 05 Aug 2026 00:46:14 GMT  
		Size: 42.5 MB (42523778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7badd722870543abf73b553b60eb3f18ce87fc18d03b5e8b175d88e657275a95`  
		Last Modified: Wed, 05 Aug 2026 00:46:12 GMT  
		Size: 1.9 MB (1869783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:846e17d72354131b437f2d57f41382536f38ce2003e3b23123c293626649e736`  
		Last Modified: Wed, 05 Aug 2026 00:46:17 GMT  
		Size: 236.8 MB (236793560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:d4a3699f239cdbe77f627a07dec7d0023993a095c6eff264fdc948ca012c6923
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5b90a9adce1aaad4a01e3928475cf385580be4f4ecc76b46638ef954fcd3947`

```dockerfile
```

-	Layers:
	-	`sha256:7570c3dd674d66da7e4ec8a64c62a8b7ad045d61a0893576685e872c92c43294`  
		Last Modified: Wed, 05 Aug 2026 00:46:12 GMT  
		Size: 20.6 KB (20615 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:ed85203b6e59e196ba2adf9e88290660320c9903eba2948c056135712e339140
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.1 MB (226079182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09749d00b69bacce046a6edb8328843b2295bc4bdcf9d42c356862ec5f910ba9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:20:38 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:20:38 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 05 Aug 2026 01:20:38 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 05 Aug 2026 01:20:38 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:20:38 GMT
WORKDIR /root
# Wed, 05 Aug 2026 01:20:47 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8f74326b5cdfe3ab818cdf66c72173ce4eb7d0d705112bd1ee0bc0410cc0677`  
		Last Modified: Wed, 05 Aug 2026 01:21:10 GMT  
		Size: 37.5 MB (37513688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c5a2be87d373955787b12cf67085dcd55eff208690f50be2fe95b547fe4b17e`  
		Last Modified: Wed, 05 Aug 2026 01:21:09 GMT  
		Size: 1.3 MB (1273156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b65f1bfd861f0500397eb702ff7f3d35b00a06b071835efaece03815d6bc20e8`  
		Last Modified: Wed, 05 Aug 2026 01:21:12 GMT  
		Size: 161.1 MB (161085934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:c3d065d95903b9ef4f151ae80e3cead5c8679eeb37169408bc2ff23fa7843b10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66695f912de635abc910e9505ad4f1e2d9964aeef45cc6e009c51575ccebc761`

```dockerfile
```

-	Layers:
	-	`sha256:e73019034986db262f40450060b4a5c97a4ff79fd778e2dfd4121f809a4bd935`  
		Last Modified: Wed, 05 Aug 2026 01:21:08 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:867be053fb4ddab1563ceb923816ac6ccb4d624852d0d41caa1600ec702a6675
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.4 MB (309423647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3e72c0332103652250c5bc4e480ac709cbf52568fcb415a1e1115675ceb80d7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:42 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:43 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 05 Aug 2026 00:47:43 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 05 Aug 2026 00:47:43 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:47:43 GMT
WORKDIR /root
# Wed, 05 Aug 2026 00:47:53 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cddfb381db4ca06c1bee7de7a22656e4dbc7547db6e828e6ffd9df39ba88de7a`  
		Last Modified: Wed, 05 Aug 2026 00:48:25 GMT  
		Size: 42.3 MB (42310303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:942f6b36768016d2f0a1a4586242d533c814086decea17ba82bd32d1a10e9c23`  
		Last Modified: Wed, 05 Aug 2026 00:48:23 GMT  
		Size: 1.6 MB (1564388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1066985a1f35105175046ab7a8aa0ca20f372ae273e67d938582d2d71724db3c`  
		Last Modified: Wed, 05 Aug 2026 00:48:29 GMT  
		Size: 235.4 MB (235405315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:411f3fb8c118d9420f7f2a85699014244fc86beab67dab502af3a86b0f11ae33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce50b5f66c1a9a0ab937b40e5e1f98433554427e4100efd23bcc3b70bb6361be`

```dockerfile
```

-	Layers:
	-	`sha256:86f4735c370d3867ed2c5fff098ff9b4397e0f7c17f7b3a0a6c94ae018da4d0e`  
		Last Modified: Wed, 05 Aug 2026 00:48:23 GMT  
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
$ docker pull dart@sha256:8d7b6fcd6d2766e167c2b2e569e6411d981ea8b282d5766372859f4a07b24600
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
$ docker pull dart@sha256:63fe401719e12701a1fa35bfd5fc600e3f5d0287c497cb36e2e6d7c7842a254a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.0 MB (310967918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fc3fc26fee0c74bbf1eb16ec881ea17ca04860daec88ca1187d8007cd926e79`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:31 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:45:31 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 05 Aug 2026 00:45:31 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 05 Aug 2026 00:45:31 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:45:31 GMT
WORKDIR /root
# Wed, 05 Aug 2026 00:45:42 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca6064fdb4ee57472c944ab4e88d4e7cb7bb815e9e49131fa98d7ecd6c402f8b`  
		Last Modified: Wed, 05 Aug 2026 00:46:14 GMT  
		Size: 42.5 MB (42523778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7badd722870543abf73b553b60eb3f18ce87fc18d03b5e8b175d88e657275a95`  
		Last Modified: Wed, 05 Aug 2026 00:46:12 GMT  
		Size: 1.9 MB (1869783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:846e17d72354131b437f2d57f41382536f38ce2003e3b23123c293626649e736`  
		Last Modified: Wed, 05 Aug 2026 00:46:17 GMT  
		Size: 236.8 MB (236793560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.12` - unknown; unknown

```console
$ docker pull dart@sha256:d4a3699f239cdbe77f627a07dec7d0023993a095c6eff264fdc948ca012c6923
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5b90a9adce1aaad4a01e3928475cf385580be4f4ecc76b46638ef954fcd3947`

```dockerfile
```

-	Layers:
	-	`sha256:7570c3dd674d66da7e4ec8a64c62a8b7ad045d61a0893576685e872c92c43294`  
		Last Modified: Wed, 05 Aug 2026 00:46:12 GMT  
		Size: 20.6 KB (20615 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.12` - linux; arm variant v7

```console
$ docker pull dart@sha256:ed85203b6e59e196ba2adf9e88290660320c9903eba2948c056135712e339140
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.1 MB (226079182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09749d00b69bacce046a6edb8328843b2295bc4bdcf9d42c356862ec5f910ba9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:20:38 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:20:38 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 05 Aug 2026 01:20:38 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 05 Aug 2026 01:20:38 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:20:38 GMT
WORKDIR /root
# Wed, 05 Aug 2026 01:20:47 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8f74326b5cdfe3ab818cdf66c72173ce4eb7d0d705112bd1ee0bc0410cc0677`  
		Last Modified: Wed, 05 Aug 2026 01:21:10 GMT  
		Size: 37.5 MB (37513688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c5a2be87d373955787b12cf67085dcd55eff208690f50be2fe95b547fe4b17e`  
		Last Modified: Wed, 05 Aug 2026 01:21:09 GMT  
		Size: 1.3 MB (1273156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b65f1bfd861f0500397eb702ff7f3d35b00a06b071835efaece03815d6bc20e8`  
		Last Modified: Wed, 05 Aug 2026 01:21:12 GMT  
		Size: 161.1 MB (161085934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.12` - unknown; unknown

```console
$ docker pull dart@sha256:c3d065d95903b9ef4f151ae80e3cead5c8679eeb37169408bc2ff23fa7843b10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66695f912de635abc910e9505ad4f1e2d9964aeef45cc6e009c51575ccebc761`

```dockerfile
```

-	Layers:
	-	`sha256:e73019034986db262f40450060b4a5c97a4ff79fd778e2dfd4121f809a4bd935`  
		Last Modified: Wed, 05 Aug 2026 01:21:08 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.12` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:867be053fb4ddab1563ceb923816ac6ccb4d624852d0d41caa1600ec702a6675
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.4 MB (309423647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3e72c0332103652250c5bc4e480ac709cbf52568fcb415a1e1115675ceb80d7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:42 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:43 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 05 Aug 2026 00:47:43 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 05 Aug 2026 00:47:43 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:47:43 GMT
WORKDIR /root
# Wed, 05 Aug 2026 00:47:53 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cddfb381db4ca06c1bee7de7a22656e4dbc7547db6e828e6ffd9df39ba88de7a`  
		Last Modified: Wed, 05 Aug 2026 00:48:25 GMT  
		Size: 42.3 MB (42310303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:942f6b36768016d2f0a1a4586242d533c814086decea17ba82bd32d1a10e9c23`  
		Last Modified: Wed, 05 Aug 2026 00:48:23 GMT  
		Size: 1.6 MB (1564388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1066985a1f35105175046ab7a8aa0ca20f372ae273e67d938582d2d71724db3c`  
		Last Modified: Wed, 05 Aug 2026 00:48:29 GMT  
		Size: 235.4 MB (235405315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.12` - unknown; unknown

```console
$ docker pull dart@sha256:411f3fb8c118d9420f7f2a85699014244fc86beab67dab502af3a86b0f11ae33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce50b5f66c1a9a0ab937b40e5e1f98433554427e4100efd23bcc3b70bb6361be`

```dockerfile
```

-	Layers:
	-	`sha256:86f4735c370d3867ed2c5fff098ff9b4397e0f7c17f7b3a0a6c94ae018da4d0e`  
		Last Modified: Wed, 05 Aug 2026 00:48:23 GMT  
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
$ docker pull dart@sha256:8d7b6fcd6d2766e167c2b2e569e6411d981ea8b282d5766372859f4a07b24600
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
$ docker pull dart@sha256:63fe401719e12701a1fa35bfd5fc600e3f5d0287c497cb36e2e6d7c7842a254a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.0 MB (310967918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fc3fc26fee0c74bbf1eb16ec881ea17ca04860daec88ca1187d8007cd926e79`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:31 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:45:31 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 05 Aug 2026 00:45:31 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 05 Aug 2026 00:45:31 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:45:31 GMT
WORKDIR /root
# Wed, 05 Aug 2026 00:45:42 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca6064fdb4ee57472c944ab4e88d4e7cb7bb815e9e49131fa98d7ecd6c402f8b`  
		Last Modified: Wed, 05 Aug 2026 00:46:14 GMT  
		Size: 42.5 MB (42523778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7badd722870543abf73b553b60eb3f18ce87fc18d03b5e8b175d88e657275a95`  
		Last Modified: Wed, 05 Aug 2026 00:46:12 GMT  
		Size: 1.9 MB (1869783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:846e17d72354131b437f2d57f41382536f38ce2003e3b23123c293626649e736`  
		Last Modified: Wed, 05 Aug 2026 00:46:17 GMT  
		Size: 236.8 MB (236793560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.12-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:d4a3699f239cdbe77f627a07dec7d0023993a095c6eff264fdc948ca012c6923
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5b90a9adce1aaad4a01e3928475cf385580be4f4ecc76b46638ef954fcd3947`

```dockerfile
```

-	Layers:
	-	`sha256:7570c3dd674d66da7e4ec8a64c62a8b7ad045d61a0893576685e872c92c43294`  
		Last Modified: Wed, 05 Aug 2026 00:46:12 GMT  
		Size: 20.6 KB (20615 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.12-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:ed85203b6e59e196ba2adf9e88290660320c9903eba2948c056135712e339140
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.1 MB (226079182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09749d00b69bacce046a6edb8328843b2295bc4bdcf9d42c356862ec5f910ba9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:20:38 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:20:38 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 05 Aug 2026 01:20:38 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 05 Aug 2026 01:20:38 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:20:38 GMT
WORKDIR /root
# Wed, 05 Aug 2026 01:20:47 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8f74326b5cdfe3ab818cdf66c72173ce4eb7d0d705112bd1ee0bc0410cc0677`  
		Last Modified: Wed, 05 Aug 2026 01:21:10 GMT  
		Size: 37.5 MB (37513688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c5a2be87d373955787b12cf67085dcd55eff208690f50be2fe95b547fe4b17e`  
		Last Modified: Wed, 05 Aug 2026 01:21:09 GMT  
		Size: 1.3 MB (1273156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b65f1bfd861f0500397eb702ff7f3d35b00a06b071835efaece03815d6bc20e8`  
		Last Modified: Wed, 05 Aug 2026 01:21:12 GMT  
		Size: 161.1 MB (161085934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.12-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:c3d065d95903b9ef4f151ae80e3cead5c8679eeb37169408bc2ff23fa7843b10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66695f912de635abc910e9505ad4f1e2d9964aeef45cc6e009c51575ccebc761`

```dockerfile
```

-	Layers:
	-	`sha256:e73019034986db262f40450060b4a5c97a4ff79fd778e2dfd4121f809a4bd935`  
		Last Modified: Wed, 05 Aug 2026 01:21:08 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.12-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:867be053fb4ddab1563ceb923816ac6ccb4d624852d0d41caa1600ec702a6675
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.4 MB (309423647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3e72c0332103652250c5bc4e480ac709cbf52568fcb415a1e1115675ceb80d7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:42 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:43 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 05 Aug 2026 00:47:43 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 05 Aug 2026 00:47:43 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:47:43 GMT
WORKDIR /root
# Wed, 05 Aug 2026 00:47:53 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cddfb381db4ca06c1bee7de7a22656e4dbc7547db6e828e6ffd9df39ba88de7a`  
		Last Modified: Wed, 05 Aug 2026 00:48:25 GMT  
		Size: 42.3 MB (42310303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:942f6b36768016d2f0a1a4586242d533c814086decea17ba82bd32d1a10e9c23`  
		Last Modified: Wed, 05 Aug 2026 00:48:23 GMT  
		Size: 1.6 MB (1564388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1066985a1f35105175046ab7a8aa0ca20f372ae273e67d938582d2d71724db3c`  
		Last Modified: Wed, 05 Aug 2026 00:48:29 GMT  
		Size: 235.4 MB (235405315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.12-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:411f3fb8c118d9420f7f2a85699014244fc86beab67dab502af3a86b0f11ae33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce50b5f66c1a9a0ab937b40e5e1f98433554427e4100efd23bcc3b70bb6361be`

```dockerfile
```

-	Layers:
	-	`sha256:86f4735c370d3867ed2c5fff098ff9b4397e0f7c17f7b3a0a6c94ae018da4d0e`  
		Last Modified: Wed, 05 Aug 2026 00:48:23 GMT  
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
$ docker pull dart@sha256:8d7b6fcd6d2766e167c2b2e569e6411d981ea8b282d5766372859f4a07b24600
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
$ docker pull dart@sha256:63fe401719e12701a1fa35bfd5fc600e3f5d0287c497cb36e2e6d7c7842a254a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.0 MB (310967918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fc3fc26fee0c74bbf1eb16ec881ea17ca04860daec88ca1187d8007cd926e79`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:31 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:45:31 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 05 Aug 2026 00:45:31 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 05 Aug 2026 00:45:31 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:45:31 GMT
WORKDIR /root
# Wed, 05 Aug 2026 00:45:42 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca6064fdb4ee57472c944ab4e88d4e7cb7bb815e9e49131fa98d7ecd6c402f8b`  
		Last Modified: Wed, 05 Aug 2026 00:46:14 GMT  
		Size: 42.5 MB (42523778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7badd722870543abf73b553b60eb3f18ce87fc18d03b5e8b175d88e657275a95`  
		Last Modified: Wed, 05 Aug 2026 00:46:12 GMT  
		Size: 1.9 MB (1869783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:846e17d72354131b437f2d57f41382536f38ce2003e3b23123c293626649e736`  
		Last Modified: Wed, 05 Aug 2026 00:46:17 GMT  
		Size: 236.8 MB (236793560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.12.2` - unknown; unknown

```console
$ docker pull dart@sha256:d4a3699f239cdbe77f627a07dec7d0023993a095c6eff264fdc948ca012c6923
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5b90a9adce1aaad4a01e3928475cf385580be4f4ecc76b46638ef954fcd3947`

```dockerfile
```

-	Layers:
	-	`sha256:7570c3dd674d66da7e4ec8a64c62a8b7ad045d61a0893576685e872c92c43294`  
		Last Modified: Wed, 05 Aug 2026 00:46:12 GMT  
		Size: 20.6 KB (20615 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.12.2` - linux; arm variant v7

```console
$ docker pull dart@sha256:ed85203b6e59e196ba2adf9e88290660320c9903eba2948c056135712e339140
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.1 MB (226079182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09749d00b69bacce046a6edb8328843b2295bc4bdcf9d42c356862ec5f910ba9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:20:38 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:20:38 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 05 Aug 2026 01:20:38 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 05 Aug 2026 01:20:38 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:20:38 GMT
WORKDIR /root
# Wed, 05 Aug 2026 01:20:47 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8f74326b5cdfe3ab818cdf66c72173ce4eb7d0d705112bd1ee0bc0410cc0677`  
		Last Modified: Wed, 05 Aug 2026 01:21:10 GMT  
		Size: 37.5 MB (37513688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c5a2be87d373955787b12cf67085dcd55eff208690f50be2fe95b547fe4b17e`  
		Last Modified: Wed, 05 Aug 2026 01:21:09 GMT  
		Size: 1.3 MB (1273156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b65f1bfd861f0500397eb702ff7f3d35b00a06b071835efaece03815d6bc20e8`  
		Last Modified: Wed, 05 Aug 2026 01:21:12 GMT  
		Size: 161.1 MB (161085934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.12.2` - unknown; unknown

```console
$ docker pull dart@sha256:c3d065d95903b9ef4f151ae80e3cead5c8679eeb37169408bc2ff23fa7843b10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66695f912de635abc910e9505ad4f1e2d9964aeef45cc6e009c51575ccebc761`

```dockerfile
```

-	Layers:
	-	`sha256:e73019034986db262f40450060b4a5c97a4ff79fd778e2dfd4121f809a4bd935`  
		Last Modified: Wed, 05 Aug 2026 01:21:08 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.12.2` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:867be053fb4ddab1563ceb923816ac6ccb4d624852d0d41caa1600ec702a6675
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.4 MB (309423647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3e72c0332103652250c5bc4e480ac709cbf52568fcb415a1e1115675ceb80d7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:42 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:43 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 05 Aug 2026 00:47:43 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 05 Aug 2026 00:47:43 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:47:43 GMT
WORKDIR /root
# Wed, 05 Aug 2026 00:47:53 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cddfb381db4ca06c1bee7de7a22656e4dbc7547db6e828e6ffd9df39ba88de7a`  
		Last Modified: Wed, 05 Aug 2026 00:48:25 GMT  
		Size: 42.3 MB (42310303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:942f6b36768016d2f0a1a4586242d533c814086decea17ba82bd32d1a10e9c23`  
		Last Modified: Wed, 05 Aug 2026 00:48:23 GMT  
		Size: 1.6 MB (1564388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1066985a1f35105175046ab7a8aa0ca20f372ae273e67d938582d2d71724db3c`  
		Last Modified: Wed, 05 Aug 2026 00:48:29 GMT  
		Size: 235.4 MB (235405315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.12.2` - unknown; unknown

```console
$ docker pull dart@sha256:411f3fb8c118d9420f7f2a85699014244fc86beab67dab502af3a86b0f11ae33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce50b5f66c1a9a0ab937b40e5e1f98433554427e4100efd23bcc3b70bb6361be`

```dockerfile
```

-	Layers:
	-	`sha256:86f4735c370d3867ed2c5fff098ff9b4397e0f7c17f7b3a0a6c94ae018da4d0e`  
		Last Modified: Wed, 05 Aug 2026 00:48:23 GMT  
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
$ docker pull dart@sha256:8d7b6fcd6d2766e167c2b2e569e6411d981ea8b282d5766372859f4a07b24600
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
$ docker pull dart@sha256:63fe401719e12701a1fa35bfd5fc600e3f5d0287c497cb36e2e6d7c7842a254a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.0 MB (310967918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fc3fc26fee0c74bbf1eb16ec881ea17ca04860daec88ca1187d8007cd926e79`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:31 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:45:31 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 05 Aug 2026 00:45:31 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 05 Aug 2026 00:45:31 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:45:31 GMT
WORKDIR /root
# Wed, 05 Aug 2026 00:45:42 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca6064fdb4ee57472c944ab4e88d4e7cb7bb815e9e49131fa98d7ecd6c402f8b`  
		Last Modified: Wed, 05 Aug 2026 00:46:14 GMT  
		Size: 42.5 MB (42523778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7badd722870543abf73b553b60eb3f18ce87fc18d03b5e8b175d88e657275a95`  
		Last Modified: Wed, 05 Aug 2026 00:46:12 GMT  
		Size: 1.9 MB (1869783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:846e17d72354131b437f2d57f41382536f38ce2003e3b23123c293626649e736`  
		Last Modified: Wed, 05 Aug 2026 00:46:17 GMT  
		Size: 236.8 MB (236793560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.12.2-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:d4a3699f239cdbe77f627a07dec7d0023993a095c6eff264fdc948ca012c6923
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5b90a9adce1aaad4a01e3928475cf385580be4f4ecc76b46638ef954fcd3947`

```dockerfile
```

-	Layers:
	-	`sha256:7570c3dd674d66da7e4ec8a64c62a8b7ad045d61a0893576685e872c92c43294`  
		Last Modified: Wed, 05 Aug 2026 00:46:12 GMT  
		Size: 20.6 KB (20615 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.12.2-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:ed85203b6e59e196ba2adf9e88290660320c9903eba2948c056135712e339140
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.1 MB (226079182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09749d00b69bacce046a6edb8328843b2295bc4bdcf9d42c356862ec5f910ba9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:20:38 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:20:38 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 05 Aug 2026 01:20:38 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 05 Aug 2026 01:20:38 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:20:38 GMT
WORKDIR /root
# Wed, 05 Aug 2026 01:20:47 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8f74326b5cdfe3ab818cdf66c72173ce4eb7d0d705112bd1ee0bc0410cc0677`  
		Last Modified: Wed, 05 Aug 2026 01:21:10 GMT  
		Size: 37.5 MB (37513688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c5a2be87d373955787b12cf67085dcd55eff208690f50be2fe95b547fe4b17e`  
		Last Modified: Wed, 05 Aug 2026 01:21:09 GMT  
		Size: 1.3 MB (1273156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b65f1bfd861f0500397eb702ff7f3d35b00a06b071835efaece03815d6bc20e8`  
		Last Modified: Wed, 05 Aug 2026 01:21:12 GMT  
		Size: 161.1 MB (161085934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.12.2-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:c3d065d95903b9ef4f151ae80e3cead5c8679eeb37169408bc2ff23fa7843b10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66695f912de635abc910e9505ad4f1e2d9964aeef45cc6e009c51575ccebc761`

```dockerfile
```

-	Layers:
	-	`sha256:e73019034986db262f40450060b4a5c97a4ff79fd778e2dfd4121f809a4bd935`  
		Last Modified: Wed, 05 Aug 2026 01:21:08 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.12.2-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:867be053fb4ddab1563ceb923816ac6ccb4d624852d0d41caa1600ec702a6675
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.4 MB (309423647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3e72c0332103652250c5bc4e480ac709cbf52568fcb415a1e1115675ceb80d7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:42 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:43 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 05 Aug 2026 00:47:43 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 05 Aug 2026 00:47:43 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:47:43 GMT
WORKDIR /root
# Wed, 05 Aug 2026 00:47:53 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cddfb381db4ca06c1bee7de7a22656e4dbc7547db6e828e6ffd9df39ba88de7a`  
		Last Modified: Wed, 05 Aug 2026 00:48:25 GMT  
		Size: 42.3 MB (42310303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:942f6b36768016d2f0a1a4586242d533c814086decea17ba82bd32d1a10e9c23`  
		Last Modified: Wed, 05 Aug 2026 00:48:23 GMT  
		Size: 1.6 MB (1564388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1066985a1f35105175046ab7a8aa0ca20f372ae273e67d938582d2d71724db3c`  
		Last Modified: Wed, 05 Aug 2026 00:48:29 GMT  
		Size: 235.4 MB (235405315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.12.2-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:411f3fb8c118d9420f7f2a85699014244fc86beab67dab502af3a86b0f11ae33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce50b5f66c1a9a0ab937b40e5e1f98433554427e4100efd23bcc3b70bb6361be`

```dockerfile
```

-	Layers:
	-	`sha256:86f4735c370d3867ed2c5fff098ff9b4397e0f7c17f7b3a0a6c94ae018da4d0e`  
		Last Modified: Wed, 05 Aug 2026 00:48:23 GMT  
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

## `dart:3.13.0-282.4.beta`

```console
$ docker pull dart@sha256:ac171af519e5944d93deae927fed3bf39eeb26e2b1288b1c40133998cf42a3de
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

### `dart:3.13.0-282.4.beta` - linux; amd64

```console
$ docker pull dart@sha256:031ad074a4db02dfb03539119709d19af614984d281fed6ba85ee418a6d49a1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316553185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfe27949e2ec053b549671f0120c480f26d30ad55ef91e5220b55936c3e371af`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:37 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:45:38 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 05 Aug 2026 00:45:38 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 05 Aug 2026 00:45:38 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:45:38 GMT
WORKDIR /root
# Wed, 05 Aug 2026 00:45:49 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ae426a461fde77e78e4a2fed380c694a88500a720465d45c6720c1051d443397;             SDK_ARCH="x64";;         armhf)             DART_SHA256=273dd080170b6a86474908117583e58e4dde2850d4784a021ca51b34c12696b4;             SDK_ARCH="arm";;         arm64)             DART_SHA256=d4658eaae87b582899f6802a5d6a4ffa5ec510971a22f51c5bb3547b3030adfe;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=640103641c219c0075f8a19a58b39caac4da6ef21d5fe27fbd010993de4bca8f;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.13.0-282.4.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a70de4e28f88edb19deed190a29dcbe55445bf4c19624db093cd968600dddbf6`  
		Last Modified: Wed, 05 Aug 2026 00:46:17 GMT  
		Size: 42.5 MB (42523637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebfb94dd78a4d4a9fdf3901bf44f03fc66b0903bdcf83f76b445b20d8535c033`  
		Last Modified: Wed, 05 Aug 2026 00:46:16 GMT  
		Size: 1.9 MB (1869784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17eaebe7f964ed7d8ce2b8e153eecc18fd208c6afeea2961e13d3094edbb5199`  
		Last Modified: Wed, 05 Aug 2026 00:46:21 GMT  
		Size: 242.4 MB (242378967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.0-282.4.beta` - unknown; unknown

```console
$ docker pull dart@sha256:8c5ad69097f041abfa0f8987049855cf66eebd6814172d3781ee81ecc6945ae2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 KB (18923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:930fa735c8adefefe7d45452004169468791412b29e22f05e2101520e9d18c16`

```dockerfile
```

-	Layers:
	-	`sha256:f353e32b35c18b3b6a643327b84d969ee52178db2dcd9307108d89067bf9028f`  
		Last Modified: Wed, 05 Aug 2026 00:46:15 GMT  
		Size: 18.9 KB (18923 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.0-282.4.beta` - linux; arm variant v7

```console
$ docker pull dart@sha256:d64212b4926cd10efcd6b5cdc14b2c9c66546ea013320679ec93c5624bbeaa34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230472688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e9778ae1deac5a5096ebe56f6781f96722ac62b63722556ff2912d4a4397c12`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:20:40 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:20:41 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 05 Aug 2026 01:20:41 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 05 Aug 2026 01:20:41 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:20:41 GMT
WORKDIR /root
# Wed, 05 Aug 2026 01:20:50 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ae426a461fde77e78e4a2fed380c694a88500a720465d45c6720c1051d443397;             SDK_ARCH="x64";;         armhf)             DART_SHA256=273dd080170b6a86474908117583e58e4dde2850d4784a021ca51b34c12696b4;             SDK_ARCH="arm";;         arm64)             DART_SHA256=d4658eaae87b582899f6802a5d6a4ffa5ec510971a22f51c5bb3547b3030adfe;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=640103641c219c0075f8a19a58b39caac4da6ef21d5fe27fbd010993de4bca8f;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.13.0-282.4.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28ed407362228b2ddd2660f8926e86165a4950deddab4f7ebc11d079f1a93d04`  
		Last Modified: Wed, 05 Aug 2026 01:21:11 GMT  
		Size: 37.5 MB (37513788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7a50e6220ea7e211c14f87f38233240c9f84c1e8ea51a76cceb70f8f1a77821`  
		Last Modified: Wed, 05 Aug 2026 01:21:09 GMT  
		Size: 1.3 MB (1273157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a411fe4434f6a5068688fed15f3ae0311c8091de07ce2e9d39749d38d8fcb86b`  
		Last Modified: Wed, 05 Aug 2026 01:21:13 GMT  
		Size: 165.5 MB (165479339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.0-282.4.beta` - unknown; unknown

```console
$ docker pull dart@sha256:82a34ec693cc2821cb4d01863b2ae79e582354061c91d44b766c3478d8b3dce8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5467cb905939a1344426f66d87bb2bdc28dd50e74121f4805c9e69fc98daced`

```dockerfile
```

-	Layers:
	-	`sha256:a9109d3e53d9bcc540f9c234a2112f27ada23b9a04a0be78c6a61089bfd91315`  
		Last Modified: Wed, 05 Aug 2026 01:21:09 GMT  
		Size: 19.0 KB (19029 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.0-282.4.beta` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:34d19c15d3ffbe3ec9bd957e160e7ce819752fd14049cb7b5720f40b187ea0ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.2 MB (315228883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c949edbac216afb6b08a350557df58e92027aa5eeece984a8d6506ebe04c39b4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:48 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:48 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 05 Aug 2026 00:47:48 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 05 Aug 2026 00:47:48 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:47:48 GMT
WORKDIR /root
# Wed, 05 Aug 2026 00:48:01 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ae426a461fde77e78e4a2fed380c694a88500a720465d45c6720c1051d443397;             SDK_ARCH="x64";;         armhf)             DART_SHA256=273dd080170b6a86474908117583e58e4dde2850d4784a021ca51b34c12696b4;             SDK_ARCH="arm";;         arm64)             DART_SHA256=d4658eaae87b582899f6802a5d6a4ffa5ec510971a22f51c5bb3547b3030adfe;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=640103641c219c0075f8a19a58b39caac4da6ef21d5fe27fbd010993de4bca8f;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.13.0-282.4.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23183ceb5684b60bd62bd59d8ba32d8b86fc98067b63e5948fbe514877f99491`  
		Last Modified: Wed, 05 Aug 2026 00:48:33 GMT  
		Size: 42.3 MB (42310026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:871564407c8acd372810b556c256832a539679a6e8393d4274b0e622259f2037`  
		Last Modified: Wed, 05 Aug 2026 00:48:31 GMT  
		Size: 1.6 MB (1564378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f69e914db4ad2a0795d3377f9f2710aff87d1d90b75b750ded685f2124921726`  
		Last Modified: Wed, 05 Aug 2026 00:48:36 GMT  
		Size: 241.2 MB (241210838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.0-282.4.beta` - unknown; unknown

```console
$ docker pull dart@sha256:d054eaaa74358d1a56357f5c47c1a2c062209458639b395db28cf44e6422b18e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 KB (19057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bfa5164d8e4b90ae3a7eaf8b73e1cf90db55f9f10adf160d6d7ab8f968cdc44`

```dockerfile
```

-	Layers:
	-	`sha256:bfabc5a21b9a8f2ea136f0372e33b4776cc9ed954b94f578b4dd59351669a94d`  
		Last Modified: Wed, 05 Aug 2026 00:48:31 GMT  
		Size: 19.1 KB (19057 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.0-282.4.beta` - linux; riscv64

```console
$ docker pull dart@sha256:f174c6cc2487d41ddbf5f052db4b4cb426e6993055f5e8e4f691b5646476d25a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.7 MB (252701944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af7a66c60b42492ae1dab1635d1c7c88447c2fe6862fbea340fda6637094900d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 20:29:36 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:29:38 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 04 Aug 2026 20:29:38 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 04 Aug 2026 20:29:38 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:29:38 GMT
WORKDIR /root
# Tue, 04 Aug 2026 20:30:26 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ae426a461fde77e78e4a2fed380c694a88500a720465d45c6720c1051d443397;             SDK_ARCH="x64";;         armhf)             DART_SHA256=273dd080170b6a86474908117583e58e4dde2850d4784a021ca51b34c12696b4;             SDK_ARCH="arm";;         arm64)             DART_SHA256=d4658eaae87b582899f6802a5d6a4ffa5ec510971a22f51c5bb3547b3030adfe;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=640103641c219c0075f8a19a58b39caac4da6ef21d5fe27fbd010993de4bca8f;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.13.0-282.4.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:3ed37bd5491de4685b6418abd6b83c4b16cc06b7a51e46da7f154c5a149a41a5`  
		Last Modified: Tue, 14 Jul 2026 00:30:18 GMT  
		Size: 28.3 MB (28278203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5def37ce8d833f64ff470ee9a3f2d6399bec60e2c605ba66ec528d35a52cd601`  
		Last Modified: Tue, 04 Aug 2026 20:34:49 GMT  
		Size: 41.6 MB (41594073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28b5d391b27555576ca59244b12fa759fedaae6801757d8d3072e1b1258623f8`  
		Last Modified: Tue, 04 Aug 2026 20:34:37 GMT  
		Size: 1.6 MB (1564441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b98fbd8a728f32f99174fa169fcef1381c07197cbe33dfa1b0e55503d971e151`  
		Last Modified: Tue, 04 Aug 2026 20:35:09 GMT  
		Size: 181.3 MB (181265195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.0-282.4.beta` - unknown; unknown

```console
$ docker pull dart@sha256:a356cc98c467a549f697637133a50be6ddf674c9191f2ca85839e65e94825a8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (18971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bc6b311b66f51834f8b9c5fbe7421285dd0db2061e69367c2f2e3ba1114ccbc`

```dockerfile
```

-	Layers:
	-	`sha256:7a4d6c41c9c79716388438903bf0186300fc95473a72e639918eb2c262cb0964`  
		Last Modified: Tue, 04 Aug 2026 20:34:37 GMT  
		Size: 19.0 KB (18971 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:3.13.0-282.4.beta-sdk`

```console
$ docker pull dart@sha256:ac171af519e5944d93deae927fed3bf39eeb26e2b1288b1c40133998cf42a3de
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

### `dart:3.13.0-282.4.beta-sdk` - linux; amd64

```console
$ docker pull dart@sha256:031ad074a4db02dfb03539119709d19af614984d281fed6ba85ee418a6d49a1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316553185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfe27949e2ec053b549671f0120c480f26d30ad55ef91e5220b55936c3e371af`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:37 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:45:38 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 05 Aug 2026 00:45:38 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 05 Aug 2026 00:45:38 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:45:38 GMT
WORKDIR /root
# Wed, 05 Aug 2026 00:45:49 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ae426a461fde77e78e4a2fed380c694a88500a720465d45c6720c1051d443397;             SDK_ARCH="x64";;         armhf)             DART_SHA256=273dd080170b6a86474908117583e58e4dde2850d4784a021ca51b34c12696b4;             SDK_ARCH="arm";;         arm64)             DART_SHA256=d4658eaae87b582899f6802a5d6a4ffa5ec510971a22f51c5bb3547b3030adfe;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=640103641c219c0075f8a19a58b39caac4da6ef21d5fe27fbd010993de4bca8f;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.13.0-282.4.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a70de4e28f88edb19deed190a29dcbe55445bf4c19624db093cd968600dddbf6`  
		Last Modified: Wed, 05 Aug 2026 00:46:17 GMT  
		Size: 42.5 MB (42523637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebfb94dd78a4d4a9fdf3901bf44f03fc66b0903bdcf83f76b445b20d8535c033`  
		Last Modified: Wed, 05 Aug 2026 00:46:16 GMT  
		Size: 1.9 MB (1869784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17eaebe7f964ed7d8ce2b8e153eecc18fd208c6afeea2961e13d3094edbb5199`  
		Last Modified: Wed, 05 Aug 2026 00:46:21 GMT  
		Size: 242.4 MB (242378967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.0-282.4.beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:8c5ad69097f041abfa0f8987049855cf66eebd6814172d3781ee81ecc6945ae2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 KB (18923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:930fa735c8adefefe7d45452004169468791412b29e22f05e2101520e9d18c16`

```dockerfile
```

-	Layers:
	-	`sha256:f353e32b35c18b3b6a643327b84d969ee52178db2dcd9307108d89067bf9028f`  
		Last Modified: Wed, 05 Aug 2026 00:46:15 GMT  
		Size: 18.9 KB (18923 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.0-282.4.beta-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:d64212b4926cd10efcd6b5cdc14b2c9c66546ea013320679ec93c5624bbeaa34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230472688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e9778ae1deac5a5096ebe56f6781f96722ac62b63722556ff2912d4a4397c12`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:20:40 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:20:41 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 05 Aug 2026 01:20:41 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 05 Aug 2026 01:20:41 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:20:41 GMT
WORKDIR /root
# Wed, 05 Aug 2026 01:20:50 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ae426a461fde77e78e4a2fed380c694a88500a720465d45c6720c1051d443397;             SDK_ARCH="x64";;         armhf)             DART_SHA256=273dd080170b6a86474908117583e58e4dde2850d4784a021ca51b34c12696b4;             SDK_ARCH="arm";;         arm64)             DART_SHA256=d4658eaae87b582899f6802a5d6a4ffa5ec510971a22f51c5bb3547b3030adfe;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=640103641c219c0075f8a19a58b39caac4da6ef21d5fe27fbd010993de4bca8f;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.13.0-282.4.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28ed407362228b2ddd2660f8926e86165a4950deddab4f7ebc11d079f1a93d04`  
		Last Modified: Wed, 05 Aug 2026 01:21:11 GMT  
		Size: 37.5 MB (37513788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7a50e6220ea7e211c14f87f38233240c9f84c1e8ea51a76cceb70f8f1a77821`  
		Last Modified: Wed, 05 Aug 2026 01:21:09 GMT  
		Size: 1.3 MB (1273157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a411fe4434f6a5068688fed15f3ae0311c8091de07ce2e9d39749d38d8fcb86b`  
		Last Modified: Wed, 05 Aug 2026 01:21:13 GMT  
		Size: 165.5 MB (165479339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.0-282.4.beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:82a34ec693cc2821cb4d01863b2ae79e582354061c91d44b766c3478d8b3dce8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5467cb905939a1344426f66d87bb2bdc28dd50e74121f4805c9e69fc98daced`

```dockerfile
```

-	Layers:
	-	`sha256:a9109d3e53d9bcc540f9c234a2112f27ada23b9a04a0be78c6a61089bfd91315`  
		Last Modified: Wed, 05 Aug 2026 01:21:09 GMT  
		Size: 19.0 KB (19029 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.0-282.4.beta-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:34d19c15d3ffbe3ec9bd957e160e7ce819752fd14049cb7b5720f40b187ea0ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.2 MB (315228883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c949edbac216afb6b08a350557df58e92027aa5eeece984a8d6506ebe04c39b4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:48 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:48 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 05 Aug 2026 00:47:48 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 05 Aug 2026 00:47:48 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:47:48 GMT
WORKDIR /root
# Wed, 05 Aug 2026 00:48:01 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ae426a461fde77e78e4a2fed380c694a88500a720465d45c6720c1051d443397;             SDK_ARCH="x64";;         armhf)             DART_SHA256=273dd080170b6a86474908117583e58e4dde2850d4784a021ca51b34c12696b4;             SDK_ARCH="arm";;         arm64)             DART_SHA256=d4658eaae87b582899f6802a5d6a4ffa5ec510971a22f51c5bb3547b3030adfe;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=640103641c219c0075f8a19a58b39caac4da6ef21d5fe27fbd010993de4bca8f;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.13.0-282.4.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23183ceb5684b60bd62bd59d8ba32d8b86fc98067b63e5948fbe514877f99491`  
		Last Modified: Wed, 05 Aug 2026 00:48:33 GMT  
		Size: 42.3 MB (42310026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:871564407c8acd372810b556c256832a539679a6e8393d4274b0e622259f2037`  
		Last Modified: Wed, 05 Aug 2026 00:48:31 GMT  
		Size: 1.6 MB (1564378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f69e914db4ad2a0795d3377f9f2710aff87d1d90b75b750ded685f2124921726`  
		Last Modified: Wed, 05 Aug 2026 00:48:36 GMT  
		Size: 241.2 MB (241210838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.0-282.4.beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:d054eaaa74358d1a56357f5c47c1a2c062209458639b395db28cf44e6422b18e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 KB (19057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bfa5164d8e4b90ae3a7eaf8b73e1cf90db55f9f10adf160d6d7ab8f968cdc44`

```dockerfile
```

-	Layers:
	-	`sha256:bfabc5a21b9a8f2ea136f0372e33b4776cc9ed954b94f578b4dd59351669a94d`  
		Last Modified: Wed, 05 Aug 2026 00:48:31 GMT  
		Size: 19.1 KB (19057 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:3.13.0-282.4.beta-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:f174c6cc2487d41ddbf5f052db4b4cb426e6993055f5e8e4f691b5646476d25a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.7 MB (252701944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af7a66c60b42492ae1dab1635d1c7c88447c2fe6862fbea340fda6637094900d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 20:29:36 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:29:38 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 04 Aug 2026 20:29:38 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 04 Aug 2026 20:29:38 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:29:38 GMT
WORKDIR /root
# Tue, 04 Aug 2026 20:30:26 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ae426a461fde77e78e4a2fed380c694a88500a720465d45c6720c1051d443397;             SDK_ARCH="x64";;         armhf)             DART_SHA256=273dd080170b6a86474908117583e58e4dde2850d4784a021ca51b34c12696b4;             SDK_ARCH="arm";;         arm64)             DART_SHA256=d4658eaae87b582899f6802a5d6a4ffa5ec510971a22f51c5bb3547b3030adfe;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=640103641c219c0075f8a19a58b39caac4da6ef21d5fe27fbd010993de4bca8f;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.13.0-282.4.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:3ed37bd5491de4685b6418abd6b83c4b16cc06b7a51e46da7f154c5a149a41a5`  
		Last Modified: Tue, 14 Jul 2026 00:30:18 GMT  
		Size: 28.3 MB (28278203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5def37ce8d833f64ff470ee9a3f2d6399bec60e2c605ba66ec528d35a52cd601`  
		Last Modified: Tue, 04 Aug 2026 20:34:49 GMT  
		Size: 41.6 MB (41594073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28b5d391b27555576ca59244b12fa759fedaae6801757d8d3072e1b1258623f8`  
		Last Modified: Tue, 04 Aug 2026 20:34:37 GMT  
		Size: 1.6 MB (1564441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b98fbd8a728f32f99174fa169fcef1381c07197cbe33dfa1b0e55503d971e151`  
		Last Modified: Tue, 04 Aug 2026 20:35:09 GMT  
		Size: 181.3 MB (181265195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:3.13.0-282.4.beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:a356cc98c467a549f697637133a50be6ddf674c9191f2ca85839e65e94825a8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (18971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bc6b311b66f51834f8b9c5fbe7421285dd0db2061e69367c2f2e3ba1114ccbc`

```dockerfile
```

-	Layers:
	-	`sha256:7a4d6c41c9c79716388438903bf0186300fc95473a72e639918eb2c262cb0964`  
		Last Modified: Tue, 04 Aug 2026 20:34:37 GMT  
		Size: 19.0 KB (18971 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:beta`

```console
$ docker pull dart@sha256:ac171af519e5944d93deae927fed3bf39eeb26e2b1288b1c40133998cf42a3de
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
$ docker pull dart@sha256:031ad074a4db02dfb03539119709d19af614984d281fed6ba85ee418a6d49a1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316553185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfe27949e2ec053b549671f0120c480f26d30ad55ef91e5220b55936c3e371af`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:37 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:45:38 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 05 Aug 2026 00:45:38 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 05 Aug 2026 00:45:38 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:45:38 GMT
WORKDIR /root
# Wed, 05 Aug 2026 00:45:49 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ae426a461fde77e78e4a2fed380c694a88500a720465d45c6720c1051d443397;             SDK_ARCH="x64";;         armhf)             DART_SHA256=273dd080170b6a86474908117583e58e4dde2850d4784a021ca51b34c12696b4;             SDK_ARCH="arm";;         arm64)             DART_SHA256=d4658eaae87b582899f6802a5d6a4ffa5ec510971a22f51c5bb3547b3030adfe;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=640103641c219c0075f8a19a58b39caac4da6ef21d5fe27fbd010993de4bca8f;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.13.0-282.4.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a70de4e28f88edb19deed190a29dcbe55445bf4c19624db093cd968600dddbf6`  
		Last Modified: Wed, 05 Aug 2026 00:46:17 GMT  
		Size: 42.5 MB (42523637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebfb94dd78a4d4a9fdf3901bf44f03fc66b0903bdcf83f76b445b20d8535c033`  
		Last Modified: Wed, 05 Aug 2026 00:46:16 GMT  
		Size: 1.9 MB (1869784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17eaebe7f964ed7d8ce2b8e153eecc18fd208c6afeea2961e13d3094edbb5199`  
		Last Modified: Wed, 05 Aug 2026 00:46:21 GMT  
		Size: 242.4 MB (242378967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:8c5ad69097f041abfa0f8987049855cf66eebd6814172d3781ee81ecc6945ae2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 KB (18923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:930fa735c8adefefe7d45452004169468791412b29e22f05e2101520e9d18c16`

```dockerfile
```

-	Layers:
	-	`sha256:f353e32b35c18b3b6a643327b84d969ee52178db2dcd9307108d89067bf9028f`  
		Last Modified: Wed, 05 Aug 2026 00:46:15 GMT  
		Size: 18.9 KB (18923 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta` - linux; arm variant v7

```console
$ docker pull dart@sha256:d64212b4926cd10efcd6b5cdc14b2c9c66546ea013320679ec93c5624bbeaa34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230472688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e9778ae1deac5a5096ebe56f6781f96722ac62b63722556ff2912d4a4397c12`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:20:40 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:20:41 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 05 Aug 2026 01:20:41 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 05 Aug 2026 01:20:41 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:20:41 GMT
WORKDIR /root
# Wed, 05 Aug 2026 01:20:50 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ae426a461fde77e78e4a2fed380c694a88500a720465d45c6720c1051d443397;             SDK_ARCH="x64";;         armhf)             DART_SHA256=273dd080170b6a86474908117583e58e4dde2850d4784a021ca51b34c12696b4;             SDK_ARCH="arm";;         arm64)             DART_SHA256=d4658eaae87b582899f6802a5d6a4ffa5ec510971a22f51c5bb3547b3030adfe;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=640103641c219c0075f8a19a58b39caac4da6ef21d5fe27fbd010993de4bca8f;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.13.0-282.4.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28ed407362228b2ddd2660f8926e86165a4950deddab4f7ebc11d079f1a93d04`  
		Last Modified: Wed, 05 Aug 2026 01:21:11 GMT  
		Size: 37.5 MB (37513788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7a50e6220ea7e211c14f87f38233240c9f84c1e8ea51a76cceb70f8f1a77821`  
		Last Modified: Wed, 05 Aug 2026 01:21:09 GMT  
		Size: 1.3 MB (1273157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a411fe4434f6a5068688fed15f3ae0311c8091de07ce2e9d39749d38d8fcb86b`  
		Last Modified: Wed, 05 Aug 2026 01:21:13 GMT  
		Size: 165.5 MB (165479339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:82a34ec693cc2821cb4d01863b2ae79e582354061c91d44b766c3478d8b3dce8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5467cb905939a1344426f66d87bb2bdc28dd50e74121f4805c9e69fc98daced`

```dockerfile
```

-	Layers:
	-	`sha256:a9109d3e53d9bcc540f9c234a2112f27ada23b9a04a0be78c6a61089bfd91315`  
		Last Modified: Wed, 05 Aug 2026 01:21:09 GMT  
		Size: 19.0 KB (19029 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:34d19c15d3ffbe3ec9bd957e160e7ce819752fd14049cb7b5720f40b187ea0ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.2 MB (315228883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c949edbac216afb6b08a350557df58e92027aa5eeece984a8d6506ebe04c39b4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:48 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:48 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 05 Aug 2026 00:47:48 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 05 Aug 2026 00:47:48 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:47:48 GMT
WORKDIR /root
# Wed, 05 Aug 2026 00:48:01 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ae426a461fde77e78e4a2fed380c694a88500a720465d45c6720c1051d443397;             SDK_ARCH="x64";;         armhf)             DART_SHA256=273dd080170b6a86474908117583e58e4dde2850d4784a021ca51b34c12696b4;             SDK_ARCH="arm";;         arm64)             DART_SHA256=d4658eaae87b582899f6802a5d6a4ffa5ec510971a22f51c5bb3547b3030adfe;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=640103641c219c0075f8a19a58b39caac4da6ef21d5fe27fbd010993de4bca8f;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.13.0-282.4.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23183ceb5684b60bd62bd59d8ba32d8b86fc98067b63e5948fbe514877f99491`  
		Last Modified: Wed, 05 Aug 2026 00:48:33 GMT  
		Size: 42.3 MB (42310026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:871564407c8acd372810b556c256832a539679a6e8393d4274b0e622259f2037`  
		Last Modified: Wed, 05 Aug 2026 00:48:31 GMT  
		Size: 1.6 MB (1564378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f69e914db4ad2a0795d3377f9f2710aff87d1d90b75b750ded685f2124921726`  
		Last Modified: Wed, 05 Aug 2026 00:48:36 GMT  
		Size: 241.2 MB (241210838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:d054eaaa74358d1a56357f5c47c1a2c062209458639b395db28cf44e6422b18e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 KB (19057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bfa5164d8e4b90ae3a7eaf8b73e1cf90db55f9f10adf160d6d7ab8f968cdc44`

```dockerfile
```

-	Layers:
	-	`sha256:bfabc5a21b9a8f2ea136f0372e33b4776cc9ed954b94f578b4dd59351669a94d`  
		Last Modified: Wed, 05 Aug 2026 00:48:31 GMT  
		Size: 19.1 KB (19057 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta` - linux; riscv64

```console
$ docker pull dart@sha256:f174c6cc2487d41ddbf5f052db4b4cb426e6993055f5e8e4f691b5646476d25a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.7 MB (252701944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af7a66c60b42492ae1dab1635d1c7c88447c2fe6862fbea340fda6637094900d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 20:29:36 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:29:38 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 04 Aug 2026 20:29:38 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 04 Aug 2026 20:29:38 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:29:38 GMT
WORKDIR /root
# Tue, 04 Aug 2026 20:30:26 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ae426a461fde77e78e4a2fed380c694a88500a720465d45c6720c1051d443397;             SDK_ARCH="x64";;         armhf)             DART_SHA256=273dd080170b6a86474908117583e58e4dde2850d4784a021ca51b34c12696b4;             SDK_ARCH="arm";;         arm64)             DART_SHA256=d4658eaae87b582899f6802a5d6a4ffa5ec510971a22f51c5bb3547b3030adfe;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=640103641c219c0075f8a19a58b39caac4da6ef21d5fe27fbd010993de4bca8f;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.13.0-282.4.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:3ed37bd5491de4685b6418abd6b83c4b16cc06b7a51e46da7f154c5a149a41a5`  
		Last Modified: Tue, 14 Jul 2026 00:30:18 GMT  
		Size: 28.3 MB (28278203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5def37ce8d833f64ff470ee9a3f2d6399bec60e2c605ba66ec528d35a52cd601`  
		Last Modified: Tue, 04 Aug 2026 20:34:49 GMT  
		Size: 41.6 MB (41594073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28b5d391b27555576ca59244b12fa759fedaae6801757d8d3072e1b1258623f8`  
		Last Modified: Tue, 04 Aug 2026 20:34:37 GMT  
		Size: 1.6 MB (1564441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b98fbd8a728f32f99174fa169fcef1381c07197cbe33dfa1b0e55503d971e151`  
		Last Modified: Tue, 04 Aug 2026 20:35:09 GMT  
		Size: 181.3 MB (181265195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta` - unknown; unknown

```console
$ docker pull dart@sha256:a356cc98c467a549f697637133a50be6ddf674c9191f2ca85839e65e94825a8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (18971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bc6b311b66f51834f8b9c5fbe7421285dd0db2061e69367c2f2e3ba1114ccbc`

```dockerfile
```

-	Layers:
	-	`sha256:7a4d6c41c9c79716388438903bf0186300fc95473a72e639918eb2c262cb0964`  
		Last Modified: Tue, 04 Aug 2026 20:34:37 GMT  
		Size: 19.0 KB (18971 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:beta-sdk`

```console
$ docker pull dart@sha256:ac171af519e5944d93deae927fed3bf39eeb26e2b1288b1c40133998cf42a3de
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
$ docker pull dart@sha256:031ad074a4db02dfb03539119709d19af614984d281fed6ba85ee418a6d49a1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316553185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfe27949e2ec053b549671f0120c480f26d30ad55ef91e5220b55936c3e371af`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:37 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:45:38 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 05 Aug 2026 00:45:38 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 05 Aug 2026 00:45:38 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:45:38 GMT
WORKDIR /root
# Wed, 05 Aug 2026 00:45:49 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ae426a461fde77e78e4a2fed380c694a88500a720465d45c6720c1051d443397;             SDK_ARCH="x64";;         armhf)             DART_SHA256=273dd080170b6a86474908117583e58e4dde2850d4784a021ca51b34c12696b4;             SDK_ARCH="arm";;         arm64)             DART_SHA256=d4658eaae87b582899f6802a5d6a4ffa5ec510971a22f51c5bb3547b3030adfe;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=640103641c219c0075f8a19a58b39caac4da6ef21d5fe27fbd010993de4bca8f;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.13.0-282.4.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a70de4e28f88edb19deed190a29dcbe55445bf4c19624db093cd968600dddbf6`  
		Last Modified: Wed, 05 Aug 2026 00:46:17 GMT  
		Size: 42.5 MB (42523637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebfb94dd78a4d4a9fdf3901bf44f03fc66b0903bdcf83f76b445b20d8535c033`  
		Last Modified: Wed, 05 Aug 2026 00:46:16 GMT  
		Size: 1.9 MB (1869784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17eaebe7f964ed7d8ce2b8e153eecc18fd208c6afeea2961e13d3094edbb5199`  
		Last Modified: Wed, 05 Aug 2026 00:46:21 GMT  
		Size: 242.4 MB (242378967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:8c5ad69097f041abfa0f8987049855cf66eebd6814172d3781ee81ecc6945ae2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 KB (18923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:930fa735c8adefefe7d45452004169468791412b29e22f05e2101520e9d18c16`

```dockerfile
```

-	Layers:
	-	`sha256:f353e32b35c18b3b6a643327b84d969ee52178db2dcd9307108d89067bf9028f`  
		Last Modified: Wed, 05 Aug 2026 00:46:15 GMT  
		Size: 18.9 KB (18923 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:d64212b4926cd10efcd6b5cdc14b2c9c66546ea013320679ec93c5624bbeaa34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230472688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e9778ae1deac5a5096ebe56f6781f96722ac62b63722556ff2912d4a4397c12`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:20:40 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:20:41 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 05 Aug 2026 01:20:41 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 05 Aug 2026 01:20:41 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:20:41 GMT
WORKDIR /root
# Wed, 05 Aug 2026 01:20:50 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ae426a461fde77e78e4a2fed380c694a88500a720465d45c6720c1051d443397;             SDK_ARCH="x64";;         armhf)             DART_SHA256=273dd080170b6a86474908117583e58e4dde2850d4784a021ca51b34c12696b4;             SDK_ARCH="arm";;         arm64)             DART_SHA256=d4658eaae87b582899f6802a5d6a4ffa5ec510971a22f51c5bb3547b3030adfe;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=640103641c219c0075f8a19a58b39caac4da6ef21d5fe27fbd010993de4bca8f;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.13.0-282.4.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28ed407362228b2ddd2660f8926e86165a4950deddab4f7ebc11d079f1a93d04`  
		Last Modified: Wed, 05 Aug 2026 01:21:11 GMT  
		Size: 37.5 MB (37513788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7a50e6220ea7e211c14f87f38233240c9f84c1e8ea51a76cceb70f8f1a77821`  
		Last Modified: Wed, 05 Aug 2026 01:21:09 GMT  
		Size: 1.3 MB (1273157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a411fe4434f6a5068688fed15f3ae0311c8091de07ce2e9d39749d38d8fcb86b`  
		Last Modified: Wed, 05 Aug 2026 01:21:13 GMT  
		Size: 165.5 MB (165479339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:82a34ec693cc2821cb4d01863b2ae79e582354061c91d44b766c3478d8b3dce8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (19029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5467cb905939a1344426f66d87bb2bdc28dd50e74121f4805c9e69fc98daced`

```dockerfile
```

-	Layers:
	-	`sha256:a9109d3e53d9bcc540f9c234a2112f27ada23b9a04a0be78c6a61089bfd91315`  
		Last Modified: Wed, 05 Aug 2026 01:21:09 GMT  
		Size: 19.0 KB (19029 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:34d19c15d3ffbe3ec9bd957e160e7ce819752fd14049cb7b5720f40b187ea0ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.2 MB (315228883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c949edbac216afb6b08a350557df58e92027aa5eeece984a8d6506ebe04c39b4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:48 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:48 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 05 Aug 2026 00:47:48 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 05 Aug 2026 00:47:48 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:47:48 GMT
WORKDIR /root
# Wed, 05 Aug 2026 00:48:01 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ae426a461fde77e78e4a2fed380c694a88500a720465d45c6720c1051d443397;             SDK_ARCH="x64";;         armhf)             DART_SHA256=273dd080170b6a86474908117583e58e4dde2850d4784a021ca51b34c12696b4;             SDK_ARCH="arm";;         arm64)             DART_SHA256=d4658eaae87b582899f6802a5d6a4ffa5ec510971a22f51c5bb3547b3030adfe;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=640103641c219c0075f8a19a58b39caac4da6ef21d5fe27fbd010993de4bca8f;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.13.0-282.4.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23183ceb5684b60bd62bd59d8ba32d8b86fc98067b63e5948fbe514877f99491`  
		Last Modified: Wed, 05 Aug 2026 00:48:33 GMT  
		Size: 42.3 MB (42310026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:871564407c8acd372810b556c256832a539679a6e8393d4274b0e622259f2037`  
		Last Modified: Wed, 05 Aug 2026 00:48:31 GMT  
		Size: 1.6 MB (1564378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f69e914db4ad2a0795d3377f9f2710aff87d1d90b75b750ded685f2124921726`  
		Last Modified: Wed, 05 Aug 2026 00:48:36 GMT  
		Size: 241.2 MB (241210838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:d054eaaa74358d1a56357f5c47c1a2c062209458639b395db28cf44e6422b18e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 KB (19057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bfa5164d8e4b90ae3a7eaf8b73e1cf90db55f9f10adf160d6d7ab8f968cdc44`

```dockerfile
```

-	Layers:
	-	`sha256:bfabc5a21b9a8f2ea136f0372e33b4776cc9ed954b94f578b4dd59351669a94d`  
		Last Modified: Wed, 05 Aug 2026 00:48:31 GMT  
		Size: 19.1 KB (19057 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:beta-sdk` - linux; riscv64

```console
$ docker pull dart@sha256:f174c6cc2487d41ddbf5f052db4b4cb426e6993055f5e8e4f691b5646476d25a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.7 MB (252701944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af7a66c60b42492ae1dab1635d1c7c88447c2fe6862fbea340fda6637094900d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 20:29:36 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 20:29:38 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Tue, 04 Aug 2026 20:29:38 GMT
ENV DART_SDK=/usr/lib/dart
# Tue, 04 Aug 2026 20:29:38 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:29:38 GMT
WORKDIR /root
# Tue, 04 Aug 2026 20:30:26 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=ae426a461fde77e78e4a2fed380c694a88500a720465d45c6720c1051d443397;             SDK_ARCH="x64";;         armhf)             DART_SHA256=273dd080170b6a86474908117583e58e4dde2850d4784a021ca51b34c12696b4;             SDK_ARCH="arm";;         arm64)             DART_SHA256=d4658eaae87b582899f6802a5d6a4ffa5ec510971a22f51c5bb3547b3030adfe;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=640103641c219c0075f8a19a58b39caac4da6ef21d5fe27fbd010993de4bca8f;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/beta/release/3.13.0-282.4.beta/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:3ed37bd5491de4685b6418abd6b83c4b16cc06b7a51e46da7f154c5a149a41a5`  
		Last Modified: Tue, 14 Jul 2026 00:30:18 GMT  
		Size: 28.3 MB (28278203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5def37ce8d833f64ff470ee9a3f2d6399bec60e2c605ba66ec528d35a52cd601`  
		Last Modified: Tue, 04 Aug 2026 20:34:49 GMT  
		Size: 41.6 MB (41594073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28b5d391b27555576ca59244b12fa759fedaae6801757d8d3072e1b1258623f8`  
		Last Modified: Tue, 04 Aug 2026 20:34:37 GMT  
		Size: 1.6 MB (1564441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b98fbd8a728f32f99174fa169fcef1381c07197cbe33dfa1b0e55503d971e151`  
		Last Modified: Tue, 04 Aug 2026 20:35:09 GMT  
		Size: 181.3 MB (181265195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:beta-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:a356cc98c467a549f697637133a50be6ddf674c9191f2ca85839e65e94825a8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 KB (18971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bc6b311b66f51834f8b9c5fbe7421285dd0db2061e69367c2f2e3ba1114ccbc`

```dockerfile
```

-	Layers:
	-	`sha256:7a4d6c41c9c79716388438903bf0186300fc95473a72e639918eb2c262cb0964`  
		Last Modified: Tue, 04 Aug 2026 20:34:37 GMT  
		Size: 19.0 KB (18971 bytes)  
		MIME: application/vnd.in-toto+json

## `dart:latest`

```console
$ docker pull dart@sha256:8d7b6fcd6d2766e167c2b2e569e6411d981ea8b282d5766372859f4a07b24600
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
$ docker pull dart@sha256:63fe401719e12701a1fa35bfd5fc600e3f5d0287c497cb36e2e6d7c7842a254a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.0 MB (310967918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fc3fc26fee0c74bbf1eb16ec881ea17ca04860daec88ca1187d8007cd926e79`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:31 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:45:31 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 05 Aug 2026 00:45:31 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 05 Aug 2026 00:45:31 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:45:31 GMT
WORKDIR /root
# Wed, 05 Aug 2026 00:45:42 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca6064fdb4ee57472c944ab4e88d4e7cb7bb815e9e49131fa98d7ecd6c402f8b`  
		Last Modified: Wed, 05 Aug 2026 00:46:14 GMT  
		Size: 42.5 MB (42523778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7badd722870543abf73b553b60eb3f18ce87fc18d03b5e8b175d88e657275a95`  
		Last Modified: Wed, 05 Aug 2026 00:46:12 GMT  
		Size: 1.9 MB (1869783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:846e17d72354131b437f2d57f41382536f38ce2003e3b23123c293626649e736`  
		Last Modified: Wed, 05 Aug 2026 00:46:17 GMT  
		Size: 236.8 MB (236793560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:latest` - unknown; unknown

```console
$ docker pull dart@sha256:d4a3699f239cdbe77f627a07dec7d0023993a095c6eff264fdc948ca012c6923
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5b90a9adce1aaad4a01e3928475cf385580be4f4ecc76b46638ef954fcd3947`

```dockerfile
```

-	Layers:
	-	`sha256:7570c3dd674d66da7e4ec8a64c62a8b7ad045d61a0893576685e872c92c43294`  
		Last Modified: Wed, 05 Aug 2026 00:46:12 GMT  
		Size: 20.6 KB (20615 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:latest` - linux; arm variant v7

```console
$ docker pull dart@sha256:ed85203b6e59e196ba2adf9e88290660320c9903eba2948c056135712e339140
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.1 MB (226079182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09749d00b69bacce046a6edb8328843b2295bc4bdcf9d42c356862ec5f910ba9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:20:38 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:20:38 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 05 Aug 2026 01:20:38 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 05 Aug 2026 01:20:38 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:20:38 GMT
WORKDIR /root
# Wed, 05 Aug 2026 01:20:47 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8f74326b5cdfe3ab818cdf66c72173ce4eb7d0d705112bd1ee0bc0410cc0677`  
		Last Modified: Wed, 05 Aug 2026 01:21:10 GMT  
		Size: 37.5 MB (37513688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c5a2be87d373955787b12cf67085dcd55eff208690f50be2fe95b547fe4b17e`  
		Last Modified: Wed, 05 Aug 2026 01:21:09 GMT  
		Size: 1.3 MB (1273156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b65f1bfd861f0500397eb702ff7f3d35b00a06b071835efaece03815d6bc20e8`  
		Last Modified: Wed, 05 Aug 2026 01:21:12 GMT  
		Size: 161.1 MB (161085934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:latest` - unknown; unknown

```console
$ docker pull dart@sha256:c3d065d95903b9ef4f151ae80e3cead5c8679eeb37169408bc2ff23fa7843b10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66695f912de635abc910e9505ad4f1e2d9964aeef45cc6e009c51575ccebc761`

```dockerfile
```

-	Layers:
	-	`sha256:e73019034986db262f40450060b4a5c97a4ff79fd778e2dfd4121f809a4bd935`  
		Last Modified: Wed, 05 Aug 2026 01:21:08 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:latest` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:867be053fb4ddab1563ceb923816ac6ccb4d624852d0d41caa1600ec702a6675
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.4 MB (309423647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3e72c0332103652250c5bc4e480ac709cbf52568fcb415a1e1115675ceb80d7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:42 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:43 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 05 Aug 2026 00:47:43 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 05 Aug 2026 00:47:43 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:47:43 GMT
WORKDIR /root
# Wed, 05 Aug 2026 00:47:53 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cddfb381db4ca06c1bee7de7a22656e4dbc7547db6e828e6ffd9df39ba88de7a`  
		Last Modified: Wed, 05 Aug 2026 00:48:25 GMT  
		Size: 42.3 MB (42310303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:942f6b36768016d2f0a1a4586242d533c814086decea17ba82bd32d1a10e9c23`  
		Last Modified: Wed, 05 Aug 2026 00:48:23 GMT  
		Size: 1.6 MB (1564388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1066985a1f35105175046ab7a8aa0ca20f372ae273e67d938582d2d71724db3c`  
		Last Modified: Wed, 05 Aug 2026 00:48:29 GMT  
		Size: 235.4 MB (235405315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:latest` - unknown; unknown

```console
$ docker pull dart@sha256:411f3fb8c118d9420f7f2a85699014244fc86beab67dab502af3a86b0f11ae33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce50b5f66c1a9a0ab937b40e5e1f98433554427e4100efd23bcc3b70bb6361be`

```dockerfile
```

-	Layers:
	-	`sha256:86f4735c370d3867ed2c5fff098ff9b4397e0f7c17f7b3a0a6c94ae018da4d0e`  
		Last Modified: Wed, 05 Aug 2026 00:48:23 GMT  
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
$ docker pull dart@sha256:8d7b6fcd6d2766e167c2b2e569e6411d981ea8b282d5766372859f4a07b24600
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
$ docker pull dart@sha256:63fe401719e12701a1fa35bfd5fc600e3f5d0287c497cb36e2e6d7c7842a254a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.0 MB (310967918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fc3fc26fee0c74bbf1eb16ec881ea17ca04860daec88ca1187d8007cd926e79`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:31 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:45:31 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 05 Aug 2026 00:45:31 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 05 Aug 2026 00:45:31 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:45:31 GMT
WORKDIR /root
# Wed, 05 Aug 2026 00:45:42 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca6064fdb4ee57472c944ab4e88d4e7cb7bb815e9e49131fa98d7ecd6c402f8b`  
		Last Modified: Wed, 05 Aug 2026 00:46:14 GMT  
		Size: 42.5 MB (42523778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7badd722870543abf73b553b60eb3f18ce87fc18d03b5e8b175d88e657275a95`  
		Last Modified: Wed, 05 Aug 2026 00:46:12 GMT  
		Size: 1.9 MB (1869783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:846e17d72354131b437f2d57f41382536f38ce2003e3b23123c293626649e736`  
		Last Modified: Wed, 05 Aug 2026 00:46:17 GMT  
		Size: 236.8 MB (236793560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:d4a3699f239cdbe77f627a07dec7d0023993a095c6eff264fdc948ca012c6923
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5b90a9adce1aaad4a01e3928475cf385580be4f4ecc76b46638ef954fcd3947`

```dockerfile
```

-	Layers:
	-	`sha256:7570c3dd674d66da7e4ec8a64c62a8b7ad045d61a0893576685e872c92c43294`  
		Last Modified: Wed, 05 Aug 2026 00:46:12 GMT  
		Size: 20.6 KB (20615 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:ed85203b6e59e196ba2adf9e88290660320c9903eba2948c056135712e339140
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.1 MB (226079182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09749d00b69bacce046a6edb8328843b2295bc4bdcf9d42c356862ec5f910ba9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:20:38 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:20:38 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 05 Aug 2026 01:20:38 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 05 Aug 2026 01:20:38 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:20:38 GMT
WORKDIR /root
# Wed, 05 Aug 2026 01:20:47 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8f74326b5cdfe3ab818cdf66c72173ce4eb7d0d705112bd1ee0bc0410cc0677`  
		Last Modified: Wed, 05 Aug 2026 01:21:10 GMT  
		Size: 37.5 MB (37513688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c5a2be87d373955787b12cf67085dcd55eff208690f50be2fe95b547fe4b17e`  
		Last Modified: Wed, 05 Aug 2026 01:21:09 GMT  
		Size: 1.3 MB (1273156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b65f1bfd861f0500397eb702ff7f3d35b00a06b071835efaece03815d6bc20e8`  
		Last Modified: Wed, 05 Aug 2026 01:21:12 GMT  
		Size: 161.1 MB (161085934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:c3d065d95903b9ef4f151ae80e3cead5c8679eeb37169408bc2ff23fa7843b10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66695f912de635abc910e9505ad4f1e2d9964aeef45cc6e009c51575ccebc761`

```dockerfile
```

-	Layers:
	-	`sha256:e73019034986db262f40450060b4a5c97a4ff79fd778e2dfd4121f809a4bd935`  
		Last Modified: Wed, 05 Aug 2026 01:21:08 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:867be053fb4ddab1563ceb923816ac6ccb4d624852d0d41caa1600ec702a6675
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.4 MB (309423647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3e72c0332103652250c5bc4e480ac709cbf52568fcb415a1e1115675ceb80d7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:42 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:43 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 05 Aug 2026 00:47:43 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 05 Aug 2026 00:47:43 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:47:43 GMT
WORKDIR /root
# Wed, 05 Aug 2026 00:47:53 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cddfb381db4ca06c1bee7de7a22656e4dbc7547db6e828e6ffd9df39ba88de7a`  
		Last Modified: Wed, 05 Aug 2026 00:48:25 GMT  
		Size: 42.3 MB (42310303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:942f6b36768016d2f0a1a4586242d533c814086decea17ba82bd32d1a10e9c23`  
		Last Modified: Wed, 05 Aug 2026 00:48:23 GMT  
		Size: 1.6 MB (1564388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1066985a1f35105175046ab7a8aa0ca20f372ae273e67d938582d2d71724db3c`  
		Last Modified: Wed, 05 Aug 2026 00:48:29 GMT  
		Size: 235.4 MB (235405315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:sdk` - unknown; unknown

```console
$ docker pull dart@sha256:411f3fb8c118d9420f7f2a85699014244fc86beab67dab502af3a86b0f11ae33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce50b5f66c1a9a0ab937b40e5e1f98433554427e4100efd23bcc3b70bb6361be`

```dockerfile
```

-	Layers:
	-	`sha256:86f4735c370d3867ed2c5fff098ff9b4397e0f7c17f7b3a0a6c94ae018da4d0e`  
		Last Modified: Wed, 05 Aug 2026 00:48:23 GMT  
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
$ docker pull dart@sha256:8d7b6fcd6d2766e167c2b2e569e6411d981ea8b282d5766372859f4a07b24600
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
$ docker pull dart@sha256:63fe401719e12701a1fa35bfd5fc600e3f5d0287c497cb36e2e6d7c7842a254a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.0 MB (310967918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fc3fc26fee0c74bbf1eb16ec881ea17ca04860daec88ca1187d8007cd926e79`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:31 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:45:31 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 05 Aug 2026 00:45:31 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 05 Aug 2026 00:45:31 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:45:31 GMT
WORKDIR /root
# Wed, 05 Aug 2026 00:45:42 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca6064fdb4ee57472c944ab4e88d4e7cb7bb815e9e49131fa98d7ecd6c402f8b`  
		Last Modified: Wed, 05 Aug 2026 00:46:14 GMT  
		Size: 42.5 MB (42523778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7badd722870543abf73b553b60eb3f18ce87fc18d03b5e8b175d88e657275a95`  
		Last Modified: Wed, 05 Aug 2026 00:46:12 GMT  
		Size: 1.9 MB (1869783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:846e17d72354131b437f2d57f41382536f38ce2003e3b23123c293626649e736`  
		Last Modified: Wed, 05 Aug 2026 00:46:17 GMT  
		Size: 236.8 MB (236793560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable` - unknown; unknown

```console
$ docker pull dart@sha256:d4a3699f239cdbe77f627a07dec7d0023993a095c6eff264fdc948ca012c6923
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5b90a9adce1aaad4a01e3928475cf385580be4f4ecc76b46638ef954fcd3947`

```dockerfile
```

-	Layers:
	-	`sha256:7570c3dd674d66da7e4ec8a64c62a8b7ad045d61a0893576685e872c92c43294`  
		Last Modified: Wed, 05 Aug 2026 00:46:12 GMT  
		Size: 20.6 KB (20615 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable` - linux; arm variant v7

```console
$ docker pull dart@sha256:ed85203b6e59e196ba2adf9e88290660320c9903eba2948c056135712e339140
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.1 MB (226079182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09749d00b69bacce046a6edb8328843b2295bc4bdcf9d42c356862ec5f910ba9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:20:38 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:20:38 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 05 Aug 2026 01:20:38 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 05 Aug 2026 01:20:38 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:20:38 GMT
WORKDIR /root
# Wed, 05 Aug 2026 01:20:47 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8f74326b5cdfe3ab818cdf66c72173ce4eb7d0d705112bd1ee0bc0410cc0677`  
		Last Modified: Wed, 05 Aug 2026 01:21:10 GMT  
		Size: 37.5 MB (37513688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c5a2be87d373955787b12cf67085dcd55eff208690f50be2fe95b547fe4b17e`  
		Last Modified: Wed, 05 Aug 2026 01:21:09 GMT  
		Size: 1.3 MB (1273156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b65f1bfd861f0500397eb702ff7f3d35b00a06b071835efaece03815d6bc20e8`  
		Last Modified: Wed, 05 Aug 2026 01:21:12 GMT  
		Size: 161.1 MB (161085934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable` - unknown; unknown

```console
$ docker pull dart@sha256:c3d065d95903b9ef4f151ae80e3cead5c8679eeb37169408bc2ff23fa7843b10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66695f912de635abc910e9505ad4f1e2d9964aeef45cc6e009c51575ccebc761`

```dockerfile
```

-	Layers:
	-	`sha256:e73019034986db262f40450060b4a5c97a4ff79fd778e2dfd4121f809a4bd935`  
		Last Modified: Wed, 05 Aug 2026 01:21:08 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:867be053fb4ddab1563ceb923816ac6ccb4d624852d0d41caa1600ec702a6675
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.4 MB (309423647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3e72c0332103652250c5bc4e480ac709cbf52568fcb415a1e1115675ceb80d7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:42 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:43 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 05 Aug 2026 00:47:43 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 05 Aug 2026 00:47:43 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:47:43 GMT
WORKDIR /root
# Wed, 05 Aug 2026 00:47:53 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cddfb381db4ca06c1bee7de7a22656e4dbc7547db6e828e6ffd9df39ba88de7a`  
		Last Modified: Wed, 05 Aug 2026 00:48:25 GMT  
		Size: 42.3 MB (42310303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:942f6b36768016d2f0a1a4586242d533c814086decea17ba82bd32d1a10e9c23`  
		Last Modified: Wed, 05 Aug 2026 00:48:23 GMT  
		Size: 1.6 MB (1564388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1066985a1f35105175046ab7a8aa0ca20f372ae273e67d938582d2d71724db3c`  
		Last Modified: Wed, 05 Aug 2026 00:48:29 GMT  
		Size: 235.4 MB (235405315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable` - unknown; unknown

```console
$ docker pull dart@sha256:411f3fb8c118d9420f7f2a85699014244fc86beab67dab502af3a86b0f11ae33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce50b5f66c1a9a0ab937b40e5e1f98433554427e4100efd23bcc3b70bb6361be`

```dockerfile
```

-	Layers:
	-	`sha256:86f4735c370d3867ed2c5fff098ff9b4397e0f7c17f7b3a0a6c94ae018da4d0e`  
		Last Modified: Wed, 05 Aug 2026 00:48:23 GMT  
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
$ docker pull dart@sha256:8d7b6fcd6d2766e167c2b2e569e6411d981ea8b282d5766372859f4a07b24600
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
$ docker pull dart@sha256:63fe401719e12701a1fa35bfd5fc600e3f5d0287c497cb36e2e6d7c7842a254a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.0 MB (310967918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fc3fc26fee0c74bbf1eb16ec881ea17ca04860daec88ca1187d8007cd926e79`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:31 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:45:31 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 05 Aug 2026 00:45:31 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 05 Aug 2026 00:45:31 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:45:31 GMT
WORKDIR /root
# Wed, 05 Aug 2026 00:45:42 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca6064fdb4ee57472c944ab4e88d4e7cb7bb815e9e49131fa98d7ecd6c402f8b`  
		Last Modified: Wed, 05 Aug 2026 00:46:14 GMT  
		Size: 42.5 MB (42523778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7badd722870543abf73b553b60eb3f18ce87fc18d03b5e8b175d88e657275a95`  
		Last Modified: Wed, 05 Aug 2026 00:46:12 GMT  
		Size: 1.9 MB (1869783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:846e17d72354131b437f2d57f41382536f38ce2003e3b23123c293626649e736`  
		Last Modified: Wed, 05 Aug 2026 00:46:17 GMT  
		Size: 236.8 MB (236793560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:d4a3699f239cdbe77f627a07dec7d0023993a095c6eff264fdc948ca012c6923
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 KB (20615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5b90a9adce1aaad4a01e3928475cf385580be4f4ecc76b46638ef954fcd3947`

```dockerfile
```

-	Layers:
	-	`sha256:7570c3dd674d66da7e4ec8a64c62a8b7ad045d61a0893576685e872c92c43294`  
		Last Modified: Wed, 05 Aug 2026 00:46:12 GMT  
		Size: 20.6 KB (20615 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable-sdk` - linux; arm variant v7

```console
$ docker pull dart@sha256:ed85203b6e59e196ba2adf9e88290660320c9903eba2948c056135712e339140
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.1 MB (226079182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09749d00b69bacce046a6edb8328843b2295bc4bdcf9d42c356862ec5f910ba9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:20:38 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:20:38 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 05 Aug 2026 01:20:38 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 05 Aug 2026 01:20:38 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:20:38 GMT
WORKDIR /root
# Wed, 05 Aug 2026 01:20:47 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8f74326b5cdfe3ab818cdf66c72173ce4eb7d0d705112bd1ee0bc0410cc0677`  
		Last Modified: Wed, 05 Aug 2026 01:21:10 GMT  
		Size: 37.5 MB (37513688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c5a2be87d373955787b12cf67085dcd55eff208690f50be2fe95b547fe4b17e`  
		Last Modified: Wed, 05 Aug 2026 01:21:09 GMT  
		Size: 1.3 MB (1273156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b65f1bfd861f0500397eb702ff7f3d35b00a06b071835efaece03815d6bc20e8`  
		Last Modified: Wed, 05 Aug 2026 01:21:12 GMT  
		Size: 161.1 MB (161085934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:c3d065d95903b9ef4f151ae80e3cead5c8679eeb37169408bc2ff23fa7843b10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66695f912de635abc910e9505ad4f1e2d9964aeef45cc6e009c51575ccebc761`

```dockerfile
```

-	Layers:
	-	`sha256:e73019034986db262f40450060b4a5c97a4ff79fd778e2dfd4121f809a4bd935`  
		Last Modified: Wed, 05 Aug 2026 01:21:08 GMT  
		Size: 20.8 KB (20770 bytes)  
		MIME: application/vnd.in-toto+json

### `dart:stable-sdk` - linux; arm64 variant v8

```console
$ docker pull dart@sha256:867be053fb4ddab1563ceb923816ac6ccb4d624852d0d41caa1600ec702a6675
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.4 MB (309423647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3e72c0332103652250c5bc4e480ac709cbf52568fcb415a1e1115675ceb80d7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:42 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         curl         dnsutils         git         openssh-client         unzip     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:43 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             TRIPLET="x86_64-linux-gnu" ;             FILES="/lib64/ld-linux-x86-64.so.2" ;;         armhf)             TRIPLET="arm-linux-gnueabihf" ;             FILES="/lib/ld-linux-armhf.so.3                 /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3";;         arm64)             TRIPLET="aarch64-linux-gnu" ;             FILES="/lib/ld-linux-aarch64.so.1                 /lib/aarch64-linux-gnu/ld-linux-aarch64.so.1" ;;         riscv64)             TRIPLET="riscv64-linux-gnu" ;             FILES="/lib/ld-linux-riscv64-lp64d.so.1                 /lib/riscv64-linux-gnu/ld-linux-riscv64-lp64d.so.1" ;;         *)             echo "Unsupported architecture" ;             exit 5;;     esac;     FILES="$FILES         /etc/nsswitch.conf         /etc/ssl/certs         /usr/share/ca-certificates         /lib/$TRIPLET/libc.so.6         /lib/$TRIPLET/libdl.so.2         /lib/$TRIPLET/libm.so.6         /lib/$TRIPLET/libnss_dns.so.2         /lib/$TRIPLET/libpthread.so.0         /lib/$TRIPLET/libresolv.so.2         /lib/$TRIPLET/librt.so.1";     for f in $FILES; do         dir=$(dirname "$f");         mkdir -p "/runtime$dir";         cp --archive --link --dereference --no-target-directory "$f" "/runtime$f";     done # buildkit
# Wed, 05 Aug 2026 00:47:43 GMT
ENV DART_SDK=/usr/lib/dart
# Wed, 05 Aug 2026 00:47:43 GMT
ENV PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:47:43 GMT
WORKDIR /root
# Wed, 05 Aug 2026 00:47:53 GMT
RUN set -eux;     case "$(dpkg --print-architecture)" in         amd64)             DART_SHA256=28e47b44cf075f36771046c068bb0d174201cf9c7608744aed1cc23204299c2d;             SDK_ARCH="x64";;         armhf)             DART_SHA256=659fd41329db2c17e5f186c351fff50ac026b0ed1770a6ace712364d309b4a39;             SDK_ARCH="arm";;         arm64)             DART_SHA256=f82c83ece7d168047550dfd4a664e4071ac7c488bddb72dc43102c22d7e0b518;             SDK_ARCH="arm64";;         riscv64)             DART_SHA256=c11cf4764fabac705118c02fc4ee3bf3b7210ac6919329ead8ceed5cf63a4820;             SDK_ARCH="riscv64";;     esac;     SDK="dartsdk-linux-${SDK_ARCH}-release.zip";     BASEURL="https://storage.googleapis.com/dart-archive/channels";     URL="$BASEURL/stable/release/3.12.2/sdk/$SDK";     echo "SDK: $URL" >> dart_setup.log ;     curl -fLO "$URL";     echo "$DART_SHA256 *$SDK"         | sha256sum --check --status --strict -;     unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK"         && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin"; # buildkit
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cddfb381db4ca06c1bee7de7a22656e4dbc7547db6e828e6ffd9df39ba88de7a`  
		Last Modified: Wed, 05 Aug 2026 00:48:25 GMT  
		Size: 42.3 MB (42310303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:942f6b36768016d2f0a1a4586242d533c814086decea17ba82bd32d1a10e9c23`  
		Last Modified: Wed, 05 Aug 2026 00:48:23 GMT  
		Size: 1.6 MB (1564388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1066985a1f35105175046ab7a8aa0ca20f372ae273e67d938582d2d71724db3c`  
		Last Modified: Wed, 05 Aug 2026 00:48:29 GMT  
		Size: 235.4 MB (235405315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `dart:stable-sdk` - unknown; unknown

```console
$ docker pull dart@sha256:411f3fb8c118d9420f7f2a85699014244fc86beab67dab502af3a86b0f11ae33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.8 KB (20822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce50b5f66c1a9a0ab937b40e5e1f98433554427e4100efd23bcc3b70bb6361be`

```dockerfile
```

-	Layers:
	-	`sha256:86f4735c370d3867ed2c5fff098ff9b4397e0f7c17f7b3a0a6c94ae018da4d0e`  
		Last Modified: Wed, 05 Aug 2026 00:48:23 GMT  
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
