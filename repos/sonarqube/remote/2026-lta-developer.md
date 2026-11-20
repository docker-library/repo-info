## `sonarqube:2026-lta-developer`

```console
$ docker pull sonarqube@sha256:223055a0406c16f5fee661b3efdfdb1b180bc7142cacfbc7dc81793fa4cf2841
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `sonarqube:2026-lta-developer` - linux; amd64

```console
$ docker pull sonarqube@sha256:91e98d7ab32667a1031db7f5c118d0831567a1a1425af0421afb318e51d798a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1533708579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:922c0a9bfc55acb959f1aab8c92e436f07031ad5c0a3f92b1e723d77d96c5ae7`
-	Entrypoint: `["\/opt\/sonarqube\/docker\/entrypoint.sh"]`

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
# Fri, 20 Nov 2026 03:16:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:16:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:16:46 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:16:46 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:16:46 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Fri, 20 Nov 2026 03:16:55 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='d7f5d5cf865a2902b70ff549b97586a7d3f234e016f041ab447ea740c7d66d1c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='e3522e707fc7dbe2a72c30746b1e7068301a0213ecd213d4491f35a14eb55578';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='cfaedcc659213833ead9c2a50987d8dcbd0e7a2d82217abb43acb64c0dd3d8cc';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        riscv64)          ESUM='639d712c96899ec84e95394f90e8b4cc6a0ad0154bbec2fe657f8da00b182013';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_riscv64_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='597271ef81f7e4d0e2b86aa6e4d484af194253bdf238908a8394b78970dff713';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:16:56 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:16:56 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:16:56 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 03:16:56 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 04:27:43 GMT
LABEL io.k8s.description=SonarQube Server is a self-managed, automatic code review tool that systematically helps you deliver Clean Code.
# Fri, 20 Nov 2026 04:27:43 GMT
LABEL io.openshift.min-cpu=400m
# Fri, 20 Nov 2026 04:27:43 GMT
LABEL io.openshift.min-memory=2048M
# Fri, 20 Nov 2026 04:27:43 GMT
LABEL io.openshift.non-scalable=true
# Fri, 20 Nov 2026 04:27:43 GMT
LABEL io.openshift.tags=sonarqube,static-code-analysis,code-quality,clean-code
# Fri, 20 Nov 2026 04:27:43 GMT
LABEL org.opencontainers.image.url=https://github.com/SonarSource/docker-sonarqube
# Fri, 20 Nov 2026 04:27:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 04:27:43 GMT
ARG SONARQUBE_VERSION=2026.1.8.133950
# Fri, 20 Nov 2026 04:27:43 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-developer/sonarqube-developer-2026.1.8.133950.zip
# Fri, 20 Nov 2026 04:27:43 GMT
ENV DOCKER_RUNNING=true JAVA_HOME=/opt/java/openjdk SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=2026.1.8.133950 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp
# Fri, 20 Nov 2026 04:27:43 GMT
ENV ES_TMPDIR=/opt/sonarqube/temp
# Fri, 20 Nov 2026 04:27:43 GMT
# ARGS: SONARQUBE_VERSION=2026.1.8.133950 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-developer/sonarqube-developer-2026.1.8.133950.zip
RUN set -eux;     deluser ubuntu;     useradd --system --uid 1000 --gid 0 sonarqube;     apt-get update;     apt-get --no-install-recommends -y install         bash         ca-certificates         curl         fonts-dejavu         gnupg         unzip;     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     emsign_g3_alias='cn_emsign_ecc_root_ca__g3,o_emudhra_technologies_limited,ou_emsign_pki,c_in [jdk]';     emsign_g3_sha256='86:A1:EC:BA:08:9C:4A:8D:3B:BE:27:34:C6:12:BA:34:1D:81:3E:04:3C:F9:E8:A8:62:CD:5C:57:A3:6B:BE:6B';     if keytool -list -cacerts -storepass changeit -alias "${emsign_g3_alias}" > /dev/null 2>&1; then         keytool -delete -cacerts -storepass changeit -alias "${emsign_g3_alias}";     fi;     keytool -list -cacerts -storepass changeit > /tmp/cacerts.txt;     if grep -q "${emsign_g3_sha256}" /tmp/cacerts.txt; then         echo "emSign ECC Root CA - G3 is still trusted by the JDK" >&2; exit 1;     fi;     rm /tmp/cacerts.txt;     if [ -e /etc/ssl/certs/emSign_ECC_Root_CA_-_G3.pem ]; then         echo "emSign ECC Root CA - G3 is still trusted by the OS"             "(ca-certificates $(dpkg-query -W -f='${Version}' ca-certificates))" >&2;         exit 1;     fi;     for server in $(shuf -e hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt;     cd /opt;     curl --proto "=https" --fail --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --proto "=https" --fail --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     ln -s "${SONARQUBE_HOME}/lib/sonar-application-${SONARQUBE_VERSION}.jar" "${SONARQUBE_HOME}/lib/sonarqube.jar";     chown -R sonarqube:root ${SONARQUBE_HOME};     chown -R sonarqube:root "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}";     chmod -R 550 ${SONARQUBE_HOME};     chmod -R 770 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}";     apt-get remove -y gnupg unzip;     rm -rf /var/lib/apt/lists/*; # buildkit
# Fri, 20 Nov 2026 04:27:43 GMT
VOLUME [/opt/sonarqube/data /opt/sonarqube/extensions /opt/sonarqube/logs /opt/sonarqube/temp]
# Fri, 20 Nov 2026 04:27:43 GMT
COPY --chown=root:root --chmod=555 entrypoint.sh /opt/sonarqube/docker/ # buildkit
# Fri, 20 Nov 2026 04:27:43 GMT
WORKDIR /opt/sonarqube
# Fri, 20 Nov 2026 04:27:43 GMT
EXPOSE map[9000/tcp:{}]
# Fri, 20 Nov 2026 04:27:43 GMT
USER sonarqube
# Fri, 20 Nov 2026 04:27:43 GMT
STOPSIGNAL SIGINT
# Fri, 20 Nov 2026 04:27:43 GMT
ENTRYPOINT ["/opt/sonarqube/docker/entrypoint.sh"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39b11213d3aa1567118f717864067458d978cea9f2c940c764fd8deecc92b121`  
		Last Modified: Fri, 20 Nov 2026 03:17:14 GMT  
		Size: 29.1 MB (29055445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:441c8138d5bddd027aa6f58c9cb59ee9608f5901f4eee756b73cfc2b9271e511`  
		Last Modified: Fri, 20 Nov 2026 03:17:16 GMT  
		Size: 158.4 MB (158419847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f15a300d17d18df1277a5c9a06c5aa77e4872aa8dc6ca1e4f02eb0708c27232`  
		Last Modified: Fri, 20 Nov 2026 03:17:13 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8843148c9f1154e55b80044588b54b816e000784f3efa618d776600f6fc4bf7b`  
		Last Modified: Fri, 20 Nov 2026 03:17:12 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aed4748da0d577b5403ef306691a449927db3418eb66385fe5221c98192a5289`  
		Last Modified: Fri, 20 Nov 2026 04:29:09 GMT  
		Size: 1.3 GB (1316436876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46253682a6bfe131fe114980364d8741ccc9c8db99f95ff19d34b1eef605ef8a`  
		Last Modified: Fri, 20 Nov 2026 04:28:45 GMT  
		Size: 460.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sonarqube:2026-lta-developer` - unknown; unknown

```console
$ docker pull sonarqube@sha256:ee2dabed15a4a5d7c640f73ebdfe1d40579e5f9198ad0723e501acacea165277
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (4957556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5457994c87364b8a3f18072705e4921a0037fe06fe329d9f21208bcb0e3ce5d3`

```dockerfile
```

-	Layers:
	-	`sha256:c6f3b392e5373c03b09fa696e9267cfc3ef09f41f02f973ec67aae988fff130f`  
		Last Modified: Fri, 20 Nov 2026 04:28:45 GMT  
		Size: 4.9 MB (4935087 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc856fe796f92a93b613514e2415ba3f3ec500f0bf701c008743d8e8b0bd053a`  
		Last Modified: Fri, 20 Nov 2026 04:28:45 GMT  
		Size: 22.5 KB (22469 bytes)  
		MIME: application/vnd.in-toto+json

### `sonarqube:2026-lta-developer` - linux; arm64 variant v8

```console
$ docker pull sonarqube@sha256:3f79892a82d6a0459f5bd9a0367a89e9da850079fa6f9d8ac7919e46b821e72b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1532129571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:725c25c5e131c330c4f87ce9d0c1f1954aff4813b76d790e583e464ef994bc0d`
-	Entrypoint: `["\/opt\/sonarqube\/docker\/entrypoint.sh"]`

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
# Fri, 20 Nov 2026 03:17:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:17:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:17:22 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:17:22 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:17:22 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Fri, 20 Nov 2026 03:17:30 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='d7f5d5cf865a2902b70ff549b97586a7d3f234e016f041ab447ea740c7d66d1c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='e3522e707fc7dbe2a72c30746b1e7068301a0213ecd213d4491f35a14eb55578';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='cfaedcc659213833ead9c2a50987d8dcbd0e7a2d82217abb43acb64c0dd3d8cc';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        riscv64)          ESUM='639d712c96899ec84e95394f90e8b4cc6a0ad0154bbec2fe657f8da00b182013';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_riscv64_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='597271ef81f7e4d0e2b86aa6e4d484af194253bdf238908a8394b78970dff713';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:17:31 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:17:31 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:17:31 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 03:17:31 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 04:29:33 GMT
LABEL io.k8s.description=SonarQube Server is a self-managed, automatic code review tool that systematically helps you deliver Clean Code.
# Fri, 20 Nov 2026 04:29:33 GMT
LABEL io.openshift.min-cpu=400m
# Fri, 20 Nov 2026 04:29:33 GMT
LABEL io.openshift.min-memory=2048M
# Fri, 20 Nov 2026 04:29:33 GMT
LABEL io.openshift.non-scalable=true
# Fri, 20 Nov 2026 04:29:33 GMT
LABEL io.openshift.tags=sonarqube,static-code-analysis,code-quality,clean-code
# Fri, 20 Nov 2026 04:29:33 GMT
LABEL org.opencontainers.image.url=https://github.com/SonarSource/docker-sonarqube
# Fri, 20 Nov 2026 04:29:33 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 04:29:33 GMT
ARG SONARQUBE_VERSION=2026.1.8.133950
# Fri, 20 Nov 2026 04:29:33 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-developer/sonarqube-developer-2026.1.8.133950.zip
# Fri, 20 Nov 2026 04:29:33 GMT
ENV DOCKER_RUNNING=true JAVA_HOME=/opt/java/openjdk SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=2026.1.8.133950 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp
# Fri, 20 Nov 2026 04:29:33 GMT
ENV ES_TMPDIR=/opt/sonarqube/temp
# Fri, 20 Nov 2026 04:29:33 GMT
# ARGS: SONARQUBE_VERSION=2026.1.8.133950 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-developer/sonarqube-developer-2026.1.8.133950.zip
RUN set -eux;     deluser ubuntu;     useradd --system --uid 1000 --gid 0 sonarqube;     apt-get update;     apt-get --no-install-recommends -y install         bash         ca-certificates         curl         fonts-dejavu         gnupg         unzip;     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     emsign_g3_alias='cn_emsign_ecc_root_ca__g3,o_emudhra_technologies_limited,ou_emsign_pki,c_in [jdk]';     emsign_g3_sha256='86:A1:EC:BA:08:9C:4A:8D:3B:BE:27:34:C6:12:BA:34:1D:81:3E:04:3C:F9:E8:A8:62:CD:5C:57:A3:6B:BE:6B';     if keytool -list -cacerts -storepass changeit -alias "${emsign_g3_alias}" > /dev/null 2>&1; then         keytool -delete -cacerts -storepass changeit -alias "${emsign_g3_alias}";     fi;     keytool -list -cacerts -storepass changeit > /tmp/cacerts.txt;     if grep -q "${emsign_g3_sha256}" /tmp/cacerts.txt; then         echo "emSign ECC Root CA - G3 is still trusted by the JDK" >&2; exit 1;     fi;     rm /tmp/cacerts.txt;     if [ -e /etc/ssl/certs/emSign_ECC_Root_CA_-_G3.pem ]; then         echo "emSign ECC Root CA - G3 is still trusted by the OS"             "(ca-certificates $(dpkg-query -W -f='${Version}' ca-certificates))" >&2;         exit 1;     fi;     for server in $(shuf -e hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt;     cd /opt;     curl --proto "=https" --fail --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --proto "=https" --fail --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     ln -s "${SONARQUBE_HOME}/lib/sonar-application-${SONARQUBE_VERSION}.jar" "${SONARQUBE_HOME}/lib/sonarqube.jar";     chown -R sonarqube:root ${SONARQUBE_HOME};     chown -R sonarqube:root "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}";     chmod -R 550 ${SONARQUBE_HOME};     chmod -R 770 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}";     apt-get remove -y gnupg unzip;     rm -rf /var/lib/apt/lists/*; # buildkit
# Fri, 20 Nov 2026 04:29:33 GMT
VOLUME [/opt/sonarqube/data /opt/sonarqube/extensions /opt/sonarqube/logs /opt/sonarqube/temp]
# Fri, 20 Nov 2026 04:29:33 GMT
COPY --chown=root:root --chmod=555 entrypoint.sh /opt/sonarqube/docker/ # buildkit
# Fri, 20 Nov 2026 04:29:33 GMT
WORKDIR /opt/sonarqube
# Fri, 20 Nov 2026 04:29:33 GMT
EXPOSE map[9000/tcp:{}]
# Fri, 20 Nov 2026 04:29:33 GMT
USER sonarqube
# Fri, 20 Nov 2026 04:29:33 GMT
STOPSIGNAL SIGINT
# Fri, 20 Nov 2026 04:29:33 GMT
ENTRYPOINT ["/opt/sonarqube/docker/entrypoint.sh"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a000e9b278efd8c4ef9b1689015c18a2e21610baa1ea45dd093736b674d6e4`  
		Last Modified: Fri, 20 Nov 2026 03:17:50 GMT  
		Size: 30.0 MB (30024317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cee1f1e29c3b67dae23c35b095377ad06dacfc0c2effdaf542dc84aa40fa689`  
		Last Modified: Fri, 20 Nov 2026 03:17:53 GMT  
		Size: 156.7 MB (156699715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f810e28e6bddc48f5ed847b1982e6fb1eb692f76b8180cac7f27996268646f4`  
		Last Modified: Fri, 20 Nov 2026 03:17:49 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc4810e87bcebaf23f59e707dd99fa81099346f17e4bc4adbace9425cc769237`  
		Last Modified: Fri, 20 Nov 2026 03:17:49 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28f3dc275c055f35c104c560768574dc9166ec5b97724fc8b1ea66eeaada6e2a`  
		Last Modified: Fri, 20 Nov 2026 04:31:03 GMT  
		Size: 1.3 GB (1316437105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edc1a9671138a2ac7cc719f063864779f8f6e271399ed0b9d9e8c4b22dcf291b`  
		Last Modified: Fri, 20 Nov 2026 04:30:40 GMT  
		Size: 461.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sonarqube:2026-lta-developer` - unknown; unknown

```console
$ docker pull sonarqube@sha256:9a30701828148a9a257123ef13925e919e29c369610ac3b19853fdd6dd8b102a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5089156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61b3d7960a0c26bc24d3533b61b629f54e85fc2e2001a0908c453e257b5367f1`

```dockerfile
```

-	Layers:
	-	`sha256:3861f84429fe9efa5eb0bba4ea96e13d84bf613ae55b8964abe4a404fed4ea60`  
		Last Modified: Fri, 20 Nov 2026 04:30:40 GMT  
		Size: 5.1 MB (5066596 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f2c30b63f871fe67ee658330a9290d52652db97cc3db736607f9411458a075b`  
		Last Modified: Fri, 20 Nov 2026 04:30:40 GMT  
		Size: 22.6 KB (22560 bytes)  
		MIME: application/vnd.in-toto+json
