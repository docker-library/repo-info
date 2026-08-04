## `sonarqube:2025-lta-developer`

```console
$ docker pull sonarqube@sha256:13c026b984e84704515afdd514b4181b55b7584b261bdd7a354cb584fbe143a4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `sonarqube:2025-lta-developer` - linux; amd64

```console
$ docker pull sonarqube@sha256:e6dab50ccb2bee94533188078a29b248f59ef9ef0cba67412439cfa8521cbc37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 GB (1162772349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5a4f5abc64c7eda29c5fbfec187bf2937968346ee33e93f7da35058a53c5b87`
-	Entrypoint: `["\/opt\/sonarqube\/docker\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:18:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 01:18:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:18:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:18:05 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:18:05 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Tue, 04 Aug 2026 01:18:09 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='e5038aae3ca9ff670bc696496b0728dbd23d280026bad30291cb919221ecfdcb';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        arm64)          ESUM='fa23d9d9945053e67bcc7638410eabf1e17a7672c7c95a24f70cd08b8407d36e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64el)          ESUM='fefb53c4bd687e7a91a9a9809ec80e0862e829cd20513839ad1a9988ddc89482';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        riscv64)          ESUM='f3d8843c5a1b77ded3353e0df85d803d84b9faa5ece20673564e7c47fc4591d9';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='45736e9e14d52619133900a077b4f72d1ebee0fd0bb053da0bca9dce9fc4d916';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 04 Aug 2026 01:18:09 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 01:18:09 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:18:09 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 04 Aug 2026 02:36:35 GMT
LABEL io.k8s.description=SonarQube Server is a self-managed, automatic code review tool that systematically helps you deliver Clean Code.
# Tue, 04 Aug 2026 02:36:35 GMT
LABEL io.openshift.min-cpu=400m
# Tue, 04 Aug 2026 02:36:35 GMT
LABEL io.openshift.min-memory=2048M
# Tue, 04 Aug 2026 02:36:35 GMT
LABEL io.openshift.non-scalable=true
# Tue, 04 Aug 2026 02:36:35 GMT
LABEL io.openshift.tags=sonarqube,static-code-analysis,code-quality,clean-code
# Tue, 04 Aug 2026 02:36:35 GMT
LABEL org.opencontainers.image.url=https://github.com/SonarSource/docker-sonarqube
# Tue, 04 Aug 2026 02:36:35 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 02:36:35 GMT
ARG SONARQUBE_VERSION=2025.1.8.123366
# Tue, 04 Aug 2026 02:36:35 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-developer/sonarqube-developer-2025.1.8.123366.zip
# Tue, 04 Aug 2026 02:36:35 GMT
ENV DOCKER_RUNNING=true JAVA_HOME=/opt/java/openjdk SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=2025.1.8.123366 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp
# Tue, 04 Aug 2026 02:36:35 GMT
ENV ES_TMPDIR=/opt/sonarqube/temp
# Tue, 04 Aug 2026 02:36:35 GMT
# ARGS: SONARQUBE_VERSION=2025.1.8.123366 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-developer/sonarqube-developer-2025.1.8.123366.zip
RUN set -eux;     deluser ubuntu;     useradd --system --uid 1000 --gid 0 sonarqube;     apt-get update;     apt-get --no-install-recommends -y install         bash         curl         fonts-dejavu         gnupg         unzip;     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt;     cd /opt;     curl --fail --location --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --fail --location --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     ln -s "${SONARQUBE_HOME}/lib/sonar-application-${SONARQUBE_VERSION}.jar" "${SONARQUBE_HOME}/lib/sonarqube.jar";     chmod -R 550 ${SONARQUBE_HOME};     chmod -R 770 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}";     apt-get remove -y gnupg unzip;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 04 Aug 2026 02:36:35 GMT
VOLUME [/opt/sonarqube/data /opt/sonarqube/extensions /opt/sonarqube/logs /opt/sonarqube/temp]
# Tue, 04 Aug 2026 02:36:35 GMT
COPY entrypoint.sh /opt/sonarqube/docker/ # buildkit
# Tue, 04 Aug 2026 02:36:35 GMT
WORKDIR /opt/sonarqube
# Tue, 04 Aug 2026 02:36:35 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 04 Aug 2026 02:36:35 GMT
USER sonarqube
# Tue, 04 Aug 2026 02:36:35 GMT
STOPSIGNAL SIGINT
# Tue, 04 Aug 2026 02:36:35 GMT
ENTRYPOINT ["/opt/sonarqube/docker/entrypoint.sh"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8db609f0511d6a531ae0c608482194102e3b44423827e5087555be1f32a977c3`  
		Last Modified: Tue, 04 Aug 2026 01:18:22 GMT  
		Size: 19.3 MB (19345541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0b0b9c8c3cda2f2a083b90ee737957c84124b2832310c7add37dbd8e6abcea4`  
		Last Modified: Tue, 04 Aug 2026 01:18:24 GMT  
		Size: 53.1 MB (53123202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2acd1ddedbb669f90237c42d72ff6e525f6fb0c41a6bc39c88cf52bcd93b327`  
		Last Modified: Tue, 04 Aug 2026 01:18:22 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b31e784d031e69160094ca9e6db5b52cebc312e641fb92e44b9ea6c728c5d7f2`  
		Last Modified: Tue, 04 Aug 2026 01:18:22 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5c0e3cd9e7cdd7cb690e1c0f64bbc3a4d8bdbccdba56bcfb03450a059d42bee`  
		Last Modified: Tue, 04 Aug 2026 02:37:41 GMT  
		Size: 1.1 GB (1060549568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2945019c5032a1ddbd1a66adb96168586d227a8732f356f0751378a8e310410`  
		Last Modified: Tue, 04 Aug 2026 02:37:22 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sonarqube:2025-lta-developer` - unknown; unknown

```console
$ docker pull sonarqube@sha256:e517a8c6a7fb0530cf48c4fe8709075ec85a1ea5148005ce4781d2416a3a50d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4516153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0af5229e28dd42e99b82bb414984d6c620b95f90543a84ea22e43b69c272a426`

```dockerfile
```

-	Layers:
	-	`sha256:a2a28605b16101256d70e73fa0af5306718242a5f894c2e539464ed7e7384efb`  
		Last Modified: Tue, 04 Aug 2026 02:37:23 GMT  
		Size: 4.5 MB (4497582 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20d0d30e9fecc5ac8784376e0d24556fa263046352733229d4bd43da1df1c3ce`  
		Last Modified: Tue, 04 Aug 2026 02:37:22 GMT  
		Size: 18.6 KB (18571 bytes)  
		MIME: application/vnd.in-toto+json

### `sonarqube:2025-lta-developer` - linux; arm64 variant v8

```console
$ docker pull sonarqube@sha256:0c8722bf54f65bd1d0f9ab7271d0b9ac4ba81e7312cd06f024459c798a57d29b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 GB (1158705196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad28343bb0d2320599d1837a27ba84ae01e0f623cbcce90338eae3133a0df950`
-	Entrypoint: `["\/opt\/sonarqube\/docker\/entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:27:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 01:27:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:27:58 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:27:58 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:27:58 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Tue, 04 Aug 2026 01:28:02 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='e5038aae3ca9ff670bc696496b0728dbd23d280026bad30291cb919221ecfdcb';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        arm64)          ESUM='fa23d9d9945053e67bcc7638410eabf1e17a7672c7c95a24f70cd08b8407d36e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64el)          ESUM='fefb53c4bd687e7a91a9a9809ec80e0862e829cd20513839ad1a9988ddc89482';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        riscv64)          ESUM='f3d8843c5a1b77ded3353e0df85d803d84b9faa5ece20673564e7c47fc4591d9';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='45736e9e14d52619133900a077b4f72d1ebee0fd0bb053da0bca9dce9fc4d916';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 04 Aug 2026 01:28:02 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 01:28:02 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:28:02 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 04 Aug 2026 02:36:45 GMT
LABEL io.k8s.description=SonarQube Server is a self-managed, automatic code review tool that systematically helps you deliver Clean Code.
# Tue, 04 Aug 2026 02:36:45 GMT
LABEL io.openshift.min-cpu=400m
# Tue, 04 Aug 2026 02:36:45 GMT
LABEL io.openshift.min-memory=2048M
# Tue, 04 Aug 2026 02:36:45 GMT
LABEL io.openshift.non-scalable=true
# Tue, 04 Aug 2026 02:36:45 GMT
LABEL io.openshift.tags=sonarqube,static-code-analysis,code-quality,clean-code
# Tue, 04 Aug 2026 02:36:45 GMT
LABEL org.opencontainers.image.url=https://github.com/SonarSource/docker-sonarqube
# Tue, 04 Aug 2026 02:36:45 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 02:36:45 GMT
ARG SONARQUBE_VERSION=2025.1.8.123366
# Tue, 04 Aug 2026 02:36:45 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-developer/sonarqube-developer-2025.1.8.123366.zip
# Tue, 04 Aug 2026 02:36:45 GMT
ENV DOCKER_RUNNING=true JAVA_HOME=/opt/java/openjdk SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=2025.1.8.123366 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp
# Tue, 04 Aug 2026 02:36:45 GMT
ENV ES_TMPDIR=/opt/sonarqube/temp
# Tue, 04 Aug 2026 02:36:45 GMT
# ARGS: SONARQUBE_VERSION=2025.1.8.123366 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-developer/sonarqube-developer-2025.1.8.123366.zip
RUN set -eux;     deluser ubuntu;     useradd --system --uid 1000 --gid 0 sonarqube;     apt-get update;     apt-get --no-install-recommends -y install         bash         curl         fonts-dejavu         gnupg         unzip;     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt;     cd /opt;     curl --fail --location --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --fail --location --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     ln -s "${SONARQUBE_HOME}/lib/sonar-application-${SONARQUBE_VERSION}.jar" "${SONARQUBE_HOME}/lib/sonarqube.jar";     chmod -R 550 ${SONARQUBE_HOME};     chmod -R 770 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}";     apt-get remove -y gnupg unzip;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 04 Aug 2026 02:36:45 GMT
VOLUME [/opt/sonarqube/data /opt/sonarqube/extensions /opt/sonarqube/logs /opt/sonarqube/temp]
# Tue, 04 Aug 2026 02:36:45 GMT
COPY entrypoint.sh /opt/sonarqube/docker/ # buildkit
# Tue, 04 Aug 2026 02:36:45 GMT
WORKDIR /opt/sonarqube
# Tue, 04 Aug 2026 02:36:45 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 04 Aug 2026 02:36:45 GMT
USER sonarqube
# Tue, 04 Aug 2026 02:36:45 GMT
STOPSIGNAL SIGINT
# Tue, 04 Aug 2026 02:36:45 GMT
ENTRYPOINT ["/opt/sonarqube/docker/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d40501aa6065f35c62f51a3adac24cd69021db23b6be3790cc06e85d984f303d`  
		Last Modified: Tue, 04 Aug 2026 01:28:15 GMT  
		Size: 17.0 MB (16950948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da155a57f6201a82fcc6a428ea6cf11db5bd715d1ab51f1e4a609f4ff00f5e81`  
		Last Modified: Tue, 04 Aug 2026 01:28:16 GMT  
		Size: 52.3 MB (52314863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6ffd2f8998c8f393f62d0792bd96ba7ae1b0d862070122182ac538504d1b7f9`  
		Last Modified: Tue, 04 Aug 2026 01:28:14 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acaf32fa9272cd80c33f65c6c8f50b0dfe08768f5557c2e5b49301ceb961268c`  
		Last Modified: Tue, 04 Aug 2026 01:28:14 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09dec8e15f15235c58537fc3e71bf144b200e31257f16205ae40179ac3c4acdb`  
		Last Modified: Tue, 04 Aug 2026 02:37:58 GMT  
		Size: 1.1 GB (1060549637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0148e6fcd137765177b03be89ffe4681eff387c61bbd798ad2d82d94fec7576`  
		Last Modified: Tue, 04 Aug 2026 02:37:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sonarqube:2025-lta-developer` - unknown; unknown

```console
$ docker pull sonarqube@sha256:cd491319673f7a623214237c884e7e6f7d76e03c2787863bc0cf2a953987cc47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4516704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfd90ea45fca68b0e67e98e35c3d7aef3e6f5884bb7bb1e1844fd8968253b1b8`

```dockerfile
```

-	Layers:
	-	`sha256:47f37cf75274ceb2a38d014902f77047436af5ac55bd94ec81c84aba642bb4b4`  
		Last Modified: Tue, 04 Aug 2026 02:37:38 GMT  
		Size: 4.5 MB (4498041 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03a77c5b40a72ac94a6b3026b745a3e5de95adee6db839c5fdc0b0784ed99425`  
		Last Modified: Tue, 04 Aug 2026 02:37:38 GMT  
		Size: 18.7 KB (18663 bytes)  
		MIME: application/vnd.in-toto+json
