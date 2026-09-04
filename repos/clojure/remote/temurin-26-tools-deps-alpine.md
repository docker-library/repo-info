## `clojure:temurin-26-tools-deps-alpine`

```console
$ docker pull clojure@sha256:30b5dbdd432810918fa5a6169352272f1c9a9e8088d7311a7ffa0f49561b39e2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-26-tools-deps-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:d1123980cd481788a62dba4f348bb21a707dc72bb89e5a880e637c0f72f0ae57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.4 MB (135424490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7580478b1488ca71f75d04e9884d834a96cf02c8c229e428db616cc953a534c2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:26:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:26:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:26:30 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:26:30 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:26:30 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Fri, 21 Aug 2026 18:26:36 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='bee481d4ba078ac1aaa741541bb0b99de876d679ccc80f9685710b72bc7b04f1';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_aarch64_alpine-linux_hotspot_26.0.2_10.tar.gz';          ;;        x86_64)          ESUM='88caf27ab9f2a15a52a114ea18fa20c518ccc325b5ba4bb5fd6c42c56b581498';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_x64_alpine-linux_hotspot_26.0.2_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Fri, 21 Aug 2026 18:26:37 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:26:37 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:26:37 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:26:37 GMT
CMD ["jshell"]
# Fri, 04 Sep 2026 00:04:01 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:04:01 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:04:04 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Fri, 04 Sep 2026 00:04:04 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:04:04 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:04:04 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:04:04 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5452eb2d46e5afd46652ba2459404a0b581faeff2124634dcc9277d891ff518`  
		Last Modified: Fri, 21 Aug 2026 18:26:52 GMT  
		Size: 14.4 MB (14369260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b6481711e3f1020188b9e74053a709052b5d3189afb0072eaea1e536eb62205`  
		Last Modified: Fri, 21 Aug 2026 18:26:53 GMT  
		Size: 93.8 MB (93800700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b1496ebe6bf2f6123752166aa307e4272ad2cd8f1a6a66ec46d5acc4b09d3db`  
		Last Modified: Fri, 21 Aug 2026 18:26:51 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c59e66bceb7aa1c4028b56c80468d8c3b248bdd69485bfc2fc8fd652c9344832`  
		Last Modified: Fri, 21 Aug 2026 18:26:51 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4251d14da3f8a4c2376225586072cd4ee47e8f30c55531dae677bc4ea2647205`  
		Last Modified: Fri, 04 Sep 2026 00:04:13 GMT  
		Size: 23.4 MB (23404496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:314d8e39100c492e9ebf9d20d0de9a95496cacf0909eec95fcd063fd7884e87f`  
		Last Modified: Fri, 04 Sep 2026 00:04:12 GMT  
		Size: 619.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38de7231688a2dbaf336dea3c0e029c2ff07bfecf838d71013adc92997cfce42`  
		Last Modified: Fri, 04 Sep 2026 00:04:12 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:9b965f8b474ab43ac8250c8b88f0dd08d432ba5723d438c599231c8b41247c70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1200265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ea1ee7e029c09ad6bfb27b492bd87da334c7f8d048f0f0e95cb1ad24c246675`

```dockerfile
```

-	Layers:
	-	`sha256:f14aaeba2ae4284b24a1a9ba2614bc6322b89221bbe83733957f342f80492225`  
		Last Modified: Fri, 04 Sep 2026 00:04:12 GMT  
		Size: 1.2 MB (1184839 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:72f37bc1df08238c530951145b9481b1ec7f6a7d0968675610e70766b7ece7f9`  
		Last Modified: Fri, 04 Sep 2026 00:04:12 GMT  
		Size: 15.4 KB (15426 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-alpine` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:6def1b96f90dc084968aac002d930740bf92bd0dc5b3c10d0162b68be9b256a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.9 MB (134859357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be3331144bdba3f64624778f36daa4fc88d5f61cf437b00cb1360d56fc583935`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:29:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:29:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:29:28 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:29:28 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:29:28 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Fri, 21 Aug 2026 18:29:39 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='bee481d4ba078ac1aaa741541bb0b99de876d679ccc80f9685710b72bc7b04f1';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_aarch64_alpine-linux_hotspot_26.0.2_10.tar.gz';          ;;        x86_64)          ESUM='88caf27ab9f2a15a52a114ea18fa20c518ccc325b5ba4bb5fd6c42c56b581498';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_x64_alpine-linux_hotspot_26.0.2_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Fri, 21 Aug 2026 18:29:40 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:29:40 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:29:40 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:29:40 GMT
CMD ["jshell"]
# Fri, 04 Sep 2026 00:08:16 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:08:16 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:08:19 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Fri, 04 Sep 2026 00:08:19 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:08:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:08:19 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:08:19 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6ae3581375ec3bbee78cbdfd7ff51d76b733da2b3c6f72d51dded14be1f4d18`  
		Last Modified: Fri, 21 Aug 2026 18:29:55 GMT  
		Size: 14.4 MB (14420920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9113044cb0b800a2d8b54a4ca0f8fc4593e865a371c9e9a19b64b86d2ea61e03`  
		Last Modified: Fri, 21 Aug 2026 18:29:57 GMT  
		Size: 92.7 MB (92682672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d742c5f9983264714aa06aa4be49cecd5ec5cf0e252fd52eac7491eef6e46e1`  
		Last Modified: Fri, 21 Aug 2026 18:29:55 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4fdc24383e03f04ab1fb7e787d5afce54213ea352ed9ace0c8c3ac506275d6d`  
		Last Modified: Fri, 21 Aug 2026 18:29:55 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b6079afb9e302aeb282d427cf34c5aaba737c6f3e4f8673ea95c058f06d4933`  
		Last Modified: Fri, 04 Sep 2026 00:08:29 GMT  
		Size: 23.6 MB (23569084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e7b429ff556996c83d55db71659673679b4727e409977e0462526650a505a83`  
		Last Modified: Fri, 04 Sep 2026 00:08:28 GMT  
		Size: 618.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:126577db7f718f1091c3aa42ed13659a442ecf2e5ac4a0b2a77e8c1dae4c4a61`  
		Last Modified: Fri, 04 Sep 2026 00:08:28 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:4e99a7bbc51e97742ae038ffd2f88832a317a313da0bac496baa1395fe8e43bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1349706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:771b3d667a26fc0c3c8902676abd2cc7667b5f146610f4eb0750a1e5d4eb8e6d`

```dockerfile
```

-	Layers:
	-	`sha256:2077192d77d1e6db1d3676cc8b30f43eae9ec56e769d771d2b28d5761851112e`  
		Last Modified: Fri, 04 Sep 2026 00:08:28 GMT  
		Size: 1.3 MB (1334188 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a84d53e0cdb120b0581e859e3bc58afd7d06b9df59dc3ca9f9e66ce469f53a4f`  
		Last Modified: Fri, 04 Sep 2026 00:08:28 GMT  
		Size: 15.5 KB (15518 bytes)  
		MIME: application/vnd.in-toto+json
