## `maven:3-ibm-semeru-21-noble`

```console
$ docker pull maven@sha256:19c4ce81af6397cdee2f8587ab4b7e1bd59d05f6c34fdd2419003f0bf9ec11ba
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
$ docker pull maven@sha256:0044432b01950d053a8935da259c57f5512eebbb20f700136c910c15106fbdc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.6 MB (325564401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dfda020f50fdaca96937061c28875209c25987c66c5807ffd4ab4681645e797`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:26:04 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:26:04 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:26:04 GMT
ENV JAVA_VERSION=21.0.12.15
# Fri, 02 Oct 2026 01:26:11 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='1d09a9d591f97fe22fb089ea382d46c6be17c7b32e2bd18ebfcc1a17a0948d91';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jdk_aarch64_linux_21.0.12.15.tar.gz';          ;;        amd64|x86_64)          ESUM='5b62b53d61bde7e1b4901abea77b18c03e936234c37a9206f473d093f5e46d00';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jdk_x64_linux_21.0.12.15.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='97113620ec93e32dad8efee6f1e221c6ca7af201d632bd2bb2b1484fbd4483d5';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jdk_ppc64le_linux_21.0.12.15.tar.gz';          ;;        s390x)          ESUM='e0b8ec4011a08ed43c561e20e2f5f8958a410d32074d958de77bcb2a76745533';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jdk_s390x_linux_21.0.12.15.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Fri, 02 Oct 2026 01:26:11 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:26:11 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Fri, 02 Oct 2026 01:27:14 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Mon, 05 Oct 2026 21:29:23 GMT
RUN apt-get update   && apt-get install -y git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 21:29:23 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 05 Oct 2026 21:29:23 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 05 Oct 2026 21:29:23 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 05 Oct 2026 21:29:23 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 05 Oct 2026 21:29:23 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 05 Oct 2026 21:29:23 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 05 Oct 2026 21:29:23 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 05 Oct 2026 21:29:23 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 05 Oct 2026 21:29:23 GMT
ARG USER_HOME_DIR=/root
# Mon, 05 Oct 2026 21:29:23 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 05 Oct 2026 21:29:23 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 05 Oct 2026 21:29:23 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88440f0e808ec9b6aa93352ec2153b5db40fa94ba8901ace03751b1fc43b095b`  
		Last Modified: Fri, 02 Oct 2026 01:27:34 GMT  
		Size: 15.2 MB (15193294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5288e7de31c24bb1de138dc3ea80cc87037c16991baa72db1f83a1def56d28f5`  
		Last Modified: Fri, 02 Oct 2026 01:27:39 GMT  
		Size: 241.6 MB (241594418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2ace88428df9023110a7447d37ce0045f34617b2a172aeb640e57e52a2b2a11`  
		Last Modified: Fri, 02 Oct 2026 01:27:34 GMT  
		Size: 6.4 MB (6372502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c29a307d5314c0e876c6505b457d69d3d7939577769b711226c1edb04f8050f0`  
		Last Modified: Mon, 05 Oct 2026 21:29:37 GMT  
		Size: 22.6 MB (22579748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:924df85c37e621e04c76174a41573428683e4e8eefbbf63307c0c94ee5380217`  
		Last Modified: Mon, 05 Oct 2026 21:29:37 GMT  
		Size: 10.1 MB (10059011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d951f7378b8b5a0d9d8faec10af1ae89751ac6c7c16a6944496a7c6ad28c4186`  
		Last Modified: Mon, 05 Oct 2026 21:29:36 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:384b14967eea13042357c1f27106c85cad90430110c73cb97c2c01ddd8cf7a75`  
		Last Modified: Mon, 05 Oct 2026 21:29:36 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-21-noble` - unknown; unknown

```console
$ docker pull maven@sha256:7085a1220931ef30c5fdf04b7d232ac3a50ee70be51b40be51b0b989395935a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4796840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:344bd018a97ed2af5f84f080048a85f328e7079f54b86960a28d313b6c8641eb`

```dockerfile
```

-	Layers:
	-	`sha256:5f1fdd5bea143dd814be5e48e0c18aaf4ed4bb363f66dd555ed59dbcb44ac55b`  
		Last Modified: Mon, 05 Oct 2026 21:29:36 GMT  
		Size: 4.8 MB (4779967 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:63939718e6a715fcf9fd83ec35834c747dc34434e38426431845f327d7c1bd56`  
		Last Modified: Mon, 05 Oct 2026 21:29:36 GMT  
		Size: 16.9 KB (16873 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibm-semeru-21-noble` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:593f5021b77d3b7058fb5226716786a32df1a8698907e2609686e7dd86aa6510
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.6 MB (320571787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c27090f18e4f1843dc77afd6032782595e5a4e556b8e5d2ab1f8822dd049e4e`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:26:02 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:26:02 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:26:02 GMT
ENV JAVA_VERSION=21.0.12.15
# Fri, 02 Oct 2026 01:26:09 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='1d09a9d591f97fe22fb089ea382d46c6be17c7b32e2bd18ebfcc1a17a0948d91';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jdk_aarch64_linux_21.0.12.15.tar.gz';          ;;        amd64|x86_64)          ESUM='5b62b53d61bde7e1b4901abea77b18c03e936234c37a9206f473d093f5e46d00';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jdk_x64_linux_21.0.12.15.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='97113620ec93e32dad8efee6f1e221c6ca7af201d632bd2bb2b1484fbd4483d5';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jdk_ppc64le_linux_21.0.12.15.tar.gz';          ;;        s390x)          ESUM='e0b8ec4011a08ed43c561e20e2f5f8958a410d32074d958de77bcb2a76745533';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jdk_s390x_linux_21.0.12.15.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Fri, 02 Oct 2026 01:26:09 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:26:09 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Fri, 02 Oct 2026 01:27:13 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Mon, 05 Oct 2026 21:31:53 GMT
RUN apt-get update   && apt-get install -y git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 21:31:53 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 05 Oct 2026 21:31:53 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 05 Oct 2026 21:31:53 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 05 Oct 2026 21:31:53 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 05 Oct 2026 21:31:53 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 05 Oct 2026 21:31:53 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 05 Oct 2026 21:31:53 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 05 Oct 2026 21:31:53 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 05 Oct 2026 21:31:53 GMT
ARG USER_HOME_DIR=/root
# Mon, 05 Oct 2026 21:31:53 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 05 Oct 2026 21:31:53 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 05 Oct 2026 21:31:53 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61b162f1391d14b19fe9532efe5238fae9fd8fbceaedcbb28b52c3ed69a9a184`  
		Last Modified: Fri, 02 Oct 2026 01:27:33 GMT  
		Size: 15.1 MB (15087287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:224c666e25151ff10cb652770c4cefb6a095e6132efb74eed211dd0b7f7b5e49`  
		Last Modified: Fri, 02 Oct 2026 01:27:38 GMT  
		Size: 237.6 MB (237613424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef3b48e6f8a486847ee90877ee1d92de79eb68b87afc8d7ce209075c91bd79d4`  
		Last Modified: Fri, 02 Oct 2026 01:27:33 GMT  
		Size: 6.2 MB (6233255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcb182d0098978f2eb77250976a596c3418db353a9e2e08e8cf25dc12b89d464`  
		Last Modified: Mon, 05 Oct 2026 21:32:07 GMT  
		Size: 22.6 MB (22637713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:776a617f0dd7e1afd9330c9bf17a2b46f5eaac52c7e31d2c1775e9ade72e32ea`  
		Last Modified: Mon, 05 Oct 2026 21:32:07 GMT  
		Size: 10.1 MB (10059015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:790052dd87bd5b631388ba84c479e11a9a819350bd57494d58a6f954368e62d9`  
		Last Modified: Mon, 05 Oct 2026 21:32:06 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3f3670762b79a8bd3b3b700f5d0a29d883becca8d7ac4bc0ce4da239c9e8a98`  
		Last Modified: Mon, 05 Oct 2026 21:32:06 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-21-noble` - unknown; unknown

```console
$ docker pull maven@sha256:b9233ec3a5d8e5e18f6acbd2cb8c71047a0ba41388e6acf0c91a093816cbd9d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4801579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0840fd14b2bcaf19a97b114ec5faf1a819441430d38184ee3f9148d1ecd64bc4`

```dockerfile
```

-	Layers:
	-	`sha256:c9ee47ef6fb40ba11abd8566ce37bc7c966865828de13b8e1105dd10589def66`  
		Last Modified: Mon, 05 Oct 2026 21:32:07 GMT  
		Size: 4.8 MB (4784573 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e99258d115179fcb3d84a8121082cadf322c35e526c86813f985b548f702b64`  
		Last Modified: Mon, 05 Oct 2026 21:32:06 GMT  
		Size: 17.0 KB (17006 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibm-semeru-21-noble` - linux; ppc64le

```console
$ docker pull maven@sha256:dad69510dd99be70b9a37f2144bd67e00fe29e2ee9f4b4d829652d1dbb2694da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.5 MB (338482796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fda971a3fc7a7ca08706416c0fe3a8a006dff1c540c3274da0d1e84f1295a9b1`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:50 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:50 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:53 GMT
ADD file:65c699fd9797e3453b1d9214a3d29d981984167bbdef224150cdb4da169e2a77 in / 
# Fri, 18 Sep 2026 21:23:54 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 04:08:28 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 04:08:28 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 04:08:28 GMT
ENV JAVA_VERSION=21.0.12.15
# Fri, 02 Oct 2026 08:38:50 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='1d09a9d591f97fe22fb089ea382d46c6be17c7b32e2bd18ebfcc1a17a0948d91';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jdk_aarch64_linux_21.0.12.15.tar.gz';          ;;        amd64|x86_64)          ESUM='5b62b53d61bde7e1b4901abea77b18c03e936234c37a9206f473d093f5e46d00';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jdk_x64_linux_21.0.12.15.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='97113620ec93e32dad8efee6f1e221c6ca7af201d632bd2bb2b1484fbd4483d5';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jdk_ppc64le_linux_21.0.12.15.tar.gz';          ;;        s390x)          ESUM='e0b8ec4011a08ed43c561e20e2f5f8958a410d32074d958de77bcb2a76745533';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jdk_s390x_linux_21.0.12.15.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Fri, 02 Oct 2026 08:38:50 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 08:38:50 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Fri, 02 Oct 2026 08:39:56 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Fri, 02 Oct 2026 12:25:11 GMT
RUN apt-get update   && apt-get install -y git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 12:25:12 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 02 Oct 2026 12:25:12 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 12:25:12 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 12:25:12 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 02 Oct 2026 12:25:12 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Oct 2026 12:25:12 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 02 Oct 2026 12:25:13 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 12:25:13 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 02 Oct 2026 12:25:13 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Oct 2026 12:25:13 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Oct 2026 12:25:13 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Oct 2026 12:25:13 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:02a2dd31affb75e9ad8595e0b0a537f3d60ecf8145f7dcd72eeaf14132bf426d`  
		Last Modified: Fri, 18 Sep 2026 22:30:11 GMT  
		Size: 34.4 MB (34376509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfd403c91de8e06cd8da5a0a31c266fa5060ae1a70af0b2814b716d1f4af21fe`  
		Last Modified: Fri, 02 Oct 2026 04:10:08 GMT  
		Size: 16.5 MB (16455482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e46640208349ac93b0ace19d23798c8e7648d450bb5a894b125e8fcdf845f8fe`  
		Last Modified: Fri, 02 Oct 2026 08:40:46 GMT  
		Size: 245.7 MB (245738570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3264d7d2bb50b63c3198d056acea496bd1bb9579eff2fee1ae6032b81c83d26`  
		Last Modified: Fri, 02 Oct 2026 08:40:41 GMT  
		Size: 5.2 MB (5236692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45d508f56f486ab7e49b5cc3e55b7e9447714f444cf9090f9dee8044db2df54e`  
		Last Modified: Fri, 02 Oct 2026 12:26:01 GMT  
		Size: 26.6 MB (26615518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22e48448f3b028e440ab4a3309b452a09bf2ce39843fe15f358aecb23e3c920c`  
		Last Modified: Fri, 02 Oct 2026 12:26:00 GMT  
		Size: 10.1 MB (10059018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca4f086fcab8d17d796115c499aad201da56a66e4bfa9d65d0b52b39dc4740b1`  
		Last Modified: Fri, 02 Oct 2026 12:26:00 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:198777868f5407626987839195d6d74abaa1e23c56ab2e601c1e033d2eb6cadd`  
		Last Modified: Fri, 02 Oct 2026 12:26:00 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-21-noble` - unknown; unknown

```console
$ docker pull maven@sha256:81ab1b7caba8ccddc61532be60618ecde733a9145d999a8d2303857024b91f75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4804313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81f2db9b3adba1a23f5e8d47c4640184a8decd013437dd26fc47598c90429378`

```dockerfile
```

-	Layers:
	-	`sha256:a9072b109849ef2ae75fd80302684f84f6987e4802693ed6957a0ce46d860097`  
		Last Modified: Fri, 02 Oct 2026 12:26:00 GMT  
		Size: 4.8 MB (4787390 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:283f0d8976ac68d06a325009c1b3228ccf19f4fa19589e492191b0f5885011b3`  
		Last Modified: Fri, 02 Oct 2026 12:25:59 GMT  
		Size: 16.9 KB (16923 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibm-semeru-21-noble` - linux; s390x

```console
$ docker pull maven@sha256:940307afc6de2072092e7d16403adec56e97837b402248ecfa4fb61ddd9964c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.5 MB (331457442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:192db8c66016f5679b0305efd7b55a4cea6e6082ea8700f2e8b27e644845480d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 18 Sep 2026 21:22:48 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:22:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:22:48 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:22:50 GMT
ADD file:dbe84e9fbddf57955eb8069675a3842837c04eb1416213c2d50049efd3dad787 in / 
# Fri, 18 Sep 2026 21:22:50 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:43:48 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:43:48 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:43:48 GMT
ENV JAVA_VERSION=21.0.12.15
# Fri, 02 Oct 2026 01:55:35 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='1d09a9d591f97fe22fb089ea382d46c6be17c7b32e2bd18ebfcc1a17a0948d91';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jdk_aarch64_linux_21.0.12.15.tar.gz';          ;;        amd64|x86_64)          ESUM='5b62b53d61bde7e1b4901abea77b18c03e936234c37a9206f473d093f5e46d00';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jdk_x64_linux_21.0.12.15.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='97113620ec93e32dad8efee6f1e221c6ca7af201d632bd2bb2b1484fbd4483d5';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jdk_ppc64le_linux_21.0.12.15.tar.gz';          ;;        s390x)          ESUM='e0b8ec4011a08ed43c561e20e2f5f8958a410d32074d958de77bcb2a76745533';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jdk_s390x_linux_21.0.12.15.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Fri, 02 Oct 2026 01:55:35 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:55:35 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Fri, 02 Oct 2026 01:56:44 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Mon, 05 Oct 2026 21:21:38 GMT
RUN apt-get update   && apt-get install -y git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 21:21:38 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 05 Oct 2026 21:21:38 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 05 Oct 2026 21:21:38 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 05 Oct 2026 21:21:38 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 05 Oct 2026 21:21:38 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 05 Oct 2026 21:21:38 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 05 Oct 2026 21:21:38 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 05 Oct 2026 21:21:38 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 05 Oct 2026 21:21:38 GMT
ARG USER_HOME_DIR=/root
# Mon, 05 Oct 2026 21:21:38 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 05 Oct 2026 21:21:38 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 05 Oct 2026 21:21:38 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:108aebd72dd457ee7da6e519c157e975c9f75fedf3563478a69f28606232305c`  
		Last Modified: Fri, 18 Sep 2026 22:30:25 GMT  
		Size: 29.9 MB (29945320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02519c38a5412dcf35c56202f2b64285f4e3c46ace32836fc6dd10bfc9f34f5b`  
		Last Modified: Fri, 02 Oct 2026 01:45:53 GMT  
		Size: 15.2 MB (15196202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e9a1db8c22d9291647a4df3e7cd323910de6daa81a6665c58ec2f608bb9f16b`  
		Last Modified: Fri, 02 Oct 2026 01:57:56 GMT  
		Size: 245.9 MB (245918617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e4cf42773bd3fa894aa6ef88b90d92b6ccf74df69dd90ab05992a50aed6ca52`  
		Last Modified: Fri, 02 Oct 2026 01:57:47 GMT  
		Size: 6.6 MB (6627851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14ed6d3641663275a2449ee12d26ac0a35d82d288652e0827dc57d76d1f6d35d`  
		Last Modified: Mon, 05 Oct 2026 21:21:59 GMT  
		Size: 23.7 MB (23709432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62fe82032a5177b9916ae1d379025878edb64d8dd364e89f0318fcaa3ccb5b8a`  
		Last Modified: Mon, 05 Oct 2026 21:21:58 GMT  
		Size: 10.1 MB (10059014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65f855542fdd56a7b2c6e3a17048ca8e17fae591cfa2a218bfd184b64375063f`  
		Last Modified: Mon, 05 Oct 2026 21:21:58 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40f288f91f4d2fadc157114fd41ace3994df69f94534839059f28ddf32a766da`  
		Last Modified: Mon, 05 Oct 2026 21:21:58 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-21-noble` - unknown; unknown

```console
$ docker pull maven@sha256:a49a37ed1f81060c7ea8c27d7d8e2b35399f3dc39567fabd3a8e68c2b3167fce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4798627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:058b4f8f913e94264d6c7996a9f0e018667e0f13d7c8debc6a1bdfb5a2324cfa`

```dockerfile
```

-	Layers:
	-	`sha256:5ee3bbba1642353b6fe3d16502ef8276bab3b2b43526ca200dc21a71037a6d75`  
		Last Modified: Mon, 05 Oct 2026 21:21:58 GMT  
		Size: 4.8 MB (4781754 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da1870d407666d99057a4382f5798ebcf273ad2045738a39c421a060a52ede67`  
		Last Modified: Mon, 05 Oct 2026 21:21:58 GMT  
		Size: 16.9 KB (16873 bytes)  
		MIME: application/vnd.in-toto+json
