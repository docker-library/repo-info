## `ibm-semeru-runtimes:open-25-jdk`

```console
$ docker pull ibm-semeru-runtimes@sha256:06a71b3039c0eb78fb981b1b78721f1fdfeded5386bfdca5abc6cf57fa399bfb
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

### `ibm-semeru-runtimes:open-25-jdk` - linux; amd64

```console
$ docker pull ibm-semeru-runtimes@sha256:18b2f95fd0375733809b1fe13a739604595f3565b1f5f1dd28157ddcb865f53c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.8 MB (314756789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33a7a1e11d180b4abbd5f75b85b4442d9288eea87c67f49d1aa0f3fcdaa60022`
-	Default Command: `["jshell"]`

```dockerfile
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.9587.tar --tag 26.04
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-25T10:26:07.538865+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-25T10:26:07.538865+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.control_data.9587.tar
# Mon, 26 Oct 2026 23:20:51 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:20:51 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:20:51 GMT
ENV JAVA_VERSION=25.0.4.15
# Mon, 26 Oct 2026 23:20:56 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='df7c6142e8a2c090426792cdaa5a4d16d86eccd86ffd6ba65ede029aac0b5f09';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.15/ibm-semeru-open-jdk_aarch64_linux_25.0.4.15.tar.gz';          ;;        amd64|x86_64)          ESUM='56c26f137607ce5b4301a9958e4a43fa32a04c2e66bb75282ca19b4c12be8433';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.15/ibm-semeru-open-jdk_x64_linux_25.0.4.15.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='b754aba019a080c27a7542cc80fc0b41bafd5fed828ac3e0353f6a3ebe052848';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.15/ibm-semeru-open-jdk_ppc64le_linux_25.0.4.15.tar.gz';          ;;        s390x)          ESUM='eda0444abf07e2842846d9c2948b09337828b8fb67d3eb8c490b2f7d58cb8637';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.15/ibm-semeru-open-jdk_s390x_linux_25.0.4.15.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 26 Oct 2026 23:20:56 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:20:56 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 26 Oct 2026 23:22:03 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Mon, 26 Oct 2026 23:22:03 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:edafa32f5d9e4d9629f0dbc6c01e63c79ff08133c01cfb7d3363aa8bd8a614cf`  
		Last Modified: Sun, 25 Oct 2026 13:21:15 GMT  
		Size: 42.1 MB (42139920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3f25b84a7d74315d94ee4108231f8f5e0cd2a44725a7204d5dd6ce91c151697`  
		Last Modified: Sun, 25 Oct 2026 13:21:18 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1ea71a0dfdb08ae58dde0175174f6c154b0ac854ebef82f8fcf0ce35ddd1ff3`  
		Last Modified: Mon, 26 Oct 2026 23:22:27 GMT  
		Size: 15.9 MB (15893654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6c772ddfd4bed585e934613d519ece3a264f246ef41d5bb59c571968d6f5db4`  
		Last Modified: Mon, 26 Oct 2026 23:22:31 GMT  
		Size: 250.0 MB (249963649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73458621f9139ec584b5ffdf9378131d6d47d7a66e6e42f90cf654e54f71f3d0`  
		Last Modified: Mon, 26 Oct 2026 23:22:26 GMT  
		Size: 6.8 MB (6759174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibm-semeru-runtimes:open-25-jdk` - unknown; unknown

```console
$ docker pull ibm-semeru-runtimes@sha256:2982012a226ddf85cdf1e9e38b86d406588d2d680dfd77bc8429d30ebddb34f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5145854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a44ee0cd7f275126bff5b5c51f02c4d4b61a5f6d043aed8b582a449383ed636e`

```dockerfile
```

-	Layers:
	-	`sha256:d2a29799e7ddae1d42e1dede04303b6fb680607e08d15e8bb529da3d79fcecbb`  
		Last Modified: Mon, 26 Oct 2026 23:22:26 GMT  
		Size: 5.1 MB (5119320 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6eb960dc48deab69c7a4bc3a47ed520aa94d5c2355e2e497727cc070bfd0ea2a`  
		Last Modified: Mon, 26 Oct 2026 23:22:26 GMT  
		Size: 26.5 KB (26534 bytes)  
		MIME: application/vnd.in-toto+json

### `ibm-semeru-runtimes:open-25-jdk` - linux; arm64 variant v8

```console
$ docker pull ibm-semeru-runtimes@sha256:eea0230044be7f9fabd8dc8691e2a013fd8cfd5b5fb131698e26ab68e4ad9574
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.4 MB (309393033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f98e4c9797b06a19999d7d1537ebc23c0a97995e6e6e1d7e9ddc6e832011a38`
-	Default Command: `["jshell"]`

```dockerfile
# Sun, 25 Oct 2026 10:30:31 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.9649.tar --tag 26.04
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-25T10:30:32.309136+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-25T10:30:32.309136+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.control_data.9649.tar
# Mon, 26 Oct 2026 23:25:42 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:25:42 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:25:42 GMT
ENV JAVA_VERSION=25.0.4.15
# Mon, 26 Oct 2026 23:25:47 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='df7c6142e8a2c090426792cdaa5a4d16d86eccd86ffd6ba65ede029aac0b5f09';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.15/ibm-semeru-open-jdk_aarch64_linux_25.0.4.15.tar.gz';          ;;        amd64|x86_64)          ESUM='56c26f137607ce5b4301a9958e4a43fa32a04c2e66bb75282ca19b4c12be8433';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.15/ibm-semeru-open-jdk_x64_linux_25.0.4.15.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='b754aba019a080c27a7542cc80fc0b41bafd5fed828ac3e0353f6a3ebe052848';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.15/ibm-semeru-open-jdk_ppc64le_linux_25.0.4.15.tar.gz';          ;;        s390x)          ESUM='eda0444abf07e2842846d9c2948b09337828b8fb67d3eb8c490b2f7d58cb8637';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.15/ibm-semeru-open-jdk_s390x_linux_25.0.4.15.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 26 Oct 2026 23:25:47 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:25:47 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 26 Oct 2026 23:26:54 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Mon, 26 Oct 2026 23:26:54 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:afa7f7d582de8ee3433df193ede10fc2c50d3398de31c14d329b643e7a69b852`  
		Last Modified: Sun, 25 Oct 2026 13:21:25 GMT  
		Size: 41.1 MB (41122308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f01cc7d6fb3d703f324d1ccddfddeaa2e8c97cf4b5d6936a66396eaf4089d99`  
		Last Modified: Sun, 25 Oct 2026 13:21:28 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19d7d6f511db431875bdb9e27490aeb13a87090d62815f1b84d48db4d7937db4`  
		Last Modified: Mon, 26 Oct 2026 23:27:17 GMT  
		Size: 15.8 MB (15755286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a141bd6940ddfb54213d46e135915499b02478c85c8910c533ceb6216551fd2`  
		Last Modified: Mon, 26 Oct 2026 23:27:22 GMT  
		Size: 245.9 MB (245889391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04b696e5fb747a0de659957c5a0dd5e65afdbd57be68c5eae7e4d7ff4f6ecb49`  
		Last Modified: Mon, 26 Oct 2026 23:27:17 GMT  
		Size: 6.6 MB (6625660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibm-semeru-runtimes:open-25-jdk` - unknown; unknown

```console
$ docker pull ibm-semeru-runtimes@sha256:b927bbf1692405e4ee78d123e09f51fc3c55fb7f88f71b8b3e01fdf60c3ea9b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5143750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1f8bb2488aadc9029cee4cb5737702053978eace3425c399142db69f8dbf66d`

```dockerfile
```

-	Layers:
	-	`sha256:0ea49f0a11ccc540d63af7fed72bf0c83e0b66ff6ac374a274634af2334918ce`  
		Last Modified: Mon, 26 Oct 2026 23:27:17 GMT  
		Size: 5.1 MB (5117082 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a09c11587e64c4b50fe2d5f68e0d04c0966d801f8192826e82bf2df3b38292b1`  
		Last Modified: Mon, 26 Oct 2026 23:27:16 GMT  
		Size: 26.7 KB (26668 bytes)  
		MIME: application/vnd.in-toto+json

### `ibm-semeru-runtimes:open-25-jdk` - linux; ppc64le

```console
$ docker pull ibm-semeru-runtimes@sha256:97637e3cd8ab5671d6e8547437ef4de5e6f94e1347948851009a876b0b81de51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.4 MB (322434658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77748c83daf329f24cdfb72360e6272be5076eb87d4fe94b057ed1e43d55ea5d`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 06 Oct 2026 20:40:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.9489.tar --tag 26.04
# Tue, 06 Oct 2026 20:40:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 06 Oct 2026 20:40:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 06 Oct 2026 20:40:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 20:40:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-06T20:40:52.926628+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:40:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-06T20:40:52.926628+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:40:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.control_data.9489.tar
# Sat, 17 Oct 2026 00:54:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:54:43 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:54:43 GMT
ENV JAVA_VERSION=25.0.4.15
# Sat, 17 Oct 2026 01:20:06 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='df7c6142e8a2c090426792cdaa5a4d16d86eccd86ffd6ba65ede029aac0b5f09';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.15/ibm-semeru-open-jdk_aarch64_linux_25.0.4.15.tar.gz';          ;;        amd64|x86_64)          ESUM='56c26f137607ce5b4301a9958e4a43fa32a04c2e66bb75282ca19b4c12be8433';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.15/ibm-semeru-open-jdk_x64_linux_25.0.4.15.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='b754aba019a080c27a7542cc80fc0b41bafd5fed828ac3e0353f6a3ebe052848';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.15/ibm-semeru-open-jdk_ppc64le_linux_25.0.4.15.tar.gz';          ;;        s390x)          ESUM='eda0444abf07e2842846d9c2948b09337828b8fb67d3eb8c490b2f7d58cb8637';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.15/ibm-semeru-open-jdk_s390x_linux_25.0.4.15.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Sat, 17 Oct 2026 01:20:06 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:20:06 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Sat, 17 Oct 2026 01:21:16 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Sat, 17 Oct 2026 01:21:16 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a262d7f3fc44532425408a05158e95511d4ebe3af8c0a1de354e7157bb27d6f0`  
		Last Modified: Wed, 07 Oct 2026 20:45:34 GMT  
		Size: 47.2 MB (47226803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15f84129b3088bcac32100330a0fc3d834e81f5cfe23a85ce237f2a63cc920d6`  
		Last Modified: Wed, 07 Oct 2026 20:45:37 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37f998faf25cc1714ae4655e246371724343002efb307bd7a76214e73310ca11`  
		Last Modified: Sat, 17 Oct 2026 00:56:58 GMT  
		Size: 17.3 MB (17264021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6958e427877fd16f59c69cb17acd163fc2bec14b9fc16e9a3ae08fbdfa2b399f`  
		Last Modified: Sat, 17 Oct 2026 01:22:23 GMT  
		Size: 252.4 MB (252393882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e30c877d6bf00c9fe604f617d31f237e62055f75c51e10e8406bb9d1ba6ca5f`  
		Last Modified: Sat, 17 Oct 2026 01:22:18 GMT  
		Size: 5.5 MB (5549561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibm-semeru-runtimes:open-25-jdk` - unknown; unknown

```console
$ docker pull ibm-semeru-runtimes@sha256:1d76743999690952faa5b17eb0df07c88e1e07add5e294f09851dc403820e884
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5137274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25e76ab5d3652a99c105b8a0936bf85c2e5c04aa85e73a67a520e0696c44a40a`

```dockerfile
```

-	Layers:
	-	`sha256:d1dca44bddbd9c950335b486895a7da19d1c679702b4c724c0f0f2431cc572f3`  
		Last Modified: Sat, 17 Oct 2026 01:22:18 GMT  
		Size: 5.1 MB (5110692 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:18fc961f2053771d84634cd70823bd07354365e8c2eb433c98188e9cfbe6bc1c`  
		Last Modified: Sat, 17 Oct 2026 01:22:17 GMT  
		Size: 26.6 KB (26582 bytes)  
		MIME: application/vnd.in-toto+json

### `ibm-semeru-runtimes:open-25-jdk` - linux; s390x

```console
$ docker pull ibm-semeru-runtimes@sha256:d1a40147ccd1e99125885c2e44678d1e9295e6d86e05f8350e05b9c76765ac33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.9 MB (318878304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e369496a7f24f6dd6df8a794d1cb65315186751591a81525e3c0299fe80928a`
-	Default Command: `["jshell"]`

```dockerfile
# Sun, 25 Oct 2026 10:28:29 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.9596.tar --tag 26.04
# Sun, 25 Oct 2026 10:28:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 25 Oct 2026 10:28:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 25 Oct 2026 10:28:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 25 Oct 2026 10:28:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-25T10:28:30.233291+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:28:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-25T10:28:30.233291+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:28:30 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.control_data.9596.tar
# Mon, 26 Oct 2026 23:46:40 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:46:40 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:46:40 GMT
ENV JAVA_VERSION=25.0.4.15
# Mon, 26 Oct 2026 23:55:48 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='df7c6142e8a2c090426792cdaa5a4d16d86eccd86ffd6ba65ede029aac0b5f09';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.15/ibm-semeru-open-jdk_aarch64_linux_25.0.4.15.tar.gz';          ;;        amd64|x86_64)          ESUM='56c26f137607ce5b4301a9958e4a43fa32a04c2e66bb75282ca19b4c12be8433';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.15/ibm-semeru-open-jdk_x64_linux_25.0.4.15.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='b754aba019a080c27a7542cc80fc0b41bafd5fed828ac3e0353f6a3ebe052848';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.15/ibm-semeru-open-jdk_ppc64le_linux_25.0.4.15.tar.gz';          ;;        s390x)          ESUM='eda0444abf07e2842846d9c2948b09337828b8fb67d3eb8c490b2f7d58cb8637';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.15/ibm-semeru-open-jdk_s390x_linux_25.0.4.15.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 26 Oct 2026 23:55:48 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:55:48 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 26 Oct 2026 23:56:55 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Mon, 26 Oct 2026 23:56:55 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:61476fe73885ca09aaa623798934448ebbde33c16caa22cd1fa158a7ce0d303b`  
		Last Modified: Sun, 25 Oct 2026 13:22:05 GMT  
		Size: 41.9 MB (41863655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:025a64da30adad9ad74a50b5d93fba7c1f7b68079e2b830afe63de24390e10c8`  
		Last Modified: Sun, 25 Oct 2026 13:22:08 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d94c027249f6539f0583438e1153b8e69b6571d65bd04fff3dd6570a6b9bc506`  
		Last Modified: Mon, 26 Oct 2026 23:48:17 GMT  
		Size: 16.2 MB (16198504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d910e1b1b06dff738364e9c70c77bcef6aceae140f61d93bff2fc95a6561912`  
		Last Modified: Mon, 26 Oct 2026 23:57:35 GMT  
		Size: 253.8 MB (253803166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c912ded00d1a07e08e657726b77b936c48bab131938359beb5f2801ad4a8817`  
		Last Modified: Mon, 26 Oct 2026 23:57:31 GMT  
		Size: 7.0 MB (7012590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibm-semeru-runtimes:open-25-jdk` - unknown; unknown

```console
$ docker pull ibm-semeru-runtimes@sha256:915e1043493743fff690a7de5ec3d3bf8c63618ad51e6c01bc5d3ccf5950a9a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5134226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cc98cbe15d881be5fc7a45ef6338319e033e766d62f90b9ff1a70c3887d3946`

```dockerfile
```

-	Layers:
	-	`sha256:c615f7cf8d1e74af67a5b152cdb3245f2e4b16d67d3d5a32bbb6ffc6227d307a`  
		Last Modified: Mon, 26 Oct 2026 23:57:31 GMT  
		Size: 5.1 MB (5107692 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:19eeb284536dfff60ff0082e0acb0e461bdb60692caa1575d5f01a9a69c7e20e`  
		Last Modified: Mon, 26 Oct 2026 23:57:31 GMT  
		Size: 26.5 KB (26534 bytes)  
		MIME: application/vnd.in-toto+json
