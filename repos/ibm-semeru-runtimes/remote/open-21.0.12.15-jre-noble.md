## `ibm-semeru-runtimes:open-21.0.12.15-jre-noble`

```console
$ docker pull ibm-semeru-runtimes@sha256:38ad431c1339c75d551d9345629952b5a8b26c66ac4f3c5b4f345cdd45b2ba43
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

### `ibm-semeru-runtimes:open-21.0.12.15-jre-noble` - linux; amd64

```console
$ docker pull ibm-semeru-runtimes@sha256:60a9a7e99fe002d82659d2fd45dd75c65cf1a980aefc7d47be966cc3671c5066
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.7 MB (108667874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9ebb17c0b6fb36113ca1d095e0cf5c84622002fc346dd7e31bded0507f4271c`
-	Default Command: `["\/bin\/bash"]`

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
# Mon, 26 Oct 2026 23:16:45 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:16:45 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:16:45 GMT
ENV JAVA_VERSION=21.0.12.15
# Mon, 26 Oct 2026 23:20:00 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='2f27d7326021a68093351b1368cc9a44900456ec16f6ebee2dcb8842502e3b11';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jre_aarch64_linux_21.0.12.15.tar.gz';          ;;        amd64|x86_64)          ESUM='7b5f5b353dafa76a2810902cb6088c6a01f7766a7bcc3a8182c412a7769a9242';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jre_x64_linux_21.0.12.15.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='a24a04707ea2b3c744ea6ce6a641d2c6001037e47546c1ec103d260ea1e77220';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jre_ppc64le_linux_21.0.12.15.tar.gz';          ;;        s390x)          ESUM='7603caa37fabff1f95c4d8567b06c08c0f9d6b6cad6ffa3d43bd2421d4c304a9';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jre_s390x_linux_21.0.12.15.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 26 Oct 2026 23:20:00 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:20:00 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 26 Oct 2026 23:21:11 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:757cf8e0b7da25ab2bfde1db4d7d8967b8ce5ba5614c10a4bc9f03f913bf5a68`  
		Last Modified: Mon, 26 Oct 2026 23:18:08 GMT  
		Size: 12.8 MB (12792216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0d3de84b622eec68236ce1fa97c503e2b14f0985707b10e6e96e2ef166948e1`  
		Last Modified: Mon, 26 Oct 2026 23:21:19 GMT  
		Size: 60.8 MB (60811997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8121cf70d92aaad5dd49a216fb1879220116a3574157aa1849e0bf2b8407dcb`  
		Last Modified: Mon, 26 Oct 2026 23:21:24 GMT  
		Size: 5.3 MB (5296049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibm-semeru-runtimes:open-21.0.12.15-jre-noble` - unknown; unknown

```console
$ docker pull ibm-semeru-runtimes@sha256:e20098a71031087231f64e5ec76d410607073d02781a333109a29346a80981e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3182655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1752008e07f99c487ffcff8f32595030c572c8e299e95269a9a38f3aa74df179`

```dockerfile
```

-	Layers:
	-	`sha256:41df663816095f0c385192bece505b4aeb59e8fdf17251f976ffc227e6023a8d`  
		Last Modified: Mon, 26 Oct 2026 23:21:24 GMT  
		Size: 3.2 MB (3157438 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:63d23860acc97f3078deed28362378268bfdcfbe5ec908a0e29015f9f7b34355`  
		Last Modified: Mon, 26 Oct 2026 23:21:23 GMT  
		Size: 25.2 KB (25217 bytes)  
		MIME: application/vnd.in-toto+json

### `ibm-semeru-runtimes:open-21.0.12.15-jre-noble` - linux; arm64 variant v8

```console
$ docker pull ibm-semeru-runtimes@sha256:d12e9c80726a9f12b245e3a248fd6b711463bfee7f4910bd213aba760d825590
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.7 MB (105735919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6804876caa16ae850aab66bb25839b7570f1d890ceb227f4b7acee0d17a04913`
-	Default Command: `["\/bin\/bash"]`

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
# Mon, 26 Oct 2026 23:21:37 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:21:37 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:21:37 GMT
ENV JAVA_VERSION=21.0.12.15
# Mon, 26 Oct 2026 23:25:04 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='2f27d7326021a68093351b1368cc9a44900456ec16f6ebee2dcb8842502e3b11';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jre_aarch64_linux_21.0.12.15.tar.gz';          ;;        amd64|x86_64)          ESUM='7b5f5b353dafa76a2810902cb6088c6a01f7766a7bcc3a8182c412a7769a9242';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jre_x64_linux_21.0.12.15.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='a24a04707ea2b3c744ea6ce6a641d2c6001037e47546c1ec103d260ea1e77220';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jre_ppc64le_linux_21.0.12.15.tar.gz';          ;;        s390x)          ESUM='7603caa37fabff1f95c4d8567b06c08c0f9d6b6cad6ffa3d43bd2421d4c304a9';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jre_s390x_linux_21.0.12.15.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 26 Oct 2026 23:25:04 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:25:04 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 26 Oct 2026 23:26:10 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58b3fcfb5c54b6603238d0be58902778f06d32c4b905b87639fceef718d85664`  
		Last Modified: Mon, 26 Oct 2026 23:23:02 GMT  
		Size: 12.8 MB (12829863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c1e6b787df04e4b7708dde03ddacd7c91dc5d01acf182b93f38e9840efe0592`  
		Last Modified: Mon, 26 Oct 2026 23:26:24 GMT  
		Size: 59.0 MB (58982984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81af7b9e3572bfb2aee7057afff4f20410aea9a80786b51a8c2091ea14cca134`  
		Last Modified: Mon, 26 Oct 2026 23:26:23 GMT  
		Size: 5.0 MB (4982946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibm-semeru-runtimes:open-21.0.12.15-jre-noble` - unknown; unknown

```console
$ docker pull ibm-semeru-runtimes@sha256:e00521c415b7322580cf2bcd7470ac460a491420d4019fcf4bd82f71e544d74c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3181307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:983174edf85c4a06b3f1b20694615ea6149794702ed0054e500bdd09a98a0667`

```dockerfile
```

-	Layers:
	-	`sha256:3d11b0f2b2e749cf25aa8605f7124b4ea078aa3e56721be287025220bf1cef8e`  
		Last Modified: Mon, 26 Oct 2026 23:26:23 GMT  
		Size: 3.2 MB (3155980 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e0bbb2cebc4ec78c5368398462965a729e4fe244ed5dcc87dcda7106231a9ae0`  
		Last Modified: Mon, 26 Oct 2026 23:26:22 GMT  
		Size: 25.3 KB (25327 bytes)  
		MIME: application/vnd.in-toto+json

### `ibm-semeru-runtimes:open-21.0.12.15-jre-noble` - linux; ppc64le

```console
$ docker pull ibm-semeru-runtimes@sha256:dbf8f698a4e27c9a9e2a44f16fcd75ab746a3c059cc2adeaa375f4f252c1c290
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115085263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f907d8c9b5704b6c01637837dc6d21999bc503ec289333d0ea201a9cb282db9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:03:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:03:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:03:53 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:03:57 GMT
ADD file:453509713ec04b626052519f384e2b9d016f8f4971a3e6dd75d87e74e89202c9 in / 
# Fri, 02 Oct 2026 08:03:57 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:53:20 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:53:20 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:53:20 GMT
ENV JAVA_VERSION=21.0.12.15
# Sat, 17 Oct 2026 01:14:42 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='2f27d7326021a68093351b1368cc9a44900456ec16f6ebee2dcb8842502e3b11';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jre_aarch64_linux_21.0.12.15.tar.gz';          ;;        amd64|x86_64)          ESUM='7b5f5b353dafa76a2810902cb6088c6a01f7766a7bcc3a8182c412a7769a9242';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jre_x64_linux_21.0.12.15.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='a24a04707ea2b3c744ea6ce6a641d2c6001037e47546c1ec103d260ea1e77220';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jre_ppc64le_linux_21.0.12.15.tar.gz';          ;;        s390x)          ESUM='7603caa37fabff1f95c4d8567b06c08c0f9d6b6cad6ffa3d43bd2421d4c304a9';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jre_s390x_linux_21.0.12.15.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Sat, 17 Oct 2026 01:14:42 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:14:42 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Sat, 17 Oct 2026 01:15:55 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efc2751f29bf24a1f7e2b7adba0c7949c9fe35c09e60afb29d32eec95569d16c`  
		Last Modified: Sat, 17 Oct 2026 00:55:43 GMT  
		Size: 13.8 MB (13771352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b945fa94996307832f50540823b07ec86122d5edcc5511779a6d4cc0082b475`  
		Last Modified: Sat, 17 Oct 2026 01:16:27 GMT  
		Size: 62.8 MB (62781393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d669ca92a3b1cf5a7db11a548d0656e8aa7481122f5232b1d97286ae9319ddb`  
		Last Modified: Sat, 17 Oct 2026 01:16:26 GMT  
		Size: 4.2 MB (4154528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibm-semeru-runtimes:open-21.0.12.15-jre-noble` - unknown; unknown

```console
$ docker pull ibm-semeru-runtimes@sha256:d732e183f144049a51b6ba787f0564a71647de25ac2c66a1dd114e44a9d0a628
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3187951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cf887982b8201553b9e64943c1f5da6af65b5691560668698a4ff331b99d8fa`

```dockerfile
```

-	Layers:
	-	`sha256:6d68b7087aaf2052adc776f428be4e3df022868ae2e48b313de881787c6ccc98`  
		Last Modified: Sat, 17 Oct 2026 01:16:26 GMT  
		Size: 3.2 MB (3162698 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2858c2e5e2d2c2feb9652ccdc02a482e1647cf522be700dc6f013ebd92d3163f`  
		Last Modified: Sat, 17 Oct 2026 01:16:25 GMT  
		Size: 25.3 KB (25253 bytes)  
		MIME: application/vnd.in-toto+json

### `ibm-semeru-runtimes:open-21.0.12.15-jre-noble` - linux; s390x

```console
$ docker pull ibm-semeru-runtimes@sha256:47a038cab3d5880ea7b2e297215a93da321e442ad6caffcd85071850f1c5355a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.6 MB (111605006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56dd03b38eb1c69b3e88c2bfbe4996eac351a7ec764805bd126775ad940ab141`
-	Default Command: `["\/bin\/bash"]`

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
# Mon, 26 Oct 2026 23:50:44 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:50:44 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:50:44 GMT
ENV JAVA_VERSION=21.0.12.15
# Mon, 26 Oct 2026 23:54:17 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='2f27d7326021a68093351b1368cc9a44900456ec16f6ebee2dcb8842502e3b11';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jre_aarch64_linux_21.0.12.15.tar.gz';          ;;        amd64|x86_64)          ESUM='7b5f5b353dafa76a2810902cb6088c6a01f7766a7bcc3a8182c412a7769a9242';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jre_x64_linux_21.0.12.15.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='a24a04707ea2b3c744ea6ce6a641d2c6001037e47546c1ec103d260ea1e77220';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jre_ppc64le_linux_21.0.12.15.tar.gz';          ;;        s390x)          ESUM='7603caa37fabff1f95c4d8567b06c08c0f9d6b6cad6ffa3d43bd2421d4c304a9';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jre_s390x_linux_21.0.12.15.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 26 Oct 2026 23:54:17 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:54:17 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 26 Oct 2026 23:55:23 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
```

-	Layers:
	-	`sha256:f0fdb9cf963ef02d3c2868640dfc39eba181814f056a5ff58b2befec68fae0f7`  
		Last Modified: Sun, 25 Oct 2026 14:50:38 GMT  
		Size: 29.9 MB (29947050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a511c64654dfe2dcc711bb918c1956d98cf75eb4d4d430e3de000f00f2d0ba6f`  
		Last Modified: Mon, 26 Oct 2026 23:52:21 GMT  
		Size: 13.1 MB (13097943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe6a8c05c23bf27ad4037871bea2d25008d2f9f1dee0934857fdcc06d06fcc9a`  
		Last Modified: Mon, 26 Oct 2026 23:55:48 GMT  
		Size: 63.1 MB (63095824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:723f910d0d9f802dae2689d4e6cf8cfa0c4d5fde312d9ca525c6377d946f7fbf`  
		Last Modified: Mon, 26 Oct 2026 23:55:46 GMT  
		Size: 5.5 MB (5464189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibm-semeru-runtimes:open-21.0.12.15-jre-noble` - unknown; unknown

```console
$ docker pull ibm-semeru-runtimes@sha256:ed89f47aa52d5b205805d44da139217fe2dde572dd2f5f7357b7cb2502d8b355
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3184853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:137999740a52a24f0f4ec6540b13b2a57a59562e31e0b790af3faf688577d791`

```dockerfile
```

-	Layers:
	-	`sha256:e5a07bb54191646713edff334b32eff427cb6c5f343fc86ed259592ed6f651c7`  
		Last Modified: Mon, 26 Oct 2026 23:55:46 GMT  
		Size: 3.2 MB (3159636 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9edf9f8f63e733518dd9ef3edcfd3c879e2a2528faee8fd5c7becf0f3a7661fa`  
		Last Modified: Mon, 26 Oct 2026 23:55:45 GMT  
		Size: 25.2 KB (25217 bytes)  
		MIME: application/vnd.in-toto+json
