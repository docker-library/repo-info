## `clojure:temurin-21-tools-deps-1.12.6.1673-noble`

```console
$ docker pull clojure@sha256:494e9492f5aaaed38751c3aba45496204d798b85490e04a343fd75c53a51d567
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-1.12.6.1673-noble` - linux; amd64

```console
$ docker pull clojure@sha256:7679db1e30f2e670ce5215d78a71e8a4587b1f6180fd26a479f91b97f5bbd4c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.9 MB (265906742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cef77a79d4d36c76ca8a0194b7d1777ccb1c99bf27bce5f777ef1395aa690a7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 18:25:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:25:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:25:07 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:25:07 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:25:07 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Fri, 21 Aug 2026 18:25:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='e4446ff06a276155697597cc0f1b15da004ff083f4964a35271ecee567177370';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        arm64)          ESUM='eba38e871b02d407897bfe017ea35352dfc1420ef6d2112425b0c67325ca509d';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64el)          ESUM='082dac6781cd86c1c1903608b8f354c6dc453313d81881a1e87b9a22663ac5ca';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        riscv64)          ESUM='86f836b5a94b3354f236b72339d04418fea178c41624637dd94e510f6597c372';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_riscv64_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2a57a86afa2e461757acc6c2bd198a3fdae4393d8d37fd66b6244e713c3c42ea';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 18:25:15 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:25:15 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:25:15 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:25:15 GMT
CMD ["jshell"]
# Fri, 04 Sep 2026 00:03:10 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:03:10 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:03:29 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Fri, 04 Sep 2026 00:03:29 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:03:29 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:03:29 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:03:29 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b31ee5335cc859ac582c9a4043918fba00087e7d800909381874b459878f52c`  
		Last Modified: Fri, 21 Aug 2026 18:25:32 GMT  
		Size: 22.9 MB (22928456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:887642163ab8a5862b92cfba1d05411fc8810a79d6de0edfdbada79d635e2b8f`  
		Last Modified: Fri, 21 Aug 2026 18:25:35 GMT  
		Size: 158.1 MB (158123337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48b7756512f94eac42020a2d9ae9b3479831acd498e854b5d78a439f5408bb3a`  
		Last Modified: Fri, 21 Aug 2026 18:25:31 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6611c962e4e868c8389afb820aefdb6b9762a3732109b8c7bb8f08b38e3689c2`  
		Last Modified: Fri, 21 Aug 2026 18:25:29 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:022683a7c5be887c61f18d97a32aa58e730c32022ac4b9f23a95ef9083cfe0c8`  
		Last Modified: Fri, 04 Sep 2026 00:03:46 GMT  
		Size: 55.1 MB (55098475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e8e70ad3f388797fd0f11a5d1968732fc518e89849d272f35586e8b4e4df9b6`  
		Last Modified: Fri, 04 Sep 2026 00:03:44 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a55f4c190adf061cd506d048e0ac08f211b59cd78f9151d44e90b58f2fe6467`  
		Last Modified: Fri, 04 Sep 2026 00:03:44 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-noble` - unknown; unknown

```console
$ docker pull clojure@sha256:a24623ee50dc51cfc40bfa520aeb219b74faf775927c2f30259aad4dc0a77ea7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5906041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72628143b33ad91074c60bccf68cbcb75a9bbde17c7a6d431b800c3309f16652`

```dockerfile
```

-	Layers:
	-	`sha256:7c116e2d346214a77c1f84cb64c9d868e4437fca6fce10c4a578867f1a58832a`  
		Last Modified: Fri, 04 Sep 2026 00:03:44 GMT  
		Size: 5.9 MB (5890497 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dcded39df39ee6251545472ef729921e607f2d1a5d9511df12cd9a52fe9cfdf1`  
		Last Modified: Fri, 04 Sep 2026 00:03:44 GMT  
		Size: 15.5 KB (15544 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.6.1673-noble` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:6601e983a7c19a7d7439a917f0fbad4848baf3b17222bf76ffb0c5851f5ffa6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.4 MB (264414206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64c4961517e2a778bb91bc58f1e2f4796f5ac82b07a59d54e0e15e66d012a55b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 18:28:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:28:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:28:01 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:28:01 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:28:01 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Fri, 21 Aug 2026 18:28:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='e4446ff06a276155697597cc0f1b15da004ff083f4964a35271ecee567177370';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        arm64)          ESUM='eba38e871b02d407897bfe017ea35352dfc1420ef6d2112425b0c67325ca509d';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64el)          ESUM='082dac6781cd86c1c1903608b8f354c6dc453313d81881a1e87b9a22663ac5ca';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        riscv64)          ESUM='86f836b5a94b3354f236b72339d04418fea178c41624637dd94e510f6597c372';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_riscv64_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2a57a86afa2e461757acc6c2bd198a3fdae4393d8d37fd66b6244e713c3c42ea';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 18:28:09 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:28:09 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:28:09 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:28:09 GMT
CMD ["jshell"]
# Fri, 04 Sep 2026 00:07:16 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:07:16 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:07:37 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Fri, 04 Sep 2026 00:07:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:07:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:07:37 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:07:37 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9de6538333c2917d70d4ec085a3ae25b26b2a473d13be57c8d3cc871182a9806`  
		Last Modified: Fri, 21 Aug 2026 18:28:27 GMT  
		Size: 24.1 MB (24126629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:366b33a38175f328e181fb5fe5dae3a8757635da96078e0cb6ff1beea31a44f4`  
		Last Modified: Fri, 21 Aug 2026 18:28:30 GMT  
		Size: 156.4 MB (156406092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79d91ab1342beb25c739ef077515486750e3ae53a3997d34fd57ab743f342a0f`  
		Last Modified: Fri, 21 Aug 2026 18:28:26 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4b4bf93739159a3ffca13e0302c260b63a881af0977e60cc37a7b402ff19dad`  
		Last Modified: Fri, 21 Aug 2026 18:28:22 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e36adc2a991e35805b93271910d5bca66434511a8b5fd0ee1adddb4e301ec15`  
		Last Modified: Fri, 04 Sep 2026 00:07:54 GMT  
		Size: 55.0 MB (54990577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6462da79184dae8e11084a376712249b6c65384d9e4217555366c964a1d5f3d4`  
		Last Modified: Fri, 04 Sep 2026 00:07:53 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4760208ff5c46a85a646ff9dec90ad2fe6c147723c31110bc2c5db59204f7e79`  
		Last Modified: Fri, 04 Sep 2026 00:07:52 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-noble` - unknown; unknown

```console
$ docker pull clojure@sha256:8f8ba696de465209bed1928d0a9d634598ae72a24fad6204f28565c3d6db7303
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6043747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa67d522069625eedc14d7763bb24ded7bc4acd9d47a8e18be35213942c14984`

```dockerfile
```

-	Layers:
	-	`sha256:e311f6a6f179634545303b11244e631a90c4e0b424f96c00cb8ec09a2125e974`  
		Last Modified: Fri, 04 Sep 2026 00:07:53 GMT  
		Size: 6.0 MB (6028111 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:184fe822075486fe92f9af7340bb0985a1a53729e5e821cf064710ed02f1b78f`  
		Last Modified: Fri, 04 Sep 2026 00:07:53 GMT  
		Size: 15.6 KB (15636 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.6.1673-noble` - linux; ppc64le

```console
$ docker pull clojure@sha256:f29403baa9e43a57e2a05a35cdf4c748753b3c828bb96b0630a9971a20ab36ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.6 MB (276646610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ade00f8e9ba811319c03467b231ecd2a77e8dbf3743da2f51a6b91169f594c5b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 17 Aug 2026 13:37:16 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:37:16 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:37:16 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:37:19 GMT
ADD file:2c1f3ca3b8968d5c5bcce4fb1290d9ca7224bbde9578f0051bf2d5493b3b6481 in / 
# Mon, 17 Aug 2026 13:37:20 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 21:12:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 19 Aug 2026 21:12:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 21:12:30 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 19 Aug 2026 21:12:30 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 21:12:30 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Fri, 21 Aug 2026 20:39:00 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='e4446ff06a276155697597cc0f1b15da004ff083f4964a35271ecee567177370';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        arm64)          ESUM='eba38e871b02d407897bfe017ea35352dfc1420ef6d2112425b0c67325ca509d';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64el)          ESUM='082dac6781cd86c1c1903608b8f354c6dc453313d81881a1e87b9a22663ac5ca';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        riscv64)          ESUM='86f836b5a94b3354f236b72339d04418fea178c41624637dd94e510f6597c372';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_riscv64_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2a57a86afa2e461757acc6c2bd198a3fdae4393d8d37fd66b6244e713c3c42ea';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 20:39:03 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 20:39:03 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 20:39:03 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 20:39:03 GMT
CMD ["jshell"]
# Fri, 04 Sep 2026 00:22:31 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:22:31 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:23:21 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Fri, 04 Sep 2026 00:23:22 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:23:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:23:22 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:23:22 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:9ce277f493517cc144a5fc2f41269e529e99b662f089df362b22f62d1fbb7436`  
		Last Modified: Mon, 17 Aug 2026 14:27:41 GMT  
		Size: 34.3 MB (34311195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d041d9a94fe02e49038880c229adf9a014464e2a8195cc8fb9e356ab07059a63`  
		Last Modified: Wed, 19 Aug 2026 21:13:15 GMT  
		Size: 24.1 MB (24051334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7ce91fab476c94c980b81fd7844a809b4deee068316fc0015e170c4a3dd01ef`  
		Last Modified: Fri, 21 Aug 2026 20:39:40 GMT  
		Size: 158.3 MB (158287653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d74395c0ebb824e207abf77eab3ee2b7c1e725aa69ccd01fcf7aca0603e6189`  
		Last Modified: Fri, 21 Aug 2026 20:39:36 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8c67dfceb560b4c929101b2522d8df413d77592079f4f51a93b5b53735549aa`  
		Last Modified: Fri, 21 Aug 2026 20:39:36 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32f3147c0793a4c221f483a4b3c6ba42870e31fa6529e6cd05748259d0284b9e`  
		Last Modified: Fri, 04 Sep 2026 00:24:01 GMT  
		Size: 60.0 MB (59992756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bb1a51e68a82c912750270dd5d5c50197e3ae9b67426b979c08334bfd8f59b7`  
		Last Modified: Fri, 04 Sep 2026 00:23:59 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2f531e9f696dc54ad522cd7d0b511c1e7ff70fc041d0436c156063186c89ba5`  
		Last Modified: Fri, 04 Sep 2026 00:23:59 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-noble` - unknown; unknown

```console
$ docker pull clojure@sha256:a8f6725517c91829a9df8b69d72f1d871dec7617f099f4a2523ca117af0854d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (5956935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d371519b91637e64e3857ac078c5a912ba567300f9b8e8dfce062de67fbb120a`

```dockerfile
```

-	Layers:
	-	`sha256:e45f263d9cd6af6f2ddcaeece9b24ad17f91f24866e6225e504d45546621a13d`  
		Last Modified: Fri, 04 Sep 2026 00:23:59 GMT  
		Size: 5.9 MB (5941353 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c13a10bdd63e9c19ab15275c24f926c7b993646b317b62e2fef86abc8530549`  
		Last Modified: Fri, 04 Sep 2026 00:23:59 GMT  
		Size: 15.6 KB (15582 bytes)  
		MIME: application/vnd.in-toto+json
