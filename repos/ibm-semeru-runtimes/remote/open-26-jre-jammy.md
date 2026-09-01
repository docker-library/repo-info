## `ibm-semeru-runtimes:open-26-jre-jammy`

```console
$ docker pull ibm-semeru-runtimes@sha256:e110ca2a209d5d0e953f1becef1ae476eb3d7f72eeb91e27d45ea8c498ef7947
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

### `ibm-semeru-runtimes:open-26-jre-jammy` - linux; amd64

```console
$ docker pull ibm-semeru-runtimes@sha256:adfcbecec54c0c8a741e01c273f38f91027dfadd0b37dd12e18ca38e7a43f473
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.1 MB (109077907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:101318f8c1541e953da32243973e9304439f2cb7cb648592c67408c0e814b335`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 19:20:19 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 31 Aug 2026 19:20:19 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 19:20:19 GMT
ENV JAVA_VERSION=26.0.2.10
# Mon, 31 Aug 2026 19:25:11 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='3982238bf202331701e3115c850f2f362cad06fd458d19cb05849d8fdf74deb0';          BINARY_URL='https://github.com/ibmruntimes/semeru26-binaries/releases/download/jdk-26.0.2.10/ibm-semeru-open-jre_aarch64_linux_26.0.2.10.tar.gz';          ;;        amd64|x86_64)          ESUM='0de86d8ed8d1a764cfa5839bef0283c562f30fd902a01ec406f01143e5bec1aa';          BINARY_URL='https://github.com/ibmruntimes/semeru26-binaries/releases/download/jdk-26.0.2.10/ibm-semeru-open-jre_x64_linux_26.0.2.10.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='6b5f99f9789374b8611c5ec3461f5656a68d0dbc81b373341b266a0cb761d3f7';          BINARY_URL='https://github.com/ibmruntimes/semeru26-binaries/releases/download/jdk-26.0.2.10/ibm-semeru-open-jre_ppc64le_linux_26.0.2.10.tar.gz';          ;;        s390x)          ESUM='55e6b28af552cc1ae089ab4b7553ce493fb80081118b959b8265b6d7ceae6460';          BINARY_URL='https://github.com/ibmruntimes/semeru26-binaries/releases/download/jdk-26.0.2.10/ibm-semeru-open-jre_s390x_linux_26.0.2.10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 31 Aug 2026 19:25:11 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:25:11 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 31 Aug 2026 19:26:15 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Mon, 31 Aug 2026 19:26:15 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:444e44a34bcd256c26c43956aac15056fb50c9ea8cef583d2bc946c35bb9478d`  
		Last Modified: Mon, 31 Aug 2026 19:21:47 GMT  
		Size: 12.1 MB (12127019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd761165fd12c4d926f5082a8c8fceb794189f18a2aeb8ef6ca39d15d9e6c86f`  
		Last Modified: Mon, 31 Aug 2026 19:26:28 GMT  
		Size: 61.7 MB (61716844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8df841e1a895568d244dfe9bd2e470c5b20684789d16fd55668f1cf45d754fb1`  
		Last Modified: Mon, 31 Aug 2026 19:26:27 GMT  
		Size: 5.5 MB (5497101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibm-semeru-runtimes:open-26-jre-jammy` - unknown; unknown

```console
$ docker pull ibm-semeru-runtimes@sha256:6b1f6edfbab3ca84d0272c600ec256287eff7a26e08d4329d487ca89bff1fc1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3747564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd8ce3ccb79b73e4f35390311745c8ef37df7c2299be485fbbecbb4713644e31`

```dockerfile
```

-	Layers:
	-	`sha256:b02a04204608659343acad10e8b5fdb8597e218fada3f2820948a0b03efb5e81`  
		Last Modified: Mon, 31 Aug 2026 19:26:27 GMT  
		Size: 3.7 MB (3722352 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a0110c49c2c536f3edf98b61ef18952a8dceda5725ffc89503c7cce1ba1d7a0`  
		Last Modified: Mon, 31 Aug 2026 19:26:26 GMT  
		Size: 25.2 KB (25212 bytes)  
		MIME: application/vnd.in-toto+json

### `ibm-semeru-runtimes:open-26-jre-jammy` - linux; arm64 variant v8

```console
$ docker pull ibm-semeru-runtimes@sha256:de58fba2d08a13345321cfbcea40fa66d666b119ac2ed1ac408cfd9aed4d7c19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104842865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:863ccbf4fe1bf1c90162b909fe5f2624909d3b06ca8bc73b6e794180e9ab99dc`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 19:39:16 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 31 Aug 2026 19:39:16 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 19:39:16 GMT
ENV JAVA_VERSION=26.0.2.10
# Mon, 31 Aug 2026 19:42:16 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='3982238bf202331701e3115c850f2f362cad06fd458d19cb05849d8fdf74deb0';          BINARY_URL='https://github.com/ibmruntimes/semeru26-binaries/releases/download/jdk-26.0.2.10/ibm-semeru-open-jre_aarch64_linux_26.0.2.10.tar.gz';          ;;        amd64|x86_64)          ESUM='0de86d8ed8d1a764cfa5839bef0283c562f30fd902a01ec406f01143e5bec1aa';          BINARY_URL='https://github.com/ibmruntimes/semeru26-binaries/releases/download/jdk-26.0.2.10/ibm-semeru-open-jre_x64_linux_26.0.2.10.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='6b5f99f9789374b8611c5ec3461f5656a68d0dbc81b373341b266a0cb761d3f7';          BINARY_URL='https://github.com/ibmruntimes/semeru26-binaries/releases/download/jdk-26.0.2.10/ibm-semeru-open-jre_ppc64le_linux_26.0.2.10.tar.gz';          ;;        s390x)          ESUM='55e6b28af552cc1ae089ab4b7553ce493fb80081118b959b8265b6d7ceae6460';          BINARY_URL='https://github.com/ibmruntimes/semeru26-binaries/releases/download/jdk-26.0.2.10/ibm-semeru-open-jre_s390x_linux_26.0.2.10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 31 Aug 2026 19:42:16 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:42:16 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 31 Aug 2026 19:43:20 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Mon, 31 Aug 2026 19:43:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee668c583fe75cda39db20f38e4d3fe45bf8c0d73366ace2e3671a9a8f0d376e`  
		Last Modified: Mon, 31 Aug 2026 19:40:36 GMT  
		Size: 12.1 MB (12098748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:939f934f7d196d9eba2f14564640368a63c445b2f0421e1ccd680be07eda034e`  
		Last Modified: Mon, 31 Aug 2026 19:43:35 GMT  
		Size: 59.8 MB (59845540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3ad982927a66266bfb2ac1ddb3b1ac8a00ff2565867ff2aabf53e88c843445a`  
		Last Modified: Mon, 31 Aug 2026 19:43:33 GMT  
		Size: 5.3 MB (5278124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibm-semeru-runtimes:open-26-jre-jammy` - unknown; unknown

```console
$ docker pull ibm-semeru-runtimes@sha256:baec50508d83bccd9eee3911ff5f13ffd19fc43e5ab1b9034475ec3556c5a564
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3745424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaacac881cd774f8d55976e94076c5f1dd59a1c0ff2848a18219ec073b682b91`

```dockerfile
```

-	Layers:
	-	`sha256:0fb24ec1b8dc02eb5a93ccd88573d08e36bc82faa51f29ac975fe44e13923fa2`  
		Last Modified: Mon, 31 Aug 2026 19:43:33 GMT  
		Size: 3.7 MB (3720101 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0493ea047c95c41ea506aba837656777907c2d27c4448a490ebb8939b1bab2d3`  
		Last Modified: Mon, 31 Aug 2026 19:43:33 GMT  
		Size: 25.3 KB (25323 bytes)  
		MIME: application/vnd.in-toto+json

### `ibm-semeru-runtimes:open-26-jre-jammy` - linux; ppc64le

```console
$ docker pull ibm-semeru-runtimes@sha256:019d8101c3afd384fad1632d0a32877c16e5a968ec2b01c82b046713f01e738c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115129930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98945f126cea40e8f48af9f8496946cac5d2943cfa76b8da21fb15518f6a31e9`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 10 Aug 2026 17:41:01 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:41:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:41:01 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:41:05 GMT
ADD file:d76e60867a1f84b7db03c693179093620dc98a06de4f58fdcc806cfc4e4be11c in / 
# Mon, 10 Aug 2026 17:41:05 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 19:54:49 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 19 Aug 2026 19:54:49 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 19:54:49 GMT
ENV JAVA_VERSION=26.0.2.10
# Mon, 31 Aug 2026 21:26:48 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='3982238bf202331701e3115c850f2f362cad06fd458d19cb05849d8fdf74deb0';          BINARY_URL='https://github.com/ibmruntimes/semeru26-binaries/releases/download/jdk-26.0.2.10/ibm-semeru-open-jre_aarch64_linux_26.0.2.10.tar.gz';          ;;        amd64|x86_64)          ESUM='0de86d8ed8d1a764cfa5839bef0283c562f30fd902a01ec406f01143e5bec1aa';          BINARY_URL='https://github.com/ibmruntimes/semeru26-binaries/releases/download/jdk-26.0.2.10/ibm-semeru-open-jre_x64_linux_26.0.2.10.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='6b5f99f9789374b8611c5ec3461f5656a68d0dbc81b373341b266a0cb761d3f7';          BINARY_URL='https://github.com/ibmruntimes/semeru26-binaries/releases/download/jdk-26.0.2.10/ibm-semeru-open-jre_ppc64le_linux_26.0.2.10.tar.gz';          ;;        s390x)          ESUM='55e6b28af552cc1ae089ab4b7553ce493fb80081118b959b8265b6d7ceae6460';          BINARY_URL='https://github.com/ibmruntimes/semeru26-binaries/releases/download/jdk-26.0.2.10/ibm-semeru-open-jre_s390x_linux_26.0.2.10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 31 Aug 2026 21:26:48 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 21:26:48 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 31 Aug 2026 21:27:56 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Mon, 31 Aug 2026 21:27:56 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f91e00e792a8adfcd4df0b5c8e802d3b4d1e06477f9753454043a7ce76772758`  
		Last Modified: Mon, 10 Aug 2026 20:09:02 GMT  
		Size: 34.6 MB (34638145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13e27ff676994b4e7e3a26a58378e0959af315a4693802d24dc87a539cbd952b`  
		Last Modified: Wed, 19 Aug 2026 19:57:21 GMT  
		Size: 12.9 MB (12855668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:245abc0e040c710c89ad7bea18d0445e56db351270b95154473b9f2481c8c803`  
		Last Modified: Mon, 31 Aug 2026 21:28:25 GMT  
		Size: 63.3 MB (63286948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e2354634c77746e7932b583f2e408aae06d084b6881d6076d5fd24281080b17`  
		Last Modified: Mon, 31 Aug 2026 21:28:23 GMT  
		Size: 4.3 MB (4349169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibm-semeru-runtimes:open-26-jre-jammy` - unknown; unknown

```console
$ docker pull ibm-semeru-runtimes@sha256:a5afad48073087268e459eeccd53b5628126722a841aeff4e7035a8c2dd9313f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3750325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc39822bd375528bebabe87eb6cddb885339fed2e2684fb4d54a9a5222565bdf`

```dockerfile
```

-	Layers:
	-	`sha256:7722e14eb47de4b30634ce881abb548cf68eecc45ad95e8893ce6235e7b470e1`  
		Last Modified: Mon, 31 Aug 2026 21:28:23 GMT  
		Size: 3.7 MB (3725076 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f0749881a5a49750317e6af660085e5ee9acbdca5227a94ee41164412b72525`  
		Last Modified: Mon, 31 Aug 2026 21:28:23 GMT  
		Size: 25.2 KB (25249 bytes)  
		MIME: application/vnd.in-toto+json

### `ibm-semeru-runtimes:open-26-jre-jammy` - linux; s390x

```console
$ docker pull ibm-semeru-runtimes@sha256:c2f77ea0118a50d18edd4d2a99d09d303d01efb860849ef39190a4896fe2d331
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.2 MB (110187769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14b309ce3b74d7851ab97796e63478859954c28ef985edfbf9ba6b892402cc47`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 10 Aug 2026 17:41:22 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:41:22 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:41:22 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:41:24 GMT
ADD file:ebe1295278656f2efe95b21ab9586cdaa8c816836b56de7bf7a802fc92465272 in / 
# Mon, 10 Aug 2026 17:41:24 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 18:32:22 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 31 Aug 2026 18:32:22 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 18:32:22 GMT
ENV JAVA_VERSION=26.0.2.10
# Mon, 31 Aug 2026 18:43:13 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='3982238bf202331701e3115c850f2f362cad06fd458d19cb05849d8fdf74deb0';          BINARY_URL='https://github.com/ibmruntimes/semeru26-binaries/releases/download/jdk-26.0.2.10/ibm-semeru-open-jre_aarch64_linux_26.0.2.10.tar.gz';          ;;        amd64|x86_64)          ESUM='0de86d8ed8d1a764cfa5839bef0283c562f30fd902a01ec406f01143e5bec1aa';          BINARY_URL='https://github.com/ibmruntimes/semeru26-binaries/releases/download/jdk-26.0.2.10/ibm-semeru-open-jre_x64_linux_26.0.2.10.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='6b5f99f9789374b8611c5ec3461f5656a68d0dbc81b373341b266a0cb761d3f7';          BINARY_URL='https://github.com/ibmruntimes/semeru26-binaries/releases/download/jdk-26.0.2.10/ibm-semeru-open-jre_ppc64le_linux_26.0.2.10.tar.gz';          ;;        s390x)          ESUM='55e6b28af552cc1ae089ab4b7553ce493fb80081118b959b8265b6d7ceae6460';          BINARY_URL='https://github.com/ibmruntimes/semeru26-binaries/releases/download/jdk-26.0.2.10/ibm-semeru-open-jre_s390x_linux_26.0.2.10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 31 Aug 2026 18:43:13 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 18:43:13 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 31 Aug 2026 18:44:16 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Mon, 31 Aug 2026 18:44:16 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3c9503cfff1c82d12820c3c752940964f6a091cb183b44e45fc5a003b8d47e87`  
		Last Modified: Mon, 10 Aug 2026 20:09:16 GMT  
		Size: 28.2 MB (28210903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c9436afb63f61cad9f2fe83a6bc38b1fcaf5142303f8a8ba1b3368eab6f0e3d`  
		Last Modified: Mon, 31 Aug 2026 18:33:51 GMT  
		Size: 12.2 MB (12181512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b43bec43dae0c11ccbee55408de9b4980b7926c2ce82f847db860ef76726f048`  
		Last Modified: Mon, 31 Aug 2026 18:44:36 GMT  
		Size: 64.0 MB (64014131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a49c310c438d878b146dc0861daf6e31a5ff6a18f667236e9d1b15db20309df`  
		Last Modified: Mon, 31 Aug 2026 18:44:35 GMT  
		Size: 5.8 MB (5781223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibm-semeru-runtimes:open-26-jre-jammy` - unknown; unknown

```console
$ docker pull ibm-semeru-runtimes@sha256:a159ad34ab6b7149ba6a33cf0fdf582d09f304cda25563780e0dcab6a7f1a0cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3749157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42bd630530b4af753a907bab4266c432da2d8c1aaa56fd56cc9a97601a5056c6`

```dockerfile
```

-	Layers:
	-	`sha256:8dde1fef2b9d0088629a2a2809bef889302741767cbaf655113d4d8873524a62`  
		Last Modified: Mon, 31 Aug 2026 18:44:35 GMT  
		Size: 3.7 MB (3723944 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:126eb64e2728045cd56156e111eafed8a6fc9c76fd04fe4252b6c2dafdcd9850`  
		Last Modified: Mon, 31 Aug 2026 18:44:35 GMT  
		Size: 25.2 KB (25213 bytes)  
		MIME: application/vnd.in-toto+json
