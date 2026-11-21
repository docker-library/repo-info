## `clojure:temurin-21-tools-deps-noble`

```console
$ docker pull clojure@sha256:a1b2655d9b19609f20cb56df56de0e4503e515f8b557c3bdc530f2e4fcc71f7b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-noble` - linux; amd64

```console
$ docker pull clojure@sha256:51a31d1ff8dd51fa212086b3886c6206c0b71a27a180901ffb7ceb583a1efec6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.4 MB (269432031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dcb430b70afe9da8977da54308ba6c27461014b65b0668deba81e614ce7d5ff`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 17:43:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:43:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:43:34 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:43:34 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 17:43:34 GMT
ENV JAVA_VERSION=jdk-21.0.13.1+2
# Fri, 20 Nov 2026 17:43:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='bb8a93f9ae6e7a693b2b721e85dbeff26ae1a77447985a8d7afcdd9c7cf6222e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jdk_x64_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        arm64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        ppc64el)          ESUM='4d3d75690785cf593002446005427bb3c61de163f2469343572cdcb0d258ed62';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        riscv64)          ESUM='24b41c3ece0ec72b07f95e04f2a150f7b0c645040843d3c32299cdd1e19fcb2d';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jdk_riscv64_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        s390x)          ESUM='cb4cc8f52538c9a0e2bccdab5ea5e7cb1b14c1731e752f1f764ccc376fcb2225';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 17:43:41 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:43:41 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:43:41 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:43:41 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 18:10:38 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 18:10:38 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 18:10:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Fri, 20 Nov 2026 18:10:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 18:10:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 18:10:47 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 18:10:47 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c674486a5fe200ce5c3c99e8c47e93caa2b54f7ee1aa3a57a9b44f2488abc3aa`  
		Last Modified: Fri, 20 Nov 2026 17:43:58 GMT  
		Size: 29.1 MB (29055485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bddc1de6654108246119e447358c12aa933de32d33afed9849e76e9ee514eadb`  
		Last Modified: Fri, 20 Nov 2026 17:44:01 GMT  
		Size: 158.5 MB (158450363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2fa06d9d3a923bfdc2bcfb79b5270d78d7075f45f37363edee2bf5bc0669476`  
		Last Modified: Fri, 20 Nov 2026 17:43:57 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dedd369a1e7b0981b2d3f564af6289cfc9741371a8cd8e3562d07da35933d6d6`  
		Last Modified: Fri, 20 Nov 2026 17:43:57 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a2ecdf5d58bf1111a0f0bbebfc62ecfdb693b1084119113463b2f0d4f7392fe`  
		Last Modified: Fri, 20 Nov 2026 18:11:04 GMT  
		Size: 52.1 MB (52128715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:872979804d308b0c1982a50e6550b82da4bbb466ec74df3490615b1c9fbd1fd7`  
		Last Modified: Fri, 20 Nov 2026 18:11:02 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:529ea96245ffbc54e92776d0338b3320224147a39ddd9c8bf321fe8c5e5c3952`  
		Last Modified: Fri, 20 Nov 2026 18:11:02 GMT  
		Size: 902.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-noble` - unknown; unknown

```console
$ docker pull clojure@sha256:d4c60848c700ae082b55e1d50774ade70b6a452ff8969c853306260ede79c632
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5906081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5801df90720d3407c223d4d62df7a49d60b0073555a85ce9e01ef3a25f210dd5`

```dockerfile
```

-	Layers:
	-	`sha256:e0cffee1c067f29b67e24602a70c57e8a2027566d5cc76d8aa282a07dbd0c866`  
		Last Modified: Fri, 20 Nov 2026 18:11:02 GMT  
		Size: 5.9 MB (5890535 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:004aa224a66dc17256f424fa1266398d77e79f90ced82a354e20a41819b2f598`  
		Last Modified: Fri, 20 Nov 2026 18:11:02 GMT  
		Size: 15.5 KB (15546 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-noble` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4e9bfa44f09724f7c44d2d999d76888e745ff81a1c942b7e1d91f4cb6646a09e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.8 MB (267766167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a23cee28421ec04d620a6f461b46f5d08e4a4658041a4c67a4a5069955a8950b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:17:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:17:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:17:22 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:17:22 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:17:22 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Fri, 20 Nov 2026 03:17:30 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='d7f5d5cf865a2902b70ff549b97586a7d3f234e016f041ab447ea740c7d66d1c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='e3522e707fc7dbe2a72c30746b1e7068301a0213ecd213d4491f35a14eb55578';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='cfaedcc659213833ead9c2a50987d8dcbd0e7a2d82217abb43acb64c0dd3d8cc';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        riscv64)          ESUM='639d712c96899ec84e95394f90e8b4cc6a0ad0154bbec2fe657f8da00b182013';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_riscv64_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='597271ef81f7e4d0e2b86aa6e4d484af194253bdf238908a8394b78970dff713';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:17:31 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:17:31 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:17:31 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 03:17:31 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 04:41:02 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 04:41:02 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 04:41:14 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Fri, 20 Nov 2026 04:41:14 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 04:41:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 04:41:14 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 04:41:14 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a000e9b278efd8c4ef9b1689015c18a2e21610baa1ea45dd093736b674d6e4`  
		Last Modified: Fri, 20 Nov 2026 03:17:50 GMT  
		Size: 30.0 MB (30024317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cee1f1e29c3b67dae23c35b095377ad06dacfc0c2effdaf542dc84aa40fa689`  
		Last Modified: Fri, 20 Nov 2026 03:17:53 GMT  
		Size: 156.7 MB (156699715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f810e28e6bddc48f5ed847b1982e6fb1eb692f76b8180cac7f27996268646f4`  
		Last Modified: Fri, 20 Nov 2026 03:17:49 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc4810e87bcebaf23f59e707dd99fa81099346f17e4bc4adbace9425cc769237`  
		Last Modified: Fri, 20 Nov 2026 03:17:49 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:131b8a4f7579b3d1268c9e237387b2d5b3dbd76ec76f8351df1e27ace6ff0b65`  
		Last Modified: Fri, 20 Nov 2026 04:41:30 GMT  
		Size: 52.1 MB (52072648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6c0b9a191c67cf1ddc048a94165df219e6a5fe930485af44c2a0c0c304794ac`  
		Last Modified: Fri, 20 Nov 2026 04:41:28 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:716f554a2097cbfd3d82a3b21c0bb476030aa3624bf9ea9b6e6b707a1f520775`  
		Last Modified: Fri, 20 Nov 2026 04:41:28 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-noble` - unknown; unknown

```console
$ docker pull clojure@sha256:909802764ed5733ff4f4d92146f92cd566db3f7f002e421e3ceaa0cb71230256
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6043777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2b960c0566caf6e4fa627313480fbd8f6b6a4a0aaffa84feec721af9bde5b47`

```dockerfile
```

-	Layers:
	-	`sha256:10b422f31f4c2cfda79c4e6c458f6ebd3cb631be589624a83a1e7f3137558120`  
		Last Modified: Fri, 20 Nov 2026 04:41:28 GMT  
		Size: 6.0 MB (6028141 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38c55bb8800af387837a0953cd314388240c33897fe99a25611327af83c716df`  
		Last Modified: Fri, 20 Nov 2026 04:41:28 GMT  
		Size: 15.6 KB (15636 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-noble` - linux; ppc64le

```console
$ docker pull clojure@sha256:3fa66e00f7df4bba9f424422094359276416fa3cab2b32ed5d828a1b228dc09e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.7 MB (279706441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ac7bf5b523b84f0ea8bd48484b4941fb3270260f885a04439f26533ed23f0fd`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 10 Nov 2026 18:32:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:32:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:32:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:32:33 GMT
ADD file:9fc87f5d4993c1f29848a41be6f1c74d6ab81fed009749aa0f9d0206b6b19eb0 in / 
# Tue, 10 Nov 2026 18:32:34 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:25:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:25:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:25:35 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:25:35 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:25:35 GMT
ENV JAVA_VERSION=jdk-21.0.13.1+2
# Fri, 20 Nov 2026 17:52:00 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='bb8a93f9ae6e7a693b2b721e85dbeff26ae1a77447985a8d7afcdd9c7cf6222e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jdk_x64_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        arm64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        ppc64el)          ESUM='4d3d75690785cf593002446005427bb3c61de163f2469343572cdcb0d258ed62';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        riscv64)          ESUM='24b41c3ece0ec72b07f95e04f2a150f7b0c645040843d3c32299cdd1e19fcb2d';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jdk_riscv64_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        s390x)          ESUM='cb4cc8f52538c9a0e2bccdab5ea5e7cb1b14c1731e752f1f764ccc376fcb2225';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 17:52:03 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:52:04 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:52:04 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:52:04 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 19:33:31 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 19:33:31 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 19:43:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Fri, 20 Nov 2026 19:43:19 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 19:43:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 19:43:20 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 19:43:20 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6c769a4f95bc536aae313c2bf7fcbf46e8cc18ed65fefad2a8ccfc1b5b7a63b4`  
		Last Modified: Tue, 10 Nov 2026 20:09:39 GMT  
		Size: 34.4 MB (34406239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab5e05b6669dd60f963df995e3dc76ab61a0333c611daedbab6ff1f1498363ed`  
		Last Modified: Fri, 20 Nov 2026 03:26:39 GMT  
		Size: 30.9 MB (30944154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd14a3051bcff93f1a4167aa15423d1f5143b9f217939dafd032e61158a0215f`  
		Last Modified: Fri, 20 Nov 2026 17:52:58 GMT  
		Size: 157.6 MB (157607405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d89f9810f78627d8f9a9d5f832b797ea1d4cdb6396a175f15f141b94517a6a49`  
		Last Modified: Fri, 20 Nov 2026 17:52:54 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:782bbeafe27292b87c6de2aa976f22bebcbaeedcc61c736c5145f81934d028fe`  
		Last Modified: Fri, 20 Nov 2026 17:52:54 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34e84fed741fab1ff06e0363fc2fad42a8952794ea15acc576d8f496e7dcc9ec`  
		Last Modified: Fri, 20 Nov 2026 19:44:03 GMT  
		Size: 56.7 MB (56744469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5db3c29ca571ec7654f07193563fb139e1b825442ed3f7252e6643c3fd2e1f9d`  
		Last Modified: Fri, 20 Nov 2026 19:44:02 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58456af8057c6f2d20ba16a24c38bc86fa036f8a0d4953a1b0f79b5151c036f3`  
		Last Modified: Fri, 20 Nov 2026 19:44:02 GMT  
		Size: 902.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-noble` - unknown; unknown

```console
$ docker pull clojure@sha256:363b7996ed2c28774222d421c9451cb08a76dfb8fb876d3b5f3e97a51df59a25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (5955729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8466473b32dbd39f0e0df235f2fac97554292e044d3f9f7a29ebd6dfd6fdd54`

```dockerfile
```

-	Layers:
	-	`sha256:2f7bcba2c05d651af137ce04e8b672470f6923bec5b44c7be22d9d9ba1daa527`  
		Last Modified: Fri, 20 Nov 2026 19:44:02 GMT  
		Size: 5.9 MB (5940145 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e1a237432bc5aadb655d1bebfa3f0e130f606ee7f66fd932cdd80d63fb5057f`  
		Last Modified: Fri, 20 Nov 2026 19:44:02 GMT  
		Size: 15.6 KB (15584 bytes)  
		MIME: application/vnd.in-toto+json
