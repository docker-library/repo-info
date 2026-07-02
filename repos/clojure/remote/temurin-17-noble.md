## `clojure:temurin-17-noble`

```console
$ docker pull clojure@sha256:8250a7e6b20954680c2e3bf2e84ad4caab1c5ea68c56c28bca41fb9ac5a2e96e
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

### `clojure:temurin-17-noble` - linux; amd64

```console
$ docker pull clojure@sha256:fc9298c9e6625f26529490c14a52d14727f0383545a40e97382506bac4becf18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.1 MB (253112171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:defabd41729eeab297024d9166a4b1a6965ee7c424dbddf0ac7b18a8b4059663`
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
# Thu, 02 Jul 2026 02:21:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:21:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:21:00 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:21:00 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:21:00 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Thu, 02 Jul 2026 02:21:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='d8afc263758141a66e0e3aafc321e783f7016696f4eaea067d340a269037d331';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        arm64)          ESUM='83a52172678ec8975164648654869cb2e71d7c748b47aca94b29bbfa10c18e81';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        armhf)          ESUM='2de430307390123858ea70b3ba399155b88bb05d65e5d3633b3a4d7b19acddb1';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_arm_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64el)          ESUM='c9d8dc52960ff00aa8c321e211cc5284a2151cffdedeac998f5297066cbad245';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        riscv64)          ESUM='191cdd904aef8b8a7a91c98d649c7e3dc75b7341f112061231c2094c418fd630';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_riscv64_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='00363a5ceda57aa0dee89d20b3f6b2966e3c1f3fb6dcf57e66d2264573d3c63e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:21:08 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:21:08 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:21:08 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 02 Jul 2026 02:21:08 GMT
CMD ["jshell"]
# Thu, 02 Jul 2026 05:51:41 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:51:41 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:51:55 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Thu, 02 Jul 2026 05:51:55 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:51:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:51:55 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:51:55 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d628cb78b78ccaf117046dd7d917944fb59da4b40fd70c24c1e36ac9361aa3f3`  
		Last Modified: Thu, 02 Jul 2026 02:21:25 GMT  
		Size: 22.9 MB (22927436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4afdce63e74a6c27b6f610adcbdde197d8bf476f36ef57f55e7e7231eff51f36`  
		Last Modified: Thu, 02 Jul 2026 02:21:28 GMT  
		Size: 145.9 MB (145913863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e384d946f21da27e674320d8ea039bcee75cf705f85bcac60ed825a44abfecb1`  
		Last Modified: Thu, 02 Jul 2026 02:21:24 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff60c01d6889193a0f24bca2946740245f2d6bd784cef77660e9d87084214461`  
		Last Modified: Thu, 02 Jul 2026 02:21:24 GMT  
		Size: 2.3 KB (2282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7371a34b510246fc7325ae338b10898d3293ba327cbdaa79a41365acfab053fe`  
		Last Modified: Thu, 02 Jul 2026 05:52:12 GMT  
		Size: 54.5 MB (54531784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcfccc4eb0f83b78c7c06a039d2b366279f8dc49dd3cce9f8165c7e951dd60d7`  
		Last Modified: Thu, 02 Jul 2026 05:52:10 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79f693d22467c4ffd083111b0ccff46733a00d14d854d2c3e40e1201bb56ccce`  
		Last Modified: Thu, 02 Jul 2026 05:52:10 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-noble` - unknown; unknown

```console
$ docker pull clojure@sha256:952d7675510165bcdf0c6c72813a1521475cb647896ad958aae0dd009fb6a416
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5906968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fab9b8333e26afb32b8f6053d9c7e84b53acc091a1aa8f3c854b05df0afcef7`

```dockerfile
```

-	Layers:
	-	`sha256:49a5f81f3443404d1fbc27c4f43192fbc2cc30176edeef7451a13180c9f4db42`  
		Last Modified: Thu, 02 Jul 2026 05:52:10 GMT  
		Size: 5.9 MB (5890741 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a94caed600c7a028f857992846c77508c3ccedb1c67237c1297ff3dfcf34241`  
		Last Modified: Thu, 02 Jul 2026 05:52:10 GMT  
		Size: 16.2 KB (16227 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-noble` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:eac2596798b3ceccc7d11918ed89f533f226909f0402203fb7e31e6677aff3c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252188788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:969a680a36e99337a01630cff0b7a46c9f66e466115a3b7871cdc262acbb018d`
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
# Thu, 02 Jul 2026 02:19:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:19:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:19:50 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:19:50 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:19:50 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Thu, 02 Jul 2026 02:19:57 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='d8afc263758141a66e0e3aafc321e783f7016696f4eaea067d340a269037d331';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        arm64)          ESUM='83a52172678ec8975164648654869cb2e71d7c748b47aca94b29bbfa10c18e81';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        armhf)          ESUM='2de430307390123858ea70b3ba399155b88bb05d65e5d3633b3a4d7b19acddb1';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_arm_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64el)          ESUM='c9d8dc52960ff00aa8c321e211cc5284a2151cffdedeac998f5297066cbad245';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        riscv64)          ESUM='191cdd904aef8b8a7a91c98d649c7e3dc75b7341f112061231c2094c418fd630';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_riscv64_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='00363a5ceda57aa0dee89d20b3f6b2966e3c1f3fb6dcf57e66d2264573d3c63e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:19:59 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:19:59 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:19:59 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 02 Jul 2026 02:19:59 GMT
CMD ["jshell"]
# Thu, 02 Jul 2026 05:52:05 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:52:05 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:52:20 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Thu, 02 Jul 2026 05:52:20 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:52:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:52:20 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:52:20 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:051c84b4a9f1ebe7b35d1cbe8719e55440083c63c07ac7e93ac76a8cb1c33364`  
		Last Modified: Thu, 02 Jul 2026 02:20:16 GMT  
		Size: 24.1 MB (24125518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bcaf45b91eec6d7331775111b570690d1ddc2cce94987973f19d481b984e77b`  
		Last Modified: Thu, 02 Jul 2026 02:20:19 GMT  
		Size: 144.7 MB (144741960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b77ef0ca9dbf11fbff32749c606a45c2c64ec43b05a0277d0f4fb87ecec76b8`  
		Last Modified: Thu, 02 Jul 2026 02:20:15 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3560b338cc137feaa9b0aaf1db619a3127b0a6d162cf9afaf0010a0df3b7a943`  
		Last Modified: Thu, 02 Jul 2026 02:20:15 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4454d383dc6bf10ff8aad393087ba4ceb763ddc6e0de2ed412fa4ce0ca554c58`  
		Last Modified: Thu, 02 Jul 2026 05:52:36 GMT  
		Size: 54.4 MB (54433640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47699978bff64de31bc5769df6e0cec9da2de3d3426bb854bde1c13f0c195beb`  
		Last Modified: Thu, 02 Jul 2026 05:52:35 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d39342b54810cb481489be094b671464961642ab565709c225bf934be6481b23`  
		Last Modified: Thu, 02 Jul 2026 05:52:35 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-noble` - unknown; unknown

```console
$ docker pull clojure@sha256:adcc24a2bd54635047c93418861417bacfbb49ff27918984c12f7906fbd05dcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6044724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb68a080ade0c17a077368dba0c04b847842ec19bfd9f9860c9f0e6c7b5a05a8`

```dockerfile
```

-	Layers:
	-	`sha256:ae81133c12c227c1a2abf664acb704bfa10b1632a2328d10d69f4173c54917d0`  
		Last Modified: Thu, 02 Jul 2026 05:52:35 GMT  
		Size: 6.0 MB (6028379 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3d6e9c7925202cf959cf10158975412000442a101c52739dc6cbb5703a79433`  
		Last Modified: Thu, 02 Jul 2026 05:52:35 GMT  
		Size: 16.3 KB (16345 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-noble` - linux; ppc64le

```console
$ docker pull clojure@sha256:047a20e23f5b314bf55f95bce5b076e5ba25ed9f411d01bc1bb44f261a7f5489
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.4 MB (263431301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb089190e47456596b1cce6cda1e9ea8cb05b40269b1ba522e276f326eecfc98`
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
# Thu, 02 Jul 2026 02:18:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:18:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:18:03 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:18:03 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:18:03 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Thu, 02 Jul 2026 02:18:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='d8afc263758141a66e0e3aafc321e783f7016696f4eaea067d340a269037d331';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        arm64)          ESUM='83a52172678ec8975164648654869cb2e71d7c748b47aca94b29bbfa10c18e81';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        armhf)          ESUM='2de430307390123858ea70b3ba399155b88bb05d65e5d3633b3a4d7b19acddb1';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_arm_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64el)          ESUM='c9d8dc52960ff00aa8c321e211cc5284a2151cffdedeac998f5297066cbad245';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        riscv64)          ESUM='191cdd904aef8b8a7a91c98d649c7e3dc75b7341f112061231c2094c418fd630';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_riscv64_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='00363a5ceda57aa0dee89d20b3f6b2966e3c1f3fb6dcf57e66d2264573d3c63e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:18:16 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:18:16 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:18:16 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 02 Jul 2026 02:18:16 GMT
CMD ["jshell"]
# Thu, 02 Jul 2026 07:09:44 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 07:09:44 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:18:00 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Thu, 02 Jul 2026 07:18:00 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 07:18:00 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:18:00 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:18:00 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:829edd3cc74acff6c3c7176350412da64f78a7f6503f436ef5b7a1403c9cda6a`  
		Last Modified: Thu, 02 Jul 2026 02:18:55 GMT  
		Size: 24.1 MB (24055098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b989ba421b64f84a4c3ecf2fc7898eff962dd748ee5846a587c4645fb9f012f`  
		Last Modified: Thu, 02 Jul 2026 02:18:59 GMT  
		Size: 145.8 MB (145774076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d34b981ce71f9e609037aef8ba12a51d6c0c7686aad622f824c31ee7f031ec4e`  
		Last Modified: Thu, 02 Jul 2026 02:18:54 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12cbec5beb5472efa6d2185ad0f0e1743161af0063e5e5ff31ec55b38e1f654b`  
		Last Modified: Thu, 02 Jul 2026 02:18:54 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4aa86d1ab0973893b5fce8b1f16d02aca9c110b9dcb201435839ea6146534b4`  
		Last Modified: Thu, 02 Jul 2026 07:18:35 GMT  
		Size: 59.3 MB (59285164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fc052b2a61802da977209aa5fc03b52fd701a353789cb7c6acf030c9479a121`  
		Last Modified: Thu, 02 Jul 2026 07:18:32 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86b2e4faea2f61d64986488ea4ec4715769ad6a32d2a4b6b3a111f3a6443637d`  
		Last Modified: Thu, 02 Jul 2026 07:18:32 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-noble` - unknown; unknown

```console
$ docker pull clojure@sha256:08294c3fccab9bbb579e35ab7320db504f26267db59f96944f1be8227106a1e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (5957888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:373e3c69d52f36e10a24f471e0b49f8940809c050fcea75014066385696a8981`

```dockerfile
```

-	Layers:
	-	`sha256:289668a805cc56868434aa9bb7048254015c4b37516ecde0f5d87806b9a965a1`  
		Last Modified: Thu, 02 Jul 2026 07:18:33 GMT  
		Size: 5.9 MB (5941609 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a918048aeeed6dc83c8017de77e699d321db077e5a1ff87415b0f3fa3d64476`  
		Last Modified: Thu, 02 Jul 2026 07:18:32 GMT  
		Size: 16.3 KB (16279 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-noble` - linux; s390x

```console
$ docker pull clojure@sha256:276630bffc9805ed4d21e90ed22ed0779f8da44305fb61f35ddb6a7b92787ddf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.1 MB (244051858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2078a595b7c82c4e7d1ef6e5a1ff8f92f77f2b3e8590aaedda46fc82f2153c60`
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
# Thu, 02 Jul 2026 02:11:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:11:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:11:58 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:11:58 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:11:58 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Thu, 02 Jul 2026 02:12:03 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='d8afc263758141a66e0e3aafc321e783f7016696f4eaea067d340a269037d331';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        arm64)          ESUM='83a52172678ec8975164648654869cb2e71d7c748b47aca94b29bbfa10c18e81';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        armhf)          ESUM='2de430307390123858ea70b3ba399155b88bb05d65e5d3633b3a4d7b19acddb1';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_arm_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64el)          ESUM='c9d8dc52960ff00aa8c321e211cc5284a2151cffdedeac998f5297066cbad245';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        riscv64)          ESUM='191cdd904aef8b8a7a91c98d649c7e3dc75b7341f112061231c2094c418fd630';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_riscv64_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='00363a5ceda57aa0dee89d20b3f6b2966e3c1f3fb6dcf57e66d2264573d3c63e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:12:04 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:12:04 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:04 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 02 Jul 2026 02:12:04 GMT
CMD ["jshell"]
# Thu, 02 Jul 2026 05:51:15 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:51:15 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:51:25 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Thu, 02 Jul 2026 05:51:25 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:51:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:51:25 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:51:25 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:017bf1549f7106f258688738600d68c2eebf2c29476ebfe929e2762f93f82609`  
		Last Modified: Tue, 23 Jun 2026 01:35:07 GMT  
		Size: 29.9 MB (29941314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:208f10dac2376d7073d0c39ce8c5a201d28584709ee10fc027feb1ad1235c862`  
		Last Modified: Thu, 02 Jul 2026 02:12:28 GMT  
		Size: 22.1 MB (22087019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e77d0be2839954a129dbb0d4d8b15a73d1ecb4eb655ec07f5353fd7c142cccf6`  
		Last Modified: Thu, 02 Jul 2026 02:12:30 GMT  
		Size: 135.9 MB (135919352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2795ac74603e42677d6cea2570ef5c122f01b57b4172caa1935de80f7922335`  
		Last Modified: Thu, 02 Jul 2026 02:12:27 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:143085568b4e80a8923449cad5100ab5a04c261e55491d4bc3ec985208020eac`  
		Last Modified: Thu, 02 Jul 2026 02:12:27 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f910f2d389849cf2912770b8bfbcdce70f190e453499357517bd36eda9eb54b`  
		Last Modified: Thu, 02 Jul 2026 05:51:47 GMT  
		Size: 56.1 MB (56100685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9316c6b5ede64c007d93df257323b7e0404b2ac99bc8ba362c5343b98eb31fd2`  
		Last Modified: Thu, 02 Jul 2026 05:51:46 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2cb14ed4728e6991010f270143e58ee13fde4583094592c7e462537a5f15f60`  
		Last Modified: Thu, 02 Jul 2026 05:51:46 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-noble` - unknown; unknown

```console
$ docker pull clojure@sha256:7e4458900bbd0df9a732e3cf06e4f5e14ad700c7a0401520b3136bce116e9e96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5852317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dba43989fd62f8b4ec273fc62de5c3f96f4a96c9dc89a47001b2bbd51d55267f`

```dockerfile
```

-	Layers:
	-	`sha256:f77be7bab3589035b05e0cddf23334dd06809fd108c7c8b52fd3773186b79dd3`  
		Last Modified: Thu, 02 Jul 2026 05:51:46 GMT  
		Size: 5.8 MB (5836088 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a51c8a065788c1fe384ac1b686b460470359d8df837d838b2910ef5015a96cfc`  
		Last Modified: Thu, 02 Jul 2026 05:51:46 GMT  
		Size: 16.2 KB (16229 bytes)  
		MIME: application/vnd.in-toto+json
