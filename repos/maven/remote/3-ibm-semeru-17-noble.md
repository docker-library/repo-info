## `maven:3-ibm-semeru-17-noble`

```console
$ docker pull maven@sha256:f22151b25dfe0e6d6f91cc97addffd7aa968798a0bd1608a17e22dff244493d9
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
$ docker pull maven@sha256:46ec13af8ed83a8ee0d8c181458c5bbf9dd18267dd68058a7582208b7c81a2bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.9 MB (309942722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94986127bd48fbc41f8dd1c8844c8d2244d6db7b6d2807f96082d15188aeb965`
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
# Wed, 04 Nov 2026 22:24:30 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 04 Nov 2026 22:24:30 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 04 Nov 2026 22:24:30 GMT
ENV JAVA_VERSION=17.0.21.0
# Wed, 04 Nov 2026 22:24:41 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='9e92ab55b5088d6f8f9170b4f4e70baff7d39416e454583306e6b576c2262e67';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.21.0/ibm-semeru-open-jdk_aarch64_linux_17.0.21.0.tar.gz';          ;;        amd64|x86_64)          ESUM='854268feba1ebddcad42cf97915b3c48e44a543bbbe8f43e587a722921a16c42';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.21.0/ibm-semeru-open-jdk_x64_linux_17.0.21.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='894653088969fec74799b3b95020bc234ed0136a355c809f9f64271eebd84448';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.21.0/ibm-semeru-open-jdk_ppc64le_linux_17.0.21.0.tar.gz';          ;;        s390x)          ESUM='138f42844b91920b86aa257cc871c546b4cf93dd02c4f10a8c921db5299ebb95';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.21.0/ibm-semeru-open-jdk_s390x_linux_17.0.21.0.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Wed, 04 Nov 2026 22:24:41 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Nov 2026 22:24:41 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Wed, 04 Nov 2026 22:25:47 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Wed, 04 Nov 2026 23:16:31 GMT
RUN apt-get update   && apt-get install -y git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 04 Nov 2026 23:16:31 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 04 Nov 2026 23:16:31 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 04 Nov 2026 23:16:31 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 04 Nov 2026 23:16:31 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 04 Nov 2026 23:16:31 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 04 Nov 2026 23:16:31 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 04 Nov 2026 23:16:31 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 04 Nov 2026 23:16:31 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 04 Nov 2026 23:16:31 GMT
ARG USER_HOME_DIR=/root
# Wed, 04 Nov 2026 23:16:31 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 04 Nov 2026 23:16:31 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 04 Nov 2026 23:16:31 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aa008a965883dec7ab2a4e0ece022275bf1abc4fac2aa8eb8c5e267d2094662`  
		Last Modified: Wed, 04 Nov 2026 22:26:06 GMT  
		Size: 12.8 MB (12792269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02712525fda0e0437953e80d5388f6f4c27810fdcfe3aa53b9ebdc272c4b08ba`  
		Last Modified: Wed, 04 Nov 2026 22:26:10 GMT  
		Size: 228.6 MB (228564070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0de015528e17bee4f6ba2fde3dc94d52d0933e2cd4d8a3010aed077ca1e4a508`  
		Last Modified: Wed, 04 Nov 2026 22:26:05 GMT  
		Size: 6.2 MB (6179499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bef86bc9cc38c0db7c0f9cfc435df7934e9f98635f2fc1bf53c3db3d768750c`  
		Last Modified: Wed, 04 Nov 2026 23:16:46 GMT  
		Size: 22.6 MB (22579246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ee59a97de35650120914c49b653e780ca1b398679db17dba702e552e94fa872`  
		Last Modified: Wed, 04 Nov 2026 23:16:45 GMT  
		Size: 10.1 MB (10059019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a919cc03981897aca738427e344288d8629b9965a43f07f7e4892bc8bf9faa01`  
		Last Modified: Wed, 04 Nov 2026 23:16:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57c32938fad493604dd5c7bd4150d8ac4e1df8feafd8b5ad03aa15a3c6974612`  
		Last Modified: Wed, 04 Nov 2026 23:16:45 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-17-noble` - unknown; unknown

```console
$ docker pull maven@sha256:fc26fffedb1e2e2232e5f729bfc32af509b3723244e1d798b66f484d3b4f4f36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4793110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbc2a8347be7d0df62689a0338a37529ee6ba3869e116a489d49bdbdc04adfaa`

```dockerfile
```

-	Layers:
	-	`sha256:7f0772550f56d7925be5c582224a230076df22b9f7de7c19defb0d7d6abe418d`  
		Last Modified: Wed, 04 Nov 2026 23:16:45 GMT  
		Size: 4.8 MB (4776239 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d5ce17a940406809676b6227972230e906600d2a5cc24ce4fbaf3d1e04afd6f9`  
		Last Modified: Wed, 04 Nov 2026 23:16:45 GMT  
		Size: 16.9 KB (16871 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibm-semeru-17-noble` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:285dc44beb9ddbb47c32cf6400f1b97f53eccd0cd6f0261dc7d1c8acbf7f00bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.1 MB (305066912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a55f2970b78376fc3621b9822e10feccddb7aa41e6d0182910d3581324a85594`
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
# Wed, 04 Nov 2026 22:23:58 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 04 Nov 2026 22:23:58 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 04 Nov 2026 22:23:58 GMT
ENV JAVA_VERSION=17.0.21.0
# Wed, 04 Nov 2026 22:24:04 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='9e92ab55b5088d6f8f9170b4f4e70baff7d39416e454583306e6b576c2262e67';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.21.0/ibm-semeru-open-jdk_aarch64_linux_17.0.21.0.tar.gz';          ;;        amd64|x86_64)          ESUM='854268feba1ebddcad42cf97915b3c48e44a543bbbe8f43e587a722921a16c42';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.21.0/ibm-semeru-open-jdk_x64_linux_17.0.21.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='894653088969fec74799b3b95020bc234ed0136a355c809f9f64271eebd84448';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.21.0/ibm-semeru-open-jdk_ppc64le_linux_17.0.21.0.tar.gz';          ;;        s390x)          ESUM='138f42844b91920b86aa257cc871c546b4cf93dd02c4f10a8c921db5299ebb95';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.21.0/ibm-semeru-open-jdk_s390x_linux_17.0.21.0.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Wed, 04 Nov 2026 22:24:04 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Nov 2026 22:24:04 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Wed, 04 Nov 2026 22:25:10 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Wed, 04 Nov 2026 23:16:49 GMT
RUN apt-get update   && apt-get install -y git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 04 Nov 2026 23:16:49 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 04 Nov 2026 23:16:49 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 04 Nov 2026 23:16:49 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 04 Nov 2026 23:16:49 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 04 Nov 2026 23:16:49 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 04 Nov 2026 23:16:49 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 04 Nov 2026 23:16:50 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 04 Nov 2026 23:16:50 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 04 Nov 2026 23:16:50 GMT
ARG USER_HOME_DIR=/root
# Wed, 04 Nov 2026 23:16:50 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 04 Nov 2026 23:16:50 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 04 Nov 2026 23:16:50 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cabc099bc32c80c526acae1e1171473abfc500d752b6d3f165465ecaa6de9ad7`  
		Last Modified: Wed, 04 Nov 2026 22:25:30 GMT  
		Size: 12.8 MB (12829984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c893463060bb5cf598bec855d51a87bc138f3e4a890a8101db0d2ab45b68869`  
		Last Modified: Wed, 04 Nov 2026 22:25:35 GMT  
		Size: 224.6 MB (224603870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3294da0187eb7e37b7fe6182179fe08a316dac0c5ffb6d3c9aa475cd8e629e29`  
		Last Modified: Wed, 04 Nov 2026 22:25:30 GMT  
		Size: 6.0 MB (5990693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3c5f2389128c13bb72ff07d4ed4dec4a9c3d1a3c8cb16605312eabf5cd1fd0f`  
		Last Modified: Wed, 04 Nov 2026 23:17:06 GMT  
		Size: 22.6 MB (22642253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ba6877b172e4eb91f23c39fe35265de41ab3843e6a03588e7f1a8278615e7be`  
		Last Modified: Wed, 04 Nov 2026 23:17:05 GMT  
		Size: 10.1 MB (10058978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab40d01b5265cf13e21676d9f29ad2d777658b67961d968c8625b6beb34e9557`  
		Last Modified: Wed, 04 Nov 2026 23:17:05 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7ffed3f8ee91690c645a2a413398e536cee7bf30eb3b340272e907988e8af18`  
		Last Modified: Wed, 04 Nov 2026 23:17:05 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-17-noble` - unknown; unknown

```console
$ docker pull maven@sha256:285e898bd06c33ef644e7f12cb97d43f50a7be77b90b27528fc4ed00fd53e403
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4797849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eff499a895ea5a249eefe75768b666aa586644b9ecdaaf1e609ac0cbc8e8bb3`

```dockerfile
```

-	Layers:
	-	`sha256:22fcf0d39c3a80bff37545f08bf71d7f9ccab36538c703bb605881e0db0ab482`  
		Last Modified: Wed, 04 Nov 2026 23:17:05 GMT  
		Size: 4.8 MB (4780845 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a2ff792318e3d5e31a6f5dfdfca14ab25af40d64923d27e6b875c80d765f00c1`  
		Last Modified: Wed, 04 Nov 2026 23:17:05 GMT  
		Size: 17.0 KB (17004 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibm-semeru-17-noble` - linux; ppc64le

```console
$ docker pull maven@sha256:59ab71cf58ad5bf80e85842799cfb75f1502f370229ffac23aaf4c4dce6f6281
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.6 MB (322567774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1be7760fd544e6f77e11dad5dbe60c39b0bb837e8322690e4965ce8319d0d53`
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
ENV JAVA_VERSION=17.0.21.0
# Wed, 04 Nov 2026 22:23:33 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='9e92ab55b5088d6f8f9170b4f4e70baff7d39416e454583306e6b576c2262e67';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.21.0/ibm-semeru-open-jdk_aarch64_linux_17.0.21.0.tar.gz';          ;;        amd64|x86_64)          ESUM='854268feba1ebddcad42cf97915b3c48e44a543bbbe8f43e587a722921a16c42';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.21.0/ibm-semeru-open-jdk_x64_linux_17.0.21.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='894653088969fec74799b3b95020bc234ed0136a355c809f9f64271eebd84448';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.21.0/ibm-semeru-open-jdk_ppc64le_linux_17.0.21.0.tar.gz';          ;;        s390x)          ESUM='138f42844b91920b86aa257cc871c546b4cf93dd02c4f10a8c921db5299ebb95';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.21.0/ibm-semeru-open-jdk_s390x_linux_17.0.21.0.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Wed, 04 Nov 2026 22:23:33 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Nov 2026 22:23:33 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Wed, 04 Nov 2026 22:24:44 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Wed, 04 Nov 2026 23:07:40 GMT
RUN apt-get update   && apt-get install -y git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 04 Nov 2026 23:07:41 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 04 Nov 2026 23:07:41 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 04 Nov 2026 23:07:41 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 04 Nov 2026 23:07:41 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 04 Nov 2026 23:07:41 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 04 Nov 2026 23:07:41 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 04 Nov 2026 23:07:42 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 04 Nov 2026 23:07:42 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 04 Nov 2026 23:07:42 GMT
ARG USER_HOME_DIR=/root
# Wed, 04 Nov 2026 23:07:42 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 04 Nov 2026 23:07:42 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 04 Nov 2026 23:07:42 GMT
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
	-	`sha256:fbf810bdc23e5b307b291069bafc7559e5d6677ae9e8a1bd73b525008aed1017`  
		Last Modified: Wed, 04 Nov 2026 22:25:35 GMT  
		Size: 232.6 MB (232604263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:786fbc3477fb54a68313be45798f00ffba4253bb7bebc09f10268319ab9d9f68`  
		Last Modified: Wed, 04 Nov 2026 22:25:30 GMT  
		Size: 5.1 MB (5139358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4010657335f715d34baa43218421b5d85bf8e84510807172eb9e3e18e15ae9dc`  
		Last Modified: Wed, 04 Nov 2026 23:08:12 GMT  
		Size: 26.6 MB (26620730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6823e5fc54b63c460eb9976d0a3d9fb7f9aef14f55da2035e00050b2628c4fb1`  
		Last Modified: Wed, 04 Nov 2026 23:08:11 GMT  
		Size: 10.1 MB (10059019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a54c4e6b0cb07e31b1dfa701f12ac5212e61f4a4483534357114f043d868d64f`  
		Last Modified: Wed, 04 Nov 2026 23:08:11 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80296f0178e5e6b4abedb0a48d6bb58042886ac714ba544a66c95f55e02b3c0d`  
		Last Modified: Wed, 04 Nov 2026 23:08:11 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-17-noble` - unknown; unknown

```console
$ docker pull maven@sha256:e38362a65bdfdd800661181aff48ddc4e8bef70a02b07752b3422a29c5965b44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4800583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3e0ef72946270b237ca506f89a6ae81c639eaf0c423be9224e792c1e5eb4a2c`

```dockerfile
```

-	Layers:
	-	`sha256:b80e270f9ddebd595d8d0b19b813f91ad67a0b6b889e16b8158fa1f7195dfb52`  
		Last Modified: Wed, 04 Nov 2026 23:08:11 GMT  
		Size: 4.8 MB (4783662 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3cda6e597e3d4c4046146fe57a71acc2479e34cb52370a4911aea9eb41f074bb`  
		Last Modified: Wed, 04 Nov 2026 23:08:11 GMT  
		Size: 16.9 KB (16921 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibm-semeru-17-noble` - linux; s390x

```console
$ docker pull maven@sha256:2ccfde3184ee2bbd4d6ed8a00974caad68b3f0762d6752f30c6ebec9082cb610
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.0 MB (316026641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:684cde37980066bd23eec57ffc0e3afa2674f09f1d25b05cc9f2771b5081c858`
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
# Wed, 04 Nov 2026 22:27:26 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 04 Nov 2026 22:27:26 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 04 Nov 2026 22:27:26 GMT
ENV JAVA_VERSION=17.0.21.0
# Thu, 05 Nov 2026 00:20:09 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='9e92ab55b5088d6f8f9170b4f4e70baff7d39416e454583306e6b576c2262e67';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.21.0/ibm-semeru-open-jdk_aarch64_linux_17.0.21.0.tar.gz';          ;;        amd64|x86_64)          ESUM='854268feba1ebddcad42cf97915b3c48e44a543bbbe8f43e587a722921a16c42';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.21.0/ibm-semeru-open-jdk_x64_linux_17.0.21.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='894653088969fec74799b3b95020bc234ed0136a355c809f9f64271eebd84448';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.21.0/ibm-semeru-open-jdk_ppc64le_linux_17.0.21.0.tar.gz';          ;;        s390x)          ESUM='138f42844b91920b86aa257cc871c546b4cf93dd02c4f10a8c921db5299ebb95';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.21.0/ibm-semeru-open-jdk_s390x_linux_17.0.21.0.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Thu, 05 Nov 2026 00:20:09 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 00:20:09 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Thu, 05 Nov 2026 00:21:23 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Thu, 05 Nov 2026 01:08:19 GMT
RUN apt-get update   && apt-get install -y git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 01:08:20 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 05 Nov 2026 01:08:20 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 05 Nov 2026 01:08:20 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 05 Nov 2026 01:08:20 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 05 Nov 2026 01:08:20 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 05 Nov 2026 01:08:20 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 05 Nov 2026 01:08:20 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 05 Nov 2026 01:08:22 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 05 Nov 2026 01:08:22 GMT
ARG USER_HOME_DIR=/root
# Thu, 05 Nov 2026 01:08:22 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 05 Nov 2026 01:08:22 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 05 Nov 2026 01:08:22 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f0fdb9cf963ef02d3c2868640dfc39eba181814f056a5ff58b2befec68fae0f7`  
		Last Modified: Sun, 25 Oct 2026 14:50:38 GMT  
		Size: 29.9 MB (29947050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6e758432d89a0d5e0bbe8933e849b1d7c235982f78d967da4b5ecdfe5194f2d`  
		Last Modified: Wed, 04 Nov 2026 22:29:38 GMT  
		Size: 13.1 MB (13098537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:209bf16349240886e342637660ee21fa094caf04d85a873c05a13eba4aba0f5e`  
		Last Modified: Thu, 05 Nov 2026 00:22:31 GMT  
		Size: 232.8 MB (232760497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bde9abd67b227425eab6a02a344fbd07faf22189853c751da3d4bec73cfebbf6`  
		Last Modified: Thu, 05 Nov 2026 00:22:25 GMT  
		Size: 6.4 MB (6445878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f6de876ec2b47071a2b5ce0b967239ebf455ca96ea6d9c55adb461c1691a341`  
		Last Modified: Thu, 05 Nov 2026 01:09:05 GMT  
		Size: 23.7 MB (23714661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5055cee33e0986f864e33d174e80f932c38a6fcbf2b63a72a8edda93a35685b9`  
		Last Modified: Thu, 05 Nov 2026 01:09:05 GMT  
		Size: 10.1 MB (10059009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db67d82afc1566cf174fed6f0faae41b237b9be230bde5d47fe822997a935618`  
		Last Modified: Thu, 05 Nov 2026 01:09:04 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9688b6c16d6ab25e1c6e4e398ecb23d4b398661b911eba09715db63ef3ed2bca`  
		Last Modified: Thu, 05 Nov 2026 01:09:04 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-17-noble` - unknown; unknown

```console
$ docker pull maven@sha256:a7953e8189a87bc89611231b850105a8bdee953ee94ecaf8a79332e81fdfd012
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4794897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9ed6b82b20ee36689328a9c1c06ed6efce9bd241db44690a2113f65de29b995`

```dockerfile
```

-	Layers:
	-	`sha256:d6b9101927bb45156047bad5bd746b4a7f606597bdc3a379a9afaea2657e6b99`  
		Last Modified: Thu, 05 Nov 2026 01:09:04 GMT  
		Size: 4.8 MB (4778026 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aca8a32a213b1d7d29d4e6b831fe4f6406ff9e3a4ed39093b3448e830bef3a6a`  
		Last Modified: Thu, 05 Nov 2026 01:09:04 GMT  
		Size: 16.9 KB (16871 bytes)  
		MIME: application/vnd.in-toto+json
