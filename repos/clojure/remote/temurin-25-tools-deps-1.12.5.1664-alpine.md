## `clojure:temurin-25-tools-deps-1.12.5.1664-alpine`

```console
$ docker pull clojure@sha256:efac7d2f0ee0931fd3fd3023b7b5033eca873de5f3b5c027d4bf618181b26249
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-25-tools-deps-1.12.5.1664-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:57f0af51c5341e36f974eb6e8c431ecb4bf4fc24db3dfdcb0edfb54e17b9652a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.2 MB (133234238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61464fd74be7c7ce8e1b4bd5001eb302a3d0cee6146f52a84337f768f849b766`
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
# Fri, 21 Aug 2026 19:19:02 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:19:02 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:19:56 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Fri, 21 Aug 2026 19:19:57 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:19:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:19:57 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:19:57 GMT
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
	-	`sha256:1c7df409db1b709ece3f6ee28b6ecec75fefce1b9887e566c83e499b1fa9a2d4`  
		Last Modified: Fri, 21 Aug 2026 19:20:05 GMT  
		Size: 23.4 MB (23384129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f98c03fa491e75eed607ef14a42d6ea282cee179f547f25e85030f525dc2b42`  
		Last Modified: Fri, 21 Aug 2026 19:20:04 GMT  
		Size: 618.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c63d5f5335d5892eb02c8ec1b190762c6ad11a3eeee7acb7933a56bb21b15578`  
		Last Modified: Fri, 21 Aug 2026 19:20:04 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.5.1664-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:682b7afe8a228ffcd0d3a36e8bbe4e7c3c5f5e77296e0ed50a540b1264c866e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1202765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfec6d3f95178db49c8d0617a29198955f5b4bcc66511e405b24c4677c13bfea`

```dockerfile
```

-	Layers:
	-	`sha256:f1242d9170666cdeca77445650a7196b6ad09540f6bc468c6e56bb3971659aca`  
		Last Modified: Fri, 21 Aug 2026 19:20:04 GMT  
		Size: 1.2 MB (1187340 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb073fcfe149de3f95446f058fd931192de8c9e9461e2cf7adf336cf1c2eb2d3`  
		Last Modified: Fri, 21 Aug 2026 19:20:04 GMT  
		Size: 15.4 KB (15425 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.5.1664-alpine` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:c65917463cdfc8f9f6082b49acff708d2247971aa18e000da877570eaab0e21a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.7 MB (132723705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78b7e80fa4739a38345702fa2c7998e0c84203176bf886babced6689e1613c93`
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
# Fri, 21 Aug 2026 19:08:10 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:08:10 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:08:14 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Fri, 21 Aug 2026 19:08:14 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:08:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:08:14 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:08:14 GMT
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
	-	`sha256:04b1204b22b1cb6c9a3077614f8ee4c958efd23b843b25a8845fae9a89a0a6e8`  
		Last Modified: Fri, 21 Aug 2026 19:08:24 GMT  
		Size: 23.6 MB (23557447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6757cdc749611b41715d1d64e099bc8dbfaa6ab3a37ed2fd85aa793882f7b26`  
		Last Modified: Fri, 21 Aug 2026 19:08:23 GMT  
		Size: 618.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dfd8db7f4b3992e9aaca0b667a0fc63d8d99c559e59d266a4f637c8d23c84ed`  
		Last Modified: Fri, 21 Aug 2026 19:08:23 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.5.1664-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:913b0f928c8fafecde8debf5b80816c6e882c747183773097f4b150419c7b0e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 MB (1352206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3317cc4b5a7035b314ba103a2c837bec5af0a6caea64350c52bf178fd40a583b`

```dockerfile
```

-	Layers:
	-	`sha256:99731826ebb1bcbb8528d315551209577e483bb2b2621c993beec5d75c7cd5a7`  
		Last Modified: Fri, 21 Aug 2026 19:08:23 GMT  
		Size: 1.3 MB (1336689 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d3b567977c182aa17623f1a56d7122b2913fab21dbff2ce161e0cb02fb23747`  
		Last Modified: Fri, 21 Aug 2026 19:08:23 GMT  
		Size: 15.5 KB (15517 bytes)  
		MIME: application/vnd.in-toto+json
