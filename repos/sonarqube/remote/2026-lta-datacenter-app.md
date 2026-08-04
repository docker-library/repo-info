## `sonarqube:2026-lta-datacenter-app`

```console
$ docker pull sonarqube@sha256:3d8450691c907cbe8ecd62952d1de54fb5ace9c744e99d33731472a0a9c19536
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `sonarqube:2026-lta-datacenter-app` - linux; amd64

```console
$ docker pull sonarqube@sha256:fe9c6a703a3a153afb10f2bc14d8722fe04d90f28be7ae265d9de9b26bf8df29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 GB (1651071053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d408f281da78ca766b93da3c54ef4b873c9807f10e30e57b3cfa5068f6806fc5`
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
# Tue, 04 Aug 2026 01:27:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 01:27:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:27:41 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:27:41 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:27:41 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Tue, 04 Aug 2026 01:27:48 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='4b2220e232a97997b436ca6ab15cbf70171ecff52958a46159dfa5a8c44ca4de';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        arm64)          ESUM='8d498ec88e1c1989fab95c6784240ab92d011e29c54d20a3f9c324b13476f9ad';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64el)          ESUM='3d043ae96d2343962bf2307d8c55f19849fbfa4c6be9fe164a77d79263f0d989';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        riscv64)          ESUM='40c6862e6aff63fe9a03856ba0506531b516a17bdb5018464e9006ea7f0f5fe4';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_riscv64_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='14dbe3cb226e64b945a36bea32686e8deec746504fe3ccee8de585c54af41ffd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 04 Aug 2026 01:27:49 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 01:27:49 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:27:49 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 04 Aug 2026 01:27:49 GMT
CMD ["jshell"]
# Tue, 04 Aug 2026 02:35:02 GMT
LABEL io.k8s.description=SonarQube Server is a self-managed, automatic code review tool that systematically helps you deliver Clean Code.
# Tue, 04 Aug 2026 02:35:02 GMT
LABEL io.openshift.min-cpu=400m
# Tue, 04 Aug 2026 02:35:02 GMT
LABEL io.openshift.min-memory=2048M
# Tue, 04 Aug 2026 02:35:02 GMT
LABEL io.openshift.non-scalable=false
# Tue, 04 Aug 2026 02:35:02 GMT
LABEL io.openshift.tags=sonarqube,static-code-analysis,code-quality,clean-code
# Tue, 04 Aug 2026 02:35:02 GMT
LABEL org.opencontainers.image.url=https://github.com/SonarSource/docker-sonarqube
# Tue, 04 Aug 2026 02:35:02 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 02:35:02 GMT
ARG SONARQUBE_VERSION=2026.1.4.125802
# Tue, 04 Aug 2026 02:35:02 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-datacenter/sonarqube-datacenter-2026.1.4.125802.zip
# Tue, 04 Aug 2026 02:35:02 GMT
ENV DOCKER_RUNNING=true JAVA_HOME=/opt/java/openjdk SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=2026.1.4.125802 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp SONAR_CLUSTER_NODE_TYPE=application SONAR_CLUSTER_ENABLED=true
# Tue, 04 Aug 2026 02:35:02 GMT
# ARGS: SONARQUBE_VERSION=2026.1.4.125802 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-datacenter/sonarqube-datacenter-2026.1.4.125802.zip
RUN set -eux;     deluser ubuntu;     useradd --system --uid 1000 --gid 0 sonarqube;     apt-get update;     apt-get --no-install-recommends -y install         bash         curl         fonts-dejavu         gnupg         iproute2         unzip;     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt;     cd /opt;     curl --proto "=https" --fail --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --proto "=https" --fail --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     ln -s "${SONARQUBE_HOME}/lib/sonar-application-${SONARQUBE_VERSION}.jar" "${SONARQUBE_HOME}/lib/sonarqube.jar";     chown -R sonarqube:root ${SONARQUBE_HOME};     chown -R sonarqube:root "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}";     chmod -R 550 ${SONARQUBE_HOME};     chmod -R 770 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}";     apt-get remove -y gnupg unzip;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 04 Aug 2026 02:35:02 GMT
VOLUME [/opt/sonarqube/data /opt/sonarqube/extensions /opt/sonarqube/logs /opt/sonarqube/temp]
# Tue, 04 Aug 2026 02:35:02 GMT
COPY --chown=root:root --chmod=555 run.sh sonar.sh /opt/sonarqube/docker/ # buildkit
# Tue, 04 Aug 2026 02:35:02 GMT
WORKDIR /opt/sonarqube
# Tue, 04 Aug 2026 02:35:02 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 04 Aug 2026 02:35:02 GMT
USER sonarqube
# Tue, 04 Aug 2026 02:35:02 GMT
STOPSIGNAL SIGINT
# Tue, 04 Aug 2026 02:35:02 GMT
ENTRYPOINT ["/opt/sonarqube/docker/run.sh"]
# Tue, 04 Aug 2026 02:35:02 GMT
CMD ["/opt/sonarqube/docker/sonar.sh"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7358a7dc71c863f97de95139bf8727e2371229f5e6061911712ea2fce2466d3`  
		Last Modified: Tue, 04 Aug 2026 01:28:07 GMT  
		Size: 25.3 MB (25334533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf701402aa2ea3fab637f83d0be44b0a0dab9c14a1f7bd9482ab395b354e19b4`  
		Last Modified: Tue, 04 Aug 2026 01:28:09 GMT  
		Size: 158.2 MB (158171713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28330c5e0bc975e081f4166861be4247bb1767da6f03ba4a1050e657482229fd`  
		Last Modified: Tue, 04 Aug 2026 01:28:05 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e36d95e6fd7dbd9e4f3d5d67f4cc8c9150e0c3fb6691f1b2eaab7521c2a7ed4f`  
		Last Modified: Tue, 04 Aug 2026 01:28:06 GMT  
		Size: 2.3 KB (2282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d24d1df27db8b3a8e53e08269e2f1fb71c5c075904071694bb013932856a7fd`  
		Last Modified: Tue, 04 Aug 2026 02:36:35 GMT  
		Size: 1.4 GB (1437810214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b6b42781fc49b45cd969ccb414b41a1573c466a7bf0e53dca522f01c1a947c7`  
		Last Modified: Tue, 04 Aug 2026 02:36:10 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sonarqube:2026-lta-datacenter-app` - unknown; unknown

```console
$ docker pull sonarqube@sha256:fa27e87543100ff47b6876692fcbc677172086f6b2ee399a1be87696cbfd0592
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5112908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2039c3d3a62168e98f34df4b7c5c6474a717796c7c8c1c30ced494fc47b83387`

```dockerfile
```

-	Layers:
	-	`sha256:fa3aa677ec001a028cd964da49b973559528304d2ee6a002d1143644e8ee8802`  
		Last Modified: Tue, 04 Aug 2026 02:36:10 GMT  
		Size: 5.1 MB (5093254 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7915aa4fcdf8f05ea66cda89992ab4419a3b47185b7eced27ddcb1e51fed1978`  
		Last Modified: Tue, 04 Aug 2026 02:36:09 GMT  
		Size: 19.7 KB (19654 bytes)  
		MIME: application/vnd.in-toto+json

### `sonarqube:2026-lta-datacenter-app` - linux; arm64 variant v8

```console
$ docker pull sonarqube@sha256:2e4059a5cf023b07c3e4dfe259cd8a0269b44bf4a14021ae719ba8b618d949a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.6 GB (1647332162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a81a511d0e0c844fda5d2a72f01c141fe73f265b776c5dda0a7f937afa1c58cf`
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
# Tue, 04 Aug 2026 01:27:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 01:27:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:27:53 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:27:53 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:27:53 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Tue, 04 Aug 2026 01:28:00 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='4b2220e232a97997b436ca6ab15cbf70171ecff52958a46159dfa5a8c44ca4de';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        arm64)          ESUM='8d498ec88e1c1989fab95c6784240ab92d011e29c54d20a3f9c324b13476f9ad';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64el)          ESUM='3d043ae96d2343962bf2307d8c55f19849fbfa4c6be9fe164a77d79263f0d989';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        riscv64)          ESUM='40c6862e6aff63fe9a03856ba0506531b516a17bdb5018464e9006ea7f0f5fe4';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_riscv64_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='14dbe3cb226e64b945a36bea32686e8deec746504fe3ccee8de585c54af41ffd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 04 Aug 2026 01:28:01 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 01:28:01 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:28:01 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 04 Aug 2026 01:28:01 GMT
CMD ["jshell"]
# Tue, 04 Aug 2026 02:35:01 GMT
LABEL io.k8s.description=SonarQube Server is a self-managed, automatic code review tool that systematically helps you deliver Clean Code.
# Tue, 04 Aug 2026 02:35:01 GMT
LABEL io.openshift.min-cpu=400m
# Tue, 04 Aug 2026 02:35:01 GMT
LABEL io.openshift.min-memory=2048M
# Tue, 04 Aug 2026 02:35:01 GMT
LABEL io.openshift.non-scalable=false
# Tue, 04 Aug 2026 02:35:01 GMT
LABEL io.openshift.tags=sonarqube,static-code-analysis,code-quality,clean-code
# Tue, 04 Aug 2026 02:35:01 GMT
LABEL org.opencontainers.image.url=https://github.com/SonarSource/docker-sonarqube
# Tue, 04 Aug 2026 02:35:01 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 02:35:01 GMT
ARG SONARQUBE_VERSION=2026.1.4.125802
# Tue, 04 Aug 2026 02:35:01 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-datacenter/sonarqube-datacenter-2026.1.4.125802.zip
# Tue, 04 Aug 2026 02:35:01 GMT
ENV DOCKER_RUNNING=true JAVA_HOME=/opt/java/openjdk SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=2026.1.4.125802 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp SONAR_CLUSTER_NODE_TYPE=application SONAR_CLUSTER_ENABLED=true
# Tue, 04 Aug 2026 02:35:01 GMT
# ARGS: SONARQUBE_VERSION=2026.1.4.125802 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-datacenter/sonarqube-datacenter-2026.1.4.125802.zip
RUN set -eux;     deluser ubuntu;     useradd --system --uid 1000 --gid 0 sonarqube;     apt-get update;     apt-get --no-install-recommends -y install         bash         curl         fonts-dejavu         gnupg         iproute2         unzip;     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt;     cd /opt;     curl --proto "=https" --fail --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --proto "=https" --fail --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     ln -s "${SONARQUBE_HOME}/lib/sonar-application-${SONARQUBE_VERSION}.jar" "${SONARQUBE_HOME}/lib/sonarqube.jar";     chown -R sonarqube:root ${SONARQUBE_HOME};     chown -R sonarqube:root "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}";     chmod -R 550 ${SONARQUBE_HOME};     chmod -R 770 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}";     apt-get remove -y gnupg unzip;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 04 Aug 2026 02:35:01 GMT
VOLUME [/opt/sonarqube/data /opt/sonarqube/extensions /opt/sonarqube/logs /opt/sonarqube/temp]
# Tue, 04 Aug 2026 02:35:01 GMT
COPY --chown=root:root --chmod=555 run.sh sonar.sh /opt/sonarqube/docker/ # buildkit
# Tue, 04 Aug 2026 02:35:01 GMT
WORKDIR /opt/sonarqube
# Tue, 04 Aug 2026 02:35:01 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 04 Aug 2026 02:35:01 GMT
USER sonarqube
# Tue, 04 Aug 2026 02:35:01 GMT
STOPSIGNAL SIGINT
# Tue, 04 Aug 2026 02:35:01 GMT
ENTRYPOINT ["/opt/sonarqube/docker/run.sh"]
# Tue, 04 Aug 2026 02:35:01 GMT
CMD ["/opt/sonarqube/docker/sonar.sh"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:637c998a22e095ce8227ee823e5959611df5b64bebc7d11bb208b7b3996e891e`  
		Last Modified: Tue, 04 Aug 2026 01:28:19 GMT  
		Size: 24.1 MB (24125432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:343d0e2926bdecc0434642718cd6a795cd1149e4bdf0bdb4d9163ed9ad7a3729`  
		Last Modified: Tue, 04 Aug 2026 01:28:22 GMT  
		Size: 156.5 MB (156473409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ecf76a721c39b00801f46f5c34c402f1b5df913f4e1cf0e87f27224b4d5a855`  
		Last Modified: Tue, 04 Aug 2026 01:28:18 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20e084029aa67c3f2a3b5154665a73aa722259bd1ccee618bf2ce9955da99d2b`  
		Last Modified: Tue, 04 Aug 2026 01:28:18 GMT  
		Size: 2.3 KB (2282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1012a72ab8c23ef296d81e8413940246394dfbeb8e20fc381f3405cb5d9e8dfe`  
		Last Modified: Tue, 04 Aug 2026 02:36:43 GMT  
		Size: 1.4 GB (1437843020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c29e848162296238b002cf4bf84c1a5aac9746f5d3e107ad8bdf3c847ef35909`  
		Last Modified: Tue, 04 Aug 2026 02:36:16 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sonarqube:2026-lta-datacenter-app` - unknown; unknown

```console
$ docker pull sonarqube@sha256:b95e5301fa621255f6bc206b29f159b25206cfaef71a87ac76ad0eb83c0f6f6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5244519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e7caecea854ea1fc78bc1a4a46b447a5544d1694be005f96de5907b50f9fb32`

```dockerfile
```

-	Layers:
	-	`sha256:0f2048de77d11bc764a95463007e6f79daa458a3775b4e5e0c772089d2f4c56c`  
		Last Modified: Tue, 04 Aug 2026 02:36:16 GMT  
		Size: 5.2 MB (5224773 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64d5067f20427adc536c00ad45cb9ca449d4527bd4febc255a0a183b2af9cd81`  
		Last Modified: Tue, 04 Aug 2026 02:36:16 GMT  
		Size: 19.7 KB (19746 bytes)  
		MIME: application/vnd.in-toto+json
