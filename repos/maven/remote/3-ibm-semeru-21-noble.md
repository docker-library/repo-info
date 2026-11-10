## `maven:3-ibm-semeru-21-noble`

```console
$ docker pull maven@sha256:567a370d32ca50f3ac40fca9e3099a8858dec7bb2b45a3afee9106a54e85a13c
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

### `maven:3-ibm-semeru-21-noble` - linux; amd64

```console
$ docker pull maven@sha256:790e838ec951c65c9ca226e970b8527c5503ced0a04f03a3d9edbea70856c59f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.8 MB (323765735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7319c070003856e452a808470c2b544b5d54516a6dc3229aa05f66929faa54af`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 23:39:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 09 Nov 2026 23:39:05 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 09 Nov 2026 23:39:05 GMT
ENV JAVA_VERSION=21.0.13.0
# Mon, 09 Nov 2026 23:39:12 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='c8730b3746f3c2e5eb5ce7cc4415d4b86260cf7e9b12de469607c0c9c3c32dfb';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.13.0/ibm-semeru-open-jdk_aarch64_linux_21.0.13.0.tar.gz';          ;;        amd64|x86_64)          ESUM='0c92b61ea02efe73a7b6d346f1d8324efd50fe1fb848bf3a031a577dc1181d45';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.13.0/ibm-semeru-open-jdk_x64_linux_21.0.13.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='992b583b2f477eca176dc77b997048b8baf63e465c26846e4e5456b21a536196';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.13.0/ibm-semeru-open-jdk_ppc64le_linux_21.0.13.0.tar.gz';          ;;        s390x)          ESUM='b72fb0510300707defbc73771509fd8bcfccb27cf5a17155a60ac5605155e67c';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.13.0/ibm-semeru-open-jdk_s390x_linux_21.0.13.0.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 09 Nov 2026 23:39:12 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:39:12 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 09 Nov 2026 23:40:15 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Mon, 09 Nov 2026 23:57:37 GMT
RUN apt-get update   && apt-get install -y git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 09 Nov 2026 23:57:37 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 09 Nov 2026 23:57:37 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 09 Nov 2026 23:57:37 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 09 Nov 2026 23:57:37 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 09 Nov 2026 23:57:37 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 09 Nov 2026 23:57:37 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 09 Nov 2026 23:57:37 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 09 Nov 2026 23:57:37 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 09 Nov 2026 23:57:37 GMT
ARG USER_HOME_DIR=/root
# Mon, 09 Nov 2026 23:57:37 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 09 Nov 2026 23:57:37 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 09 Nov 2026 23:57:37 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4efcada0e9acfa98328291a419f942bee030c1b4a91561daccc1cbe8d8bee03a`  
		Last Modified: Mon, 09 Nov 2026 23:40:36 GMT  
		Size: 12.8 MB (12793190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:514768c7023a37e144cae2ff81165abb2f22b0530c0d4a53918d95f66b8af530`  
		Last Modified: Mon, 09 Nov 2026 23:40:41 GMT  
		Size: 242.1 MB (242122628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92b9fda1ae0b38f1002d203299b748b3b42e8770f182865703a1720528541611`  
		Last Modified: Mon, 09 Nov 2026 23:40:36 GMT  
		Size: 6.4 MB (6443097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39ce4e6dbf856664bb08cc6db3bf881d6ee44df87ed9d4e3e0164114bb443c3a`  
		Last Modified: Mon, 09 Nov 2026 23:57:51 GMT  
		Size: 22.6 MB (22579191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69aac756dded9907355e927db28034846165579839ab11e257a01c727f3acfff`  
		Last Modified: Mon, 09 Nov 2026 23:57:51 GMT  
		Size: 10.1 MB (10059011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d1d76f75cfdd28656e0dc61423dd38aecf3ffb59665f7aba8527d485de9daf1`  
		Last Modified: Mon, 09 Nov 2026 23:57:50 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f281c4d30a05a880e4a06d2ad14c4450752ffb61755ac93861be1f51c8f7217b`  
		Last Modified: Mon, 09 Nov 2026 23:57:50 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-21-noble` - unknown; unknown

```console
$ docker pull maven@sha256:d3043dcb6c5aaabf91558717677fe3f727f6ae85afa554221243cc3f3726e199
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4795601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e24c89fad68a07936ab866426549e6cbb4f3e6446ad6e2dc7c99817d9ee260d`

```dockerfile
```

-	Layers:
	-	`sha256:12d081c4c7c498ddb77eaf89d9c15fef19c7b6feeca0a8bb21c7b5804326faf2`  
		Last Modified: Mon, 09 Nov 2026 23:57:50 GMT  
		Size: 4.8 MB (4778730 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ddbda5506f09e09cd3dcea77f5112d9280b967631f23e51bccbd6811e867ac3`  
		Last Modified: Mon, 09 Nov 2026 23:57:50 GMT  
		Size: 16.9 KB (16871 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibm-semeru-21-noble` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:d25d3b192f6a40e1feff94367f49c165b828f546cf5d31fdc0caf53305ebd223
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.9 MB (318868144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cc87d268809649fddf75f6a58d65155763a624f633c69bb1f77080c5036a4c6`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 23:38:49 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 09 Nov 2026 23:38:49 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 09 Nov 2026 23:38:49 GMT
ENV JAVA_VERSION=21.0.13.0
# Mon, 09 Nov 2026 23:38:56 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='c8730b3746f3c2e5eb5ce7cc4415d4b86260cf7e9b12de469607c0c9c3c32dfb';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.13.0/ibm-semeru-open-jdk_aarch64_linux_21.0.13.0.tar.gz';          ;;        amd64|x86_64)          ESUM='0c92b61ea02efe73a7b6d346f1d8324efd50fe1fb848bf3a031a577dc1181d45';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.13.0/ibm-semeru-open-jdk_x64_linux_21.0.13.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='992b583b2f477eca176dc77b997048b8baf63e465c26846e4e5456b21a536196';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.13.0/ibm-semeru-open-jdk_ppc64le_linux_21.0.13.0.tar.gz';          ;;        s390x)          ESUM='b72fb0510300707defbc73771509fd8bcfccb27cf5a17155a60ac5605155e67c';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.13.0/ibm-semeru-open-jdk_s390x_linux_21.0.13.0.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 09 Nov 2026 23:38:56 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:38:56 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 09 Nov 2026 23:39:59 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Mon, 09 Nov 2026 23:57:03 GMT
RUN apt-get update   && apt-get install -y git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 09 Nov 2026 23:57:03 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 09 Nov 2026 23:57:03 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 09 Nov 2026 23:57:03 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 09 Nov 2026 23:57:03 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 09 Nov 2026 23:57:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 09 Nov 2026 23:57:03 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 09 Nov 2026 23:57:03 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 09 Nov 2026 23:57:04 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 09 Nov 2026 23:57:04 GMT
ARG USER_HOME_DIR=/root
# Mon, 09 Nov 2026 23:57:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 09 Nov 2026 23:57:04 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 09 Nov 2026 23:57:04 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:accf1492ad03cdc8c3651eae3d4d57894d3c6fe819d155e13d8763840b57a132`  
		Last Modified: Mon, 09 Nov 2026 23:40:21 GMT  
		Size: 12.8 MB (12830285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f552ff11e3be57464c9d685b9d126ed79fce4a1445de8be5f60f69b0bc0abfe`  
		Last Modified: Mon, 09 Nov 2026 23:40:25 GMT  
		Size: 238.2 MB (238172031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76e8344ed9da073176ef58bdda3520ff475486b49b5a313ae0021624279e1483`  
		Last Modified: Mon, 09 Nov 2026 23:40:21 GMT  
		Size: 6.2 MB (6223573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbb9c79e3dd2f2b4ee4ae9eee650729508e8b4ebb4664817a773ca1dbba0e49d`  
		Last Modified: Mon, 09 Nov 2026 23:57:18 GMT  
		Size: 22.6 MB (22642148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62580f83842e28d18185b0cc961407d1ca2c865d61dd034a622651616682b868`  
		Last Modified: Mon, 09 Nov 2026 23:57:18 GMT  
		Size: 10.1 MB (10058973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07de4d51bfdaff8df483d26d0afc98c8dc5a39d20f652820e650797cd03c7948`  
		Last Modified: Mon, 09 Nov 2026 23:57:17 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:357db2ed5f7388c35c2291859fb88aa424e11955fe2ab28eb927415ecd767e77`  
		Last Modified: Mon, 09 Nov 2026 23:57:17 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-21-noble` - unknown; unknown

```console
$ docker pull maven@sha256:b236a964412c467533e68f5327c7af976d642246cd1b13d960cde864abb00fb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4800339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37f9233f016e4156ec45289398ff441f73fd3b5205ce99da1b8f7bdb563f96e3`

```dockerfile
```

-	Layers:
	-	`sha256:497689b9bb55fd0a63123ea8d9b2f90a51f04faf26169adff2830cdc45fb476c`  
		Last Modified: Mon, 09 Nov 2026 23:57:17 GMT  
		Size: 4.8 MB (4783336 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:deafc9b509f3bce84ed9f49e6390ca2d5e49b8cb035649f558dcc9665e06611a`  
		Last Modified: Mon, 09 Nov 2026 23:57:17 GMT  
		Size: 17.0 KB (17003 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibm-semeru-21-noble` - linux; ppc64le

```console
$ docker pull maven@sha256:89b128fa0c3652be733a2b3ee3049af8d1522c86b5ccf9721c3aa0491b8e5897
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.5 MB (336458949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26785ebea4301ea535a721313007051b5c80bc9d1caf55ed900b3fe3b5f30aff`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:35 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:35 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:39 GMT
ADD file:ef742f6d40def62a9b4c0b916161e4ab04e1a6b83bc4e20803daa0d5ab2ea12b in / 
# Sun, 25 Oct 2026 14:18:39 GMT
CMD ["/bin/bash"]
# Wed, 04 Nov 2026 22:23:18 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 04 Nov 2026 22:23:18 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 04 Nov 2026 22:23:18 GMT
ENV JAVA_VERSION=21.0.13.0
# Wed, 04 Nov 2026 22:29:01 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='c8730b3746f3c2e5eb5ce7cc4415d4b86260cf7e9b12de469607c0c9c3c32dfb';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.13.0/ibm-semeru-open-jdk_aarch64_linux_21.0.13.0.tar.gz';          ;;        amd64|x86_64)          ESUM='0c92b61ea02efe73a7b6d346f1d8324efd50fe1fb848bf3a031a577dc1181d45';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.13.0/ibm-semeru-open-jdk_x64_linux_21.0.13.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='992b583b2f477eca176dc77b997048b8baf63e465c26846e4e5456b21a536196';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.13.0/ibm-semeru-open-jdk_ppc64le_linux_21.0.13.0.tar.gz';          ;;        s390x)          ESUM='b72fb0510300707defbc73771509fd8bcfccb27cf5a17155a60ac5605155e67c';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.13.0/ibm-semeru-open-jdk_s390x_linux_21.0.13.0.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Wed, 04 Nov 2026 22:29:01 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Nov 2026 22:29:01 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 09 Nov 2026 23:56:08 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Tue, 10 Nov 2026 00:48:19 GMT
RUN apt-get update   && apt-get install -y git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 10 Nov 2026 00:48:22 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 10 Nov 2026 00:48:22 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 10 Nov 2026 00:48:22 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 10 Nov 2026 00:48:22 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 10 Nov 2026 00:48:22 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 10 Nov 2026 00:48:22 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 10 Nov 2026 00:48:40 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 10 Nov 2026 00:48:44 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 10 Nov 2026 00:48:44 GMT
ARG USER_HOME_DIR=/root
# Tue, 10 Nov 2026 00:48:44 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 10 Nov 2026 00:48:44 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 10 Nov 2026 00:48:44 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b196d88b1de73420267ab2bdaf559fdd334f328a1ded832cecae1953d000625`  
		Last Modified: Wed, 04 Nov 2026 22:25:30 GMT  
		Size: 13.8 MB (13765088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1df1251926969b5a6bbbdd4c12def8b6304fc85e6c4454787573474e0760e13`  
		Last Modified: Wed, 04 Nov 2026 22:31:08 GMT  
		Size: 246.3 MB (246300123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1083a061e260cde7579ed559cc1bed66eabe216f06a847955d9a988e87baabe`  
		Last Modified: Mon, 09 Nov 2026 23:56:31 GMT  
		Size: 5.3 MB (5334567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4322cb3511350f1ddfaf0b199f6431904a103072127272b7b9a6ae18da5a47b7`  
		Last Modified: Tue, 10 Nov 2026 00:50:30 GMT  
		Size: 26.6 MB (26620842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6651cd473dc27a99d351103db0d53028c431157f4b181d8375ef0dc171f7b2f8`  
		Last Modified: Tue, 10 Nov 2026 00:50:30 GMT  
		Size: 10.1 MB (10059012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:469b198482bba1ab7bbd3ced08260a89a7daa681321632ade0bf8c597ea2540b`  
		Last Modified: Tue, 10 Nov 2026 00:50:29 GMT  
		Size: 854.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7d9e49a803a157fdcd85e00517d7c7ddb3c659a59667a56044a49655c9f3fb9`  
		Last Modified: Tue, 10 Nov 2026 00:50:29 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-21-noble` - unknown; unknown

```console
$ docker pull maven@sha256:fb312495ed18ef851eaade18860cf528238b920507a23c16b14bb229ed48f4f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4803074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d8d60a9165186a51234fab0e016e12917c136a3a3a7cba578d1d48bda9eabce`

```dockerfile
```

-	Layers:
	-	`sha256:09b759529c4e5ce7cead2d774a0d903e47f18a6f26440413d20ba0b42f055ae4`  
		Last Modified: Tue, 10 Nov 2026 00:50:30 GMT  
		Size: 4.8 MB (4786153 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86051e33de7e84c6a5118ea1f5adc246f98da225e64387b66ec97cc8d29efe92`  
		Last Modified: Tue, 10 Nov 2026 00:50:29 GMT  
		Size: 16.9 KB (16921 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibm-semeru-21-noble` - linux; s390x

```console
$ docker pull maven@sha256:7d7a6a5bdb821c266bd9427f3a5bfa9ebd2d6712ad18918d82aa54f1428051b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.6 MB (332565399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b127031ab1a109955a61367e979c2de7b2c0174310cf75f9908a8aef3fd4359`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:59 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:59 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:00 GMT
ADD file:c2156dcf753b3a0ab0d36b29087b8209a73050420505b4ce2fb173267e1306b5 in / 
# Sun, 25 Oct 2026 14:18:01 GMT
CMD ["/bin/bash"]
# Wed, 04 Nov 2026 22:31:47 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 04 Nov 2026 22:31:47 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 04 Nov 2026 22:31:47 GMT
ENV JAVA_VERSION=21.0.13.0
# Wed, 04 Nov 2026 22:31:58 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='c8730b3746f3c2e5eb5ce7cc4415d4b86260cf7e9b12de469607c0c9c3c32dfb';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.13.0/ibm-semeru-open-jdk_aarch64_linux_21.0.13.0.tar.gz';          ;;        amd64|x86_64)          ESUM='0c92b61ea02efe73a7b6d346f1d8324efd50fe1fb848bf3a031a577dc1181d45';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.13.0/ibm-semeru-open-jdk_x64_linux_21.0.13.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='992b583b2f477eca176dc77b997048b8baf63e465c26846e4e5456b21a536196';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.13.0/ibm-semeru-open-jdk_ppc64le_linux_21.0.13.0.tar.gz';          ;;        s390x)          ESUM='b72fb0510300707defbc73771509fd8bcfccb27cf5a17155a60ac5605155e67c';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.13.0/ibm-semeru-open-jdk_s390x_linux_21.0.13.0.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Wed, 04 Nov 2026 22:31:58 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Nov 2026 22:31:58 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Tue, 10 Nov 2026 03:20:48 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Tue, 10 Nov 2026 04:10:37 GMT
RUN apt-get update   && apt-get install -y git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 10 Nov 2026 04:10:37 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 10 Nov 2026 04:10:37 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 10 Nov 2026 04:10:37 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 10 Nov 2026 04:10:37 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 10 Nov 2026 04:10:37 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 10 Nov 2026 04:10:37 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 10 Nov 2026 04:10:37 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 10 Nov 2026 04:10:37 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 10 Nov 2026 04:10:37 GMT
ARG USER_HOME_DIR=/root
# Tue, 10 Nov 2026 04:10:37 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 10 Nov 2026 04:10:37 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 10 Nov 2026 04:10:37 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f0fdb9cf963ef02d3c2868640dfc39eba181814f056a5ff58b2befec68fae0f7`  
		Last Modified: Sun, 25 Oct 2026 14:50:38 GMT  
		Size: 29.9 MB (29947050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1565ed0cae1e9dd42c566c0a27494dc339747d8cfd75c8abde70e9224a40a91`  
		Last Modified: Wed, 04 Nov 2026 22:35:06 GMT  
		Size: 13.1 MB (13098544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d63d631296958adfaeace6a3b7a7178a87033cb3fac51387b5a556cf7ff925f`  
		Last Modified: Wed, 04 Nov 2026 22:35:16 GMT  
		Size: 246.5 MB (246472542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86e219139432723f36f95931d775be313632fbb6e46e348310ae7cc848e25de0`  
		Last Modified: Tue, 10 Nov 2026 03:21:06 GMT  
		Size: 6.6 MB (6649049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d80ec857aaa654ab398169d6511ef7ad1d1eafbe9a4b81f32ddb527b0b6d767`  
		Last Modified: Tue, 10 Nov 2026 04:11:00 GMT  
		Size: 26.3 MB (26338184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:424a640c5404e2b5c070ab4af09ae33ce0492c50ca6ec686c2b1c62dcce29c4f`  
		Last Modified: Tue, 10 Nov 2026 04:11:00 GMT  
		Size: 10.1 MB (10059020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38212895f7ed6c92f09c78fbbf8878e6b73288f1ac1573a4319455a8c96f55a7`  
		Last Modified: Tue, 10 Nov 2026 04:10:59 GMT  
		Size: 854.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce516f7f387662ac22c91554088bbb3ef79c51138eefd9ff44dc636cb2d50e3b`  
		Last Modified: Tue, 10 Nov 2026 04:10:59 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-21-noble` - unknown; unknown

```console
$ docker pull maven@sha256:62e50fd470cea66b80489004f38fd6eff71ed604e7d80ce42b599f7fb2c34083
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4797387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ebe28ce8513e15343414cf5d2210c026408cd9391af9110829fe16be3172ee6`

```dockerfile
```

-	Layers:
	-	`sha256:3f801f8259372d93de93b35541fd3515ac604f31ea261414698fddb50a4b2909`  
		Last Modified: Tue, 10 Nov 2026 04:10:59 GMT  
		Size: 4.8 MB (4780517 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:984947295e6f07fe7f72524831239bc71f8a73152bc7e6fae9f72f453c5d69ad`  
		Last Modified: Tue, 10 Nov 2026 04:10:59 GMT  
		Size: 16.9 KB (16870 bytes)  
		MIME: application/vnd.in-toto+json
