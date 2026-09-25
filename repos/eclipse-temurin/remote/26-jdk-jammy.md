## `eclipse-temurin:26-jdk-jammy`

```console
$ docker pull eclipse-temurin@sha256:dda779641d60802e6e5de799395870032697f418d313559ec9d174ac523518c9
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
$ docker pull eclipse-temurin@sha256:9cd8f5d1f6f93631f1f88d94c9c51a08102bcfaaec3d50878d175a95b0a5d46b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.3 MB (140334117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af95fca8024b5aae0af891a21d01d2772d6f7d736dec512090165f9ff2d92f6e`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Fri, 25 Sep 2026 22:38:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:38:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:38:53 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:38:53 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:38:53 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Fri, 25 Sep 2026 22:39:59 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='451c12e68747bcfa2fb5a2c16b00483fedb9fa6d77bc962d30957f76ac17044d';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_x64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        arm64)          ESUM='9f6ad9856a7dd880061adaf88db3c4da0642113d59b7960a892f0e551c0c948c';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        ppc64el)          ESUM='34e0030c9b972b93cd11c3fb77211ae64c6a7d9c2ba10665730ee9f56ab29722';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        s390x)          ESUM='165602f7c4c3daeb8a71fa0dc1d1437f4707b702b8c3d3876d399e11241db34a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:40:00 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:40:00 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:40:00 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:40:00 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b29130baafca4e76e1e5aa808be8e63a52fe0a6f38de87fb52620b7090468b6e`  
		Last Modified: Fri, 25 Sep 2026 22:39:30 GMT  
		Size: 15.9 MB (15918362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b7c312f4e669f790bceea87ed20290f26d2e77e9861207fa5c18a54755f9d04`  
		Last Modified: Fri, 25 Sep 2026 22:40:18 GMT  
		Size: 94.7 MB (94663008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:579e9405ba4424d18bc91a73bf54d88f6fde3e45185000d94889fef23db20712`  
		Last Modified: Fri, 25 Sep 2026 22:40:16 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jdk-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:a62f1eb3fa532ca1ff57089ea78039f6fee9d6f6579bf3977b01791cc682a469
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3858301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03d2d03501297a5c455c2da49b23150814112db772cd18d228529a584fcafba3`

```dockerfile
```

-	Layers:
	-	`sha256:41fb4e576cce2474062ce50902006f315fdd51c436c4cadc3d3511c1df9e1a3b`  
		Last Modified: Fri, 25 Sep 2026 22:40:16 GMT  
		Size: 3.8 MB (3834625 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:753150cebe00c62c449c72c9b5262d2e61fdd0cd6093f080d30fb56487e67369`  
		Last Modified: Fri, 25 Sep 2026 22:40:16 GMT  
		Size: 23.7 KB (23676 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-jdk-jammy` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:0965dc5236bce466817e85a8c5bb00efcc1bb794ab092302186c9360d8c44afd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.7 MB (138687334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5360844ccd5dd3512bd793b92b18dc8caf2133a193425005196d54f976715cfc`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Fri, 25 Sep 2026 22:38:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:38:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:38:52 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:38:52 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:38:52 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Fri, 25 Sep 2026 22:39:15 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='451c12e68747bcfa2fb5a2c16b00483fedb9fa6d77bc962d30957f76ac17044d';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_x64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        arm64)          ESUM='9f6ad9856a7dd880061adaf88db3c4da0642113d59b7960a892f0e551c0c948c';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        ppc64el)          ESUM='34e0030c9b972b93cd11c3fb77211ae64c6a7d9c2ba10665730ee9f56ab29722';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        s390x)          ESUM='165602f7c4c3daeb8a71fa0dc1d1437f4707b702b8c3d3876d399e11241db34a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:39:16 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:39:16 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:39:16 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:39:16 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37e2ccebedb74a0a837b19e8d1ef974a3188cd684e7b92719063d5c1d1b903c4`  
		Last Modified: Fri, 25 Sep 2026 22:39:33 GMT  
		Size: 17.4 MB (17354940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0371e18ff3bd1ef1a63671005972688150aaa626c3b82a0bd37d3970c486f1a`  
		Last Modified: Fri, 25 Sep 2026 22:39:34 GMT  
		Size: 93.6 MB (93647152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0cb599785649a9d8c459aba072f2e42960e7a53ac2c70e1803cdd6ca04b8181`  
		Last Modified: Fri, 25 Sep 2026 22:39:28 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jdk-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:bb2e00f8d2163e60c8d22a1151ae412a26c89b652fa05aa765f041162a8d3fca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3953876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df8811dc58d086bcd2891aba58c2aef1ca1db5e50056df411927c975f3924abb`

```dockerfile
```

-	Layers:
	-	`sha256:b2e026d25e871be878f225681989e3a1b46f55e6399b2377209f9b86fef747f6`  
		Last Modified: Fri, 25 Sep 2026 22:39:32 GMT  
		Size: 3.9 MB (3930077 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:96e3c9ab5a7ebb75949a09693721950cd1ec79eb0fdaa09b903ff618af5ce21d`  
		Last Modified: Fri, 25 Sep 2026 22:39:32 GMT  
		Size: 23.8 KB (23799 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-jdk-jammy` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:f2781d7eae159fa62db35513778e13b2f432ba43493776f63e0fe89415693259
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (144971252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f02b55ca74867739d78f3b559ceb2bb1d4be683d724281d7cd53c7a19d2ba1f2`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 03 Sep 2026 12:57:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:57:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:57:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:57:55 GMT
ADD file:432b9684ec0569be2be149e91ac77c16c05d7cfbb3e9cfbb7fd24d3ec4e3542c in / 
# Thu, 03 Sep 2026 12:57:55 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:54:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 01:54:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 01:54:30 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 01:54:30 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:54:30 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Wed, 09 Sep 2026 02:05:26 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='56f768372f6ca1e2eb4c5f46b78f627949e8dcfe9c9723926cf45a45faf35802';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_x64_linux_hotspot_26.0.2_10.tar.gz';          ;;        arm64)          ESUM='f82aeb1d5b0ddb93d3bd81c20948bc560c0758993157202424c17e805e2effbb';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.2_10.tar.gz';          ;;        ppc64el)          ESUM='54e5f3a1eaa48650f30a8f189843a96654f5e31db4f0a8495c71adc4ca8f896a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.2_10.tar.gz';          ;;        s390x)          ESUM='4cac19ce8091df128261c42886a2e0357de7deecfe3f60b39bca16ccb55703e2';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.2_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 09 Sep 2026 02:05:39 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 02:05:42 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:05:42 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 02:05:42 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:1daec8f2ab5d99d77bf244f97fe9410551460a2a58e0b0cc7ecb9e6e4bf02aec`  
		Last Modified: Thu, 03 Sep 2026 17:08:41 GMT  
		Size: 34.7 MB (34702679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10b430adc16ed940da55220ca814edf045bc747659e90cc57be348620fecbc8a`  
		Last Modified: Wed, 09 Sep 2026 01:57:26 GMT  
		Size: 16.8 MB (16814696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:907db433c89bfeccd08c958b1556095ee9a4229bf45f9082b1846c9195e138a6`  
		Last Modified: Wed, 09 Sep 2026 02:06:32 GMT  
		Size: 93.5 MB (93451381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d486b572491c4c2f310924c92263a5b2aff47c36b2ab711b29b29c9a509c5989`  
		Last Modified: Wed, 09 Sep 2026 02:06:30 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jdk-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:cc8171cc1ff176f2acc34d5adafb1581f0dd6ab92498c40d486fd6eece0977ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3869671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:130911451f841b82d639172df3fa1bef29b99cd0b89b6000864e9bc4172a0e4d`

```dockerfile
```

-	Layers:
	-	`sha256:de5c2901d7ba616d1373a3c0aefb79741538be3832114ea538eb43d50e178939`  
		Last Modified: Wed, 09 Sep 2026 02:06:30 GMT  
		Size: 3.8 MB (3845976 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:932f6c12528f92194e09c8fc4d597556aee8b09bd6c9b6e18a69814463c95fc7`  
		Last Modified: Wed, 09 Sep 2026 02:06:30 GMT  
		Size: 23.7 KB (23695 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-jdk-jammy` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:4a767a7e47bdceadcd24fd56ff45aa0a0a757c86482062014dd4f9f1498e2c44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.6 MB (134647686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9181e610df2758b12a1a4f6e6953942504c386775751a5647b07810675aa63f5`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 03 Sep 2026 12:51:36 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:51:36 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:51:36 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:51:37 GMT
ADD file:99e519ce4f36973ccf0c2b59d97d9545ed489aeb70f2d9d5b02cc88216f15ebf in / 
# Thu, 03 Sep 2026 12:51:37 GMT
CMD ["/bin/bash"]
# Fri, 25 Sep 2026 22:41:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:41:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:41:21 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:41:21 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:41:21 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Fri, 25 Sep 2026 22:41:31 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='451c12e68747bcfa2fb5a2c16b00483fedb9fa6d77bc962d30957f76ac17044d';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_x64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        arm64)          ESUM='9f6ad9856a7dd880061adaf88db3c4da0642113d59b7960a892f0e551c0c948c';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        ppc64el)          ESUM='34e0030c9b972b93cd11c3fb77211ae64c6a7d9c2ba10665730ee9f56ab29722';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        s390x)          ESUM='165602f7c4c3daeb8a71fa0dc1d1437f4707b702b8c3d3876d399e11241db34a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:41:32 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:41:32 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:41:32 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:41:32 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bf614dfe039d307c4291b9fb2c2a7e4330436f31d1af87cc6008eaf4ab48b571`  
		Last Modified: Thu, 03 Sep 2026 17:08:55 GMT  
		Size: 28.2 MB (28224031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:577e9e397d8fcf4047c3e6205922f2651308f97a27d509572cc0526b1722ce85`  
		Last Modified: Fri, 25 Sep 2026 22:41:54 GMT  
		Size: 15.7 MB (15737764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcfc0c4096cc64606e63dd0ce6b810addaff5313bb9a3c08c6155ebe3136e313`  
		Last Modified: Fri, 25 Sep 2026 22:41:55 GMT  
		Size: 90.7 MB (90683395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5df624aedf65a17787057e79f92bbd3cf1bc204087331e71ed703c3e906221df`  
		Last Modified: Fri, 25 Sep 2026 22:41:54 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jdk-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:1e7f8b500c021ca9eee2859039064d9ef38b8be76362d00adea991d662d54093
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3768499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8173fdd12f29e272c5ab439e626935956e478727e07aba65a74683d5eb63cb84`

```dockerfile
```

-	Layers:
	-	`sha256:1533981ae5aa20b4788687765aaf681c22eb5e8c47132ad53f916eef946a2046`  
		Last Modified: Fri, 25 Sep 2026 22:41:54 GMT  
		Size: 3.7 MB (3744822 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:810fcafd2f3dc189e16076e6318aaf0a7d28794ad9ae125b3f5b2165bbbaa95f`  
		Last Modified: Fri, 25 Sep 2026 22:41:54 GMT  
		Size: 23.7 KB (23677 bytes)  
		MIME: application/vnd.in-toto+json
