## `clojure:temurin-26-tools-deps-1.12.5.1654-noble`

```console
$ docker pull clojure@sha256:de526f4fb6fa03a7d79b5371b8c3d34b1126891ce593fe66f3527655cdb9bf10
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:temurin-26-tools-deps-1.12.5.1654-noble` - linux; amd64

```console
$ docker pull clojure@sha256:5d61afdedc9ddddd85d416f0d9b78a9418dad9bf553b821267dd11758a66a5fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.6 MB (199610906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c967cfa12b652ad10d59896871578a7de20d3ee288571a26e462c94b86d7edaa`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:22:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:22:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:22:10 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:22:10 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:22:10 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Thu, 02 Jul 2026 02:22:25 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8e512f13e575a43655fc92319436c94890c137b9035cc6bd6f9cf24239704d3a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_x64_linux_hotspot_26.0.1_8.tar.gz';          ;;        arm64)          ESUM='613f9b2861dea937b24d5eca745ef8567733b377d0bb612195acaad0e3f61360';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.1_8.tar.gz';          ;;        ppc64el)          ESUM='60e016faf4177840430035d948f83f2887d556fe512b78c1d43b320322fe6685';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.1_8.tar.gz';          ;;        riscv64)          ESUM='f1b762d6d86599627983df200f215bc970444a697159ca3fae93208756b44715';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_riscv64_linux_hotspot_26.0.1_8.tar.gz';          ;;        s390x)          ESUM='942de7ded1427592a2a4b6dbea4083b2d0891de2626c7863e970de3e2819a93f';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.1_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:22:26 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:22:26 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:22:26 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 02 Jul 2026 02:22:26 GMT
CMD ["jshell"]
# Thu, 02 Jul 2026 05:56:07 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:56:07 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:57:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Thu, 02 Jul 2026 05:57:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:57:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:57:47 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:57:47 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94f6b764a2940c6203cd2f89999e99d216263603467d8a29e6a531c42520a4ec`  
		Last Modified: Thu, 02 Jul 2026 02:22:42 GMT  
		Size: 17.4 MB (17422728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aef663fc4a7aa2a881624f12297b8c71e3acdde6e882de512e5802d5a5089060`  
		Last Modified: Thu, 02 Jul 2026 02:22:43 GMT  
		Size: 94.7 MB (94653600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e86040719da9961268acd66b245ee81c4cd9492c93b761db405500120822b653`  
		Last Modified: Thu, 02 Jul 2026 02:22:41 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43ffef1f1dd1b550260a526522d8f0960fa1cef047a922a3df0684ba9afbb32c`  
		Last Modified: Thu, 02 Jul 2026 05:58:03 GMT  
		Size: 57.8 MB (57795434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8e58dbf3d7dbaddec7bf73131ad77e610614d1818acde8ab56235b9cbbee76d`  
		Last Modified: Thu, 02 Jul 2026 05:58:01 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41b6520775f0ffc4c00429bdf5b14b02c34564c065c2717ad6e3c35498406f30`  
		Last Modified: Thu, 02 Jul 2026 05:58:01 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1654-noble` - unknown; unknown

```console
$ docker pull clojure@sha256:106e44c96370cb54ab1d7269316c02d1539675f4a08c62a1fc87cd5fc9775d78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5789572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d189c91312f073b87d75443f85ca0d9db4b4852d4327b1cb4513e96725614d0`

```dockerfile
```

-	Layers:
	-	`sha256:17ff665e2a1ed61ec13b7e80ec3a7f6006e76d63f0f72c66cc8d19e96f7d0e85`  
		Last Modified: Thu, 02 Jul 2026 05:58:02 GMT  
		Size: 5.8 MB (5774039 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:919f0f6d29b9c8fc04d595bbcf809c5c532bde555493d3ab99c91e6a724e10dc`  
		Last Modified: Thu, 02 Jul 2026 05:58:01 GMT  
		Size: 15.5 KB (15533 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.5.1654-noble` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:7eda743beef08dab7e8cdd16043b8511e2a9a039fefe28c1ceaa79e738cb2d25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.9 MB (198874528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52ae9187f1f31287d85021f10e664c5d79bcc3b7f21964e075e8a2dd02086b28`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:21:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:21:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:21:19 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:21:19 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:21:19 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Thu, 02 Jul 2026 02:21:37 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8e512f13e575a43655fc92319436c94890c137b9035cc6bd6f9cf24239704d3a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_x64_linux_hotspot_26.0.1_8.tar.gz';          ;;        arm64)          ESUM='613f9b2861dea937b24d5eca745ef8567733b377d0bb612195acaad0e3f61360';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.1_8.tar.gz';          ;;        ppc64el)          ESUM='60e016faf4177840430035d948f83f2887d556fe512b78c1d43b320322fe6685';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.1_8.tar.gz';          ;;        riscv64)          ESUM='f1b762d6d86599627983df200f215bc970444a697159ca3fae93208756b44715';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_riscv64_linux_hotspot_26.0.1_8.tar.gz';          ;;        s390x)          ESUM='942de7ded1427592a2a4b6dbea4083b2d0891de2626c7863e970de3e2819a93f';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.1_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:21:39 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:21:39 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:21:39 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 02 Jul 2026 02:21:39 GMT
CMD ["jshell"]
# Thu, 02 Jul 2026 05:57:52 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:57:52 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:58:08 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Thu, 02 Jul 2026 05:58:08 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:58:08 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:58:08 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:58:08 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19b0eb9cda250b008ed6816b417bfb5c1a76c89272e6546e389dc92401422ab8`  
		Last Modified: Thu, 02 Jul 2026 02:21:57 GMT  
		Size: 18.6 MB (18610163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81620df864e1702bfc8947f525f2cc80327bec9127580ce33a39237229e6dc51`  
		Last Modified: Thu, 02 Jul 2026 02:21:59 GMT  
		Size: 93.6 MB (93630109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:158216cfda66f945d11001d0b78d4cf57b1c85c73ecf117bbc7d3dee7fb1c20b`  
		Last Modified: Thu, 02 Jul 2026 02:21:56 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8a153a974f6df9760a9199440b8d245263a057b0132dfc3d95e62a2e7685fd0`  
		Last Modified: Thu, 02 Jul 2026 05:58:25 GMT  
		Size: 57.7 MB (57746531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74be3a2601908439a7e9bc8838e2be7f0294771fd72b3f2b765d2cb973cfd3d1`  
		Last Modified: Thu, 02 Jul 2026 05:58:23 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:055d0df4ce64febfd5c04e372a23c2bfa88b1c3a6476212e145c019ab1a084a2`  
		Last Modified: Thu, 02 Jul 2026 05:58:23 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1654-noble` - unknown; unknown

```console
$ docker pull clojure@sha256:377e449cfb7cef278e2fbf39196f5f766c2027b078419a7cffebaa4e40c73359
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5927281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c25cd91268839136fd0a2134905c5681ddc35e39c496af441b3481e15eb5f428`

```dockerfile
```

-	Layers:
	-	`sha256:260d6b79837b6bbb4584ad1cf0ae1eda017ff01ba7c07abc659a910b49831f08`  
		Last Modified: Thu, 02 Jul 2026 05:58:23 GMT  
		Size: 5.9 MB (5911656 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebb69fbd1af8379c14676d9bacd3476dc1974f10302bbd147ac53cd6678d1448`  
		Last Modified: Thu, 02 Jul 2026 05:58:23 GMT  
		Size: 15.6 KB (15625 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.5.1654-noble` - linux; ppc64le

```console
$ docker pull clojure@sha256:84e975efae415de512e7c87cb67dab690a1f59881f21bfa8ade15f051516517c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.9 MB (208871644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a90e0699b2872d0c05b3f816b7d020013c13d178e161cf37bae492de97b200ec`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:57 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:00 GMT
ADD file:80a608ac5245946ff88c571e9d9b1259a58a3a309e569fbe7ed52f07c2ed3b39 in / 
# Mon, 22 Jun 2026 21:25:01 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:24:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:24:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:24:45 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:24:45 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:24:45 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Thu, 02 Jul 2026 02:30:00 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8e512f13e575a43655fc92319436c94890c137b9035cc6bd6f9cf24239704d3a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_x64_linux_hotspot_26.0.1_8.tar.gz';          ;;        arm64)          ESUM='613f9b2861dea937b24d5eca745ef8567733b377d0bb612195acaad0e3f61360';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.1_8.tar.gz';          ;;        ppc64el)          ESUM='60e016faf4177840430035d948f83f2887d556fe512b78c1d43b320322fe6685';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.1_8.tar.gz';          ;;        riscv64)          ESUM='f1b762d6d86599627983df200f215bc970444a697159ca3fae93208756b44715';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_riscv64_linux_hotspot_26.0.1_8.tar.gz';          ;;        s390x)          ESUM='942de7ded1427592a2a4b6dbea4083b2d0891de2626c7863e970de3e2819a93f';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.1_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:30:04 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:30:04 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:30:04 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 02 Jul 2026 02:30:04 GMT
CMD ["jshell"]
# Thu, 02 Jul 2026 07:48:41 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 07:48:41 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:56:51 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Thu, 02 Jul 2026 07:56:52 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 07:56:52 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:56:52 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:56:52 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c755dc0adea6ed7f07fb8e151a3b22daae0226d216e2d3acafd7e62d65fb5cb`  
		Last Modified: Thu, 02 Jul 2026 02:26:02 GMT  
		Size: 17.3 MB (17287960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7264479afe7111d5c77236e51599f4ce6b66a3dc2bc9c019d61cd86509ee3e99`  
		Last Modified: Thu, 02 Jul 2026 02:30:43 GMT  
		Size: 94.0 MB (94029198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01183894db66da5528cd0de818b61cb7e2d1ec2e474b3c6e9736bd72699b29be`  
		Last Modified: Thu, 02 Jul 2026 02:30:40 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7b7ea8807ad259a5eeaa7c80919222cc33de7bd7f08e777108dd3c0c5fc0a54`  
		Last Modified: Thu, 02 Jul 2026 07:57:25 GMT  
		Size: 63.2 MB (63237467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37ddf2b2b23a46545caafc67c246b24464c727c27c7c56e4b21743a3dabe8d0c`  
		Last Modified: Thu, 02 Jul 2026 07:57:22 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:268342310f0f81f07b0e376136269b821a50d6fa362029e3b83e885da04b47cc`  
		Last Modified: Thu, 02 Jul 2026 07:57:23 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1654-noble` - unknown; unknown

```console
$ docker pull clojure@sha256:f445beea0fc0b202292678a94dfdbce27381e78322a114c4ec4f7410959c06c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5824432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94c33344fd797a6cdd44b6c6d0bf4a098eca7f64d10672c953c5cbcd3aa10c67`

```dockerfile
```

-	Layers:
	-	`sha256:56dfaf30ef840b3f781303b2285a04510c2f514cb40a4ceb1f1b7c01ae018382`  
		Last Modified: Thu, 02 Jul 2026 07:57:23 GMT  
		Size: 5.8 MB (5808861 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97a53c2794752804e53f3c255fbf47f362c4cbed52397d17bb154321f7f74696`  
		Last Modified: Thu, 02 Jul 2026 07:57:22 GMT  
		Size: 15.6 KB (15571 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.5.1654-noble` - linux; s390x

```console
$ docker pull clojure@sha256:3f06686e515c0786f61714bfc728e7be9332b26a3b5ee655250f8b95d12693b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.4 MB (196402651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a4057bd9a49b88617e172bc0608893fa392929d38c2a4d40c1efeda2b52c230`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:04 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:04 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:05 GMT
ADD file:2e6c463b4adb9218af4efdc52eb0c653c0b81b2e15486825eeeee9fbbf21b4c7 in / 
# Mon, 22 Jun 2026 21:24:05 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:16:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:16:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:16:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:16:05 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:16:05 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Thu, 02 Jul 2026 02:16:16 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8e512f13e575a43655fc92319436c94890c137b9035cc6bd6f9cf24239704d3a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_x64_linux_hotspot_26.0.1_8.tar.gz';          ;;        arm64)          ESUM='613f9b2861dea937b24d5eca745ef8567733b377d0bb612195acaad0e3f61360';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.1_8.tar.gz';          ;;        ppc64el)          ESUM='60e016faf4177840430035d948f83f2887d556fe512b78c1d43b320322fe6685';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.1_8.tar.gz';          ;;        riscv64)          ESUM='f1b762d6d86599627983df200f215bc970444a697159ca3fae93208756b44715';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_riscv64_linux_hotspot_26.0.1_8.tar.gz';          ;;        s390x)          ESUM='942de7ded1427592a2a4b6dbea4083b2d0891de2626c7863e970de3e2819a93f';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.1_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:16:18 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:16:18 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:16:18 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 02 Jul 2026 02:16:18 GMT
CMD ["jshell"]
# Thu, 02 Jul 2026 05:59:45 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:59:45 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 06:01:32 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Thu, 02 Jul 2026 06:01:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 06:01:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 06:01:32 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 06:01:32 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:017bf1549f7106f258688738600d68c2eebf2c29476ebfe929e2762f93f82609`  
		Last Modified: Tue, 23 Jun 2026 01:35:07 GMT  
		Size: 29.9 MB (29941314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a6aaf44617d03263fdc67a2152b9499b8b6b374a8d48fc823a09ac2249004cf`  
		Last Modified: Thu, 02 Jul 2026 02:16:40 GMT  
		Size: 16.3 MB (16265685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d68bb7de606a57148b54bd4ad79e558e01fdc97f01d022051e5568173c6ebd87`  
		Last Modified: Thu, 02 Jul 2026 02:16:41 GMT  
		Size: 90.7 MB (90665342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:731b0a046e279b82c62e0c0fc5bff8bf6d2ae39b15fbb6b0a7f8d5bf713df056`  
		Last Modified: Thu, 02 Jul 2026 02:16:40 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aee2605b4b0b71e2f5ea684c272eea446283c643b116dfae8bf5141391ab84b8`  
		Last Modified: Thu, 02 Jul 2026 06:01:53 GMT  
		Size: 59.5 MB (59526772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c70e6d13aff8537bff3a033f266fb4dceed5eaa7b9128efb0ddf03f853f2ac94`  
		Last Modified: Thu, 02 Jul 2026 06:01:52 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:027c616566663eae83ba8bdb8b58368e72697aba13760bd52900d4c9aa28baee`  
		Last Modified: Thu, 02 Jul 2026 06:01:52 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1654-noble` - unknown; unknown

```console
$ docker pull clojure@sha256:b8a339c01861dff815cdeedf5b4d51a51bd696a8fcf2736d08187446c10d2bdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5720099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3301e36cc96d7238338a4cd6827d933586a5d433b163ca6cb6bf205ebb933ae5`

```dockerfile
```

-	Layers:
	-	`sha256:9b3c0e8417078b9c85f67b2397bd86f4fc291ddec044cb710465fc137ae23186`  
		Last Modified: Thu, 02 Jul 2026 06:01:52 GMT  
		Size: 5.7 MB (5704566 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e547e31ed85e26342b31a1b42739130d6796747f065d49ed64c0e66985e8c5cf`  
		Last Modified: Thu, 02 Jul 2026 06:01:52 GMT  
		Size: 15.5 KB (15533 bytes)  
		MIME: application/vnd.in-toto+json
