## `clojure:temurin-17-tools-deps-1.12.6.1673-jammy`

```console
$ docker pull clojure@sha256:bbfec527b9fee1734f4a91e00ba0bb7c234e589e087196549a80a803b09c2507
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-1.12.6.1673-jammy` - linux; amd64

```console
$ docker pull clojure@sha256:3f0bc54fca43ed6eac9afee4dcc63308ecc138d441a58a0a51bb897100df0879
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.9 MB (246901879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a76041c410aec394c6ce52bc89c24f0e2796d961ef1612f8c8538e662b294d19`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 18:24:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:24:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:24:02 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:24:02 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:24:02 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Fri, 21 Aug 2026 18:24:09 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='be7668bc030d578b83d6d5ef9221d6d6729bbbca8cf94a7d52e16ac68b5a5a35';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        arm64)          ESUM='d143936f473a4cb24e3b0e247d6d0775769d55ec9775c339540e753059a8d77a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        armhf)          ESUM='543173615a7e6e8905d99c45f9d0caeb5faf1a6dcdc25cbb5337f53e7ef06c78';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_arm_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64el)          ESUM='a14127c5577dc12e058459549e5388fd47ebd1b3d8441fbd23c4d931bdcebee9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='d5bbce66faa1482adb6ddcabc51d6c14b7c35cb11174e657d84ecb2177a4f6e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 18:24:09 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:24:09 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:24:09 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:24:09 GMT
CMD ["jshell"]
# Fri, 04 Sep 2026 00:02:23 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:02:23 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:02:43 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Fri, 04 Sep 2026 00:02:43 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:02:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:02:43 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:02:43 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04deffb7d72ecf94f79d39d4a1c870ff904f6abfb8f9cd568381e970e0b60863`  
		Last Modified: Fri, 21 Aug 2026 18:24:25 GMT  
		Size: 20.7 MB (20660381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bf13912bb0d15840e3b57c3a0a906139c615c193058d42ce2b53015f3a59f81`  
		Last Modified: Fri, 21 Aug 2026 18:24:28 GMT  
		Size: 145.8 MB (145832386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e75faa6d00c51cac6f72fbe452f40b0d307f26df1f9b1294c8bc583fe6d83cfb`  
		Last Modified: Fri, 21 Aug 2026 18:24:24 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:314025e929d50234dabd855b54b7434e9d3faae7b365b0cb16ee885826d80c45`  
		Last Modified: Fri, 21 Aug 2026 18:24:24 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7ef361fb34cd8691756f37ad1f1eb2ac1c68cd4fb32c85b3f3fe3629afa211a`  
		Last Modified: Fri, 04 Sep 2026 00:02:59 GMT  
		Size: 50.7 MB (50668498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97ae04c802b67f08e34b68542f39cb64ff084c46a6374e33600fe4c213eac6c8`  
		Last Modified: Fri, 04 Sep 2026 00:02:58 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b36bf4ecbd73c646e98099b94328b27014def43744904924ee8a757c14c424e6`  
		Last Modified: Fri, 04 Sep 2026 00:02:58 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-jammy` - unknown; unknown

```console
$ docker pull clojure@sha256:36a54e6a4e4f255296cce35a0ff373898a5a895bbace68524b53c3b19ddc4393
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6460270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb00d494d3db3ce7b66b79c8f2ad2abb3ee9a9379b1b5ef8359fddeae6aac687`

```dockerfile
```

-	Layers:
	-	`sha256:65d730b66bd6cc34adcd3eaaa3131ae82a4dae87e5f5852e16e20ae0560ac575`  
		Last Modified: Fri, 04 Sep 2026 00:02:58 GMT  
		Size: 6.4 MB (6444726 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d308e4d56ea2f02cac5413697a38c794ef7809f6d5c263fbae89b0594e7bc599`  
		Last Modified: Fri, 04 Sep 2026 00:02:58 GMT  
		Size: 15.5 KB (15544 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.6.1673-jammy` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:2ecfd12404f9aae652a51041213e23b5b7fac1aca771aa8a9608ca37e4300360
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.9 MB (244944074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b90e84c29a22bbd60bd9bc412564fca5b037c6c57b0a45b01d967b6fc9ec7839`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 18:27:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:27:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:27:10 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:27:10 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:27:10 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Fri, 21 Aug 2026 18:27:18 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='be7668bc030d578b83d6d5ef9221d6d6729bbbca8cf94a7d52e16ac68b5a5a35';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        arm64)          ESUM='d143936f473a4cb24e3b0e247d6d0775769d55ec9775c339540e753059a8d77a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        armhf)          ESUM='543173615a7e6e8905d99c45f9d0caeb5faf1a6dcdc25cbb5337f53e7ef06c78';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_arm_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64el)          ESUM='a14127c5577dc12e058459549e5388fd47ebd1b3d8441fbd23c4d931bdcebee9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='d5bbce66faa1482adb6ddcabc51d6c14b7c35cb11174e657d84ecb2177a4f6e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 18:27:19 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:27:19 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:27:19 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:27:19 GMT
CMD ["jshell"]
# Fri, 04 Sep 2026 00:06:25 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:06:25 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:06:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Fri, 04 Sep 2026 00:06:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:06:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:06:46 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:06:46 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc60afe95cd077314c1765f31ce36e1ddaf4ab905e9bd12adc78102f2bbcab52`  
		Last Modified: Fri, 21 Aug 2026 18:27:37 GMT  
		Size: 22.1 MB (22068658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6331e9896c03d182cc1fe0965464a649a05d7a95e6d022e0a1afc43f9867eac8`  
		Last Modified: Fri, 21 Aug 2026 18:27:39 GMT  
		Size: 144.7 MB (144655534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:187bc6d34c3f3174a0443c531ccd0bbd0cddc653f06d8ea94bb94ec89c59c31b`  
		Last Modified: Fri, 21 Aug 2026 18:27:36 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bced485c23250d92b6fd88d88910ff68163b512eb73e61ac85e559fdb556914`  
		Last Modified: Fri, 21 Aug 2026 18:27:36 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f661c0bb9833e07bf98cc84c405e773b3b3670ed67722e5174c7d3afc0acaf0a`  
		Last Modified: Fri, 04 Sep 2026 00:07:02 GMT  
		Size: 50.6 MB (50595758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72357c4be2fff0603f18c3a42dd113b22b424d3335e431e2f238c86aba4abc5e`  
		Last Modified: Fri, 04 Sep 2026 00:07:01 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1fc64ff169977d6506acea81160bffffe455e512ab0c17e0a0eea4bbf928175`  
		Last Modified: Fri, 04 Sep 2026 00:07:01 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-jammy` - unknown; unknown

```console
$ docker pull clojure@sha256:27fdc196f076b9284c2e7195477bc07f52817b22eca74e6f2110b6895edb008a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6561929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74234085ab9ba36c38348980d83043f8826e2fa352854f32fb479e7d9e341a50`

```dockerfile
```

-	Layers:
	-	`sha256:4f51f3444c88bb0aa5370ef54e842d5a1f299ab1bce39b05339f6bedc41be639`  
		Last Modified: Fri, 04 Sep 2026 00:07:01 GMT  
		Size: 6.5 MB (6546294 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f73de19143e9868eb047b04cf0a66819c8f9745c98b395d736cde0dd7ee0605`  
		Last Modified: Fri, 04 Sep 2026 00:07:00 GMT  
		Size: 15.6 KB (15635 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.6.1673-jammy` - linux; ppc64le

```console
$ docker pull clojure@sha256:f2723609ca39ae7bbbc7651be044a843d5d0d51a4ee9a9234200b366b3b933af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.8 MB (257750365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9db7cd2ecaeff73ec7b7d4af96fb104440d4187a776d5f161d7e37560ea0d00`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 10 Aug 2026 17:41:01 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:41:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:41:01 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:41:05 GMT
ADD file:d76e60867a1f84b7db03c693179093620dc98a06de4f58fdcc806cfc4e4be11c in / 
# Mon, 10 Aug 2026 17:41:05 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 20:35:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 20:35:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 20:35:23 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 20:35:23 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 20:35:23 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Fri, 21 Aug 2026 20:35:33 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='be7668bc030d578b83d6d5ef9221d6d6729bbbca8cf94a7d52e16ac68b5a5a35';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        arm64)          ESUM='d143936f473a4cb24e3b0e247d6d0775769d55ec9775c339540e753059a8d77a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        armhf)          ESUM='543173615a7e6e8905d99c45f9d0caeb5faf1a6dcdc25cbb5337f53e7ef06c78';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_arm_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64el)          ESUM='a14127c5577dc12e058459549e5388fd47ebd1b3d8441fbd23c4d931bdcebee9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='d5bbce66faa1482adb6ddcabc51d6c14b7c35cb11174e657d84ecb2177a4f6e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 20:35:35 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 20:35:36 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 20:35:36 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 20:35:36 GMT
CMD ["jshell"]
# Fri, 04 Sep 2026 00:16:56 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:16:56 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:17:38 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Fri, 04 Sep 2026 00:17:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:17:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:17:39 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:17:39 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f91e00e792a8adfcd4df0b5c8e802d3b4d1e06477f9753454043a7ce76772758`  
		Last Modified: Mon, 10 Aug 2026 20:09:02 GMT  
		Size: 34.6 MB (34638145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19a72918c6826c1f4180ceb22db548cbffe6e24165f6461b730c07d66223b3b3`  
		Last Modified: Fri, 21 Aug 2026 20:36:09 GMT  
		Size: 22.5 MB (22542653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4d872e1a76ad54746b3a671f264a5d25c5b0cbb033b0ce1d2b9276a10107cd8`  
		Last Modified: Fri, 21 Aug 2026 20:36:12 GMT  
		Size: 145.7 MB (145681108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61eea4c616cdc6f2eac607b3c6417537620fccd49740d29068f68a466e4a7785`  
		Last Modified: Fri, 21 Aug 2026 20:36:08 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5b85a90cf276e3d7075cb235721b91c193fde5bf66e0ef84b264085751afa66`  
		Last Modified: Fri, 21 Aug 2026 20:36:08 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:653f9aa04f6aa2cb66d1a654bdd9705cbe2070b04da60518509262b6167ffb47`  
		Last Modified: Fri, 04 Sep 2026 00:18:17 GMT  
		Size: 54.9 MB (54884786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0bcf728e5c90c463a6f9b2839d9f61e6f1854a8e6e2f0b32c23558e4ae34c65`  
		Last Modified: Fri, 04 Sep 2026 00:18:15 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c89c8efaa6756bce086fce21d4474d14281c240085bf4400eb32aa544b9a1d0d`  
		Last Modified: Fri, 04 Sep 2026 00:18:16 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-jammy` - unknown; unknown

```console
$ docker pull clojure@sha256:f3a9141fcd89fc92f62f92878ae5c1c4aa1185b60457867d9fe0b713c12c84f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6490921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b62d24cdb858bf7201bf5982fb06cba05f049b95d05ba5c7196da4d212ee7c9`

```dockerfile
```

-	Layers:
	-	`sha256:99eee9b5b5db6f77c2f70f00277e43d32bf82a1cb8fc0129da22e22c8cb4d467`  
		Last Modified: Fri, 04 Sep 2026 00:18:16 GMT  
		Size: 6.5 MB (6475339 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3bb116534b99b11248ece7a3ee19f4dea0d34b39d75a06336a6d7b29c96dc4b2`  
		Last Modified: Fri, 04 Sep 2026 00:18:16 GMT  
		Size: 15.6 KB (15582 bytes)  
		MIME: application/vnd.in-toto+json
