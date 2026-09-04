## `clojure:temurin-25-tools-deps-alpine`

```console
$ docker pull clojure@sha256:75b15205b6dd1aed5a4ed34daa7b374fec7d6a21a4b9cb3cd0638885ab02d387
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-25-tools-deps-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:77777598c6c5eb7734a117d5f309e3fc10854e07529bb5cc2fcace550f20043f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.3 MB (133254575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dbbd0eef67ab6e439457a47be24f5a319ef13df45ca491f79b192a6945df981`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:25:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:25:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:25:32 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:25:32 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:25:32 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Fri, 21 Aug 2026 18:25:38 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='3d1c5c7877e320c2cff8154cfca9af948089912b6efc6123bb21726b7055bc62';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.4_7.tar.gz';          ;;        x86_64)          ESUM='c6f3e9f975c130169283363bf0ef2fc55f45c36eacc909141ffa7189cd7bdcb7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Fri, 21 Aug 2026 18:25:39 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:25:39 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:25:39 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:25:39 GMT
CMD ["jshell"]
# Fri, 04 Sep 2026 00:03:15 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:03:15 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:03:17 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Fri, 04 Sep 2026 00:03:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:03:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:03:17 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:03:17 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1251f1bd7c631dcd1cac4674e1243c6ee4aa4877bbceda421b57f9faefe7726a`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 14.4 MB (14369221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44efe0f4bb6a9c5ce85a9d054859cec3ce43403d41be5bd20f97950676342a62`  
		Last Modified: Fri, 21 Aug 2026 18:25:56 GMT  
		Size: 91.6 MB (91630852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e589d5d72b2cdb8887f929d0376d06dd40ec00db4dd528d920a1f15b8845591`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f6119cd7bdb3eeee4c0c0323d0c25e2e67983dbe3091ce1af089ee91beb4ce0`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38d181c44c13ff28d6426286b618f0117a9b7a6cc2b41fc322c5ab99d0c1d055`  
		Last Modified: Fri, 04 Sep 2026 00:03:26 GMT  
		Size: 23.4 MB (23404463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92e363bafbf757ed961cdb26eee83d50f0c67d4d5df4227440fbd560b6b1f44a`  
		Last Modified: Fri, 04 Sep 2026 00:03:25 GMT  
		Size: 620.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:712b1e687242f19c24567cb8d7728c20b0e8db5d08418e1668b3f3d5af7ce8e5`  
		Last Modified: Fri, 04 Sep 2026 00:03:26 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:90049d8b5313955c18170aed0de4602c848ff545d0f5c34ac7ffc9bb2ce9ec75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1202765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f9a1ac9a8f7c94d7c3c700a88b3b95416b6d46e4ac32715da7ae4fef7d01136`

```dockerfile
```

-	Layers:
	-	`sha256:a7e2ec6c25e738fe31a5e3abb1341a62c67e9e4222083973c153b0d1236688c8`  
		Last Modified: Fri, 04 Sep 2026 00:03:26 GMT  
		Size: 1.2 MB (1187340 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:786126b7a177054322a753a294d35c33e1957be6df8a855f42ba895cab4c7577`  
		Last Modified: Fri, 04 Sep 2026 00:03:25 GMT  
		Size: 15.4 KB (15425 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-alpine` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a5dabed64052b4243c25eb90d530f9515614a00ed4c27700085236eb3fd3b609
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.7 MB (132735346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa75ef5775e77eba012b046330c63ee4b9356cab204a6bb2fe2d405642ba1e0b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:28:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:28:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:28:34 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:28:34 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:28:34 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Fri, 21 Aug 2026 18:28:42 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='3d1c5c7877e320c2cff8154cfca9af948089912b6efc6123bb21726b7055bc62';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.4_7.tar.gz';          ;;        x86_64)          ESUM='c6f3e9f975c130169283363bf0ef2fc55f45c36eacc909141ffa7189cd7bdcb7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Fri, 21 Aug 2026 18:28:43 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:28:43 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:28:43 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:28:43 GMT
CMD ["jshell"]
# Fri, 04 Sep 2026 00:07:54 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:07:54 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:07:58 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Fri, 04 Sep 2026 00:07:58 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:07:58 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:07:58 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:07:58 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34d02b60b3b80fde9d47090317e49ed4b0fbcd020d21a71470dd2ef27e06fce7`  
		Last Modified: Fri, 21 Aug 2026 18:28:59 GMT  
		Size: 14.4 MB (14421003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:025612b9033db06c25d215988e53dd4704aaecad607f6477cb18ef06e8ab54d3`  
		Last Modified: Fri, 21 Aug 2026 18:29:00 GMT  
		Size: 90.6 MB (90558574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b96f24253906f95e7f87efcad1b52d0e9010c75dda7aae03f7c9fbedc9041df`  
		Last Modified: Fri, 21 Aug 2026 18:28:58 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b380773893b60f69b5af551ebdb0a24357a63a3d2e1d81370c0f5414540c7e7c`  
		Last Modified: Fri, 21 Aug 2026 18:28:58 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19ea9f4e3baade2ee191689e78667d4ac31e223b844c1dd1c4146fa2b9b69dd9`  
		Last Modified: Fri, 04 Sep 2026 00:08:07 GMT  
		Size: 23.6 MB (23569087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a35b55f770e039dc13ccb0ac859c887ba2e8f9055cd7caa3ccdb66a8a4c8c829`  
		Last Modified: Fri, 04 Sep 2026 00:08:06 GMT  
		Size: 619.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1297fd9d76828bef8254d13d40962cd07020aaf15cbaa8f0e40e372df93cdb0d`  
		Last Modified: Fri, 04 Sep 2026 00:08:06 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:04d808181a8d00e5838253e1d1946203c8e5f78f5dd96c4a89ef27a3591403d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 MB (1352206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:533a636f4837ef107ff2d99c91d7db8bc799e1398d30ed47b56c5dbb54734b31`

```dockerfile
```

-	Layers:
	-	`sha256:d906e031711e116b08f7db071b41e7e7cba115118588c04a7564ccc0d4ee52e9`  
		Last Modified: Fri, 04 Sep 2026 00:08:06 GMT  
		Size: 1.3 MB (1336689 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3e66bb5e6f0682821e253ba96174f08b807acf5c6acfd45e3d831c388fe7fd7`  
		Last Modified: Fri, 04 Sep 2026 00:08:06 GMT  
		Size: 15.5 KB (15517 bytes)  
		MIME: application/vnd.in-toto+json
