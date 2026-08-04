## `sonarqube:2025-lta-datacenter-app`

```console
$ docker pull sonarqube@sha256:a528972ffc6b6c81f329cecde5720d6865f710ba9cd95c5bb301c5a42cb2e1f4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `sonarqube:2025-lta-datacenter-app` - linux; amd64

```console
$ docker pull sonarqube@sha256:a63945836e2c118295cbcb9de6827539c375758dabf1943c19a8241e69385ab5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 GB (1207223175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:218a30d4b8267d24e2acb3c7a39a0d883ee4dc29c949442b0a26712c577482cd`
-	Entrypoint: `["\/opt\/sonarqube\/docker\/run.sh"]`
-	Default Command: `["\/opt\/sonarqube\/docker\/sonar.sh"]`

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
# Tue, 04 Aug 2026 02:36:48 GMT
LABEL io.k8s.description=SonarQube Server is a self-managed, automatic code review tool that systematically helps you deliver Clean Code.
# Tue, 04 Aug 2026 02:36:48 GMT
LABEL io.openshift.min-cpu=400m
# Tue, 04 Aug 2026 02:36:48 GMT
LABEL io.openshift.min-memory=2048M
# Tue, 04 Aug 2026 02:36:48 GMT
LABEL io.openshift.non-scalable=false
# Tue, 04 Aug 2026 02:36:48 GMT
LABEL io.openshift.tags=sonarqube,static-code-analysis,code-quality,clean-code
# Tue, 04 Aug 2026 02:36:48 GMT
LABEL org.opencontainers.image.url=https://github.com/SonarSource/docker-sonarqube
# Tue, 04 Aug 2026 02:36:48 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 02:36:48 GMT
ARG SONARQUBE_VERSION=2025.1.8.123366
# Tue, 04 Aug 2026 02:36:48 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-datacenter/sonarqube-datacenter-2025.1.8.123366.zip
# Tue, 04 Aug 2026 02:36:48 GMT
ENV DOCKER_RUNNING=true JAVA_HOME=/opt/java/openjdk SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=2025.1.8.123366 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp SONAR_CLUSTER_NODE_TYPE=application SONAR_CLUSTER_ENABLED=true
# Tue, 04 Aug 2026 02:36:48 GMT
# ARGS: SONARQUBE_VERSION=2025.1.8.123366 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-datacenter/sonarqube-datacenter-2025.1.8.123366.zip
RUN set -eux;     deluser ubuntu;     useradd --system --uid 1000 --gid 0 sonarqube;     apt-get update;     apt-get --no-install-recommends -y install         bash         curl         fonts-dejavu         gnupg         iproute2         unzip;     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt;     cd /opt;     curl --fail --location --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --fail --location --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     ln -s "${SONARQUBE_HOME}/lib/sonar-application-${SONARQUBE_VERSION}.jar" "${SONARQUBE_HOME}/lib/sonarqube.jar";     chmod -R 550 ${SONARQUBE_HOME};     chmod -R 770 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}";     apt-get remove -y gnupg unzip;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 04 Aug 2026 02:36:48 GMT
VOLUME [/opt/sonarqube/data /opt/sonarqube/extensions /opt/sonarqube/logs /opt/sonarqube/temp]
# Tue, 04 Aug 2026 02:36:48 GMT
COPY run.sh sonar.sh /opt/sonarqube/docker/ # buildkit
# Tue, 04 Aug 2026 02:36:48 GMT
WORKDIR /opt/sonarqube
# Tue, 04 Aug 2026 02:36:48 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 04 Aug 2026 02:36:48 GMT
USER sonarqube
# Tue, 04 Aug 2026 02:36:48 GMT
STOPSIGNAL SIGINT
# Tue, 04 Aug 2026 02:36:48 GMT
ENTRYPOINT ["/opt/sonarqube/docker/run.sh"]
# Tue, 04 Aug 2026 02:36:48 GMT
CMD ["/opt/sonarqube/docker/sonar.sh"]
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
	-	`sha256:f3d3743643e4915b4de738ab0ccfe56184634be189b86b7eec486583ad2e8e5c`  
		Last Modified: Tue, 04 Aug 2026 02:38:00 GMT  
		Size: 1.1 GB (1104999809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:023618b41f1dedb1ad683c8616d354cf6922c89d83e96fb4dc1aeabc8dd0884e`  
		Last Modified: Tue, 04 Aug 2026 02:37:41 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sonarqube:2025-lta-datacenter-app` - unknown; unknown

```console
$ docker pull sonarqube@sha256:8146f2146bea237fa49e4d09de5aace1849d994c9877a39e89d1917b3a624c09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4643260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb0461e3257007281229631780cecfa2aeba72e60df1e54d4ad13d96ea54f468`

```dockerfile
```

-	Layers:
	-	`sha256:0af8a84ad9cad8d0da9329c65bafc64d786d86be008eb62baa986a4e05f443fa`  
		Last Modified: Tue, 04 Aug 2026 02:37:40 GMT  
		Size: 4.6 MB (4624225 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b3aedcd500cb3218f42378a83c453c3f52c80d799fd7911e3b52ffb7103c705`  
		Last Modified: Tue, 04 Aug 2026 02:37:40 GMT  
		Size: 19.0 KB (19035 bytes)  
		MIME: application/vnd.in-toto+json

### `sonarqube:2025-lta-datacenter-app` - linux; arm64 variant v8

```console
$ docker pull sonarqube@sha256:7801a0592d6368595ee413b53e9d9601692b69cea7f2fd74ffb4eafbed0ccd9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 GB (1203191391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:460b9e6f4d166f34d97311ea0b1a4e820b91645dacd3809b15f509e8276ad991`
-	Entrypoint: `["\/opt\/sonarqube\/docker\/run.sh"]`
-	Default Command: `["\/opt\/sonarqube\/docker\/sonar.sh"]`

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
# Tue, 04 Aug 2026 02:36:51 GMT
LABEL io.k8s.description=SonarQube Server is a self-managed, automatic code review tool that systematically helps you deliver Clean Code.
# Tue, 04 Aug 2026 02:36:51 GMT
LABEL io.openshift.min-cpu=400m
# Tue, 04 Aug 2026 02:36:51 GMT
LABEL io.openshift.min-memory=2048M
# Tue, 04 Aug 2026 02:36:51 GMT
LABEL io.openshift.non-scalable=false
# Tue, 04 Aug 2026 02:36:51 GMT
LABEL io.openshift.tags=sonarqube,static-code-analysis,code-quality,clean-code
# Tue, 04 Aug 2026 02:36:51 GMT
LABEL org.opencontainers.image.url=https://github.com/SonarSource/docker-sonarqube
# Tue, 04 Aug 2026 02:36:51 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 02:36:51 GMT
ARG SONARQUBE_VERSION=2025.1.8.123366
# Tue, 04 Aug 2026 02:36:51 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-datacenter/sonarqube-datacenter-2025.1.8.123366.zip
# Tue, 04 Aug 2026 02:36:51 GMT
ENV DOCKER_RUNNING=true JAVA_HOME=/opt/java/openjdk SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=2025.1.8.123366 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp SONAR_CLUSTER_NODE_TYPE=application SONAR_CLUSTER_ENABLED=true
# Tue, 04 Aug 2026 02:36:51 GMT
# ARGS: SONARQUBE_VERSION=2025.1.8.123366 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-datacenter/sonarqube-datacenter-2025.1.8.123366.zip
RUN set -eux;     deluser ubuntu;     useradd --system --uid 1000 --gid 0 sonarqube;     apt-get update;     apt-get --no-install-recommends -y install         bash         curl         fonts-dejavu         gnupg         iproute2         unzip;     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt;     cd /opt;     curl --fail --location --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --fail --location --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     ln -s "${SONARQUBE_HOME}/lib/sonar-application-${SONARQUBE_VERSION}.jar" "${SONARQUBE_HOME}/lib/sonarqube.jar";     chmod -R 550 ${SONARQUBE_HOME};     chmod -R 770 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}";     apt-get remove -y gnupg unzip;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 04 Aug 2026 02:36:51 GMT
VOLUME [/opt/sonarqube/data /opt/sonarqube/extensions /opt/sonarqube/logs /opt/sonarqube/temp]
# Tue, 04 Aug 2026 02:36:51 GMT
COPY run.sh sonar.sh /opt/sonarqube/docker/ # buildkit
# Tue, 04 Aug 2026 02:36:51 GMT
WORKDIR /opt/sonarqube
# Tue, 04 Aug 2026 02:36:51 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 04 Aug 2026 02:36:51 GMT
USER sonarqube
# Tue, 04 Aug 2026 02:36:51 GMT
STOPSIGNAL SIGINT
# Tue, 04 Aug 2026 02:36:51 GMT
ENTRYPOINT ["/opt/sonarqube/docker/run.sh"]
# Tue, 04 Aug 2026 02:36:51 GMT
CMD ["/opt/sonarqube/docker/sonar.sh"]
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
	-	`sha256:4b7b4b7ed68e531eee85814250415a67307719f707af038f2b5a88270af6ee64`  
		Last Modified: Tue, 04 Aug 2026 02:38:04 GMT  
		Size: 1.1 GB (1105035251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44a1276dae17df1ed28e0e886a2a9e209e46d4dafec4c76b78e921dedbcb741b`  
		Last Modified: Tue, 04 Aug 2026 02:37:46 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sonarqube:2025-lta-datacenter-app` - unknown; unknown

```console
$ docker pull sonarqube@sha256:a25130f55cb92a7399dcb2b47743b948ea2a2a90dbf9523a35aad1bea2e2b34e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4643822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8b85980ce932e08f61ac403e47fbda31212127af586281e90bb87ad44a1f3ff`

```dockerfile
```

-	Layers:
	-	`sha256:0195f146506da027da9f078e43b8552b207650d75ab49eca830c053e6352e5bb`  
		Last Modified: Tue, 04 Aug 2026 02:37:47 GMT  
		Size: 4.6 MB (4624694 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:751c1c77b688309e63bbd9bf9a1627a0ac1b762302b448c3d2ca0308917b54d4`  
		Last Modified: Tue, 04 Aug 2026 02:37:46 GMT  
		Size: 19.1 KB (19128 bytes)  
		MIME: application/vnd.in-toto+json
