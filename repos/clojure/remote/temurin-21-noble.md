## `clojure:temurin-21-noble`

```console
$ docker pull clojure@sha256:27a22c016727af680504966ea75ec962d4d90bc072a20a41f77003d271a852f3
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

### `clojure:temurin-21-noble` - linux; amd64

```console
$ docker pull clojure@sha256:10ea96e1219b4b8c413728f1aac2dfb38a2b7d0cd9e38e40dfbde4b17de104b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.4 MB (265369606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f16876bda85a50217ccb7d6f750855067bb241ef200566dbb585af57ee97758a`
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
# Thu, 02 Jul 2026 02:21:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:21:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:21:24 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:21:24 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:21:24 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Thu, 02 Jul 2026 02:21:30 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='4b2220e232a97997b436ca6ab15cbf70171ecff52958a46159dfa5a8c44ca4de';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        arm64)          ESUM='8d498ec88e1c1989fab95c6784240ab92d011e29c54d20a3f9c324b13476f9ad';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64el)          ESUM='3d043ae96d2343962bf2307d8c55f19849fbfa4c6be9fe164a77d79263f0d989';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        riscv64)          ESUM='40c6862e6aff63fe9a03856ba0506531b516a17bdb5018464e9006ea7f0f5fe4';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_riscv64_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='14dbe3cb226e64b945a36bea32686e8deec746504fe3ccee8de585c54af41ffd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:21:31 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:21:31 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:21:31 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 02 Jul 2026 02:21:31 GMT
CMD ["jshell"]
# Thu, 02 Jul 2026 05:53:43 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:53:43 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:53:55 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Thu, 02 Jul 2026 05:53:55 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:53:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:53:55 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:53:55 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0b722184a7b5cd41d88fcfe6715ae56de236481a707a2996078170bc0ffd7ff`  
		Last Modified: Thu, 02 Jul 2026 02:21:49 GMT  
		Size: 22.9 MB (22927382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f55c6b566db012d556e9bfd6be4c87a9982106f3bfb9e2b5b069c2995ae29695`  
		Last Modified: Thu, 02 Jul 2026 02:21:52 GMT  
		Size: 158.2 MB (158171747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3203fa21b480c1257312dea0e6e7f0af55f7a0fa1c72b7fedbda4e5514c522b`  
		Last Modified: Thu, 02 Jul 2026 02:21:48 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cda2e1bab1def689538dc788de29713a5ae061975dd3bbe89de89e7035b9536`  
		Last Modified: Thu, 02 Jul 2026 02:21:48 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b6f0c49ec78e75afbead123dbbf47d19535f35935a42392b8027afcd862bff3`  
		Last Modified: Thu, 02 Jul 2026 05:54:11 GMT  
		Size: 54.5 MB (54531391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fce5dae9e4303c7c531e3fc8efd4bdf7121773458391b9e5c42014d5af704232`  
		Last Modified: Thu, 02 Jul 2026 05:54:10 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cebc2cb946f3ae42c315306ef4e9a995002438e48265da3012c9ebf11c651a8a`  
		Last Modified: Thu, 02 Jul 2026 05:54:10 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-noble` - unknown; unknown

```console
$ docker pull clojure@sha256:1cd0f741fc24cd92da9d1afc774ad33681bdbe4a4582a39e8133d0a5352a1478
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5907454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb9d4e41c7177764f12ccdfab096e217f6b73a0681ca5f61d9721bb89872d557`

```dockerfile
```

-	Layers:
	-	`sha256:09911a92e014e0c19b0381125df28ee122248e15e019d20f40f5029b3309ebf7`  
		Last Modified: Thu, 02 Jul 2026 05:54:10 GMT  
		Size: 5.9 MB (5891909 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b75ca36158efa7aef1cb421606955e4192d1cd63ba8325d36ab9b769de209ffb`  
		Last Modified: Thu, 02 Jul 2026 05:54:10 GMT  
		Size: 15.5 KB (15545 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-noble` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:b7c3d43e4cbfd47ea293de8da04b5118d3a4fd3aeb7b4691f657428f81195874
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.9 MB (263920022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c866986285e8fb553a8187d0cafc839323f57d3a0dda0017d668a02c2c2c4e8b`
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
# Thu, 02 Jul 2026 02:20:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:20:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:20:19 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:20:19 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:20:19 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Thu, 02 Jul 2026 02:20:26 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='4b2220e232a97997b436ca6ab15cbf70171ecff52958a46159dfa5a8c44ca4de';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        arm64)          ESUM='8d498ec88e1c1989fab95c6784240ab92d011e29c54d20a3f9c324b13476f9ad';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64el)          ESUM='3d043ae96d2343962bf2307d8c55f19849fbfa4c6be9fe164a77d79263f0d989';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        riscv64)          ESUM='40c6862e6aff63fe9a03856ba0506531b516a17bdb5018464e9006ea7f0f5fe4';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_riscv64_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='14dbe3cb226e64b945a36bea32686e8deec746504fe3ccee8de585c54af41ffd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:20:27 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:20:27 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:20:27 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 02 Jul 2026 02:20:27 GMT
CMD ["jshell"]
# Thu, 02 Jul 2026 05:54:09 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:54:09 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:54:23 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Thu, 02 Jul 2026 05:54:23 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:54:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:54:23 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:54:23 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e44d8ad4e270efacd36f517584c6feb1788e0364816a7e4be22b0526740f5a5`  
		Last Modified: Thu, 02 Jul 2026 02:20:46 GMT  
		Size: 24.1 MB (24125439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21b28e1a74a10875e1540aed637e5f38969aa78703e9a8da511731b8070b390e`  
		Last Modified: Thu, 02 Jul 2026 02:20:49 GMT  
		Size: 156.5 MB (156473379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d110e2a54aaad8a2f7fa35407bfea1c6f96ba3d42c39eea509df75dba898594`  
		Last Modified: Thu, 02 Jul 2026 02:20:45 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f84c941ad63c24a55d772e97464bc83d26ccd2e8d1406d0dfde39310ed5b7cb4`  
		Last Modified: Thu, 02 Jul 2026 02:20:45 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f1f6de38eb0eed16e66a1ee69573863b8adae1404f4c5a36ac1b2db30962d47`  
		Last Modified: Thu, 02 Jul 2026 05:54:41 GMT  
		Size: 54.4 MB (54433536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2cb6b43f80ca7aed4095519880c91f9268c51318fa785cf4cfff9181e86a296`  
		Last Modified: Thu, 02 Jul 2026 05:54:39 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c462d5b8120a23073398f986920adafaba6afed7439326af7e9dac65176bc798`  
		Last Modified: Thu, 02 Jul 2026 05:54:39 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-noble` - unknown; unknown

```console
$ docker pull clojure@sha256:7ca13e0827a5820c92b2fb7c0920ddc2cfe71e1c5c80fecbcc060bae890571e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6045159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5f6423141a9cf5317fafe9cf45f9f5e2b99e045085145a9cfd08664681d0242`

```dockerfile
```

-	Layers:
	-	`sha256:6db0a2ebfb98342e1c5c8c80938a6dfe9da8f6cd792db8cae8b815486a45c3cf`  
		Last Modified: Thu, 02 Jul 2026 05:54:40 GMT  
		Size: 6.0 MB (6029523 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f8b3eeca7522638a8f04d73abffecbe7bbcb3ec58f7dcc5fb6fd81ed263dc11`  
		Last Modified: Thu, 02 Jul 2026 05:54:39 GMT  
		Size: 15.6 KB (15636 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-noble` - linux; ppc64le

```console
$ docker pull clojure@sha256:bbb4880f2501f113285335593551266f074d9f63e3d45a4b8992b961c59404bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.0 MB (276003283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f6a6328913047f2504e79ab2f3953e6ef91b91d81a2cc1caa97d5fd9f4658ae`
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
ENV JAVA_VERSION=jdk-21.0.11+10
# Thu, 02 Jul 2026 02:21:49 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='4b2220e232a97997b436ca6ab15cbf70171ecff52958a46159dfa5a8c44ca4de';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        arm64)          ESUM='8d498ec88e1c1989fab95c6784240ab92d011e29c54d20a3f9c324b13476f9ad';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64el)          ESUM='3d043ae96d2343962bf2307d8c55f19849fbfa4c6be9fe164a77d79263f0d989';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        riscv64)          ESUM='40c6862e6aff63fe9a03856ba0506531b516a17bdb5018464e9006ea7f0f5fe4';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_riscv64_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='14dbe3cb226e64b945a36bea32686e8deec746504fe3ccee8de585c54af41ffd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:21:52 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:21:53 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:21:53 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 02 Jul 2026 02:21:53 GMT
CMD ["jshell"]
# Thu, 02 Jul 2026 07:24:06 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 07:24:06 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:32:19 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Thu, 02 Jul 2026 07:32:20 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 07:32:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:32:20 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:32:20 GMT
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
	-	`sha256:0dd46f3b2b199dee5f2be16d02360c14bcb0a929982543551c21d7cf2e3e9578`  
		Last Modified: Thu, 02 Jul 2026 02:22:32 GMT  
		Size: 158.3 MB (158345855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bf5d72c23131392c40af9c02169e18e5f437f7ede795b88488acd6139cbccb1`  
		Last Modified: Thu, 02 Jul 2026 02:22:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eeb978112c4fc19968092377185f3913cd90e11f457293fa6d5ac69b1d11af6`  
		Last Modified: Thu, 02 Jul 2026 02:22:24 GMT  
		Size: 2.3 KB (2282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65d8c566f51c8758e735cd882d4e0d572c6b4781b02488ff256dcae45518b02b`  
		Last Modified: Thu, 02 Jul 2026 07:32:54 GMT  
		Size: 59.3 MB (59285364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e8c391df248b5c7f9570ae7ecde15e3e67fa91404cbebb70bf70b6e53cd9233`  
		Last Modified: Thu, 02 Jul 2026 07:32:52 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f8c710f2563cf6a47de65634fa6e2b86647cfc950b26b12d131895b5708d079`  
		Last Modified: Thu, 02 Jul 2026 07:32:52 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-noble` - unknown; unknown

```console
$ docker pull clojure@sha256:c3303e1fe2c46ee8481ed1947f3c17cbe22362bed5936ec4d56ba2a89264afe1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (5958348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c5a0c308f6bab757f41a35b87626680df69e10a6d3ffbab41fbb1fb0cf3871a`

```dockerfile
```

-	Layers:
	-	`sha256:f2b776388ed738d792db03bfe377dc600f69ea4f954d47cb269151fa769cd45f`  
		Last Modified: Thu, 02 Jul 2026 07:32:52 GMT  
		Size: 5.9 MB (5942765 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:58700714318346d94e954ba687642cc591613cf0bde5a2b886d2beb5475f2395`  
		Last Modified: Thu, 02 Jul 2026 07:32:52 GMT  
		Size: 15.6 KB (15583 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-noble` - linux; s390x

```console
$ docker pull clojure@sha256:165bb86b9b53e8e8c4256b02eab849a42d71c4f96403cb334eb261bac1bce8c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.5 MB (255531303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc6b97deacf8504637f9ad11ecbb04d5b4519b870a51e2ae1373b203283aeb7e`
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
# Thu, 02 Jul 2026 02:13:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:13:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:13:21 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:13:21 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:13:21 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Thu, 02 Jul 2026 02:13:25 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='4b2220e232a97997b436ca6ab15cbf70171ecff52958a46159dfa5a8c44ca4de';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        arm64)          ESUM='8d498ec88e1c1989fab95c6784240ab92d011e29c54d20a3f9c324b13476f9ad';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64el)          ESUM='3d043ae96d2343962bf2307d8c55f19849fbfa4c6be9fe164a77d79263f0d989';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        riscv64)          ESUM='40c6862e6aff63fe9a03856ba0506531b516a17bdb5018464e9006ea7f0f5fe4';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_riscv64_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='14dbe3cb226e64b945a36bea32686e8deec746504fe3ccee8de585c54af41ffd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:13:26 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:13:26 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:13:26 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 02 Jul 2026 02:13:26 GMT
CMD ["jshell"]
# Thu, 02 Jul 2026 05:52:56 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:52:56 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:55:33 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Thu, 02 Jul 2026 05:55:33 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:55:33 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:55:33 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:55:33 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:017bf1549f7106f258688738600d68c2eebf2c29476ebfe929e2762f93f82609`  
		Last Modified: Tue, 23 Jun 2026 01:35:07 GMT  
		Size: 29.9 MB (29941314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3e42ef22fc1b043e98087fab01d9f3b9ffcf8782047a716743efd810c9e5d91`  
		Last Modified: Thu, 02 Jul 2026 02:13:50 GMT  
		Size: 22.1 MB (22087017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60b8dedfb3ff2de134f8f7f0cecb2929a0e8f6e1d0da6ff5e908fa573ffb55d2`  
		Last Modified: Thu, 02 Jul 2026 02:13:53 GMT  
		Size: 147.4 MB (147398848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0095eb35182b5cb51f8c191a668d3e4ddf047dbb84ce0603ce78e1c85717d623`  
		Last Modified: Thu, 02 Jul 2026 02:13:50 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:044d607e0018feb583e4f34994a07582fcd6966589dce5da5c4458be5daa37c0`  
		Last Modified: Thu, 02 Jul 2026 02:13:50 GMT  
		Size: 2.3 KB (2282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ee6f6c8a6088b74864564fbee969fb4f75f967f38e6f6e8bcf49bdeadd0605f`  
		Last Modified: Thu, 02 Jul 2026 05:55:55 GMT  
		Size: 56.1 MB (56100638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4a12211f5ac4a8b3baa95436e4e14d3f31301eb614d8bef7433059824ab376c`  
		Last Modified: Thu, 02 Jul 2026 05:55:54 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d12bdb9b48223d3bf3af4992ab55cbbcc09d2e21f41819c761ac851b7d9e2ad`  
		Last Modified: Thu, 02 Jul 2026 05:55:54 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-noble` - unknown; unknown

```console
$ docker pull clojure@sha256:48f1e0a0063315c231ec5eae5ed45a068015064a6f2b0378745ccbf9b5878fe0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5852801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2deaab9727021a5368b7d207decb57ad51c477cea644db1d809e42fef51b0d7`

```dockerfile
```

-	Layers:
	-	`sha256:fab757aafe1a787f7bacbf780521ff22f635e9199f5211fbd12a4699a06aea87`  
		Last Modified: Thu, 02 Jul 2026 05:55:54 GMT  
		Size: 5.8 MB (5837256 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3ce939224f808877fd6a891d879023dfd6b89097443589318ea020563cbec7a`  
		Last Modified: Thu, 02 Jul 2026 05:55:54 GMT  
		Size: 15.5 KB (15545 bytes)  
		MIME: application/vnd.in-toto+json
