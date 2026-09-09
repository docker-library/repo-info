## `maven:3-ibm-semeru-25-noble`

```console
$ docker pull maven@sha256:521a285894d8a12570ab913d40d18452a162faa2a5ec7a3bc785d7f3a2ba3ddf
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

### `maven:3-ibm-semeru-25-noble` - linux; amd64

```console
$ docker pull maven@sha256:f48ae76f01e7e536a59951a2361ed3fc2815ba9549641bed98f942206a95cd09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.2 MB (331159408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7b97b27dfca7b5626cf9face7c28fbafc00963125165cb0a7cdb06703bfd8b8`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:29:24 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 02:29:24 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:29:24 GMT
ENV JAVA_VERSION=25.0.4.10
# Wed, 09 Sep 2026 02:29:35 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='045c6f30a908c98bfb881cd651616b18cbadcf74da972dba4a120e7d810ffe4a';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.10/ibm-semeru-open-jdk_aarch64_linux_25.0.4.10.tar.gz';          ;;        amd64|x86_64)          ESUM='b9db918800de1dc8de1657f52c6f97677b734c2b3b2dc8a0ec406e20ee6d8ad9';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.10/ibm-semeru-open-jdk_x64_linux_25.0.4.10.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='4a7073365d62f4d1ac4cc9728eeaeda52c33f817f39e9b828482da9b1100b695';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.10/ibm-semeru-open-jdk_ppc64le_linux_25.0.4.10.tar.gz';          ;;        s390x)          ESUM='1a5b4150a49c096583cedcb50d3475eaffbfaf709021bacebd57027f77de49fb';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.10/ibm-semeru-open-jdk_s390x_linux_25.0.4.10.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Wed, 09 Sep 2026 02:29:35 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 02:29:35 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Wed, 09 Sep 2026 02:30:39 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Wed, 09 Sep 2026 02:30:39 GMT
CMD ["jshell"]
# Wed, 09 Sep 2026 04:40:49 GMT
RUN apt-get update   && apt-get install -y git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:40:49 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 09 Sep 2026 04:40:49 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:40:49 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:40:49 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 09 Sep 2026 04:40:49 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 09 Sep 2026 04:40:49 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 09 Sep 2026 04:40:49 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 04:40:49 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 09 Sep 2026 04:40:49 GMT
ARG USER_HOME_DIR=/root
# Wed, 09 Sep 2026 04:40:49 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 09 Sep 2026 04:40:49 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 09 Sep 2026 04:40:49 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d98d8ae73efa318a2dbdb7c96b6d2732ee77dd3e59c21f690f623565779bf367`  
		Last Modified: Wed, 09 Sep 2026 02:30:59 GMT  
		Size: 12.8 MB (12772572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee3fef4a6fc42d1903efff4ce0e8d6073a2d11f613fe300bbae8f9b15cb5d129`  
		Last Modified: Wed, 09 Sep 2026 02:31:04 GMT  
		Size: 250.0 MB (249963266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee9d4875ecea7f91adc008c9dee0dcf94b8414724d066578d29693485411ca1e`  
		Last Modified: Wed, 09 Sep 2026 02:30:58 GMT  
		Size: 6.7 MB (6722309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59a4e1665fe7e768be25f22c74b9f714fc9e8a8524d38f3b52c8e62d4e2c68d3`  
		Last Modified: Wed, 09 Sep 2026 04:41:04 GMT  
		Size: 22.6 MB (22577043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:617424fd003ddb462d9312924ba70a5693c3c75c02a360628b11c0ea0fc9c712`  
		Last Modified: Wed, 09 Sep 2026 04:41:04 GMT  
		Size: 9.4 MB (9359962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2af2da5f35cb091acc0da40e9cc674cef4a8313200bdf079fb34603fb04a8308`  
		Last Modified: Wed, 09 Sep 2026 04:41:04 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f11dd260db0fdcaa66e408e5579560c20dc0170acc585592e1619baba33782d8`  
		Last Modified: Wed, 09 Sep 2026 04:41:04 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-25-noble` - unknown; unknown

```console
$ docker pull maven@sha256:2aea64f0eedd657d6d0db5920710e1a2cdfe45599da65a2707545f43f3531e96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4798750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e82eecf5f0bb24b61b8ef508edf34beff64a4ce767d5eb2760d1bd7ce426243e`

```dockerfile
```

-	Layers:
	-	`sha256:ca25b8a2279afb1c4aa665852ae22297328ca471c4c42cadeb9143a4d4fc766e`  
		Last Modified: Wed, 09 Sep 2026 04:41:04 GMT  
		Size: 4.8 MB (4781885 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:001cf130ad0b794aa6a50121c0b677e09940c382a7aeacc24eec6b257e46ef3b`  
		Last Modified: Wed, 09 Sep 2026 04:41:03 GMT  
		Size: 16.9 KB (16865 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibm-semeru-25-noble` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:36e733343f7e6d52f2ed821224ea320873ad3d95da1bb04b3896e1bfcfe60407
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.2 MB (326164406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df213dfc9ed8c9b1f59b778af886ade36675bba25d0b80afed6b87a49d0a7c28`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:25:30 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 02:25:30 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:25:30 GMT
ENV JAVA_VERSION=25.0.4.10
# Wed, 09 Sep 2026 02:25:37 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='045c6f30a908c98bfb881cd651616b18cbadcf74da972dba4a120e7d810ffe4a';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.10/ibm-semeru-open-jdk_aarch64_linux_25.0.4.10.tar.gz';          ;;        amd64|x86_64)          ESUM='b9db918800de1dc8de1657f52c6f97677b734c2b3b2dc8a0ec406e20ee6d8ad9';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.10/ibm-semeru-open-jdk_x64_linux_25.0.4.10.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='4a7073365d62f4d1ac4cc9728eeaeda52c33f817f39e9b828482da9b1100b695';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.10/ibm-semeru-open-jdk_ppc64le_linux_25.0.4.10.tar.gz';          ;;        s390x)          ESUM='1a5b4150a49c096583cedcb50d3475eaffbfaf709021bacebd57027f77de49fb';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.10/ibm-semeru-open-jdk_s390x_linux_25.0.4.10.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Wed, 09 Sep 2026 02:25:37 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 02:25:37 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Wed, 09 Sep 2026 02:26:41 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Wed, 09 Sep 2026 02:26:41 GMT
CMD ["jshell"]
# Wed, 09 Sep 2026 04:26:11 GMT
RUN apt-get update   && apt-get install -y git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:26:11 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 09 Sep 2026 04:26:11 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:26:11 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:26:11 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 09 Sep 2026 04:26:11 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 09 Sep 2026 04:26:11 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 09 Sep 2026 04:26:11 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 04:26:11 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 09 Sep 2026 04:26:11 GMT
ARG USER_HOME_DIR=/root
# Wed, 09 Sep 2026 04:26:11 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 09 Sep 2026 04:26:11 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 09 Sep 2026 04:26:11 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6809203078a6e7a479883d5e24ae4b479b87801de267012afdd25e104ba16f39`  
		Last Modified: Wed, 09 Sep 2026 02:27:02 GMT  
		Size: 12.8 MB (12807269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79ca15c438aa71f53e33044a182f7dfe104583c00cbee5a162444b037defd5ef`  
		Last Modified: Wed, 09 Sep 2026 02:27:07 GMT  
		Size: 245.9 MB (245877665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b69da1c05b60b40b454b936ac0030279f78d1497ebabb0798f4211184608122`  
		Last Modified: Wed, 09 Sep 2026 02:27:01 GMT  
		Size: 6.5 MB (6541767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ad3fc501da91774a5c52779f3575456733b075a14f742ebfe3490306822c648`  
		Last Modified: Wed, 09 Sep 2026 04:26:25 GMT  
		Size: 22.6 MB (22636720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1793cd94f0e99e4204d9a13f792a30a28813c9f8101670bc1eda1304c2be3012`  
		Last Modified: Wed, 09 Sep 2026 04:26:25 GMT  
		Size: 9.4 MB (9359967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:685f7a587c9f61407b781e6176566466921f85710b4d189dff58ab6b983661db`  
		Last Modified: Wed, 09 Sep 2026 04:26:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25f618fd4ba53b44f0a3fc1750e19f1f7439829919fba4936d9b86f434999afd`  
		Last Modified: Wed, 09 Sep 2026 04:26:25 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-25-noble` - unknown; unknown

```console
$ docker pull maven@sha256:988912e12006dfe6e8e64a81272af5ca9b6d7cd5f7c09415b51603d4e6c80d1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4803489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5856c70a081cd626acce5e040ca57e52f5db5063b1dd11b18c3da8742534c07`

```dockerfile
```

-	Layers:
	-	`sha256:264739e51709455375a2a97b36d6e6e8e0fb07167bf74ffe9b3db8823114986b`  
		Last Modified: Wed, 09 Sep 2026 04:26:25 GMT  
		Size: 4.8 MB (4786491 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b5f1c8f148714390ef555f377e9fc43db5d001366e54cbf3d2d0c5ef6f5a16c9`  
		Last Modified: Wed, 09 Sep 2026 04:26:25 GMT  
		Size: 17.0 KB (16998 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibm-semeru-25-noble` - linux; ppc64le

```console
$ docker pull maven@sha256:3429ede8bbabbc5304c2e30fb68b388c6e2f31cdd87e5e02321f36d056be2321
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.0 MB (342020285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4003a8bb7403aa7d0837bc55e1c9ab7871c92395c7a004877c95f14d1f75ef09`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 07 Sep 2026 07:38:39 GMT
ARG RELEASE
# Mon, 07 Sep 2026 07:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 07:38:39 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 07:38:43 GMT
ADD file:b613d8cbbfcdd39316d0cc2ab20f713e42c2ffc939072314f82208cec1f794df in / 
# Mon, 07 Sep 2026 07:38:44 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:11:40 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 02:11:40 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:11:40 GMT
ENV JAVA_VERSION=25.0.4.10
# Wed, 09 Sep 2026 02:34:28 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='045c6f30a908c98bfb881cd651616b18cbadcf74da972dba4a120e7d810ffe4a';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.10/ibm-semeru-open-jdk_aarch64_linux_25.0.4.10.tar.gz';          ;;        amd64|x86_64)          ESUM='b9db918800de1dc8de1657f52c6f97677b734c2b3b2dc8a0ec406e20ee6d8ad9';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.10/ibm-semeru-open-jdk_x64_linux_25.0.4.10.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='4a7073365d62f4d1ac4cc9728eeaeda52c33f817f39e9b828482da9b1100b695';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.10/ibm-semeru-open-jdk_ppc64le_linux_25.0.4.10.tar.gz';          ;;        s390x)          ESUM='1a5b4150a49c096583cedcb50d3475eaffbfaf709021bacebd57027f77de49fb';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.10/ibm-semeru-open-jdk_s390x_linux_25.0.4.10.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Wed, 09 Sep 2026 02:34:28 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 02:34:28 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Wed, 09 Sep 2026 02:35:39 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Wed, 09 Sep 2026 02:35:39 GMT
CMD ["jshell"]
# Wed, 09 Sep 2026 12:18:29 GMT
RUN apt-get update   && apt-get install -y git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 12:18:30 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 09 Sep 2026 12:18:30 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 12:18:30 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 12:18:30 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 09 Sep 2026 12:18:30 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 09 Sep 2026 12:18:30 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 09 Sep 2026 12:18:30 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 12:18:30 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 09 Sep 2026 12:18:30 GMT
ARG USER_HOME_DIR=/root
# Wed, 09 Sep 2026 12:18:30 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 09 Sep 2026 12:18:30 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 09 Sep 2026 12:18:30 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:4b9f3660b529a1e81f04825056359c345d486cfb05010302b88737a58d21db86`  
		Last Modified: Mon, 07 Sep 2026 07:57:18 GMT  
		Size: 34.4 MB (34376879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:364bc9a40dd7be69d10bc2fb7e3031461610bf052ed1b5ab6844eccf7f5aea49`  
		Last Modified: Wed, 09 Sep 2026 02:13:37 GMT  
		Size: 13.8 MB (13750492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09fecf01ae1c8ee6f7a40522b45a5f4c7a307d4e7cc3494d1fae4720522f05a8`  
		Last Modified: Wed, 09 Sep 2026 02:36:39 GMT  
		Size: 252.4 MB (252385768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fa131436a2068158db8d6e67f0053e5e708543f771e78a2ae1b96f89ba9342a`  
		Last Modified: Wed, 09 Sep 2026 02:36:33 GMT  
		Size: 5.5 MB (5537585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3916d4e9c71af80d225012616929af989847c060af913caa03301ea522d5439d`  
		Last Modified: Wed, 09 Sep 2026 12:19:08 GMT  
		Size: 26.6 MB (26608604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8cf2d2e2cd8c02a8c95e4951a40dc14a1cdc18cc0fa3f04771b908a5ca7b1d2`  
		Last Modified: Wed, 09 Sep 2026 12:19:07 GMT  
		Size: 9.4 MB (9359951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5c31c22af03461d64ad5bbd261c054d4754612474690cb58975e08fc6c45b64`  
		Last Modified: Wed, 09 Sep 2026 12:19:07 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99c42849555bfe737bcd451f9a0b0b537f7181a0cb030c522dd68bde8b4737dd`  
		Last Modified: Wed, 09 Sep 2026 12:19:07 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-25-noble` - unknown; unknown

```console
$ docker pull maven@sha256:a0c7237355304e6adcc51f0e24269cc5f7f3306f66858b66f085fe35751e7b88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4793185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28cfcc4aab9386c312bbb37d6615290dea44e7bb2a1661fdc2c02fcce503966e`

```dockerfile
```

-	Layers:
	-	`sha256:12fa4214574a039739f23a6df01bc752c2d50e67fe525139cc9d3067e61c8f06`  
		Last Modified: Wed, 09 Sep 2026 12:19:07 GMT  
		Size: 4.8 MB (4776272 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:082d9f89c508001f39d4e877b9ffbfe24d3fcbea6d75da71b3c04616d1de62b5`  
		Last Modified: Wed, 09 Sep 2026 12:19:07 GMT  
		Size: 16.9 KB (16913 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibm-semeru-25-noble` - linux; s390x

```console
$ docker pull maven@sha256:71b6a3cff7b2f76662425b348c5ba5c3ea9bf20ed6a8b398c95c4571481e7f87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.6 MB (341567008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f0dcf70a7035763b34ffffdaa0513101ab8b62f60f2934ce03bf1e0d54cf222`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 17 Aug 2026 13:37:10 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:37:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:37:10 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:37:12 GMT
ADD file:4483a9a8fede37e8d587c88a49ab036598c57a1cdc8558d50175c642d747d633 in / 
# Mon, 17 Aug 2026 13:37:12 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 18:33:21 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 31 Aug 2026 18:33:21 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 18:33:21 GMT
ENV JAVA_VERSION=25.0.4.10
# Mon, 31 Aug 2026 18:57:34 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='045c6f30a908c98bfb881cd651616b18cbadcf74da972dba4a120e7d810ffe4a';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.10/ibm-semeru-open-jdk_aarch64_linux_25.0.4.10.tar.gz';          ;;        amd64|x86_64)          ESUM='b9db918800de1dc8de1657f52c6f97677b734c2b3b2dc8a0ec406e20ee6d8ad9';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.10/ibm-semeru-open-jdk_x64_linux_25.0.4.10.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='4a7073365d62f4d1ac4cc9728eeaeda52c33f817f39e9b828482da9b1100b695';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.10/ibm-semeru-open-jdk_ppc64le_linux_25.0.4.10.tar.gz';          ;;        s390x)          ESUM='1a5b4150a49c096583cedcb50d3475eaffbfaf709021bacebd57027f77de49fb';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.10/ibm-semeru-open-jdk_s390x_linux_25.0.4.10.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 31 Aug 2026 18:57:34 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 18:57:34 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 31 Aug 2026 18:58:38 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Mon, 31 Aug 2026 18:58:38 GMT
CMD ["jshell"]
# Mon, 31 Aug 2026 19:57:01 GMT
RUN apt-get update   && apt-get install -y git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 19:57:01 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 31 Aug 2026 19:57:01 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 31 Aug 2026 19:57:01 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 31 Aug 2026 19:57:01 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 31 Aug 2026 19:57:01 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 31 Aug 2026 19:57:01 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 31 Aug 2026 19:57:02 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:57:02 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 31 Aug 2026 19:57:02 GMT
ARG USER_HOME_DIR=/root
# Mon, 31 Aug 2026 19:57:02 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 31 Aug 2026 19:57:02 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 31 Aug 2026 19:57:02 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:5d1d3f92cfa6f52fd8d52857915fa3c3464dbd12014bfc03e5e163fc72a4de1d`  
		Last Modified: Mon, 17 Aug 2026 14:27:57 GMT  
		Size: 29.9 MB (29935255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dc53ad180144083eaa682c0dd4546c9c2f99db381b224d5c1c91cfe39cd4324`  
		Last Modified: Mon, 31 Aug 2026 18:34:44 GMT  
		Size: 15.2 MB (15178058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbcc4dcb09ad2a406d8b401f388b96871a4e64ad267ddb87a30c8e98eaba8331`  
		Last Modified: Mon, 31 Aug 2026 18:59:13 GMT  
		Size: 253.8 MB (253785766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d236bfba8db1c95e935e402d1753bd94052b55d89ad8f6353054090482479db`  
		Last Modified: Mon, 31 Aug 2026 18:59:10 GMT  
		Size: 7.0 MB (6975029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e8860dfa7649841a609e3ba07de222525033e85eb296c5405242eddc083a995`  
		Last Modified: Mon, 31 Aug 2026 19:57:24 GMT  
		Size: 26.3 MB (26331919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb106bdaa4662925f81189cfd8a8194a6cd8aab4b47654188fe824ccd395b4f2`  
		Last Modified: Mon, 31 Aug 2026 19:57:24 GMT  
		Size: 9.4 MB (9359972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24b31e5e1566f6fe8ad26ee1de844eb4b6035ff55e4407c8e53e1c96ceff937f`  
		Last Modified: Mon, 31 Aug 2026 19:57:23 GMT  
		Size: 854.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6eb40756427a685d71950921e9fb50c7a1d2621151f504ea74e526434be070a3`  
		Last Modified: Mon, 31 Aug 2026 19:57:23 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-25-noble` - unknown; unknown

```console
$ docker pull maven@sha256:09efd401ebe4a563a6b09ea74175405c4b0ac09484056d5d3c79d70d892ed6a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4787487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96956c87ef007ede69a198b98ef4021c6b21b7c7737a159e77395b4c5befc339`

```dockerfile
```

-	Layers:
	-	`sha256:9d784a61497762e8cfd8be7850d99919c3c13751602717c3ef5ef149b59ac277`  
		Last Modified: Mon, 31 Aug 2026 19:57:23 GMT  
		Size: 4.8 MB (4770622 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da0866af2e6858efd1b0fc8d1ea1383ffa5cebf5e5629a9b2b5b976960ca5940`  
		Last Modified: Mon, 31 Aug 2026 19:57:23 GMT  
		Size: 16.9 KB (16865 bytes)  
		MIME: application/vnd.in-toto+json
