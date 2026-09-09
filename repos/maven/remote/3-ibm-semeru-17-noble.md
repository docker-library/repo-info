## `maven:3-ibm-semeru-17-noble`

```console
$ docker pull maven@sha256:858c12dff701f2b7895bea23242083ac9862af9387a1d56bb5c4c04aed18f94d
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

### `maven:3-ibm-semeru-17-noble` - linux; amd64

```console
$ docker pull maven@sha256:224956577dd4f5965969e4f872b97e2f427a849437e16970d6242e1e65451032
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.7 MB (308719586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f977b0b23b11680a704d8717ed88db6dbcc3721fba771ffd47ede99a62a0d46f`
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
# Wed, 09 Sep 2026 02:25:44 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 02:25:44 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:25:44 GMT
ENV JAVA_VERSION=17.0.20.10
# Wed, 09 Sep 2026 02:27:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='58f9f236343d1adb90549023349f5ad23ddebdd867af7e6ccf71cde680940065';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.10/ibm-semeru-open-jdk_aarch64_linux_17.0.20.10.tar.gz';          ;;        amd64|x86_64)          ESUM='ba94140d369118e8a85ccfd8f099335a0bce09949d5b0eb5acce69ac0b4ec86c';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.10/ibm-semeru-open-jdk_x64_linux_17.0.20.10.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='7ae9b5d3ba529e83e2be16f939feb233da731d269e079e269c18171e9a9cbee3';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.10/ibm-semeru-open-jdk_ppc64le_linux_17.0.20.10.tar.gz';          ;;        s390x)          ESUM='a4bc18b04873c078e30e3356188feb00a462d0f10b40c2ef0e7f17aed101af90';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.10/ibm-semeru-open-jdk_s390x_linux_17.0.20.10.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Wed, 09 Sep 2026 02:27:14 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 02:27:14 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Wed, 09 Sep 2026 02:28:17 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Wed, 09 Sep 2026 04:38:53 GMT
RUN apt-get update   && apt-get install -y git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:38:53 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 09 Sep 2026 04:38:53 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:38:53 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:38:53 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 09 Sep 2026 04:38:53 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 09 Sep 2026 04:38:53 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 09 Sep 2026 04:38:53 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 04:38:53 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 09 Sep 2026 04:38:53 GMT
ARG USER_HOME_DIR=/root
# Wed, 09 Sep 2026 04:38:53 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 09 Sep 2026 04:38:53 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 09 Sep 2026 04:38:53 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f6514c11ebce181e6b4e301d5603c185a4df1da8ca925cc6d988578007bdf71`  
		Last Modified: Wed, 09 Sep 2026 02:27:00 GMT  
		Size: 12.8 MB (12772547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538a3d099750460e540949dbf4937f6cb426381b7d20882dc1b0195d95316691`  
		Last Modified: Wed, 09 Sep 2026 02:28:40 GMT  
		Size: 228.0 MB (228020662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2a925a63b63964cc5c73a1d6b1f002b42f473121cbe9a06107f4264f2a981c6`  
		Last Modified: Wed, 09 Sep 2026 02:28:35 GMT  
		Size: 6.2 MB (6225193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cff676631a178256292dd7c9bd99a5924c94d1f8ed4500917bf11eff3cc39ec`  
		Last Modified: Wed, 09 Sep 2026 04:39:07 GMT  
		Size: 22.6 MB (22576953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:090fdff37e5e25453d55cb7f618ff4b92e695fbbedc87fce612b4325856f157c`  
		Last Modified: Wed, 09 Sep 2026 04:39:07 GMT  
		Size: 9.4 MB (9359973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f2c205ecaf9d63679eb5fe6cb080456ed1e588993d93015e655281dfbb31ba0`  
		Last Modified: Wed, 09 Sep 2026 04:39:06 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e4054438701734ed88491aed88ddd0f495ee72eadfbe1036ba381fa1352b3a9`  
		Last Modified: Wed, 09 Sep 2026 04:39:06 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-17-noble` - unknown; unknown

```console
$ docker pull maven@sha256:1a6e3fe11385119ddde44b0dde54b35484fb5cf7bf66df2ba6d0922e0fa02638
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4789282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e706756c5add82a54d3e6d5a7749c4ff5b9daf567a23e92b67c31be4502580d7`

```dockerfile
```

-	Layers:
	-	`sha256:1885efd5741e52b850e6688e6e887408b1664b10c0c837a165a00e9ed01031a2`  
		Last Modified: Wed, 09 Sep 2026 04:39:06 GMT  
		Size: 4.8 MB (4772416 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cee44a1835508d55bfa0b32c1cce628ddf9e730da938c2f4a3f4c7a1bf2dda10`  
		Last Modified: Wed, 09 Sep 2026 04:39:06 GMT  
		Size: 16.9 KB (16866 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibm-semeru-17-noble` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:3a78c734a67908689663573f66381befe279d8c10ee34e7b3c45e6e6f0512336
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.8 MB (303789968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78184ca1a961fb128ba692562cbc307c58196aca42e311a8039e580d4a65ddfc`
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
# Wed, 09 Sep 2026 02:23:50 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 02:23:50 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:23:50 GMT
ENV JAVA_VERSION=17.0.20.10
# Wed, 09 Sep 2026 02:23:56 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='58f9f236343d1adb90549023349f5ad23ddebdd867af7e6ccf71cde680940065';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.10/ibm-semeru-open-jdk_aarch64_linux_17.0.20.10.tar.gz';          ;;        amd64|x86_64)          ESUM='ba94140d369118e8a85ccfd8f099335a0bce09949d5b0eb5acce69ac0b4ec86c';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.10/ibm-semeru-open-jdk_x64_linux_17.0.20.10.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='7ae9b5d3ba529e83e2be16f939feb233da731d269e079e269c18171e9a9cbee3';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.10/ibm-semeru-open-jdk_ppc64le_linux_17.0.20.10.tar.gz';          ;;        s390x)          ESUM='a4bc18b04873c078e30e3356188feb00a462d0f10b40c2ef0e7f17aed101af90';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.10/ibm-semeru-open-jdk_s390x_linux_17.0.20.10.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Wed, 09 Sep 2026 02:23:56 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 02:23:56 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Wed, 09 Sep 2026 02:25:00 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Wed, 09 Sep 2026 04:25:28 GMT
RUN apt-get update   && apt-get install -y git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:25:28 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 09 Sep 2026 04:25:28 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:25:28 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:25:28 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 09 Sep 2026 04:25:28 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 09 Sep 2026 04:25:28 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 09 Sep 2026 04:25:28 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 04:25:29 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 09 Sep 2026 04:25:29 GMT
ARG USER_HOME_DIR=/root
# Wed, 09 Sep 2026 04:25:29 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 09 Sep 2026 04:25:29 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 09 Sep 2026 04:25:29 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13a14c57840413380918030dacf104152f8a4e7f3391d00367a250e9fa4ddb60`  
		Last Modified: Wed, 09 Sep 2026 02:25:20 GMT  
		Size: 12.8 MB (12807273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc6a968e5154e2df95dd8bc63d70348db8316309d792bbf1b318682aa38ae1e6`  
		Last Modified: Wed, 09 Sep 2026 02:25:25 GMT  
		Size: 224.0 MB (224041639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1a507f6fc646af5c026c2dffcecc2bb8bf7ce30e29018a48be6c27930a64714`  
		Last Modified: Wed, 09 Sep 2026 02:25:19 GMT  
		Size: 6.0 MB (6003291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77ec53ec8ce36a377350e926c12ba6dd97233d5a136cf6490edc2755eeab03f6`  
		Last Modified: Wed, 09 Sep 2026 04:25:42 GMT  
		Size: 22.6 MB (22636795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1adf9e62cf4e4e337b49aa35b1283ae9c8c7f17bc7385c18b049ed74caaba8a6`  
		Last Modified: Wed, 09 Sep 2026 04:25:42 GMT  
		Size: 9.4 MB (9359950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:809ed950ba43314c49510da85639fb9d1ac6106b03f78af31cc041fc457dcd69`  
		Last Modified: Wed, 09 Sep 2026 04:25:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c15473361b1bcc2c7c47b625ef9f37d0e5eab78602b888bcb9f7beaaa1612de`  
		Last Modified: Wed, 09 Sep 2026 04:25:41 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-17-noble` - unknown; unknown

```console
$ docker pull maven@sha256:e254ae49a46af283b798cada7c183c2b54d407bc29d18f9ba1a7efad5be00740
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4794022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab09c82cf2927c22d38e1e60d82e9bb082efc7c9374007fbf8489bfc3715e3b9`

```dockerfile
```

-	Layers:
	-	`sha256:450d4416c4fde6da467429da861e6a3d8e3b73061d0569d83d4b22a313ca4ecf`  
		Last Modified: Wed, 09 Sep 2026 04:25:41 GMT  
		Size: 4.8 MB (4777022 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e435a3df244e06724c5876a3483b48869f80b2a4d57f004ab1ad62db26d7bd1`  
		Last Modified: Wed, 09 Sep 2026 04:25:41 GMT  
		Size: 17.0 KB (17000 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibm-semeru-17-noble` - linux; ppc64le

```console
$ docker pull maven@sha256:047bc4da541f972eb39e989e1c4696b62492188cfbe12b39878d827cba9ffa76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.2 MB (321211086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55fb6eb4aee89efb6ec5ac2dd96e6dc2d5288b2b17ffbe50b6c391c08909bbe5`
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
ENV JAVA_VERSION=17.0.20.10
# Wed, 09 Sep 2026 02:21:36 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='58f9f236343d1adb90549023349f5ad23ddebdd867af7e6ccf71cde680940065';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.10/ibm-semeru-open-jdk_aarch64_linux_17.0.20.10.tar.gz';          ;;        amd64|x86_64)          ESUM='ba94140d369118e8a85ccfd8f099335a0bce09949d5b0eb5acce69ac0b4ec86c';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.10/ibm-semeru-open-jdk_x64_linux_17.0.20.10.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='7ae9b5d3ba529e83e2be16f939feb233da731d269e079e269c18171e9a9cbee3';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.10/ibm-semeru-open-jdk_ppc64le_linux_17.0.20.10.tar.gz';          ;;        s390x)          ESUM='a4bc18b04873c078e30e3356188feb00a462d0f10b40c2ef0e7f17aed101af90';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.10/ibm-semeru-open-jdk_s390x_linux_17.0.20.10.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Wed, 09 Sep 2026 02:21:36 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 02:21:36 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Wed, 09 Sep 2026 02:22:46 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Wed, 09 Sep 2026 12:16:01 GMT
RUN apt-get update   && apt-get install -y git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 12:16:02 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 09 Sep 2026 12:16:02 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 12:16:02 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 12:16:02 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 09 Sep 2026 12:16:02 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 09 Sep 2026 12:16:02 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 09 Sep 2026 12:16:03 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 12:16:03 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 09 Sep 2026 12:16:03 GMT
ARG USER_HOME_DIR=/root
# Wed, 09 Sep 2026 12:16:03 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 09 Sep 2026 12:16:03 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 09 Sep 2026 12:16:03 GMT
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
	-	`sha256:722a3f29198a5626b1bc76626f155851a72574a522d49aa83bab0eccaa0bc91e`  
		Last Modified: Wed, 09 Sep 2026 02:24:11 GMT  
		Size: 232.0 MB (232038656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:810f8a7c9b0a8270bf244321426cab47a27cf4feadffb1a73a4ec6e0f8743a52`  
		Last Modified: Wed, 09 Sep 2026 02:24:05 GMT  
		Size: 5.1 MB (5075524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c51008f2b8afe4c228dfbb6a311f998dff3659f1072649376c123406d9f835aa`  
		Last Modified: Wed, 09 Sep 2026 12:16:47 GMT  
		Size: 26.6 MB (26608577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c19787d4515bc6fe4963be6013b11772b75c5a0ad22328384eea05ff793a12b`  
		Last Modified: Wed, 09 Sep 2026 12:16:46 GMT  
		Size: 9.4 MB (9359951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43f7abce9ae449d363b329455715c890404fbb566bdce13ccab2ae0eef555071`  
		Last Modified: Wed, 09 Sep 2026 12:16:46 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e500b661f45201efc4c11bfa2f98c4ca712843b8aefe6655e373868d4a3a68a4`  
		Last Modified: Wed, 09 Sep 2026 12:16:46 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-17-noble` - unknown; unknown

```console
$ docker pull maven@sha256:0e238f2db0ad080e92b65617ce527f6dfc90b4e4a0324e95dcee18815f3103d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4796756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1176cb0f4174a7298eea14f8d894298c03e6d31dacd367faed76c217f52f17b`

```dockerfile
```

-	Layers:
	-	`sha256:a4d60dd98e16616229a1cf25ec767a82390a86849e653fe209c06d43381b8e6b`  
		Last Modified: Wed, 09 Sep 2026 12:16:46 GMT  
		Size: 4.8 MB (4779839 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b607d5f3ddad93b8259a057ce43a8805467b73f3e11c40be65250caae3fa9440`  
		Last Modified: Wed, 09 Sep 2026 12:16:46 GMT  
		Size: 16.9 KB (16917 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibm-semeru-17-noble` - linux; s390x

```console
$ docker pull maven@sha256:46563a0a6c96d8136b3b18be0a7fbdc338eef76b12e62d3d7f7b9aa8788750d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.4 MB (319405225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6ee7bd284500f06cbc97fe01c0b6a8437952db6a7204521113420af005e7e91`
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
ENV JAVA_VERSION=17.0.20.10
# Mon, 31 Aug 2026 18:55:36 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='58f9f236343d1adb90549023349f5ad23ddebdd867af7e6ccf71cde680940065';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.10/ibm-semeru-open-jdk_aarch64_linux_17.0.20.10.tar.gz';          ;;        amd64|x86_64)          ESUM='ba94140d369118e8a85ccfd8f099335a0bce09949d5b0eb5acce69ac0b4ec86c';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.10/ibm-semeru-open-jdk_x64_linux_17.0.20.10.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='7ae9b5d3ba529e83e2be16f939feb233da731d269e079e269c18171e9a9cbee3';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.10/ibm-semeru-open-jdk_ppc64le_linux_17.0.20.10.tar.gz';          ;;        s390x)          ESUM='a4bc18b04873c078e30e3356188feb00a462d0f10b40c2ef0e7f17aed101af90';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.10/ibm-semeru-open-jdk_s390x_linux_17.0.20.10.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 31 Aug 2026 18:55:36 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 18:55:36 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 31 Aug 2026 18:56:39 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Mon, 31 Aug 2026 19:24:43 GMT
RUN apt-get update   && apt-get install -y git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 19:24:43 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 31 Aug 2026 19:24:43 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 31 Aug 2026 19:24:43 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 31 Aug 2026 19:24:43 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 31 Aug 2026 19:24:43 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 31 Aug 2026 19:24:43 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 31 Aug 2026 19:24:43 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:24:43 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 31 Aug 2026 19:24:43 GMT
ARG USER_HOME_DIR=/root
# Mon, 31 Aug 2026 19:24:43 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 31 Aug 2026 19:24:43 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 31 Aug 2026 19:24:43 GMT
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
	-	`sha256:3a85ddbfbfda7794a09c27e3195a0801bab4b8c289b4b46f81f4ff2290bf50f6`  
		Last Modified: Mon, 31 Aug 2026 18:57:12 GMT  
		Size: 232.2 MB (232225861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79f722f94630537a3d58c9b461a4394c46aced00e463b63178509638f2774bd7`  
		Last Modified: Mon, 31 Aug 2026 18:57:08 GMT  
		Size: 6.4 MB (6373096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd0697502d1c9fabc7b5c3630522a6d07c3e99b67a03cbd3e1b375d7ad25fd97`  
		Last Modified: Mon, 31 Aug 2026 19:25:05 GMT  
		Size: 26.3 MB (26331971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:092f7b6b720ad44fda447c764507d2025ba27b579b1b4804792c80c630b001cd`  
		Last Modified: Mon, 31 Aug 2026 19:25:04 GMT  
		Size: 9.4 MB (9359976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:066be9ad30d53710c2e264b326900dc1cef87463e8cbc6b4dc29bfc6e5a244d6`  
		Last Modified: Mon, 31 Aug 2026 19:25:04 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:723ab741a967f0987a87cd05065377c75c75f5334f6f866704da4836c1fbffa9`  
		Last Modified: Mon, 31 Aug 2026 19:25:04 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-17-noble` - unknown; unknown

```console
$ docker pull maven@sha256:973e61b019edaff7b7b7d0102adc14b3e9dde4ba2ae1ef1c1ec98c7aed500534
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4791056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f413de80947ee81604abc83890b3b1b16288bb5000e23568c2a16042921071c6`

```dockerfile
```

-	Layers:
	-	`sha256:da7c2f3cda75405481546624a05da221d367703827780569422d7bae115a3283`  
		Last Modified: Mon, 31 Aug 2026 19:25:04 GMT  
		Size: 4.8 MB (4774189 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8356c0e45b60a95de65249b360d86916c3d5d84b20165e0d40d92b67359f20fb`  
		Last Modified: Mon, 31 Aug 2026 19:25:04 GMT  
		Size: 16.9 KB (16867 bytes)  
		MIME: application/vnd.in-toto+json
