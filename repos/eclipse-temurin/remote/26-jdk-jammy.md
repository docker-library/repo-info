## `eclipse-temurin:26-jdk-jammy`

```console
$ docker pull eclipse-temurin@sha256:4bf91476c01ff04acfff3ef5abe79e2d705de4044d15a7ac9f2002b593a4c323
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

### `eclipse-temurin:26-jdk-jammy` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:ec328e69ac0942ddedc256e8fad20aa11498c4235e4817c05153ba2e6210a1a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.3 MB (140335562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e230279197194c2b9859e166a122959ed450b41ab2cacc405b2b7906f0899b20`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:19:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:19:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:19:45 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:19:45 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:19:45 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Fri, 02 Oct 2026 01:20:05 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='451c12e68747bcfa2fb5a2c16b00483fedb9fa6d77bc962d30957f76ac17044d';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_x64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        arm64)          ESUM='9f6ad9856a7dd880061adaf88db3c4da0642113d59b7960a892f0e551c0c948c';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        ppc64el)          ESUM='34e0030c9b972b93cd11c3fb77211ae64c6a7d9c2ba10665730ee9f56ab29722';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        s390x)          ESUM='165602f7c4c3daeb8a71fa0dc1d1437f4707b702b8c3d3876d399e11241db34a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:20:06 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:20:06 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:20:06 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 01:20:06 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c7fe6212e9871686fd209e14df92632a183e485faa29c8a4dac5e5073a02c06`  
		Last Modified: Fri, 02 Oct 2026 01:20:21 GMT  
		Size: 15.9 MB (15918397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9d8aa24afbe1972673c6fa4d39f94cbff83bbcbbaa19728265aecdb749b7d1d`  
		Last Modified: Fri, 02 Oct 2026 01:20:24 GMT  
		Size: 94.7 MB (94663042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4028d0e415d34454bf5f507ddbe3b586bba877663b1431bffe84296609adbe5c`  
		Last Modified: Fri, 02 Oct 2026 01:20:21 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jdk-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:1fb62341c93f29e1bd046e1e2cdfa0e9aa1fc93596a2951bac41fb0e9695bbae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3858627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fd4ad6fe897310554e468698f2949b83d2cdab09a5756db80945da16c530941`

```dockerfile
```

-	Layers:
	-	`sha256:5052b21a2fc60bc7cdd0db0444b86c1d37e287901773dba3ad76584fd50a9252`  
		Last Modified: Fri, 02 Oct 2026 01:20:21 GMT  
		Size: 3.8 MB (3834950 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d01e0a2c1a79207a96bc52c155afddeac37614b23e592b7f02bb4c06f214138d`  
		Last Modified: Fri, 02 Oct 2026 01:20:21 GMT  
		Size: 23.7 KB (23677 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-jdk-jammy` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:a80c61119566e770aa5123bbca002d28b272db4b365a3c0035fc928534dcba68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.7 MB (138688786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64cd4dffb957c436797447a3a25aa8e75bfb22fd0f7d583fa6fdc7c4dde21aae`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:19:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:19:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:19:58 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:19:58 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:19:58 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Fri, 02 Oct 2026 01:20:22 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='451c12e68747bcfa2fb5a2c16b00483fedb9fa6d77bc962d30957f76ac17044d';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_x64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        arm64)          ESUM='9f6ad9856a7dd880061adaf88db3c4da0642113d59b7960a892f0e551c0c948c';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        ppc64el)          ESUM='34e0030c9b972b93cd11c3fb77211ae64c6a7d9c2ba10665730ee9f56ab29722';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        s390x)          ESUM='165602f7c4c3daeb8a71fa0dc1d1437f4707b702b8c3d3876d399e11241db34a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:20:23 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:20:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:20:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 01:20:23 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42cf7cb28202b4f8feaae62ab52498e2a2e305a16a6addd003e2c7c7f2ec8b51`  
		Last Modified: Fri, 02 Oct 2026 01:20:40 GMT  
		Size: 17.4 MB (17354962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6149055916f5ae87f39eb73d9b9ae8794bde46f25f24c6a65b847bd9b2aa0e98`  
		Last Modified: Fri, 02 Oct 2026 01:20:42 GMT  
		Size: 93.6 MB (93647196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04b0e462dd447335784f384a85f9b09bcd94a0836c205c385e525bc5daa04a93`  
		Last Modified: Fri, 02 Oct 2026 01:20:40 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jdk-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:2304fa155090630a88973f722e1b6be363c98df8dfff48027e879d3a0e233a67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3954201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee5ea211cbd45d6dae2bdb136603f42db62fb140447a60ef13192bf17633b221`

```dockerfile
```

-	Layers:
	-	`sha256:ab983a1ef8e77ac8579157619d459c53e9132c5e4cbbc594326a0ebef4b91256`  
		Last Modified: Fri, 02 Oct 2026 01:20:40 GMT  
		Size: 3.9 MB (3930402 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5067af41d226c2163d518e652faad99d467e97a570c400e329077c19860fd960`  
		Last Modified: Fri, 02 Oct 2026 01:20:39 GMT  
		Size: 23.8 KB (23799 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-jdk-jammy` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:81d4755133dbd5c5f34912f79028a74388a5e01946eeb690406909366c93f9f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (144981126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33b338da8b6fd95bc69bf27445b27c0eb30226e21c8960904216af942a2d6583`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:59 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:59 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:25:02 GMT
ADD file:045fd400d3feed52639c1d69b89f522795380adacf8a6025e5d8b200e9a878dc in / 
# Thu, 24 Sep 2026 22:25:03 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 03:54:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 03:54:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 03:54:29 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 03:54:29 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:54:29 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Fri, 02 Oct 2026 04:02:00 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='451c12e68747bcfa2fb5a2c16b00483fedb9fa6d77bc962d30957f76ac17044d';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_x64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        arm64)          ESUM='9f6ad9856a7dd880061adaf88db3c4da0642113d59b7960a892f0e551c0c948c';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        ppc64el)          ESUM='34e0030c9b972b93cd11c3fb77211ae64c6a7d9c2ba10665730ee9f56ab29722';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        s390x)          ESUM='165602f7c4c3daeb8a71fa0dc1d1437f4707b702b8c3d3876d399e11241db34a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 04:02:05 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 04:02:06 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 04:02:06 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 04:02:06 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4ec38ea96fb6e9976b5659ce60f9385aeabcf358353540676f8685df8f5439db`  
		Last Modified: Thu, 24 Sep 2026 23:36:25 GMT  
		Size: 34.7 MB (34703208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b7c5b5cd4a3e2e9a5c02c0605d8805b760f25aef62b65bbbc820fc20996a7a4`  
		Last Modified: Fri, 02 Oct 2026 03:56:17 GMT  
		Size: 16.8 MB (16822099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d4ffd8a6f39bfda7cbb88d994304dba83b021228895ddfa651e58c4e7c6089e`  
		Last Modified: Fri, 02 Oct 2026 04:02:48 GMT  
		Size: 93.5 MB (93453322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c732306faaf69bc1676f35f3cf36f8c8e56fc29d932caf421cb37004e55b1153`  
		Last Modified: Fri, 02 Oct 2026 04:02:45 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jdk-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:1a8b6044624b17451c004009898c1c6e7070c993128ec4e8b6b17b9a43040c76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3870028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98b027feb8fca4c328658aaa155bde451a9f6f6853083a83efdda67ce2812d15`

```dockerfile
```

-	Layers:
	-	`sha256:bf9ea84f4f72128f1cdfb6add4b511a8b11f1477f94bead12369eba58ff71416`  
		Last Modified: Fri, 02 Oct 2026 04:02:46 GMT  
		Size: 3.8 MB (3846309 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:76203e6dd120f41761d64d65540e8edd60c30c06691f5e4f574ff8756c2c8051`  
		Last Modified: Fri, 02 Oct 2026 04:02:45 GMT  
		Size: 23.7 KB (23719 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-jdk-jammy` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:03bbbee97dc5236415fda828bdcbd93c7aec27953c2b0431f0d2fbfaf554715c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.6 MB (134642719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a4f4b61b717663b4f65fbe28665f952a39bfdfdc56ea783e8d0c2afb049b360`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:54 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:55 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:55 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:56 GMT
ADD file:db47e3926ab7bde0eac1956f72b5e29cdfee4e7ba1a182277e89477759e0044a in / 
# Thu, 24 Sep 2026 22:24:56 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:31:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:31:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:31:28 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:31:28 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:31:28 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Fri, 02 Oct 2026 01:40:58 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='451c12e68747bcfa2fb5a2c16b00483fedb9fa6d77bc962d30957f76ac17044d';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_x64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        arm64)          ESUM='9f6ad9856a7dd880061adaf88db3c4da0642113d59b7960a892f0e551c0c948c';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        ppc64el)          ESUM='34e0030c9b972b93cd11c3fb77211ae64c6a7d9c2ba10665730ee9f56ab29722';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        s390x)          ESUM='165602f7c4c3daeb8a71fa0dc1d1437f4707b702b8c3d3876d399e11241db34a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:41:02 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:41:03 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:41:03 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 01:41:03 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e1502cdfd138d89dddc82531455ad8426a7eaa0d843665253c16b88cb6870c91`  
		Last Modified: Thu, 24 Sep 2026 23:36:39 GMT  
		Size: 28.2 MB (28222068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee9e821ed347bfff2b8c97947616c61ac7c2f0e36753d2cfbab34ef4ea46f3bf`  
		Last Modified: Fri, 02 Oct 2026 01:34:29 GMT  
		Size: 15.7 MB (15736250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79019508e67d0ac356fd0b7003f55ac26f08bdc09c4383784e998fb066962922`  
		Last Modified: Fri, 02 Oct 2026 01:41:45 GMT  
		Size: 90.7 MB (90681905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd4c6fb5fde658fb7a85552217c17642835878ed85001f049c2c105a24e95cee`  
		Last Modified: Fri, 02 Oct 2026 01:41:41 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jdk-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:c5a6be394a8de1c49a2c1bfddfcd4ccfb3fc5eacc0685a8ad371710d00c5d573
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3768824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff25c04b6413304aac252a62e5a96f4413d655819ffe71a6e5e4f76dd8357b43`

```dockerfile
```

-	Layers:
	-	`sha256:bd60b1cc0cd776269330fa400cb9a79be2ba56bbd0354e1f1d368489564247f0`  
		Last Modified: Fri, 02 Oct 2026 01:41:42 GMT  
		Size: 3.7 MB (3745147 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:749a2887461c12d677e589669607805a4f58d2a5ab632838faafead2c50d5697`  
		Last Modified: Fri, 02 Oct 2026 01:41:42 GMT  
		Size: 23.7 KB (23677 bytes)  
		MIME: application/vnd.in-toto+json
