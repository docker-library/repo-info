## `maven:3-ibm-semeru-25-noble`

```console
$ docker pull maven@sha256:55b8abad2bdd40144d6e21be16a099ae8c75b35aa1dd780536e2810ccea6d16a
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
$ docker pull maven@sha256:c2e106187d70c38d1a54861a90f96e3be4dce00005bf2e6936ce12d762da7fd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.5 MB (333483704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b224ffdc7f6cf64d32c715d943123811d696cfad20bb32f49ed720208034081d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 04 Aug 2026 01:33:41 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:33:41 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:33:41 GMT
ENV JAVA_VERSION=25.0.4.0
# Tue, 04 Aug 2026 01:37:13 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='5d4a992cb662768a6a48ce92079ff577f4b1d61bc6f3610e529011ec3f08c743';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.0/ibm-semeru-open-jdk_aarch64_linux_25.0.4.0.tar.gz';          ;;        amd64|x86_64)          ESUM='780a44566a626d3961aaf93a1c81b2d6265029c1350a467eb5e9a3b1cafe68bd';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.0/ibm-semeru-open-jdk_x64_linux_25.0.4.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='17f105b7181b37867d1c18e35b9fee0d9e878ee95f3813d23e57d0bfad8a7ccc';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.0/ibm-semeru-open-jdk_ppc64le_linux_25.0.4.0.tar.gz';          ;;        s390x)          ESUM='c11601da6e23cb01b44b51d66e68feeac4a3647f474121719aee6e358ce04150';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.0/ibm-semeru-open-jdk_s390x_linux_25.0.4.0.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Tue, 04 Aug 2026 01:37:13 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:37:13 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Tue, 04 Aug 2026 01:38:16 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="82b15278a7bfa2685c80e07963c43246df4fd742d574b608a68f5ce67c6ffde0eff3e224cc9809925cc6bf7002a190c3bf420f50c0e4052467d3e665efc84a54";     TOMCAT_VERSION="9.0.117";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Tue, 04 Aug 2026 01:38:16 GMT
CMD ["jshell"]
# Tue, 04 Aug 2026 03:40:52 GMT
RUN apt-get update   && apt-get install -y git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:40:53 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 04 Aug 2026 03:40:53 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 03:40:53 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 03:40:53 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 04 Aug 2026 03:40:53 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 04 Aug 2026 03:40:53 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 04 Aug 2026 03:40:53 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 03:40:53 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 04 Aug 2026 03:40:53 GMT
ARG USER_HOME_DIR=/root
# Tue, 04 Aug 2026 03:40:53 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 04 Aug 2026 03:40:53 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 04 Aug 2026 03:40:53 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0d90a2c04df4b24a58ebe0e0ef2731796f34321de6641964f21024e32f43294`  
		Last Modified: Tue, 04 Aug 2026 01:34:57 GMT  
		Size: 15.2 MB (15172498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eafb1b0b6039e78d553f8873f8624faa75d189f0409b1efbe559ca5bf7af7684`  
		Last Modified: Tue, 04 Aug 2026 01:38:40 GMT  
		Size: 250.0 MB (249954699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6acce5eda1ca61efaf28bb5bd1f5dfcfc431e3d94109096c9f0e98c3e6d812`  
		Last Modified: Tue, 04 Aug 2026 01:38:34 GMT  
		Size: 6.7 MB (6671588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:060659e816d179f89d4f2210aa3d92261be21d32a2bae5d44aeeca26a5ba2a2e`  
		Last Modified: Tue, 04 Aug 2026 03:41:07 GMT  
		Size: 22.6 MB (22572834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44a251b1b909151d0df674e6803c1c43ab25282efef0efef01f84ab46d2d94a2`  
		Last Modified: Tue, 04 Aug 2026 03:41:07 GMT  
		Size: 9.4 MB (9359972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bec5bebe3239873ba53279c33635e7dcef6b0688b2aa2db71183143a3e0b5052`  
		Last Modified: Tue, 04 Aug 2026 03:41:06 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd06f80557f1d910d0787198b58122bdcba0108479b50f346ab9c0816edc5e8a`  
		Last Modified: Tue, 04 Aug 2026 03:41:06 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-25-noble` - unknown; unknown

```console
$ docker pull maven@sha256:70bba632c2ca06a871ee96f1317c9c49cbb8569c4c18b59838733d05855cfa3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4798726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dd2498cd2e99433ab0c82761408aef90b37c5d2e5e38eba7e465254d8e7d6e2`

```dockerfile
```

-	Layers:
	-	`sha256:ca6fc966f727769b83532e1a64ad7da48b6e502a9a15b9a93d9baa49facdee40`  
		Last Modified: Tue, 04 Aug 2026 03:41:06 GMT  
		Size: 4.8 MB (4781863 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f411bd05e9c1aa167bffbf88f6f05994f69a2d06dc183ec7ca8917270f20b6d7`  
		Last Modified: Tue, 04 Aug 2026 03:41:06 GMT  
		Size: 16.9 KB (16863 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibm-semeru-25-noble` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:6007703f0e1af4818babcd533ae3fbb6ef05397163fe0919c88c11607fa478e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.1 MB (326109416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:801eb45b6bdd2e87e516e95d9fc1a6309362590201c6cbb7375b8d09f90bba21`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 04 Aug 2026 01:34:04 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:34:04 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:34:04 GMT
ENV JAVA_VERSION=25.0.4.0
# Tue, 04 Aug 2026 01:37:22 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='5d4a992cb662768a6a48ce92079ff577f4b1d61bc6f3610e529011ec3f08c743';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.0/ibm-semeru-open-jdk_aarch64_linux_25.0.4.0.tar.gz';          ;;        amd64|x86_64)          ESUM='780a44566a626d3961aaf93a1c81b2d6265029c1350a467eb5e9a3b1cafe68bd';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.0/ibm-semeru-open-jdk_x64_linux_25.0.4.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='17f105b7181b37867d1c18e35b9fee0d9e878ee95f3813d23e57d0bfad8a7ccc';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.0/ibm-semeru-open-jdk_ppc64le_linux_25.0.4.0.tar.gz';          ;;        s390x)          ESUM='c11601da6e23cb01b44b51d66e68feeac4a3647f474121719aee6e358ce04150';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.0/ibm-semeru-open-jdk_s390x_linux_25.0.4.0.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Tue, 04 Aug 2026 01:37:22 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:37:22 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Tue, 04 Aug 2026 01:38:25 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="82b15278a7bfa2685c80e07963c43246df4fd742d574b608a68f5ce67c6ffde0eff3e224cc9809925cc6bf7002a190c3bf420f50c0e4052467d3e665efc84a54";     TOMCAT_VERSION="9.0.117";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Tue, 04 Aug 2026 01:38:25 GMT
CMD ["jshell"]
# Tue, 04 Aug 2026 03:40:46 GMT
RUN apt-get update   && apt-get install -y git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:40:46 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 04 Aug 2026 03:40:46 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 03:40:46 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 03:40:46 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 04 Aug 2026 03:40:46 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 04 Aug 2026 03:40:46 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 04 Aug 2026 03:40:46 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 03:40:46 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 04 Aug 2026 03:40:46 GMT
ARG USER_HOME_DIR=/root
# Tue, 04 Aug 2026 03:40:46 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 04 Aug 2026 03:40:46 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 04 Aug 2026 03:40:46 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4739ccfaeba4639baf326ff1c4cd80e9b09a104f70031b54fbea49e1c15ed3d7`  
		Last Modified: Tue, 04 Aug 2026 01:35:21 GMT  
		Size: 12.8 MB (12804023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15fdf4675daae6ca59d017f90f6bf1d5029e439fe983a4596391c0e2ab90da90`  
		Last Modified: Tue, 04 Aug 2026 01:38:50 GMT  
		Size: 245.9 MB (245873115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:832339b9f97e3b5e843552ea1dcfa46a2ac4fcc62e1e7ae21fa703a403dc487f`  
		Last Modified: Tue, 04 Aug 2026 01:38:46 GMT  
		Size: 6.5 MB (6547887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37827116d06f8a22c012f0412be649a40aa869083f101fe72ce9c91cce37c2f9`  
		Last Modified: Tue, 04 Aug 2026 03:41:00 GMT  
		Size: 22.6 MB (22636587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0440ef8dab317a32605c74b53bb745c9c3786f5d786ac461ed5946b56171d74f`  
		Last Modified: Tue, 04 Aug 2026 03:40:59 GMT  
		Size: 9.4 MB (9359981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2956fceba9e6fa6e3c84a9963f6c41c667718ed609be1e6f8d805c86e9167aa7`  
		Last Modified: Tue, 04 Aug 2026 03:40:58 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35491f1df64490950cb2f2bb7961d2ab6a79fe26973863d46a92c8f3787c9784`  
		Last Modified: Tue, 04 Aug 2026 03:40:59 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-25-noble` - unknown; unknown

```console
$ docker pull maven@sha256:ac0006aa89aa36d7619e6513cddcdc7a502cb4a88113df34515030e4885c7de1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4803465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7b6501323cd8d4692dada7970d6ed2d4f871719e83168e805bd51cc51ca1d17`

```dockerfile
```

-	Layers:
	-	`sha256:c21ea6098a08277c465f2202e6f4c5f98f7ac49b1d8190a4af3e4f1e3f541c96`  
		Last Modified: Tue, 04 Aug 2026 03:40:59 GMT  
		Size: 4.8 MB (4786469 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:57a0f02d9f1fd52248763e9468bfe9578941c51ef7ba3ab1af79bbf720f230ba`  
		Last Modified: Tue, 04 Aug 2026 03:40:58 GMT  
		Size: 17.0 KB (16996 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibm-semeru-25-noble` - linux; ppc64le

```console
$ docker pull maven@sha256:649daee55b8f749796533a145f3d0b911d6a3693c885fd2e15c4621a94953afb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **354.0 MB (353989224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a15553867c97aa03f7eb22994276bf0cf93d7aba35f6c6805f9213cadb468714`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:57 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:00 GMT
ADD file:80a608ac5245946ff88c571e9d9b1259a58a3a309e569fbe7ed52f07c2ed3b39 in / 
# Mon, 22 Jun 2026 21:25:01 GMT
CMD ["/bin/bash"]
# Mon, 03 Aug 2026 19:02:06 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 03 Aug 2026 19:02:06 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 03 Aug 2026 19:02:06 GMT
ENV JAVA_VERSION=25.0.4.0
# Mon, 03 Aug 2026 19:19:50 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='5d4a992cb662768a6a48ce92079ff577f4b1d61bc6f3610e529011ec3f08c743';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.0/ibm-semeru-open-jdk_aarch64_linux_25.0.4.0.tar.gz';          ;;        amd64|x86_64)          ESUM='780a44566a626d3961aaf93a1c81b2d6265029c1350a467eb5e9a3b1cafe68bd';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.0/ibm-semeru-open-jdk_x64_linux_25.0.4.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='17f105b7181b37867d1c18e35b9fee0d9e878ee95f3813d23e57d0bfad8a7ccc';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.0/ibm-semeru-open-jdk_ppc64le_linux_25.0.4.0.tar.gz';          ;;        s390x)          ESUM='c11601da6e23cb01b44b51d66e68feeac4a3647f474121719aee6e358ce04150';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.0/ibm-semeru-open-jdk_s390x_linux_25.0.4.0.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 03 Aug 2026 19:19:50 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 03 Aug 2026 19:19:50 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 03 Aug 2026 19:20:56 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="82b15278a7bfa2685c80e07963c43246df4fd742d574b608a68f5ce67c6ffde0eff3e224cc9809925cc6bf7002a190c3bf420f50c0e4052467d3e665efc84a54";     TOMCAT_VERSION="9.0.117";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Mon, 03 Aug 2026 19:20:56 GMT
CMD ["jshell"]
# Mon, 03 Aug 2026 20:25:03 GMT
RUN apt-get update   && apt-get install -y git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 03 Aug 2026 20:25:04 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 03 Aug 2026 20:25:04 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 03 Aug 2026 20:25:04 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 03 Aug 2026 20:25:04 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 03 Aug 2026 20:25:04 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 03 Aug 2026 20:25:04 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 03 Aug 2026 20:25:04 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 03 Aug 2026 20:25:04 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 03 Aug 2026 20:25:04 GMT
ARG USER_HOME_DIR=/root
# Mon, 03 Aug 2026 20:25:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 03 Aug 2026 20:25:04 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 03 Aug 2026 20:25:04 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afffd321ee893578480ee807c00f04a9a713c02ab1247e41d732288261125d5f`  
		Last Modified: Mon, 03 Aug 2026 19:03:47 GMT  
		Size: 23.2 MB (23244240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f11d1eec4ae1ce7101837870787dc573cd37be139fd2b4bf753a03ba136b88a`  
		Last Modified: Mon, 03 Aug 2026 19:21:45 GMT  
		Size: 252.4 MB (252384290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63dfca2becd234583332f1a5fac789baa79f27b80fd34605a4ae22d103a0b5c1`  
		Last Modified: Mon, 03 Aug 2026 19:21:40 GMT  
		Size: 5.5 MB (5518273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e317aa71331c50d3820651c656d928668ab8e366f445bf0aab7ecf4c22795b9a`  
		Last Modified: Mon, 03 Aug 2026 20:25:33 GMT  
		Size: 29.2 MB (29167983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61b70b1daf2c0f6639e144591f10b2eeba6ce122c6d780e2c122993b0c0fe374`  
		Last Modified: Mon, 03 Aug 2026 20:25:33 GMT  
		Size: 9.4 MB (9359951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d805949d9aaab34c396fc9b052c35862f21e75f2bcf72a4c08551f913dde4392`  
		Last Modified: Mon, 03 Aug 2026 20:25:32 GMT  
		Size: 855.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3dfe60450e09e1e36a849c0a6a96e7797ea7ff9d16f8486dd9ef8028ff759a3`  
		Last Modified: Mon, 03 Aug 2026 20:25:32 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-25-noble` - unknown; unknown

```console
$ docker pull maven@sha256:ca1004922c896f7cae50557a68af2b1628af8ccbb4b40e40f324184cdc0ec885
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4793137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1caccc227c8e2e714fae54f4deaef0e463e973755ff8cdde9535c3605b253258`

```dockerfile
```

-	Layers:
	-	`sha256:a835a04835911675f9306ffc66ba2bde92fd7849eda7c36ad4fd99c4e0372b78`  
		Last Modified: Mon, 03 Aug 2026 20:25:33 GMT  
		Size: 4.8 MB (4776224 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e87c312b823715b734ff1a105c9b09002a4991d427f8c1ad15b85daf6f2da2e2`  
		Last Modified: Mon, 03 Aug 2026 20:25:32 GMT  
		Size: 16.9 KB (16913 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibm-semeru-25-noble` - linux; s390x

```console
$ docker pull maven@sha256:82d3580a414072f139ae571b18e182bc9bae97ecb2ef1e48ee5fa240e32b317e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.9 MB (336863806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a310ac6ef90ec4441c9ce906c0c93d4fddd2287396c70f90f611e30afc02119d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 31 Jul 2026 20:38:37 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:38:37 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:38:37 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:38:39 GMT
ADD file:6086e70240c95f713e06ab2c1f53baed9645134bf0319a771ee83e6caa6fe818 in / 
# Fri, 31 Jul 2026 20:38:39 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:19:21 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:19:21 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:19:21 GMT
ENV JAVA_VERSION=25.0.4.0
# Tue, 04 Aug 2026 01:26:51 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='5d4a992cb662768a6a48ce92079ff577f4b1d61bc6f3610e529011ec3f08c743';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.0/ibm-semeru-open-jdk_aarch64_linux_25.0.4.0.tar.gz';          ;;        amd64|x86_64)          ESUM='780a44566a626d3961aaf93a1c81b2d6265029c1350a467eb5e9a3b1cafe68bd';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.0/ibm-semeru-open-jdk_x64_linux_25.0.4.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='17f105b7181b37867d1c18e35b9fee0d9e878ee95f3813d23e57d0bfad8a7ccc';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.0/ibm-semeru-open-jdk_ppc64le_linux_25.0.4.0.tar.gz';          ;;        s390x)          ESUM='c11601da6e23cb01b44b51d66e68feeac4a3647f474121719aee6e358ce04150';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.0/ibm-semeru-open-jdk_s390x_linux_25.0.4.0.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Tue, 04 Aug 2026 01:26:51 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:26:51 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Tue, 04 Aug 2026 01:27:55 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="82b15278a7bfa2685c80e07963c43246df4fd742d574b608a68f5ce67c6ffde0eff3e224cc9809925cc6bf7002a190c3bf420f50c0e4052467d3e665efc84a54";     TOMCAT_VERSION="9.0.117";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Tue, 04 Aug 2026 01:27:55 GMT
CMD ["jshell"]
# Tue, 04 Aug 2026 03:52:38 GMT
RUN apt-get update   && apt-get install -y git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:52:38 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 04 Aug 2026 03:52:38 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 03:52:38 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 03:52:38 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 04 Aug 2026 03:52:38 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 04 Aug 2026 03:52:38 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 04 Aug 2026 03:52:38 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 03:52:38 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 04 Aug 2026 03:52:38 GMT
ARG USER_HOME_DIR=/root
# Tue, 04 Aug 2026 03:52:38 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 04 Aug 2026 03:52:38 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 04 Aug 2026 03:52:38 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6bb1e92e6c04f8404c596df473b847d14a4cc2ca1d4734e5353b4b54d37b3338`  
		Last Modified: Fri, 31 Jul 2026 22:22:57 GMT  
		Size: 29.9 MB (29935711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a01ecad39b28be8c3b0b35514c2d215149a3ce2af2685b44b9e1558cfd5944b7`  
		Last Modified: Tue, 04 Aug 2026 01:20:51 GMT  
		Size: 13.1 MB (13079189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd0d692606d04aa02d9cec249d6844acb3097a3aea4ac16ede0881c873916aeb`  
		Last Modified: Tue, 04 Aug 2026 01:28:29 GMT  
		Size: 253.8 MB (253781903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c58bd7f26aa2b69cf47236d30197f6ccc5dd1d907c062d25e91d53a8cbda085`  
		Last Modified: Tue, 04 Aug 2026 01:28:25 GMT  
		Size: 7.0 MB (7002963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1108731beb52727dc0f0a5ed4b158364bb126835c66cb6ece763512a097eba0a`  
		Last Modified: Tue, 04 Aug 2026 03:52:59 GMT  
		Size: 23.7 MB (23703076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebb1fdfebe6512944fc2cc63b14daa24161e34413e0c6cea417f403adbf8b3e2`  
		Last Modified: Tue, 04 Aug 2026 03:52:56 GMT  
		Size: 9.4 MB (9359961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3126facbf50c36554985bbdaffa5c014bc84363a58824aa98d24b9c6a3d991eb`  
		Last Modified: Tue, 04 Aug 2026 03:52:56 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db148e3f36cbc88da7b42b4e0f8037f81feb95c1f6b03f3feef495fa1fdb63af`  
		Last Modified: Tue, 04 Aug 2026 03:52:56 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-25-noble` - unknown; unknown

```console
$ docker pull maven@sha256:0dba811003664784a2721a6def07d4cf912c4eda3a74268fefefe428df3a3595
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4787477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b9306cae720cb285ff9cb0bd91356c696b3f0bdc0f1e7192db8a6bd77f0800d`

```dockerfile
```

-	Layers:
	-	`sha256:8179cfa1c07b144717e18bf00fdeea5dbcba0cddb7f5878819f7c6bd7eddaa39`  
		Last Modified: Tue, 04 Aug 2026 03:52:59 GMT  
		Size: 4.8 MB (4770614 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b6043d5d18114b41b47626d176a7be8bb209ea26fe451907335692027ba84950`  
		Last Modified: Tue, 04 Aug 2026 03:52:59 GMT  
		Size: 16.9 KB (16863 bytes)  
		MIME: application/vnd.in-toto+json
