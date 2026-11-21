## `eclipse-temurin:25-jre-noble`

```console
$ docker pull eclipse-temurin@sha256:f3dd0838e69b881cc382237d5901e74ae3705b1056ad964b2e0e523b174fef99
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

### `eclipse-temurin:25-jre-noble` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:334f294a3edd3fc7c2a7b12ed0f4b3f43c2e9bd39de2867996b4ae6a652721bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.5 MB (110457725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b73b5431584a04c7840a23cbf970bc08ab6239f910deb9f3d5890ec768c6066`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
# Fri, 20 Nov 2026 17:41:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:41:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:41:28 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:41:28 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 17:41:28 GMT
ENV JAVA_VERSION=jdk-25.0.5.1+2
# Fri, 20 Nov 2026 17:41:41 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2edef9e4f81ec5ee426d023336d4cfbd7b4644e99884e7a73a6a867b70b17acf';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_x64_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        arm64)          ESUM='c6161dcfb365024fbfbcda265343d562d6f821c78dd8e7aeaeaf294893f6ff8b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        ppc64el)          ESUM='cd4e122c3d32cf0d4a19cf283ab06a99a0bf6694b7d11444c0ea046aaa17faa7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        riscv64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        s390x)          ESUM='4bc1628ef796f26aa31b98698fb1d0a222b20e1c264665d4761646902855acca';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_s390x_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 17:41:41 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:41:41 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:41:41 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82182f91b69ec608cd3c609eceb864dfc74a4dd08d321ea82967029423b40d33`  
		Last Modified: Fri, 20 Nov 2026 17:41:55 GMT  
		Size: 17.6 MB (17554476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:142ba19a8f6f32a05831ca10b5489b5cc0e4c20b1ebde54b98c893b0f4980678`  
		Last Modified: Fri, 20 Nov 2026 17:41:57 GMT  
		Size: 63.1 MB (63107457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a146d923caefba6248a257d258f6ca6764b03c5654cd03e00ca6872f2b252a9`  
		Last Modified: Fri, 20 Nov 2026 17:41:54 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:b58d6f59fe18fc505596182152acdd816ca6eff006767a73b9017429c692aac3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3072692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23b3a6a18c93ec7ee4936500edb376326ad8576024eb5653b57af8aac63f6d8d`

```dockerfile
```

-	Layers:
	-	`sha256:611a227465dc0c1c8e59024ec89723aedecc4687de39815780fa287d7f6f6cf2`  
		Last Modified: Fri, 20 Nov 2026 17:41:55 GMT  
		Size: 3.0 MB (3049658 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f61aa689596595f0eb8aec81ebd397e95a1a7ee30dc9716dae1d48c9623d279`  
		Last Modified: Fri, 20 Nov 2026 17:41:55 GMT  
		Size: 23.0 KB (23034 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jre-noble` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:ebbe0515b3b83a5c459edc2eba26a3ab9c7ea72c57eed2c33b24e588cc30a293
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.3 MB (108261127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df689cdc50ae969583b2c8bb76e6825eea5b3f8e30cbcaa6080605bf14f817c3`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
# Fri, 20 Nov 2026 17:41:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:41:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:41:22 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:41:22 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 17:41:22 GMT
ENV JAVA_VERSION=jdk-25.0.5.1+2
# Fri, 20 Nov 2026 17:41:36 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2edef9e4f81ec5ee426d023336d4cfbd7b4644e99884e7a73a6a867b70b17acf';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_x64_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        arm64)          ESUM='c6161dcfb365024fbfbcda265343d562d6f821c78dd8e7aeaeaf294893f6ff8b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        ppc64el)          ESUM='cd4e122c3d32cf0d4a19cf283ab06a99a0bf6694b7d11444c0ea046aaa17faa7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        riscv64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        s390x)          ESUM='4bc1628ef796f26aa31b98698fb1d0a222b20e1c264665d4761646902855acca';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_s390x_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 17:41:36 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:41:36 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:41:36 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fda9106f268bbf949d3c29a8c8b691a37496f709c771b1c786c1b1b1bfd89d1`  
		Last Modified: Fri, 20 Nov 2026 17:41:51 GMT  
		Size: 17.3 MB (17309271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb03a0af7ec79cc95006c95a75c7d85c7e72737f03dfb315c8e6be640e03152d`  
		Last Modified: Fri, 20 Nov 2026 17:41:52 GMT  
		Size: 62.0 MB (61984042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa06fe8ddd508c0c111709632fac4968dadfcc74d2f1397184f9c8d10676fbb0`  
		Last Modified: Fri, 20 Nov 2026 17:41:50 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:202cf8f778b2251f844dbe2ad0edcea91968a18518e444ead40b7aabb6b343a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3073227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c113dfb6e21f3d4ea30fe698f29485ba2321339d2def105ca76e9f3b4d2e1dc6`

```dockerfile
```

-	Layers:
	-	`sha256:65818c4c287613148dce4d74bef59e754aa568737349d7107eaa69c477507b1e`  
		Last Modified: Fri, 20 Nov 2026 17:41:50 GMT  
		Size: 3.1 MB (3050083 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:41457cdaf8c767e9d3ce63fefedf8e02f87ebb07ed0e4ddb3bb5099dbdd782a5`  
		Last Modified: Fri, 20 Nov 2026 17:41:50 GMT  
		Size: 23.1 KB (23144 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jre-noble` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:f6d9d759eded41f338ad67c475d91950ea73d2e719ec865b292202f1d91a94d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.2 MB (114200948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e67b6bf59e5c6322861bca7e2e62bb45f3900d57f59fc0d4a260f61f14e2957e`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
# Fri, 20 Nov 2026 03:28:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:28:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:28:27 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:28:27 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:28:27 GMT
ENV JAVA_VERSION=jdk-25.0.5.1+2
# Fri, 20 Nov 2026 17:43:54 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2edef9e4f81ec5ee426d023336d4cfbd7b4644e99884e7a73a6a867b70b17acf';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_x64_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        arm64)          ESUM='c6161dcfb365024fbfbcda265343d562d6f821c78dd8e7aeaeaf294893f6ff8b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        ppc64el)          ESUM='cd4e122c3d32cf0d4a19cf283ab06a99a0bf6694b7d11444c0ea046aaa17faa7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        riscv64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        s390x)          ESUM='4bc1628ef796f26aa31b98698fb1d0a222b20e1c264665d4761646902855acca';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_s390x_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 17:43:54 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:43:54 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:43:54 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:6c769a4f95bc536aae313c2bf7fcbf46e8cc18ed65fefad2a8ccfc1b5b7a63b4`  
		Last Modified: Tue, 10 Nov 2026 20:09:39 GMT  
		Size: 34.4 MB (34406239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bd7e909294bde65871aa676108f9e0d469fd52e49670ef69f4f551144b997c0`  
		Last Modified: Fri, 20 Nov 2026 03:29:33 GMT  
		Size: 18.9 MB (18894524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a059a387ec1855c631229c61f7f8140df97d89e3462fb4524817dd4362979d1c`  
		Last Modified: Fri, 20 Nov 2026 17:44:30 GMT  
		Size: 60.9 MB (60897691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b8659094153bf4595d7541d25da78cec0b9fb212359a13876418d4d1887cf9e`  
		Last Modified: Fri, 20 Nov 2026 17:44:28 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:b72df6f549f654c8af7743668d9689ff7cdfc982080e1ff561a9d8cc23e88cb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3074758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbe3c74401e7e61ca46aad5508e9b15e8067f0b43cdacb9a2d4d6d762a8d0b40`

```dockerfile
```

-	Layers:
	-	`sha256:f58b2031c6b6700d51dd50c296a3998a3da2bc9b2206cdb5518b9ffc9131986a`  
		Last Modified: Fri, 20 Nov 2026 17:44:28 GMT  
		Size: 3.1 MB (3051688 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9e8eec15c8896c91fa3a8e28c2114bf25f65e20aeba70efa4772e288bf1803e`  
		Last Modified: Fri, 20 Nov 2026 17:44:27 GMT  
		Size: 23.1 KB (23070 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jre-noble` - linux; riscv64

```console
$ docker pull eclipse-temurin@sha256:819b165dc650cc5e0ae0ba533c18fdf9a9b8210025db5e16bf5fddbb42edd30e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.2 MB (109233648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf10bdd6b95f87799bf02536b32978da031be90bb3557fa3c6af6e3d026b49a6`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
# Thu, 19 Nov 2026 03:43:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 03:43:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 03:43:11 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 19 Nov 2026 03:43:11 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 19 Nov 2026 03:43:11 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Thu, 19 Nov 2026 03:45:19 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='6fac98f0c8202efc3135a9e9e42aa61963ec42d1c5cbb40caf231e7b14a24ef6';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_x64_linux_hotspot_25.0.5_8.tar.gz';          ;;        arm64)          ESUM='963931723891302ebb2687178532c3d793d71e2577cd058061c7efb396140a86';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.5_8.tar.gz';          ;;        ppc64el)          ESUM='da080e477f4897703efac82576c914abde64c91ee3081873e330e4aff9bb64b9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.5_8.tar.gz';          ;;        riscv64)          ESUM='224c72d235b0b9ae49e642ae75ade8d8ed69ff693b9ae2fa7cef8e0e48760289';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.5_8.tar.gz';          ;;        s390x)          ESUM='68fd959a83c4c0fa18e50d332323b178e6f4f14bf0a5e7f708114545013c3389';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_s390x_linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 19 Nov 2026 03:45:20 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 19 Nov 2026 03:45:20 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 19 Nov 2026 03:45:20 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:c1ea9e361ad6aa342c72500d92e9e6e1347fa35a4475914ad2226cc298516f11`  
		Last Modified: Sun, 15 Nov 2026 21:50:00 GMT  
		Size: 31.1 MB (31074654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b61d5a62bef9a5010ef4a4855405869d4ac1eaaad8e501d510e8fcbb17f5136a`  
		Last Modified: Thu, 19 Nov 2026 03:48:09 GMT  
		Size: 16.4 MB (16430567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7f58d09e903b662aa6bf87f4650ca7b8466e9033b86648a55a71f7e0262c7fe`  
		Last Modified: Thu, 19 Nov 2026 03:48:15 GMT  
		Size: 61.7 MB (61725930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d737c20d4e80dd8a0d265997811fea088aab528df3a0dd821d841fe04d388ffb`  
		Last Modified: Thu, 19 Nov 2026 03:48:04 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:11c65a01e1a7139f8a3be1aaf4a31f9a28ba522c1981d2923faf3f4e9d4be49e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3064693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c60a1dbba37fe8faaae39b0109ea588ca728f985184d530f8e851003b42796d3`

```dockerfile
```

-	Layers:
	-	`sha256:a9941865f0eec40d915251a8a79bdfb670f975905dda439813bca6b4a7bc58c0`  
		Last Modified: Thu, 19 Nov 2026 03:48:04 GMT  
		Size: 3.0 MB (3041622 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a9a33874bbc723a710ed69f64898c390412ce04f033c28e7514628eeda80340`  
		Last Modified: Thu, 19 Nov 2026 03:48:04 GMT  
		Size: 23.1 KB (23071 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jre-noble` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:3f28750713d3faf63146fcb2e9fc47dac923308935c86bc5790cb3d690b69bf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.1 MB (107135550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:688d44740e6c217004e3a1944cd2faff9dce815841289e92b964bd9f7427bf09`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
# Fri, 20 Nov 2026 17:42:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:42:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:42:37 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:42:37 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 17:42:37 GMT
ENV JAVA_VERSION=jdk-25.0.5.1+2
# Fri, 20 Nov 2026 17:43:34 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2edef9e4f81ec5ee426d023336d4cfbd7b4644e99884e7a73a6a867b70b17acf';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_x64_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        arm64)          ESUM='c6161dcfb365024fbfbcda265343d562d6f821c78dd8e7aeaeaf294893f6ff8b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        ppc64el)          ESUM='cd4e122c3d32cf0d4a19cf283ab06a99a0bf6694b7d11444c0ea046aaa17faa7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        riscv64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        s390x)          ESUM='4bc1628ef796f26aa31b98698fb1d0a222b20e1c264665d4761646902855acca';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_s390x_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 17:43:35 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:43:36 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:43:36 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6a4828736418640f88890fd03d6d03e5c40e83e24d598ed323f41ba7e349b4f`  
		Last Modified: Tue, 10 Nov 2026 20:09:53 GMT  
		Size: 30.0 MB (29967433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd5e474fd54f842d24a8cc8b4021c51b696ae92c7c56d88bdbd7d269d3d1229f`  
		Last Modified: Fri, 20 Nov 2026 17:44:11 GMT  
		Size: 17.0 MB (16968981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c7cf0d34b043ba48c7f8b23b6e2c2b194349a5b9d7bf1acf24949eda57163e1`  
		Last Modified: Fri, 20 Nov 2026 17:44:12 GMT  
		Size: 60.2 MB (60196640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c805108eea844ea2b104483cd02be017af5892c285e2c9b78615275c247adaa`  
		Last Modified: Fri, 20 Nov 2026 17:44:08 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:6602eca6feb2658afaf303c7cee407c102cc042da94a5e8f03f10b3379039359
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3073044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89945c9998cf371326bbe69cbf6c2aff47f29ea4c684b0d036c5e0989ae9c83c`

```dockerfile
```

-	Layers:
	-	`sha256:d1e404b7152745c85d59bf9cc279324116c5f1058b69324a6779ac9d63875822`  
		Last Modified: Fri, 20 Nov 2026 17:44:10 GMT  
		Size: 3.1 MB (3050010 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40148261186a7612384e04babf1fe94af1a0420ddebab92334088763b0e16ce3`  
		Last Modified: Fri, 20 Nov 2026 17:44:09 GMT  
		Size: 23.0 KB (23034 bytes)  
		MIME: application/vnd.in-toto+json
