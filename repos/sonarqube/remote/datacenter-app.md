## `sonarqube:datacenter-app`

```console
$ docker pull sonarqube@sha256:f51398ef86295cecae20e5b91471f1d5289825889ff1dbd567c77c09d488a6c7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `sonarqube:datacenter-app` - linux; amd64

```console
$ docker pull sonarqube@sha256:1698915b72e2037bdc0bd649f177d5471b585654f3bb57098432fb743a728ac0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 GB (1721254471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38309ac382c7de79431ab93b5a7b8816508f87a6e2d5c7115a7d9f1fb8d5c320`
-	Entrypoint: `["\/opt\/sonarqube\/docker\/run.sh"]`
-	Default Command: `["\/opt\/sonarqube\/docker\/sonar.sh"]`

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
# Fri, 20 Nov 2026 03:16:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:16:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:16:59 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:16:59 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:16:59 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Fri, 20 Nov 2026 03:17:15 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='68982529869257d0ee6b824ec5aa270ff8b118bb438670da0b97ebdab178d7fb';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_linux_hotspot_25.0.5_8.tar.gz';          ;;        arm64)          ESUM='bb5b2ded252f21c6090cf780b0a408ad0d83bbb557e702955643557f13231880';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.5_8.tar.gz';          ;;        ppc64el)          ESUM='47825886fd72e86c94e6fd1687a13bebb4ae729e24d2788be0d294589bf07297';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.5_8.tar.gz';          ;;        riscv64)          ESUM='21d9ee84f64d845e7de888f86cc2abe3256c75853a0d5abe7fd42d6526374e90';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_riscv64_linux_hotspot_25.0.5_8.tar.gz';          ;;        s390x)          ESUM='dfed6b7b428852ab1a3b9eb7734264f4d4cc163686e4136f93b9942f3d8f44cd';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:17:16 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:17:16 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:17:16 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 03:17:16 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 04:28:25 GMT
LABEL io.k8s.description=SonarQube Server is a self-managed, automatic code review tool that systematically helps you deliver Clean Code.
# Fri, 20 Nov 2026 04:28:25 GMT
LABEL io.openshift.min-cpu=400m
# Fri, 20 Nov 2026 04:28:25 GMT
LABEL io.openshift.min-memory=2048M
# Fri, 20 Nov 2026 04:28:25 GMT
LABEL io.openshift.non-scalable=false
# Fri, 20 Nov 2026 04:28:25 GMT
LABEL io.openshift.tags=sonarqube,static-code-analysis,code-quality,clean-code
# Fri, 20 Nov 2026 04:28:25 GMT
LABEL org.opencontainers.image.url=https://github.com/SonarSource/docker-sonarqube
# Fri, 20 Nov 2026 04:28:25 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 04:28:25 GMT
ARG SONARQUBE_VERSION=2026.5.5.134787
# Fri, 20 Nov 2026 04:28:25 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-datacenter/sonarqube-datacenter-2026.5.5.134787.zip
# Fri, 20 Nov 2026 04:28:25 GMT
ENV DOCKER_RUNNING=true JAVA_HOME=/opt/java/openjdk SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=2026.5.5.134787 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp SONAR_CLUSTER_NODE_TYPE=application SONAR_CLUSTER_ENABLED=true
# Fri, 20 Nov 2026 04:28:25 GMT
# ARGS: SONARQUBE_VERSION=2026.5.5.134787 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-datacenter/sonarqube-datacenter-2026.5.5.134787.zip
RUN set -eux;     deluser ubuntu;     useradd --system --uid 1000 --gid 0 sonarqube;     apt-get update;     apt-get --no-install-recommends -y install         bash         ca-certificates         curl         fonts-dejavu         gnupg         iproute2         unzip;     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     emsign_g3_alias='cn_emsign_ecc_root_ca__g3,o_emudhra_technologies_limited,ou_emsign_pki,c_in [jdk]';     emsign_g3_sha256='86:A1:EC:BA:08:9C:4A:8D:3B:BE:27:34:C6:12:BA:34:1D:81:3E:04:3C:F9:E8:A8:62:CD:5C:57:A3:6B:BE:6B';     if keytool -list -cacerts -storepass changeit -alias "${emsign_g3_alias}" > /dev/null 2>&1; then         keytool -delete -cacerts -storepass changeit -alias "${emsign_g3_alias}";     fi;     keytool -list -cacerts -storepass changeit > /tmp/cacerts.txt;     if grep -q "${emsign_g3_sha256}" /tmp/cacerts.txt; then         echo "emSign ECC Root CA - G3 is still trusted by the JDK" >&2; exit 1;     fi;     rm /tmp/cacerts.txt;     if [ -e /etc/ssl/certs/emSign_ECC_Root_CA_-_G3.pem ]; then         echo "emSign ECC Root CA - G3 is still trusted by the OS"             "(ca-certificates $(dpkg-query -W -f='${Version}' ca-certificates))" >&2;         exit 1;     fi;     for server in $(shuf -e hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     cd /opt;     curl --proto "=https" --fail --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --proto "=https" --fail --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     ln -s "${SONARQUBE_HOME}/lib/sonar-application-${SONARQUBE_VERSION}.jar" "${SONARQUBE_HOME}/lib/sonarqube.jar";     chown -R sonarqube:root ${SONARQUBE_HOME};     chown -R sonarqube:root "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}";     chmod -R 550 ${SONARQUBE_HOME};     chmod -R 770 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}";     apt-get remove -y gnupg unzip;     rm -rf /var/lib/apt/lists/*; # buildkit
# Fri, 20 Nov 2026 04:28:25 GMT
VOLUME [/opt/sonarqube/data /opt/sonarqube/extensions /opt/sonarqube/logs /opt/sonarqube/temp]
# Fri, 20 Nov 2026 04:28:26 GMT
COPY --chown=root:root --chmod=555 run.sh sonar.sh /opt/sonarqube/docker/ # buildkit
# Fri, 20 Nov 2026 04:28:26 GMT
WORKDIR /opt/sonarqube
# Fri, 20 Nov 2026 04:28:26 GMT
EXPOSE map[9000/tcp:{}]
# Fri, 20 Nov 2026 04:28:26 GMT
USER sonarqube
# Fri, 20 Nov 2026 04:28:26 GMT
STOPSIGNAL SIGINT
# Fri, 20 Nov 2026 04:28:26 GMT
ENTRYPOINT ["/opt/sonarqube/docker/run.sh"]
# Fri, 20 Nov 2026 04:28:26 GMT
CMD ["/opt/sonarqube/docker/sonar.sh"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b78b9fee961bf51eeee78dec1184c9e2d2cb1b8d26a1dfe141bb548eb254e0a9`  
		Last Modified: Fri, 20 Nov 2026 03:17:33 GMT  
		Size: 23.5 MB (23543506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:168b7d0b0cb6422f75b035011171fca043982bfa8d42b7dae1c5a947854f849c`  
		Last Modified: Fri, 20 Nov 2026 03:17:35 GMT  
		Size: 92.7 MB (92732183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa15c5b111790b02ebff7bc152bb6bb2310a9175f88efae74d89935237f87843`  
		Last Modified: Fri, 20 Nov 2026 03:17:17 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65edf0a4129c93797a4ae335243d042dc003c4c0d194f048588738e7d03cd89f`  
		Last Modified: Fri, 20 Nov 2026 04:30:12 GMT  
		Size: 1.6 GB (1575181542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7af97eb2f1651290f0c1131264a7a0616e8715853e4e6d7e5713e304513ac6d3`  
		Last Modified: Fri, 20 Nov 2026 04:29:39 GMT  
		Size: 1.4 KB (1415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sonarqube:datacenter-app` - unknown; unknown

```console
$ docker pull sonarqube@sha256:bf2cac5f16f10f7bdbf8003949f44d377895d1d49007305c6cbf52a2b663e6a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5333112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f67e85d2439fa1c2421e41e69ef78754654699c38ae93262967bf5de7c341104`

```dockerfile
```

-	Layers:
	-	`sha256:b9f7d547085ab5cd545d3c63bdc437224f5d511132a65f641cce4bad4688a286`  
		Last Modified: Fri, 20 Nov 2026 04:29:40 GMT  
		Size: 5.3 MB (5309915 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c972cefda4349ed658b7d86427c0408b65074bac22b4e6b61f1b636ffbe229d6`  
		Last Modified: Fri, 20 Nov 2026 04:29:39 GMT  
		Size: 23.2 KB (23197 bytes)  
		MIME: application/vnd.in-toto+json

### `sonarqube:datacenter-app` - linux; arm64 variant v8

```console
$ docker pull sonarqube@sha256:842d04c4daa27662cc227a693f2280b51ab2c9124cf75e801b43181315e2a35f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 GB (1720353091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5df085d9efcb1f1a2004a1c176dc533c82b5d9f917b36e27e73adabd0e487f16`
-	Entrypoint: `["\/opt\/sonarqube\/docker\/run.sh"]`
-	Default Command: `["\/opt\/sonarqube\/docker\/sonar.sh"]`

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
# Fri, 20 Nov 2026 03:17:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:17:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:17:36 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:17:36 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:17:36 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Fri, 20 Nov 2026 03:17:54 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='68982529869257d0ee6b824ec5aa270ff8b118bb438670da0b97ebdab178d7fb';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_linux_hotspot_25.0.5_8.tar.gz';          ;;        arm64)          ESUM='bb5b2ded252f21c6090cf780b0a408ad0d83bbb557e702955643557f13231880';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.5_8.tar.gz';          ;;        ppc64el)          ESUM='47825886fd72e86c94e6fd1687a13bebb4ae729e24d2788be0d294589bf07297';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.5_8.tar.gz';          ;;        riscv64)          ESUM='21d9ee84f64d845e7de888f86cc2abe3256c75853a0d5abe7fd42d6526374e90';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_riscv64_linux_hotspot_25.0.5_8.tar.gz';          ;;        s390x)          ESUM='dfed6b7b428852ab1a3b9eb7734264f4d4cc163686e4136f93b9942f3d8f44cd';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:17:55 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:17:56 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:17:56 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 03:17:56 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 04:28:28 GMT
LABEL io.k8s.description=SonarQube Server is a self-managed, automatic code review tool that systematically helps you deliver Clean Code.
# Fri, 20 Nov 2026 04:28:28 GMT
LABEL io.openshift.min-cpu=400m
# Fri, 20 Nov 2026 04:28:28 GMT
LABEL io.openshift.min-memory=2048M
# Fri, 20 Nov 2026 04:28:28 GMT
LABEL io.openshift.non-scalable=false
# Fri, 20 Nov 2026 04:28:28 GMT
LABEL io.openshift.tags=sonarqube,static-code-analysis,code-quality,clean-code
# Fri, 20 Nov 2026 04:28:28 GMT
LABEL org.opencontainers.image.url=https://github.com/SonarSource/docker-sonarqube
# Fri, 20 Nov 2026 04:28:28 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 04:28:28 GMT
ARG SONARQUBE_VERSION=2026.5.5.134787
# Fri, 20 Nov 2026 04:28:28 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-datacenter/sonarqube-datacenter-2026.5.5.134787.zip
# Fri, 20 Nov 2026 04:28:28 GMT
ENV DOCKER_RUNNING=true JAVA_HOME=/opt/java/openjdk SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=2026.5.5.134787 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp SONAR_CLUSTER_NODE_TYPE=application SONAR_CLUSTER_ENABLED=true
# Fri, 20 Nov 2026 04:28:28 GMT
# ARGS: SONARQUBE_VERSION=2026.5.5.134787 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-datacenter/sonarqube-datacenter-2026.5.5.134787.zip
RUN set -eux;     deluser ubuntu;     useradd --system --uid 1000 --gid 0 sonarqube;     apt-get update;     apt-get --no-install-recommends -y install         bash         ca-certificates         curl         fonts-dejavu         gnupg         iproute2         unzip;     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     emsign_g3_alias='cn_emsign_ecc_root_ca__g3,o_emudhra_technologies_limited,ou_emsign_pki,c_in [jdk]';     emsign_g3_sha256='86:A1:EC:BA:08:9C:4A:8D:3B:BE:27:34:C6:12:BA:34:1D:81:3E:04:3C:F9:E8:A8:62:CD:5C:57:A3:6B:BE:6B';     if keytool -list -cacerts -storepass changeit -alias "${emsign_g3_alias}" > /dev/null 2>&1; then         keytool -delete -cacerts -storepass changeit -alias "${emsign_g3_alias}";     fi;     keytool -list -cacerts -storepass changeit > /tmp/cacerts.txt;     if grep -q "${emsign_g3_sha256}" /tmp/cacerts.txt; then         echo "emSign ECC Root CA - G3 is still trusted by the JDK" >&2; exit 1;     fi;     rm /tmp/cacerts.txt;     if [ -e /etc/ssl/certs/emSign_ECC_Root_CA_-_G3.pem ]; then         echo "emSign ECC Root CA - G3 is still trusted by the OS"             "(ca-certificates $(dpkg-query -W -f='${Version}' ca-certificates))" >&2;         exit 1;     fi;     for server in $(shuf -e hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     cd /opt;     curl --proto "=https" --fail --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --proto "=https" --fail --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     ln -s "${SONARQUBE_HOME}/lib/sonar-application-${SONARQUBE_VERSION}.jar" "${SONARQUBE_HOME}/lib/sonarqube.jar";     chown -R sonarqube:root ${SONARQUBE_HOME};     chown -R sonarqube:root "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}";     chmod -R 550 ${SONARQUBE_HOME};     chmod -R 770 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}";     apt-get remove -y gnupg unzip;     rm -rf /var/lib/apt/lists/*; # buildkit
# Fri, 20 Nov 2026 04:28:28 GMT
VOLUME [/opt/sonarqube/data /opt/sonarqube/extensions /opt/sonarqube/logs /opt/sonarqube/temp]
# Fri, 20 Nov 2026 04:28:28 GMT
COPY --chown=root:root --chmod=555 run.sh sonar.sh /opt/sonarqube/docker/ # buildkit
# Fri, 20 Nov 2026 04:28:28 GMT
WORKDIR /opt/sonarqube
# Fri, 20 Nov 2026 04:28:28 GMT
EXPOSE map[9000/tcp:{}]
# Fri, 20 Nov 2026 04:28:28 GMT
USER sonarqube
# Fri, 20 Nov 2026 04:28:28 GMT
STOPSIGNAL SIGINT
# Fri, 20 Nov 2026 04:28:28 GMT
ENTRYPOINT ["/opt/sonarqube/docker/run.sh"]
# Fri, 20 Nov 2026 04:28:28 GMT
CMD ["/opt/sonarqube/docker/sonar.sh"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc8284815f043a76cf30193cfd10d9cedc01ded8c5747a7ab0ca2ea7845974ed`  
		Last Modified: Fri, 20 Nov 2026 03:18:12 GMT  
		Size: 24.5 MB (24486058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:795361df17069b63a525f77367ae6a413a92a1be5fae9db8d128c625178c0b28`  
		Last Modified: Fri, 20 Nov 2026 03:18:13 GMT  
		Size: 91.7 MB (91668226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88c34c7fa0c2621bdbc75297866e6cb49ea1ea854597fcf4e321edb8eee5bb8f`  
		Last Modified: Fri, 20 Nov 2026 03:18:11 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edc578454aae6b136e1a5795ada95f8cb5e86f13af01989e48ec42e9551b911c`  
		Last Modified: Fri, 20 Nov 2026 04:30:10 GMT  
		Size: 1.6 GB (1575229547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a4d3567fc64a2d1fb245e989307c6c6650a68e163a967e3374d66e88646edb4`  
		Last Modified: Fri, 20 Nov 2026 04:29:42 GMT  
		Size: 1.4 KB (1415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sonarqube:datacenter-app` - unknown; unknown

```console
$ docker pull sonarqube@sha256:954a9170a9fc77f445db083d7452b567da3e3bcf7fa2e7bd0e02eb66465dc1aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5464744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e4a6002c20b1e282966e7bbdb8632558f899a6ba7180ca2ff6eb73db8fb6069`

```dockerfile
```

-	Layers:
	-	`sha256:35b6fe75d87fd6eb8de7f271668ed15d0db34785e62c8f346c27cea8e7368d56`  
		Last Modified: Fri, 20 Nov 2026 04:29:43 GMT  
		Size: 5.4 MB (5441443 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e602368f5336b5777b02b217fb636698734dd46bdfe59c237b3ab9214517c69`  
		Last Modified: Fri, 20 Nov 2026 04:29:42 GMT  
		Size: 23.3 KB (23301 bytes)  
		MIME: application/vnd.in-toto+json
