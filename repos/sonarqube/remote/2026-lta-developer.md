## `sonarqube:2026-lta-developer`

```console
$ docker pull sonarqube@sha256:7c6ce603f89d8c886ba08060e1753902ea6ffef6b44ed8a735affb16b5bafd77
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `sonarqube:2026-lta-developer` - linux; amd64

```console
$ docker pull sonarqube@sha256:c0b6a4fe9a3317dfdf2bfa7b1e1a4acd739cbc4a7559f6318ce643d910252731
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1521389764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bddc9c1a342f587e816b2a0b9989222d356c269b43226533d7094ec4b64d6cc7`
-	Entrypoint: `["\/opt\/sonarqube\/docker\/entrypoint.sh"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:19:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:19:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:19:36 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:19:36 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:19:36 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Sat, 17 Oct 2026 00:19:42 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='ce79869e1307ed8ee1e2baa86a412b1eb5b75d10a01006d788a6f968bcfaee94';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='23e37e026f12f3e706f18938ff611db3032d075b09d0879a25d06718c773e223';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='042482fa372f12741ceb721397e277b4e69672182aaa45a1bf7af55d9ba876d6';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        riscv64)          ESUM='e6cac9a9f74a001bd21644461697be1ad0d06c9c69076b51984dc9f3b1bb2478';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_riscv64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='806bb29b0d408eb6312cda0a1e756bc91e554ef9ed6a5863f6004e502f6c789a';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sat, 17 Oct 2026 00:19:44 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:19:44 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:19:44 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 17 Oct 2026 00:19:44 GMT
CMD ["jshell"]
# Sat, 17 Oct 2026 01:33:55 GMT
LABEL io.k8s.description=SonarQube Server is a self-managed, automatic code review tool that systematically helps you deliver Clean Code.
# Sat, 17 Oct 2026 01:33:55 GMT
LABEL io.openshift.min-cpu=400m
# Sat, 17 Oct 2026 01:33:55 GMT
LABEL io.openshift.min-memory=2048M
# Sat, 17 Oct 2026 01:33:55 GMT
LABEL io.openshift.non-scalable=true
# Sat, 17 Oct 2026 01:33:55 GMT
LABEL io.openshift.tags=sonarqube,static-code-analysis,code-quality,clean-code
# Sat, 17 Oct 2026 01:33:55 GMT
LABEL org.opencontainers.image.url=https://github.com/SonarSource/docker-sonarqube
# Sat, 17 Oct 2026 01:33:55 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 01:33:55 GMT
ARG SONARQUBE_VERSION=2026.1.6.131977
# Sat, 17 Oct 2026 01:33:55 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-developer/sonarqube-developer-2026.1.6.131977.zip
# Sat, 17 Oct 2026 01:33:55 GMT
ENV DOCKER_RUNNING=true JAVA_HOME=/opt/java/openjdk SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=2026.1.6.131977 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp
# Sat, 17 Oct 2026 01:33:55 GMT
ENV ES_TMPDIR=/opt/sonarqube/temp
# Sat, 17 Oct 2026 01:33:55 GMT
# ARGS: SONARQUBE_VERSION=2026.1.6.131977 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-developer/sonarqube-developer-2026.1.6.131977.zip
RUN set -eux;     deluser ubuntu;     useradd --system --uid 1000 --gid 0 sonarqube;     apt-get update;     apt-get --no-install-recommends -y install         bash         curl         fonts-dejavu         gnupg         unzip;     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt;     cd /opt;     curl --proto "=https" --fail --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --proto "=https" --fail --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     ln -s "${SONARQUBE_HOME}/lib/sonar-application-${SONARQUBE_VERSION}.jar" "${SONARQUBE_HOME}/lib/sonarqube.jar";     chown -R sonarqube:root ${SONARQUBE_HOME};     chown -R sonarqube:root "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}";     chmod -R 550 ${SONARQUBE_HOME};     chmod -R 770 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}";     apt-get remove -y gnupg unzip;     rm -rf /var/lib/apt/lists/*; # buildkit
# Sat, 17 Oct 2026 01:33:55 GMT
VOLUME [/opt/sonarqube/data /opt/sonarqube/extensions /opt/sonarqube/logs /opt/sonarqube/temp]
# Sat, 17 Oct 2026 01:33:55 GMT
COPY --chown=root:root --chmod=555 entrypoint.sh /opt/sonarqube/docker/ # buildkit
# Sat, 17 Oct 2026 01:33:55 GMT
WORKDIR /opt/sonarqube
# Sat, 17 Oct 2026 01:33:55 GMT
EXPOSE map[9000/tcp:{}]
# Sat, 17 Oct 2026 01:33:55 GMT
USER sonarqube
# Sat, 17 Oct 2026 01:33:55 GMT
STOPSIGNAL SIGINT
# Sat, 17 Oct 2026 01:33:55 GMT
ENTRYPOINT ["/opt/sonarqube/docker/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08c3a1272bb5b21937c5ca3a766245b98f9360f4fb1232287604ddeee38d7111`  
		Last Modified: Sat, 17 Oct 2026 00:20:02 GMT  
		Size: 23.0 MB (22954946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53480070bb1d3b749745470d6e760b24c1dbf0e9a1beea32c5312c155ad1f17c`  
		Last Modified: Sat, 17 Oct 2026 00:20:05 GMT  
		Size: 158.1 MB (158122683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:602b834d64004b0c076b67ce206ca7e5c3441239074be67770a6f68dbbff790f`  
		Last Modified: Sat, 17 Oct 2026 00:20:01 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71739640f1d3996f63e040adc4f9ffde99c0a1ab419bf4e8e12d08792053fd0e`  
		Last Modified: Sat, 17 Oct 2026 00:20:01 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d08ecb262ea51c856df3bd02da41384d336461eef5b431fc505f022c95107033`  
		Last Modified: Sat, 17 Oct 2026 01:35:25 GMT  
		Size: 1.3 GB (1310543260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a50ca717612e07e0010f819ab90b114c284409058addabd076d40c4122988b3`  
		Last Modified: Sat, 17 Oct 2026 01:34:59 GMT  
		Size: 461.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sonarqube:2026-lta-developer` - unknown; unknown

```console
$ docker pull sonarqube@sha256:a67ed3bd9307c4221cddb587fe4e42e414790d3de85b846c4cde38caf7ab8cdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (4951859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49477120d533bf51f20e69f17eb6f120f737aeb93e58079877510bc5ef097351`

```dockerfile
```

-	Layers:
	-	`sha256:d4facdc823f57699b07d0ea0e530d78f28fe4677ca6fdc6d97354419eadef31d`  
		Last Modified: Sat, 17 Oct 2026 01:34:59 GMT  
		Size: 4.9 MB (4932719 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee17346882d5c0005dfcaf883d95b6da9dac274b8a05d144238e1af552248dbb`  
		Last Modified: Sat, 17 Oct 2026 01:34:59 GMT  
		Size: 19.1 KB (19140 bytes)  
		MIME: application/vnd.in-toto+json

### `sonarqube:2026-lta-developer` - linux; arm64 variant v8

```console
$ docker pull sonarqube@sha256:4e93e52bdf19df529d923dbab58670c7561681bcfa938a0b4d985743ee1a843f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1520050107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86e9083d4b43874e9bb083b008231b2ebeee55a28e0dbe2bae814292f8912d27`
-	Entrypoint: `["\/opt\/sonarqube\/docker\/entrypoint.sh"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:19:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:19:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:19:25 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:19:25 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:19:25 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Sat, 17 Oct 2026 00:19:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='ce79869e1307ed8ee1e2baa86a412b1eb5b75d10a01006d788a6f968bcfaee94';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='23e37e026f12f3e706f18938ff611db3032d075b09d0879a25d06718c773e223';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='042482fa372f12741ceb721397e277b4e69672182aaa45a1bf7af55d9ba876d6';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        riscv64)          ESUM='e6cac9a9f74a001bd21644461697be1ad0d06c9c69076b51984dc9f3b1bb2478';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_riscv64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='806bb29b0d408eb6312cda0a1e756bc91e554ef9ed6a5863f6004e502f6c789a';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sat, 17 Oct 2026 00:19:34 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:19:34 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:19:34 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 17 Oct 2026 00:19:34 GMT
CMD ["jshell"]
# Sat, 17 Oct 2026 01:34:47 GMT
LABEL io.k8s.description=SonarQube Server is a self-managed, automatic code review tool that systematically helps you deliver Clean Code.
# Sat, 17 Oct 2026 01:34:47 GMT
LABEL io.openshift.min-cpu=400m
# Sat, 17 Oct 2026 01:34:47 GMT
LABEL io.openshift.min-memory=2048M
# Sat, 17 Oct 2026 01:34:47 GMT
LABEL io.openshift.non-scalable=true
# Sat, 17 Oct 2026 01:34:47 GMT
LABEL io.openshift.tags=sonarqube,static-code-analysis,code-quality,clean-code
# Sat, 17 Oct 2026 01:34:47 GMT
LABEL org.opencontainers.image.url=https://github.com/SonarSource/docker-sonarqube
# Sat, 17 Oct 2026 01:34:47 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 01:34:47 GMT
ARG SONARQUBE_VERSION=2026.1.6.131977
# Sat, 17 Oct 2026 01:34:47 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-developer/sonarqube-developer-2026.1.6.131977.zip
# Sat, 17 Oct 2026 01:34:47 GMT
ENV DOCKER_RUNNING=true JAVA_HOME=/opt/java/openjdk SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=2026.1.6.131977 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp
# Sat, 17 Oct 2026 01:34:47 GMT
ENV ES_TMPDIR=/opt/sonarqube/temp
# Sat, 17 Oct 2026 01:34:47 GMT
# ARGS: SONARQUBE_VERSION=2026.1.6.131977 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-developer/sonarqube-developer-2026.1.6.131977.zip
RUN set -eux;     deluser ubuntu;     useradd --system --uid 1000 --gid 0 sonarqube;     apt-get update;     apt-get --no-install-recommends -y install         bash         curl         fonts-dejavu         gnupg         unzip;     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt;     cd /opt;     curl --proto "=https" --fail --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --proto "=https" --fail --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     ln -s "${SONARQUBE_HOME}/lib/sonar-application-${SONARQUBE_VERSION}.jar" "${SONARQUBE_HOME}/lib/sonarqube.jar";     chown -R sonarqube:root ${SONARQUBE_HOME};     chown -R sonarqube:root "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}";     chmod -R 550 ${SONARQUBE_HOME};     chmod -R 770 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}";     apt-get remove -y gnupg unzip;     rm -rf /var/lib/apt/lists/*; # buildkit
# Sat, 17 Oct 2026 01:34:47 GMT
VOLUME [/opt/sonarqube/data /opt/sonarqube/extensions /opt/sonarqube/logs /opt/sonarqube/temp]
# Sat, 17 Oct 2026 01:34:47 GMT
COPY --chown=root:root --chmod=555 entrypoint.sh /opt/sonarqube/docker/ # buildkit
# Sat, 17 Oct 2026 01:34:47 GMT
WORKDIR /opt/sonarqube
# Sat, 17 Oct 2026 01:34:47 GMT
EXPOSE map[9000/tcp:{}]
# Sat, 17 Oct 2026 01:34:47 GMT
USER sonarqube
# Sat, 17 Oct 2026 01:34:47 GMT
STOPSIGNAL SIGINT
# Sat, 17 Oct 2026 01:34:47 GMT
ENTRYPOINT ["/opt/sonarqube/docker/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2291cf3b7044f9378e9e7eded2523be56e0af189bba7fc67ff340fdc23ca00a`  
		Last Modified: Sat, 17 Oct 2026 00:19:52 GMT  
		Size: 24.2 MB (24154444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c230956ad3b5af83590f7fb08ffe04cc2be374e36786d95ebe1cd6452ca2c662`  
		Last Modified: Sat, 17 Oct 2026 00:19:55 GMT  
		Size: 156.4 MB (156409572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da57c614149da8518d4ea2293d6362f10da0d29b68292845d4c035cef78170a8`  
		Last Modified: Sat, 17 Oct 2026 00:19:51 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b2455c2e14210e9a4339eedea65435aa256bcd3a4e02ec096552287ef1e75ef`  
		Last Modified: Sat, 17 Oct 2026 00:19:51 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56f03fe02cb0875dc97534c929cfc1cc3c4ef93554e52882c3fb246b3d6d877c`  
		Last Modified: Sat, 17 Oct 2026 01:36:19 GMT  
		Size: 1.3 GB (1310543214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11bd492cb33e39195a8f3416af4086141a50851c39001605185b8dd0af7eba39`  
		Last Modified: Sat, 17 Oct 2026 01:35:57 GMT  
		Size: 460.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sonarqube:2026-lta-developer` - unknown; unknown

```console
$ docker pull sonarqube@sha256:a193764026c1282284e5bad01a132a6d62afcc81c8fb201e343c78e8743e5070
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5083460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9e53b50e9c9d8715150aa99d5c7b3f65dedb6c5fbe469b0ebd874ad230606bd`

```dockerfile
```

-	Layers:
	-	`sha256:77b9cfa23c407694e106a35df987cbe975ef5902d1a773591d42c06e74d08533`  
		Last Modified: Sat, 17 Oct 2026 01:35:57 GMT  
		Size: 5.1 MB (5064228 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7f1e04c7dd1328531482dc94f602d8262cf0f2a47ece2d847f3ee5a497d7b99`  
		Last Modified: Sat, 17 Oct 2026 01:35:57 GMT  
		Size: 19.2 KB (19232 bytes)  
		MIME: application/vnd.in-toto+json
