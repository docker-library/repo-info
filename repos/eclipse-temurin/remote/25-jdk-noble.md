## `eclipse-temurin:25-jdk-noble`

```console
$ docker pull eclipse-temurin@sha256:4ddc1a8bdaf283421df5487411aff10b797ccf1e06a339041005114c8f489b5c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `eclipse-temurin:25-jdk-noble` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:da37a6ca0670f556923ea348e399c77c46642f0c6c8a1177bde9ef3d7ee018ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.1 MB (146077282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c768b9c3e054f08ce3493d81e9c1611feaffedf10f68e89531dad933e72861c1`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

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

### `eclipse-temurin:25-jdk-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:2329929050bb9c57d7a77b2cad87fec4571dcf7d0c13bc3bf3b22f9aa1c83297
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3270742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da9b22b1788f45ed81a730cbba6daecea540f89287e09d4a19969b68c9a78b0d`

```dockerfile
```

-	Layers:
	-	`sha256:ba8ae4f83266a2b91cb50e1e1dbefa822914dc5ba75e2b165d47f6796ed5ed82`  
		Last Modified: Fri, 20 Nov 2026 17:41:22 GMT  
		Size: 3.2 MB (3246316 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d80e8f9d2a652cf49fcceb9294ab99bd85bd1c6a3b2321e1003f897223557b90`  
		Last Modified: Fri, 20 Nov 2026 17:41:22 GMT  
		Size: 24.4 KB (24426 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jdk-noble` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:085011b2dc37370a0bf7b5770b8f222271b6cd0cbe198bad5868583660ef14cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.1 MB (145134784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c46730719e44b5f3fd0272708c09f459fe82b0a5f4a8a2ab9639f4b057b7773e`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

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

### `eclipse-temurin:25-jdk-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:d1b4da8695e1c66928ef6de43d317f71dcb1fab43c81dd83c41be1ad9426583f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3402351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b54b8e1157d12cf976e94291c499920471eaa0fc42461dfdcc63da8422b68cf`

```dockerfile
```

-	Layers:
	-	`sha256:011682afa1bd38ee0692935a8110a35709f31955a3b93a24b1fa62b47f1fd969`  
		Last Modified: Fri, 20 Nov 2026 17:41:43 GMT  
		Size: 3.4 MB (3377803 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3ba85e24a26f9249cdd83eaeb643e68aff3b264c92e9478acbb2db42d328cc1`  
		Last Modified: Fri, 20 Nov 2026 17:41:43 GMT  
		Size: 24.5 KB (24548 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jdk-noble` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:84ac893d279c7717c26d8adb56b17935a3b8de3296e46f8d9ad8e6e69d3d5ce3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148847058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43908a7b621bdf804fce2ba8357f58a378fac636647dcc5f31566b40c89d27cb`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

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

### `eclipse-temurin:25-jdk-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:e0e726a8126d4ef3cf74fd2a6529b3c759bce339db41c46b4a7534955b269025
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3299842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:385de49af9c749de55656a3a8d5b16e3aa81fed01e26db3c05334f173945420d`

```dockerfile
```

-	Layers:
	-	`sha256:479137182d1a69bd5b179568bec0c6a9311a2d48d89c14ed6101905695e82fdd`  
		Last Modified: Fri, 20 Nov 2026 17:40:23 GMT  
		Size: 3.3 MB (3275374 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f745f735289ee2ada8e10f7afbd350344a7af0889a96c54c3179a346761e0806`  
		Last Modified: Fri, 20 Nov 2026 17:40:23 GMT  
		Size: 24.5 KB (24468 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jdk-noble` - linux; riscv64

```console
$ docker pull eclipse-temurin@sha256:3bc527e8c15903c0f5f3a29688a0bcfaebe8b693283cb10a304e53aa7180ea45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (140952954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:263df17ce234dfc93a84339b6e1b22ba20aee94e0d562b89b8eadec921d77bb8`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 10 Nov 2026 09:11:18 GMT
ARG RELEASE
# Tue, 10 Nov 2026 09:11:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 09:11:20 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 09:12:35 GMT
ADD file:9216d1af3350872b7407d11bbaff1b1eade0611505729393f87dae6fb7fe366f in / 
# Tue, 10 Nov 2026 09:12:41 GMT
CMD ["/bin/bash"]
# Thu, 19 Nov 2026 03:34:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 03:34:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 03:34:46 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 19 Nov 2026 03:34:46 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 19 Nov 2026 03:34:46 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Thu, 19 Nov 2026 03:37:15 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='68982529869257d0ee6b824ec5aa270ff8b118bb438670da0b97ebdab178d7fb';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_linux_hotspot_25.0.5_8.tar.gz';          ;;        arm64)          ESUM='bb5b2ded252f21c6090cf780b0a408ad0d83bbb557e702955643557f13231880';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.5_8.tar.gz';          ;;        ppc64el)          ESUM='47825886fd72e86c94e6fd1687a13bebb4ae729e24d2788be0d294589bf07297';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.5_8.tar.gz';          ;;        riscv64)          ESUM='21d9ee84f64d845e7de888f86cc2abe3256c75853a0d5abe7fd42d6526374e90';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_riscv64_linux_hotspot_25.0.5_8.tar.gz';          ;;        s390x)          ESUM='dfed6b7b428852ab1a3b9eb7734264f4d4cc163686e4136f93b9942f3d8f44cd';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 19 Nov 2026 03:37:30 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 19 Nov 2026 03:37:30 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 19 Nov 2026 03:37:30 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 19 Nov 2026 03:37:30 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c1ea9e361ad6aa342c72500d92e9e6e1347fa35a4475914ad2226cc298516f11`  
		Last Modified: Sun, 15 Nov 2026 21:50:00 GMT  
		Size: 31.1 MB (31074654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f05565ff0eb5110d105933ec9a1818dc1b8e5ff9625dc5120c5d9be2fdf0a17`  
		Last Modified: Thu, 19 Nov 2026 03:40:57 GMT  
		Size: 18.7 MB (18709300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96ab0740039f80389ab4509b30bd08771c86b9a72719705278d9812f790c313f`  
		Last Modified: Thu, 19 Nov 2026 03:41:08 GMT  
		Size: 91.2 MB (91166502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc24e8c8a8b9fc8b0a73b8cfc59f5a28ccdb70b4c7459dfa91eada983a07c18d`  
		Last Modified: Thu, 19 Nov 2026 03:40:51 GMT  
		Size: 2.5 KB (2466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jdk-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:991908c0a231fb1e2f8e828ab989060f11f915561b0ddb74a434574ed3dc166b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3359326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e499f03b6b961f5522f089572bef0e6e7b2aaddd4918b7f975b26a2933ad1b82`

```dockerfile
```

-	Layers:
	-	`sha256:e3ba0f06b5315d538586ee981a06e6b68ece9d666bbdf60d86a58f26985648a7`  
		Last Modified: Thu, 19 Nov 2026 03:40:53 GMT  
		Size: 3.3 MB (3334858 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:403b8a9dc7dcc31426c57f5c345ac856e179337269d8113e0b4313bd33e39734`  
		Last Modified: Thu, 19 Nov 2026 03:40:51 GMT  
		Size: 24.5 KB (24468 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jdk-noble` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:a7f0333e13a0bdc6d7c23f57ef39bb0911f5cc758dfddd37abd477d65aa5b32c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.7 MB (139677611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43f43e8c4c98beb3279de5f05360ebf73d633ef864c09f5e706983bbadbfae5e`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 10 Nov 2026 18:30:54 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:30:54 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:30:54 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:30:56 GMT
ADD file:f57d73889514e35770bca8a6b376ae28a49d35f7eca0530120c0e5edda118257 in / 
# Tue, 10 Nov 2026 18:30:56 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 17:53:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:53:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:53:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:53:43 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 17:53:43 GMT
ENV JAVA_VERSION=jdk-25.0.5.1+2
# Fri, 20 Nov 2026 17:54:15 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='760f91b22c3efc9bd1b64ff950598231be82928cc807e30691a0e7a2995a62c0';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_x64_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        arm64)          ESUM='c37879e0d08eeb1baa69fcbb7758cd455b7b1c0ceab1e2a136ccb1713c530984';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        ppc64el)          ESUM='cfffd074eb1fb7a7b38cae9341363c1c35094a5b5f7d49c08b406159dae65872';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        riscv64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        s390x)          ESUM='01da4a2bbc08b3d7afb44de5bb83e2fbd838e06b83aabf3ca0204f916438e339';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 17:54:18 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:54:19 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:54:19 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:54:19 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d6a4828736418640f88890fd03d6d03e5c40e83e24d598ed323f41ba7e349b4f`  
		Last Modified: Tue, 10 Nov 2026 20:09:53 GMT  
		Size: 30.0 MB (29967433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bee2bee588c405e54ef9fe38c8fd2edeacc1f3b4177348966c5714f2d02c78fa`  
		Last Modified: Fri, 20 Nov 2026 17:54:54 GMT  
		Size: 21.5 MB (21512733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2b31ddf85c2b05149bee79dc2b8e7689b9bb9474d99b0b409a061efb24ad5e5`  
		Last Modified: Fri, 20 Nov 2026 17:54:56 GMT  
		Size: 88.2 MB (88194952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a26d88826c23d2474d3bd4f22487bcd9f3ada1e03a957c11f12a36885ab6dc49`  
		Last Modified: Fri, 20 Nov 2026 17:54:52 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jdk-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:3730381e48ede8efe459de1a7ac2a212d6f5cc9c51aa768e3a5a77a685975a25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3199273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:399b5dc39c8656a9889926c3e5fcf9e4f53e7a41eee77576ecd1d0163ffb7bfb`

```dockerfile
```

-	Layers:
	-	`sha256:07ee68abb222cdafa2665d0f748792d4a6a867d8b62522934159ef57286b2e54`  
		Last Modified: Fri, 20 Nov 2026 17:54:52 GMT  
		Size: 3.2 MB (3174847 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:50259fe35df8db79452e85898303ff1d59a1707bf7e767a995c8b6c612bfb7e5`  
		Last Modified: Fri, 20 Nov 2026 17:54:52 GMT  
		Size: 24.4 KB (24426 bytes)  
		MIME: application/vnd.in-toto+json
