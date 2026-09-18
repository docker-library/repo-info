## `znc:slim`

```console
$ docker pull znc@sha256:3e211a74a552e798ff81208a4e1c1d0dff0ac0cbc643d11695f16ff78d3f11df
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `znc:slim` - linux; amd64

```console
$ docker pull znc@sha256:391d156f7126ff99a056d3f36c064fbdde4fa63ce99d3424af35d617a16d7628
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.9 MB (52917581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff345ca0288137416a8da2b321986cce1063756a4d756164802650154ca92067`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:36:09 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Thu, 17 Sep 2026 21:36:09 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES
# Thu, 17 Sep 2026 21:36:09 GMT
ARG MAKEFLAGS=
# Thu, 17 Sep 2026 21:36:09 GMT
ENV ZNC_VERSION=1.10.3
# Thu, 17 Sep 2026 21:36:09 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         argon2-libs         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         argon2-dev         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src # buildkit
# Thu, 17 Sep 2026 21:36:10 GMT
COPY entrypoint.sh / # buildkit
# Thu, 17 Sep 2026 21:36:10 GMT
COPY startup-sequence /startup-sequence/ # buildkit
# Thu, 17 Sep 2026 21:36:10 GMT
VOLUME [/znc-data]
# Thu, 17 Sep 2026 21:36:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb548c6c89dc0415919dca235f5499077b70f042c275b6471bd9d626a9925096`  
		Last Modified: Thu, 17 Sep 2026 21:36:21 GMT  
		Size: 49.1 MB (49068153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2774a35def90e4cf8e521f6bc202e9cc0eb82c1ef75f4285b353ddc0f62d25fe`  
		Last Modified: Thu, 17 Sep 2026 21:36:19 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea799a4d5ef25970f3d911fdb4df425f2784dd425d4269a4e694cd174953c4d7`  
		Last Modified: Thu, 17 Sep 2026 21:36:19 GMT  
		Size: 749.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:slim` - unknown; unknown

```console
$ docker pull znc@sha256:bb457e5691c3a797328e13b3b67a55c213e7d4d85467826374cf19187fb8617a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 MB (1749188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:573b118f6880418c9ece322eb6a43e1abccae19b7deec2e08e70fd9fad8dcb4b`

```dockerfile
```

-	Layers:
	-	`sha256:4f68de066b44ca385e6a32b7c9ed2ae757b52e76286401f645860d9a50d76de8`  
		Last Modified: Thu, 17 Sep 2026 21:36:20 GMT  
		Size: 1.7 MB (1735203 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c74391c48e32a834770e4716fbb2878abced44942902d3cd733fd98005d66700`  
		Last Modified: Thu, 17 Sep 2026 21:36:19 GMT  
		Size: 14.0 KB (13985 bytes)  
		MIME: application/vnd.in-toto+json

### `znc:slim` - linux; arm variant v6

```console
$ docker pull znc@sha256:c82891f5baf8265cd89e663f96ed440b42ee90e022f353bca717d1103ea7dfdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50889687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c03c34a64dd8d4f2942d353a80660edc865e49f5f9197312e3994af74f89f24a`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:42 GMT
ADD alpine-minirootfs-3.23.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:42 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:58:19 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Thu, 17 Sep 2026 21:58:19 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES
# Thu, 17 Sep 2026 21:58:19 GMT
ARG MAKEFLAGS=
# Thu, 17 Sep 2026 21:58:19 GMT
ENV ZNC_VERSION=1.10.3
# Thu, 17 Sep 2026 21:58:19 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         argon2-libs         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         argon2-dev         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src # buildkit
# Thu, 17 Sep 2026 21:58:19 GMT
COPY entrypoint.sh / # buildkit
# Thu, 17 Sep 2026 21:58:19 GMT
COPY startup-sequence /startup-sequence/ # buildkit
# Thu, 17 Sep 2026 21:58:19 GMT
VOLUME [/znc-data]
# Thu, 17 Sep 2026 21:58:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:b0cea9f80ea5defd79b131eda614476b4cdbb6b45165432dd3dbf895cf504ccb`  
		Last Modified: Thu, 17 Sep 2026 20:37:45 GMT  
		Size: 3.6 MB (3554926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df3aa678d64cdd8b0a2ff202d3ba789b60b5fa671746f835e670f246f07a04a9`  
		Last Modified: Thu, 17 Sep 2026 21:58:28 GMT  
		Size: 47.3 MB (47333840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4baf383814f5c3d1389e7d5bbff436dfc89ac3cc9597df40932b1f1d647264f`  
		Last Modified: Thu, 17 Sep 2026 21:58:26 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:029935af0b1f7a3ff678b4b51f65affb3f6dec118bce6a56aaec9483e55c12d0`  
		Last Modified: Thu, 17 Sep 2026 21:58:26 GMT  
		Size: 749.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:slim` - unknown; unknown

```console
$ docker pull znc@sha256:82034fec0b1e79d44cf912a9d899e6dd43eee6e1125b112e01824d5252ede088
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 KB (13845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf7f3938e490103268911b8dd156fa4df51cee33d6580c1ce7d85c3e12897c95`

```dockerfile
```

-	Layers:
	-	`sha256:26cbeb55621af8be64f7884243e037bea5c483c9c929c1ba98ec39225d32df67`  
		Last Modified: Thu, 17 Sep 2026 21:58:26 GMT  
		Size: 13.8 KB (13845 bytes)  
		MIME: application/vnd.in-toto+json

### `znc:slim` - linux; arm64 variant v8

```console
$ docker pull znc@sha256:ba76d82529a6febeaf699ec9b7422bfe74d08538d0aaa3041ca4fd07927db96e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.1 MB (53076018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd47418382cca25cbdbc8d681e8115087dadd2f8231f0c10d59d4355818a5d29`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:38:48 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Thu, 17 Sep 2026 21:38:48 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES
# Thu, 17 Sep 2026 21:38:48 GMT
ARG MAKEFLAGS=
# Thu, 17 Sep 2026 21:38:48 GMT
ENV ZNC_VERSION=1.10.3
# Thu, 17 Sep 2026 21:38:48 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_ARGON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         argon2-libs         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         argon2-dev         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src # buildkit
# Thu, 17 Sep 2026 21:38:48 GMT
COPY entrypoint.sh / # buildkit
# Thu, 17 Sep 2026 21:38:48 GMT
COPY startup-sequence /startup-sequence/ # buildkit
# Thu, 17 Sep 2026 21:38:48 GMT
VOLUME [/znc-data]
# Thu, 17 Sep 2026 21:38:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:818a908b0cd6f317968a03501f9f28caaef93d8bf9f675d48a31a4ed1b82a831`  
		Last Modified: Thu, 17 Sep 2026 21:39:00 GMT  
		Size: 48.9 MB (48889041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca2488d104266a32c788d27e5bb4c1119818915bb9515bbfc5143590699f2bd3`  
		Last Modified: Thu, 17 Sep 2026 21:38:58 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c76f6c4ebcc957f90ada18575322c39a5c31d75a8475f2b5c39357164588b0e`  
		Last Modified: Thu, 17 Sep 2026 21:38:58 GMT  
		Size: 749.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `znc:slim` - unknown; unknown

```console
$ docker pull znc@sha256:0c5a926cf9e10d082474b2855d1eec5665e6aa721db8f15bf933ed8051ee2da8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 MB (1748763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efdb9cfdd615ed5350f7730875d802c4ef01afb675820d9d94dfd2dfc25bf807`

```dockerfile
```

-	Layers:
	-	`sha256:06d33a297e88e6f106c85b1baf8215e73403910123a2982c1d2ff2e5393e436b`  
		Last Modified: Thu, 17 Sep 2026 21:38:58 GMT  
		Size: 1.7 MB (1734683 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:15a506eb43a80e0587b51a0f44bfa6496dc938f5b2bbb87573692d601a64f3f9`  
		Last Modified: Thu, 17 Sep 2026 21:38:58 GMT  
		Size: 14.1 KB (14080 bytes)  
		MIME: application/vnd.in-toto+json
