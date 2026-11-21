## `clojure:temurin-25-noble`

```console
$ docker pull clojure@sha256:3eaee92263afef6a9a5d30791609030d9350519ed2a28e4b0dc4098be6d01b07
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-noble` - linux; amd64

```console
$ docker pull clojure@sha256:8e7ad14c425dd7154670138f1b4c31c8b9d3c4e858c0c4df0dd34fdcc5372788
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.5 MB (201480608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d01d179e368d92d25a7f3947d00c5e85d422cd517e53f47e6b5b9e9238c3b770`
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
# Fri, 20 Nov 2026 17:40:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:40:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:40:48 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:40:48 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 17:40:48 GMT
ENV JAVA_VERSION=jdk-25.0.5.1+2
# Fri, 20 Nov 2026 17:41:04 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='760f91b22c3efc9bd1b64ff950598231be82928cc807e30691a0e7a2995a62c0';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_x64_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        arm64)          ESUM='c37879e0d08eeb1baa69fcbb7758cd455b7b1c0ceab1e2a136ccb1713c530984';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        ppc64el)          ESUM='cfffd074eb1fb7a7b38cae9341363c1c35094a5b5f7d49c08b406159dae65872';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        riscv64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        s390x)          ESUM='01da4a2bbc08b3d7afb44de5bb83e2fbd838e06b83aabf3ca0204f916438e339';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 17:41:05 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:41:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:41:05 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:41:05 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 17:50:45 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 17:50:45 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 17:50:57 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Fri, 20 Nov 2026 17:50:57 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 17:50:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 17:50:57 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 17:50:57 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc7d15801c3bc7159afc4f64addd88d1af5988be32aba53f3193bc73c074b58e`  
		Last Modified: Fri, 20 Nov 2026 17:41:23 GMT  
		Size: 23.5 MB (23543716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0efc318c609d2f391bd98143c558a0562663712ebda504c6c1a92da71fbccee3`  
		Last Modified: Fri, 20 Nov 2026 17:41:25 GMT  
		Size: 92.7 MB (92737774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:885025ea8eb35d2d40e9816c308ecbb2a354659c17f8d4893b3a8d4871a05f5c`  
		Last Modified: Fri, 20 Nov 2026 17:41:22 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe69d968f2f8cd9bdf7ebca0463d645e052a6ff94409becae7769cc3af78c947`  
		Last Modified: Fri, 20 Nov 2026 17:51:11 GMT  
		Size: 55.4 MB (55401778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54957583f780373d15b21e6c3f560cec8f4509313683ecea771dd9bf855093f2`  
		Last Modified: Fri, 20 Nov 2026 17:51:10 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:335ebdf4405077cdc16146f95c26c55968bacce41616970907d39a8a8b10042b`  
		Last Modified: Fri, 20 Nov 2026 17:51:10 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-noble` - unknown; unknown

```console
$ docker pull clojure@sha256:80704bf8b88c8366931ef36db0403237565302179b7046780a956fdb3dd90ad7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5790707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42af23f74779db90b08b4a24f1e2ed9b1dff0d353e8536360b0e26b422d0201c`

```dockerfile
```

-	Layers:
	-	`sha256:cdc08070e464d2c61e572756eb651502fc0283f13e0029cc2da36c06dee54964`  
		Last Modified: Fri, 20 Nov 2026 17:51:10 GMT  
		Size: 5.8 MB (5775172 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d9189c8cd22de582850dc6210793bf716b97efc1d6cebe1b83a5e022c1e1219d`  
		Last Modified: Fri, 20 Nov 2026 17:51:10 GMT  
		Size: 15.5 KB (15535 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-noble` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:55e608fde40fc42a86904570cc9368e00caea586324927f1bdace4d51937da9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.5 MB (200527281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4032f649717ae14af98d5508a9f2c7fd4d7b63e436cf129f2a636e6abb90567`
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
# Fri, 20 Nov 2026 17:40:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:40:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:40:54 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:40:54 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 17:40:54 GMT
ENV JAVA_VERSION=jdk-25.0.5.1+2
# Fri, 20 Nov 2026 17:41:25 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='760f91b22c3efc9bd1b64ff950598231be82928cc807e30691a0e7a2995a62c0';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_x64_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        arm64)          ESUM='c37879e0d08eeb1baa69fcbb7758cd455b7b1c0ceab1e2a136ccb1713c530984';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        ppc64el)          ESUM='cfffd074eb1fb7a7b38cae9341363c1c35094a5b5f7d49c08b406159dae65872';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        riscv64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        s390x)          ESUM='01da4a2bbc08b3d7afb44de5bb83e2fbd838e06b83aabf3ca0204f916438e339';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 17:41:26 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:41:26 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:41:26 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:41:26 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 17:57:47 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 17:57:47 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 17:58:07 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Fri, 20 Nov 2026 17:58:07 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 17:58:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 17:58:07 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 17:58:07 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03b5570ed46ef75ff10d7f174ed02feb877cdc4c3d909051cfb98557bbe83558`  
		Last Modified: Fri, 20 Nov 2026 17:41:44 GMT  
		Size: 24.5 MB (24486118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3037a945dbcac0e95ef805819079820b6f9dd691bd5b5829805e773811231606`  
		Last Modified: Fri, 20 Nov 2026 17:41:45 GMT  
		Size: 91.7 MB (91680854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6c9a3a2dc782dfb71038bfd1e1db0a33e58efc2c74eee24da19a12cc9a3e102`  
		Last Modified: Fri, 20 Nov 2026 17:41:43 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15064b1d94d630c65a83c1510068ce2f20467a4788943653a3b60b055fe4f471`  
		Last Modified: Fri, 20 Nov 2026 17:58:22 GMT  
		Size: 55.4 MB (55390948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55edab99ba5973b6e66dd63702878b1c682da5884e5308f88abdf061a8093604`  
		Last Modified: Fri, 20 Nov 2026 17:58:21 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59d064530acedc25900daaa918136c7fbbbee567ee93405c0fca55ecbec3575a`  
		Last Modified: Fri, 20 Nov 2026 17:58:21 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-noble` - unknown; unknown

```console
$ docker pull clojure@sha256:1caefdcb4a6409b4023fe31dcb494748279847f513168feb3bcaa19118559e63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5928416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:341c34c5eaa2af94f0b6645f804ab18d0e4f027f7eba8bf61b7185ccab83bba5`

```dockerfile
```

-	Layers:
	-	`sha256:c171edeabad93e905e2096f6f0926e474207fe97f08d78f0ca809da72780c41d`  
		Last Modified: Fri, 20 Nov 2026 17:58:21 GMT  
		Size: 5.9 MB (5912789 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:11572f3632563c2fa63d60f71cec8f5093e05f711b514fd4999b7583010ee2a5`  
		Last Modified: Fri, 20 Nov 2026 17:58:21 GMT  
		Size: 15.6 KB (15627 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-noble` - linux; ppc64le

```console
$ docker pull clojure@sha256:9c00246259f80b9f3bffc7d5199c84ee81982d96c87fc79e3d02bd1a7ba11d38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.6 MB (209555471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2a2d9901e51973e20d909d10366b58d812f569b823ccb5a4aa09df4cb92ffc7`
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
# Fri, 20 Nov 2026 03:27:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:27:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:27:34 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:27:34 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:27:34 GMT
ENV JAVA_VERSION=jdk-25.0.5.1+2
# Fri, 20 Nov 2026 17:39:35 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='760f91b22c3efc9bd1b64ff950598231be82928cc807e30691a0e7a2995a62c0';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_x64_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        arm64)          ESUM='c37879e0d08eeb1baa69fcbb7758cd455b7b1c0ceab1e2a136ccb1713c530984';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        ppc64el)          ESUM='cfffd074eb1fb7a7b38cae9341363c1c35094a5b5f7d49c08b406159dae65872';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        riscv64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        s390x)          ESUM='01da4a2bbc08b3d7afb44de5bb83e2fbd838e06b83aabf3ca0204f916438e339';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 17:39:39 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:39:40 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:39:40 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:39:40 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 18:07:15 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 18:07:15 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 18:09:35 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Fri, 20 Nov 2026 18:09:35 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 18:09:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 18:09:36 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 18:09:36 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6c769a4f95bc536aae313c2bf7fcbf46e8cc18ed65fefad2a8ccfc1b5b7a63b4`  
		Last Modified: Tue, 10 Nov 2026 20:09:39 GMT  
		Size: 34.4 MB (34406239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8734fe1a0c87357688d7367bdc2cb74a7ff2ef439f8a29f0deb04d91f74d47ec`  
		Last Modified: Fri, 20 Nov 2026 03:28:52 GMT  
		Size: 24.2 MB (24181439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:577f18300e98aa950d4ae91cb0f272a305e4db0f2ef3e022351b110d7901aa39`  
		Last Modified: Fri, 20 Nov 2026 17:40:25 GMT  
		Size: 90.3 MB (90256884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad018cf97eb87d41a57049c2aefce217eff70123d108e19a809281bc77cd4f05`  
		Last Modified: Fri, 20 Nov 2026 17:40:23 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd8624146a9cb755f66dc970a7f5e8d51436ae7f0905b02cdd4ca40c14c9e5a6`  
		Last Modified: Fri, 20 Nov 2026 18:10:09 GMT  
		Size: 60.7 MB (60706862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c53e49f959ca34ebdd9878a6eef4f9c3e1a26669633a409b3213c75bd72843eb`  
		Last Modified: Fri, 20 Nov 2026 18:10:07 GMT  
		Size: 618.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:050fb5c8f990750d9cf0aaf5c133300c487d79d7b0be6a8ccd285118a4f9cec4`  
		Last Modified: Fri, 20 Nov 2026 18:10:07 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-noble` - unknown; unknown

```console
$ docker pull clojure@sha256:b86d343e3b42a5a0b53355d15aca0c3eca8d386098acb3252f1d9329467918bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5823081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c28b68595bbab3b18d8cc982df4ac5833982611b9db936870574a598e87d816`

```dockerfile
```

-	Layers:
	-	`sha256:7faa685ee98a50a2a5c4143cd725c0a5a86721572e80def92863b1aa6faa207b`  
		Last Modified: Fri, 20 Nov 2026 18:10:08 GMT  
		Size: 5.8 MB (5807509 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6eb6cfb272babb11040961f4b2ccfd84bef66d5666a3e441e69b738ee4a60ca`  
		Last Modified: Fri, 20 Nov 2026 18:10:07 GMT  
		Size: 15.6 KB (15572 bytes)  
		MIME: application/vnd.in-toto+json
