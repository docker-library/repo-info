## `clojure:temurin-21-tools-deps-alpine`

```console
$ docker pull clojure@sha256:621c2b911eae805122e6fb8e84fddce52648c3b30d4f9239dd280c9f2b7f4807
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:d932daf81d673ed3eb2e2fbf4c9abff2a0ed4a9739a592003e959ff7c3c4895d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.0 MB (205975192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c844381adca68c6ba635cdf926211f37157628e6543eea6161b20ea0c4c16006`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:24:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:24:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:24:34 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:24:34 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:24:34 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Fri, 21 Aug 2026 18:24:41 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='a32f7655011640ed8fb4347fffa2588cb7538de2f2e82027845816740560e2b1';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.12_8.tar.gz';          ;;        x86_64)          ESUM='073a48cb87f788a0cb283d81cc6d96cbc9d671d6a60a3ba6de62e66f0ea9dd47';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 21 Aug 2026 18:24:42 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:24:42 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:24:42 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:24:42 GMT
CMD ["jshell"]
# Fri, 04 Sep 2026 00:02:38 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:02:38 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:02:40 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Fri, 04 Sep 2026 00:02:41 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:02:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:02:41 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:02:41 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80c624ebf42c48614632c25eda29ff963d8bff68cf72141f38572ff353df4118`  
		Last Modified: Fri, 21 Aug 2026 18:24:57 GMT  
		Size: 21.4 MB (21434191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dcf1f5eca60c3a20398445d682d111c67441c56056e59a0a3a16183f9da46f6`  
		Last Modified: Fri, 21 Aug 2026 18:25:00 GMT  
		Size: 158.3 MB (158332700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e04839fa2debe7ec750a1b3926314c52ec376eb0d5ed81310e907af857ed918f`  
		Last Modified: Fri, 21 Aug 2026 18:24:56 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7ef08a27864ae3d6ee3399a0909e667d6fb889dd93bc8d8fa25cbde844a15e3`  
		Last Modified: Fri, 21 Aug 2026 18:24:56 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b15408d6e0fd3c2e92476c70ea346edabb04749fdf5044374558aca00108a34`  
		Last Modified: Fri, 04 Sep 2026 00:02:50 GMT  
		Size: 22.4 MB (22358268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b575cc7a1ebb782fa8ee6d2865c8581fe2fe71c94477cb382e07e3e6e6657006`  
		Last Modified: Fri, 04 Sep 2026 00:02:49 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b809e50c355b89a37c89da83724ec32f7852446b5d2bc685e924a4eae6ad2700`  
		Last Modified: Fri, 04 Sep 2026 00:02:49 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:b0745ed464146b3d8ab61714f8e62f78e74bf48dd141b3b344db618ccab0a074
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1304613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad0af75bd07ae31fb89e0e2eacb0dfa37385bf195dee5da472d6a7195270038e`

```dockerfile
```

-	Layers:
	-	`sha256:dafcf3bab6241e01b8582c69137d5a489ed7fefe89bd4c89ddf49f99c4ca398e`  
		Last Modified: Fri, 04 Sep 2026 00:02:49 GMT  
		Size: 1.3 MB (1289182 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca384421b6fa2b5d3846a02f935544f8a08b5962a5ee35c625dc04cd2d473dfe`  
		Last Modified: Fri, 04 Sep 2026 00:02:49 GMT  
		Size: 15.4 KB (15431 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-alpine` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a8cc036dd45dd16a63ec7968e2dd41fd2ae6283ebcedc472cc92390ccb69dc3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.4 MB (204447962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f76d4f640e97cf283298e9f1948a3f6cdedc03ebc86502586c7c2c5c9133d9ef`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:27:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:27:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:27:28 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:27:28 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:27:28 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Fri, 21 Aug 2026 18:27:36 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='a32f7655011640ed8fb4347fffa2588cb7538de2f2e82027845816740560e2b1';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.12_8.tar.gz';          ;;        x86_64)          ESUM='073a48cb87f788a0cb283d81cc6d96cbc9d671d6a60a3ba6de62e66f0ea9dd47';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 21 Aug 2026 18:27:37 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:27:37 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:27:37 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:27:37 GMT
CMD ["jshell"]
# Fri, 04 Sep 2026 00:07:02 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:07:02 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:07:06 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Fri, 04 Sep 2026 00:07:06 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:07:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:07:06 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:07:06 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a907c6aa2e9895d53df31ab5b46f3117bd7ac5f9610cacbd450ed428b83b69a7`  
		Last Modified: Fri, 21 Aug 2026 18:27:55 GMT  
		Size: 21.4 MB (21410985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bddbfbcf00f9dde2d79c07cbf11422b3fd09098c518809fae943df61125f2a4`  
		Last Modified: Fri, 21 Aug 2026 18:27:57 GMT  
		Size: 156.3 MB (156334572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:981f95701eabca34d7f767c424a7f3e4fccfa331cf3de975025a1412f403e43d`  
		Last Modified: Fri, 21 Aug 2026 18:27:54 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef400840b5e60a28eb6e26b47dca860d731a494752e91862f73ae0d532131a30`  
		Last Modified: Fri, 21 Aug 2026 18:27:54 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9d206edb2246fc6cb709eb75688a9378a500049619adf353bd60a5c75c3fd71`  
		Last Modified: Fri, 04 Sep 2026 00:07:15 GMT  
		Size: 22.5 MB (22515723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74da9f1d2a09a0f36885c41a5c5759004ecd33a506eeda49a932ccdc11db459f`  
		Last Modified: Fri, 04 Sep 2026 00:07:14 GMT  
		Size: 620.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75fcc475b2815dbd8078b17dbe275468834f127f05cb46eb20eaf8964ba4760b`  
		Last Modified: Fri, 04 Sep 2026 00:07:14 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:13cf90929cf4ef1dc59dfb266500d3956641dc327090c9692e4005dceb812690
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 MB (1454056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bf61bd9b3c5a156b3b6895faf870f3b86b819f767d07456bd4c35241d389668`

```dockerfile
```

-	Layers:
	-	`sha256:9538c0a9073ebae7c18f0e83cfe6bda1d0b716d74cf588fce0cebeb36dfd9757`  
		Last Modified: Fri, 04 Sep 2026 00:07:14 GMT  
		Size: 1.4 MB (1438534 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b62c36421f400ffd76ad4267a0f96cf2667286202a3f9c008c6c5f0ff49f557`  
		Last Modified: Fri, 04 Sep 2026 00:07:14 GMT  
		Size: 15.5 KB (15522 bytes)  
		MIME: application/vnd.in-toto+json
