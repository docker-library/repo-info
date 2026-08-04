## `sonarqube:community`

```console
$ docker pull sonarqube@sha256:d4899d380ad9d7b63ebaa751e047f5a4f064f8902cdf7c1a3c3c96f7d71600ed
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `sonarqube:community` - linux; amd64

```console
$ docker pull sonarqube@sha256:22dd88fc5d2f0ff5eef96e9e9bd06fd72cad58209cdcf7bd96acf156ec43db74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1058566693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ac3dc7c1e69bc724d6c50cc688c32b9995886dd78ee19656e6483671cea4287`
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
# Tue, 04 Aug 2026 01:27:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 01:27:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:27:59 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:27:59 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:27:59 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Tue, 04 Aug 2026 01:28:16 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='69264a7a211bf5029830d07bc3370f879769d62ebc5b5488e90c9343a2da0e1f';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        arm64)          ESUM='3e4287cb98870ba824ed698854bdc27cff984254caf66dd12cc291e7bfdde26b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64el)          ESUM='72b0fbb201716ca465ab704ec0fb12971abab3fdde5ae8d03b125a273522cf05';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        riscv64)          ESUM='3b23af7f7dfe82e1dc66509cb825d82d08372f2e7f66ae85a7fdb42a4c84bfcc';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_riscv64_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='24b497d10acb6ee706ca30e1c8a929785c250cad54c5c12f1f8f93c3c06a53f7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 04 Aug 2026 01:28:17 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 01:28:17 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:28:17 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 04 Aug 2026 01:28:17 GMT
CMD ["jshell"]
# Tue, 04 Aug 2026 02:37:15 GMT
LABEL io.k8s.description=SonarQube Community Build is a self-managed, automatic code review tool that systematically helps you deliver Clean Code.
# Tue, 04 Aug 2026 02:37:15 GMT
LABEL io.openshift.min-cpu=400m
# Tue, 04 Aug 2026 02:37:15 GMT
LABEL io.openshift.min-memory=2048M
# Tue, 04 Aug 2026 02:37:15 GMT
LABEL io.openshift.non-scalable=true
# Tue, 04 Aug 2026 02:37:15 GMT
LABEL io.openshift.tags=sonarqube,static-code-analysis,code-quality,clean-code
# Tue, 04 Aug 2026 02:37:15 GMT
LABEL org.opencontainers.image.url=https://github.com/SonarSource/docker-sonarqube
# Tue, 04 Aug 2026 02:37:15 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 02:37:15 GMT
ARG SONARQUBE_VERSION=26.7.0.124771
# Tue, 04 Aug 2026 02:37:15 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-26.7.0.124771.zip
# Tue, 04 Aug 2026 02:37:15 GMT
ENV DOCKER_RUNNING=true JAVA_HOME=/opt/java/openjdk SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=26.7.0.124771 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp
# Tue, 04 Aug 2026 02:37:15 GMT
ENV ES_TMPDIR=/opt/sonarqube/temp
# Tue, 04 Aug 2026 02:37:15 GMT
# ARGS: SONARQUBE_VERSION=26.7.0.124771 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-26.7.0.124771.zip
RUN set -eux;     deluser ubuntu;     useradd --system --uid 1000 --gid 0 sonarqube;     apt-get update;     apt-get --no-install-recommends -y install         bash         curl         fonts-dejavu         gnupg         unzip;     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     cd /opt;     curl --proto "=https" --fail --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --proto "=https" --fail --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     ln -s "${SONARQUBE_HOME}/lib/sonar-application-${SONARQUBE_VERSION}.jar" "${SONARQUBE_HOME}/lib/sonarqube.jar";     chown -R sonarqube:root ${SONARQUBE_HOME};     chown -R sonarqube:root "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}";     chmod -R 550 ${SONARQUBE_HOME};     chmod -R 770 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}";     apt-get remove -y gnupg unzip;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 04 Aug 2026 02:37:15 GMT
VOLUME [/opt/sonarqube/data /opt/sonarqube/extensions /opt/sonarqube/logs /opt/sonarqube/temp]
# Tue, 04 Aug 2026 02:37:15 GMT
COPY --chown=root:root --chmod=555 entrypoint.sh /opt/sonarqube/docker/ # buildkit
# Tue, 04 Aug 2026 02:37:15 GMT
WORKDIR /opt/sonarqube
# Tue, 04 Aug 2026 02:37:15 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 04 Aug 2026 02:37:15 GMT
USER sonarqube
# Tue, 04 Aug 2026 02:37:15 GMT
STOPSIGNAL SIGINT
# Tue, 04 Aug 2026 02:37:15 GMT
ENTRYPOINT ["/opt/sonarqube/docker/entrypoint.sh"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e114ca80d2ed4a6b1765e2ee6c9e132487db783ff7bd285f70e2d0ccbf72e2bd`  
		Last Modified: Tue, 04 Aug 2026 01:28:32 GMT  
		Size: 19.8 MB (19828086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6c4211cf8b166c341a578a243636a11483ae2a234e21a0bb6dbafd983620dd1`  
		Last Modified: Tue, 04 Aug 2026 01:28:34 GMT  
		Size: 92.7 MB (92709386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b73294fa41f7a6c46f1f48beabae0e660cf601bc46057a3a26d26b24b154b79e`  
		Last Modified: Tue, 04 Aug 2026 01:28:31 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d9954fc77b70c89c80a5a8915d2ec3e41596266b970043e3b3c83a7279389f1`  
		Last Modified: Tue, 04 Aug 2026 02:38:13 GMT  
		Size: 916.3 MB (916275303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eac331ee4d5fa8723bab470b53d45834fd8242312886bc8131bde3566617971`  
		Last Modified: Tue, 04 Aug 2026 02:37:58 GMT  
		Size: 462.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sonarqube:community` - unknown; unknown

```console
$ docker pull sonarqube@sha256:32219dd7353c116a013975b798f489d7139728f4f8379b76f6045ad9c61d8b9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4579103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:523ef88f1ccf13b1469bd19e4f321529c8284b2ed22e3ede5849ffa1b0a03664`

```dockerfile
```

-	Layers:
	-	`sha256:75ca3d600fd0cae2803399b253d46fb787019ac1f7c19c3228c353b680023330`  
		Last Modified: Tue, 04 Aug 2026 02:37:58 GMT  
		Size: 4.6 MB (4560217 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a43eb8648a484dd8db545645a37293c19a1cbcd5236ff5ea8117347ceb777e4a`  
		Last Modified: Tue, 04 Aug 2026 02:37:58 GMT  
		Size: 18.9 KB (18886 bytes)  
		MIME: application/vnd.in-toto+json

### `sonarqube:community` - linux; arm64 variant v8

```console
$ docker pull sonarqube@sha256:377c121e6f1676dccd04104b578726c2b03e216517955b224df2efeed1fa3ad8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1055469137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab483559746cca36f446dde531f951a6d2ea010bf7a4a938dea24cd43e55c565`
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
# Tue, 04 Aug 2026 01:28:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 01:28:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:28:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:28:17 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:28:17 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Tue, 04 Aug 2026 01:28:35 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='69264a7a211bf5029830d07bc3370f879769d62ebc5b5488e90c9343a2da0e1f';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        arm64)          ESUM='3e4287cb98870ba824ed698854bdc27cff984254caf66dd12cc291e7bfdde26b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64el)          ESUM='72b0fbb201716ca465ab704ec0fb12971abab3fdde5ae8d03b125a273522cf05';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        riscv64)          ESUM='3b23af7f7dfe82e1dc66509cb825d82d08372f2e7f66ae85a7fdb42a4c84bfcc';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_riscv64_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='24b497d10acb6ee706ca30e1c8a929785c250cad54c5c12f1f8f93c3c06a53f7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 04 Aug 2026 01:28:36 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 01:28:36 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:28:36 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 04 Aug 2026 01:28:36 GMT
CMD ["jshell"]
# Tue, 04 Aug 2026 02:37:18 GMT
LABEL io.k8s.description=SonarQube Community Build is a self-managed, automatic code review tool that systematically helps you deliver Clean Code.
# Tue, 04 Aug 2026 02:37:18 GMT
LABEL io.openshift.min-cpu=400m
# Tue, 04 Aug 2026 02:37:18 GMT
LABEL io.openshift.min-memory=2048M
# Tue, 04 Aug 2026 02:37:18 GMT
LABEL io.openshift.non-scalable=true
# Tue, 04 Aug 2026 02:37:18 GMT
LABEL io.openshift.tags=sonarqube,static-code-analysis,code-quality,clean-code
# Tue, 04 Aug 2026 02:37:18 GMT
LABEL org.opencontainers.image.url=https://github.com/SonarSource/docker-sonarqube
# Tue, 04 Aug 2026 02:37:18 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 02:37:18 GMT
ARG SONARQUBE_VERSION=26.7.0.124771
# Tue, 04 Aug 2026 02:37:18 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-26.7.0.124771.zip
# Tue, 04 Aug 2026 02:37:18 GMT
ENV DOCKER_RUNNING=true JAVA_HOME=/opt/java/openjdk SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=26.7.0.124771 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp
# Tue, 04 Aug 2026 02:37:18 GMT
ENV ES_TMPDIR=/opt/sonarqube/temp
# Tue, 04 Aug 2026 02:37:18 GMT
# ARGS: SONARQUBE_VERSION=26.7.0.124771 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-26.7.0.124771.zip
RUN set -eux;     deluser ubuntu;     useradd --system --uid 1000 --gid 0 sonarqube;     apt-get update;     apt-get --no-install-recommends -y install         bash         curl         fonts-dejavu         gnupg         unzip;     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     cd /opt;     curl --proto "=https" --fail --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --proto "=https" --fail --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     ln -s "${SONARQUBE_HOME}/lib/sonar-application-${SONARQUBE_VERSION}.jar" "${SONARQUBE_HOME}/lib/sonarqube.jar";     chown -R sonarqube:root ${SONARQUBE_HOME};     chown -R sonarqube:root "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}";     chmod -R 550 ${SONARQUBE_HOME};     chmod -R 770 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}";     apt-get remove -y gnupg unzip;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 04 Aug 2026 02:37:18 GMT
VOLUME [/opt/sonarqube/data /opt/sonarqube/extensions /opt/sonarqube/logs /opt/sonarqube/temp]
# Tue, 04 Aug 2026 02:37:18 GMT
COPY --chown=root:root --chmod=555 entrypoint.sh /opt/sonarqube/docker/ # buildkit
# Tue, 04 Aug 2026 02:37:18 GMT
WORKDIR /opt/sonarqube
# Tue, 04 Aug 2026 02:37:18 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 04 Aug 2026 02:37:18 GMT
USER sonarqube
# Tue, 04 Aug 2026 02:37:18 GMT
STOPSIGNAL SIGINT
# Tue, 04 Aug 2026 02:37:18 GMT
ENTRYPOINT ["/opt/sonarqube/docker/entrypoint.sh"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25ed069f90f15a680a4172bcfc939f3b19f515324adc5e2cc5d49903078a7174`  
		Last Modified: Tue, 04 Aug 2026 01:28:53 GMT  
		Size: 18.6 MB (18610177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6a4bb517aefe279c48d7a4969d01db15eb2053a6d103095a3ea82f81d072e87`  
		Last Modified: Tue, 04 Aug 2026 01:28:55 GMT  
		Size: 91.7 MB (91677319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4769e34633a65b5826693a6179a5241f0ded5fcc908dfed6d4b4cfdde740ab45`  
		Last Modified: Tue, 04 Aug 2026 01:28:52 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54c2f8a5f891bd5971187067a4aa4772a15d633d25b5750131710bd20f91b362`  
		Last Modified: Tue, 04 Aug 2026 02:38:22 GMT  
		Size: 916.3 MB (916292016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c80680320f49a23c81f590f453eb44d40417c2e49d0c72921aab71ecd0e546db`  
		Last Modified: Tue, 04 Aug 2026 02:38:06 GMT  
		Size: 460.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sonarqube:community` - unknown; unknown

```console
$ docker pull sonarqube@sha256:69fbdddce191f2c8e862ddfe51eb3667b91c9d151571536a5fa61a7dc7036c46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4710701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d603ea8079d9d84f7e16516fc242340f1eb13f4c9177e1a19a97f3cac9f71b7`

```dockerfile
```

-	Layers:
	-	`sha256:e9e15975fce14ab801863d3d8c8f39a6f19fa09b834a7424db2db7c528b8b154`  
		Last Modified: Tue, 04 Aug 2026 02:38:06 GMT  
		Size: 4.7 MB (4691723 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d55fad3a8d78855690e4074eb6990c236703a22df4251ec6837cc1d0a6b0a62`  
		Last Modified: Tue, 04 Aug 2026 02:38:06 GMT  
		Size: 19.0 KB (18978 bytes)  
		MIME: application/vnd.in-toto+json
