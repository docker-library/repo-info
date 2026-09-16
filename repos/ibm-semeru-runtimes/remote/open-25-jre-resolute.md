## `ibm-semeru-runtimes:open-25-jre-resolute`

```console
$ docker pull ibm-semeru-runtimes@sha256:4498f138ecd1a67379bcf843f8d7f8e84f767fe5680795b9ecbc60032ffe99f9
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

### `ibm-semeru-runtimes:open-25-jre-resolute` - linux; amd64

```console
$ docker pull ibm-semeru-runtimes@sha256:066afe8be84e0577a2c81c4120cf2dbdef2fa30e80b57041cc299f03b39d43e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.6 MB (123647417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:348defd2b2e69a8f23cc43c31654b4c81fea6cc13833176147c46b67ac4432c2`
-	Default Command: `["jshell"]`

```dockerfile
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.9520.tar --tag 26.04
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-12T10:25:59.825539+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-12T10:25:59.825539+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.control_data.9520.tar
# Wed, 16 Sep 2026 03:24:07 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 03:24:07 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:24:07 GMT
ENV JAVA_VERSION=25.0.4.10
# Wed, 16 Sep 2026 03:24:09 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='f6339ef7ca2b8c6726cc8b56bbe7cdaca8a3313d491f5ec10f0f6c26a12abfd7';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.10/ibm-semeru-open-jre_aarch64_linux_25.0.4.10.tar.gz';          ;;        amd64|x86_64)          ESUM='6284d91a7eb54cabc313e9cf768099934499d76561739e70c4de0e95a3334ca1';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.10/ibm-semeru-open-jre_x64_linux_25.0.4.10.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='0d70b4d738bf743c90679fea666d8681535c920925d0f29b5e09707900b31a26';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.10/ibm-semeru-open-jre_ppc64le_linux_25.0.4.10.tar.gz';          ;;        s390x)          ESUM='76092ec6d1de2dd7d618bd81bd952626a39d415be732777961424cf525401048';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.10/ibm-semeru-open-jre_s390x_linux_25.0.4.10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Wed, 16 Sep 2026 03:24:09 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 03:24:09 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Wed, 16 Sep 2026 03:25:13 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Wed, 16 Sep 2026 03:25:13 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:09923199ca0ebd3ad9fb1dd1d0ab85d2b86aa388b988c8d4c8ee4f660fdb9e9e`  
		Last Modified: Sat, 12 Sep 2026 12:56:35 GMT  
		Size: 41.6 MB (41572999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9b9856437537fc061e98f71ecab9d95d7745fbf7d7b871d2e54ca4c3b02ea5a`  
		Last Modified: Sat, 12 Sep 2026 12:56:37 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c858faecc5b599dd28dfddd9a338a34836952eb6118c0eb2a07f0c6298c67aa`  
		Last Modified: Wed, 16 Sep 2026 03:25:29 GMT  
		Size: 15.9 MB (15883251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a85e965ed88b0a4d998518993059cb77537396efe233a5fe4d3d33fc16f13e4a`  
		Last Modified: Wed, 16 Sep 2026 03:25:31 GMT  
		Size: 60.7 MB (60700101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03d6e63e1f13a6a425e19222a6dcc3d558da741f2064872a76d360a69d0e105d`  
		Last Modified: Wed, 16 Sep 2026 03:25:29 GMT  
		Size: 5.5 MB (5490675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibm-semeru-runtimes:open-25-jre-resolute` - unknown; unknown

```console
$ docker pull ibm-semeru-runtimes@sha256:7759232a6ecc87a95f3e6ebeaa841043daef7a9108bc7e6a6283a41242dbb0d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (5019434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:544e83bcb7224274bedf89d7b095d982036cb2e86283b007ad39e6cb94103c72`

```dockerfile
```

-	Layers:
	-	`sha256:6d2549131474548a0daabd829755ad9c30777d5498b960251a77ec962a34844d`  
		Last Modified: Wed, 16 Sep 2026 03:25:28 GMT  
		Size: 5.0 MB (4992897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f76428d38bf165ef04035428be18520e6c6354492b652bdec014fd9e528cc74`  
		Last Modified: Wed, 16 Sep 2026 03:25:28 GMT  
		Size: 26.5 KB (26537 bytes)  
		MIME: application/vnd.in-toto+json

### `ibm-semeru-runtimes:open-25-jre-resolute` - linux; arm64 variant v8

```console
$ docker pull ibm-semeru-runtimes@sha256:0fed168797312c151f869430ccb5f1d7d15b2868b1299020cd96c0568661a7ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.6 MB (120619986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29bc9fb41161f39835fd3adb8586741d44a40b6e228bebd2d7e1d0bfb0de4361`
-	Default Command: `["jshell"]`

```dockerfile
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.9609.tar --tag 26.04
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-12T10:29:18.701012+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-12T10:29:18.701012+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.control_data.9609.tar
# Wed, 16 Sep 2026 03:23:47 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 03:23:47 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:23:47 GMT
ENV JAVA_VERSION=25.0.4.10
# Wed, 16 Sep 2026 03:23:49 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='f6339ef7ca2b8c6726cc8b56bbe7cdaca8a3313d491f5ec10f0f6c26a12abfd7';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.10/ibm-semeru-open-jre_aarch64_linux_25.0.4.10.tar.gz';          ;;        amd64|x86_64)          ESUM='6284d91a7eb54cabc313e9cf768099934499d76561739e70c4de0e95a3334ca1';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.10/ibm-semeru-open-jre_x64_linux_25.0.4.10.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='0d70b4d738bf743c90679fea666d8681535c920925d0f29b5e09707900b31a26';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.10/ibm-semeru-open-jre_ppc64le_linux_25.0.4.10.tar.gz';          ;;        s390x)          ESUM='76092ec6d1de2dd7d618bd81bd952626a39d415be732777961424cf525401048';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.10/ibm-semeru-open-jre_s390x_linux_25.0.4.10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Wed, 16 Sep 2026 03:23:49 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 03:23:49 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Wed, 16 Sep 2026 03:24:53 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Wed, 16 Sep 2026 03:24:53 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7cb168fccdd249547ddc2d1c5365b1e743da77e0664e6233934fa720511320f5`  
		Last Modified: Sat, 12 Sep 2026 12:56:44 GMT  
		Size: 40.8 MB (40756067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70624a8d6970b2150eca9a8b37c64834b41072ba6e8f7978b1a7eac231497d1e`  
		Last Modified: Sat, 12 Sep 2026 12:56:47 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fc6f0ec673a03e082e7de0618e3340f0e495425eb151148820e8b3a4531cddf`  
		Last Modified: Wed, 16 Sep 2026 03:25:09 GMT  
		Size: 15.7 MB (15740702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:086cb698fa21a75d9d581315d1e03225d3352aa12d9d504b5d460955c37e1b38`  
		Last Modified: Wed, 16 Sep 2026 03:25:10 GMT  
		Size: 58.8 MB (58798289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceba2dab7a8a26abbde6d2c80f3c87bf4b9510f456f5bad9a9c79e6143b62fae`  
		Last Modified: Wed, 16 Sep 2026 03:25:09 GMT  
		Size: 5.3 MB (5324521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibm-semeru-runtimes:open-25-jre-resolute` - unknown; unknown

```console
$ docker pull ibm-semeru-runtimes@sha256:0787650bd74d4fdb368e98f8a5af9534f5eca5ff20526ea7c3fa4a21ca014590
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (5017330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab14e6478bceeccd86c6af670089c262504051f466964f0cb04b111bf4184de5`

```dockerfile
```

-	Layers:
	-	`sha256:cf9abadc9b666cb70f10ba521e498bdea5becac83d808e79d11ef34d5e907119`  
		Last Modified: Wed, 16 Sep 2026 03:25:09 GMT  
		Size: 5.0 MB (4990659 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f38c60329071f9deede2b44baa51254857e543a8a4cec6d418aa30ea04e84f1b`  
		Last Modified: Wed, 16 Sep 2026 03:25:08 GMT  
		Size: 26.7 KB (26671 bytes)  
		MIME: application/vnd.in-toto+json

### `ibm-semeru-runtimes:open-25-jre-resolute` - linux; ppc64le

```console
$ docker pull ibm-semeru-runtimes@sha256:162940e043c7e12fff93a49f9ee8e518829684c97095e9cbf1b618132670c418
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.6 MB (130604022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7b1adc6716e433dd4c4927ddac3a92091801f9a43c87522828610e59988c4f7`
-	Default Command: `["jshell"]`

```dockerfile
# Sat, 12 Sep 2026 10:32:49 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.9566.tar --tag 26.04
# Sat, 12 Sep 2026 10:32:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 12 Sep 2026 10:32:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 12 Sep 2026 10:32:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 12 Sep 2026 10:32:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-12T10:32:50.586556+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:32:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-12T10:32:50.586556+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:32:50 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.control_data.9566.tar
# Wed, 16 Sep 2026 07:05:01 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 07:05:01 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 07:05:01 GMT
ENV JAVA_VERSION=25.0.4.10
# Wed, 16 Sep 2026 11:13:48 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='f6339ef7ca2b8c6726cc8b56bbe7cdaca8a3313d491f5ec10f0f6c26a12abfd7';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.10/ibm-semeru-open-jre_aarch64_linux_25.0.4.10.tar.gz';          ;;        amd64|x86_64)          ESUM='6284d91a7eb54cabc313e9cf768099934499d76561739e70c4de0e95a3334ca1';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.10/ibm-semeru-open-jre_x64_linux_25.0.4.10.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='0d70b4d738bf743c90679fea666d8681535c920925d0f29b5e09707900b31a26';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.10/ibm-semeru-open-jre_ppc64le_linux_25.0.4.10.tar.gz';          ;;        s390x)          ESUM='76092ec6d1de2dd7d618bd81bd952626a39d415be732777961424cf525401048';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.10/ibm-semeru-open-jre_s390x_linux_25.0.4.10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Wed, 16 Sep 2026 11:13:48 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 11:13:48 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Wed, 16 Sep 2026 11:14:55 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Wed, 16 Sep 2026 11:14:55 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:962bf9d875d6e8ff3c9b897eff15c72d89dbe29382b528395357e9d833c32fca`  
		Last Modified: Sat, 12 Sep 2026 12:56:54 GMT  
		Size: 46.8 MB (46823153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b636516270ec3ead8a7f42e0dcac6372059cb5d7dc0a8fecbb3f92457667620`  
		Last Modified: Sat, 12 Sep 2026 12:56:57 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:463b1ce33da2b1b3f85fe355834d529eeb36d3f05eefb1ea4381ee48bdf1f143`  
		Last Modified: Wed, 16 Sep 2026 07:07:54 GMT  
		Size: 17.3 MB (17257779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dee731b70c41d918cbe224cf196bc26242dd40e9fc630b7457a7ae82158fcdd3`  
		Last Modified: Wed, 16 Sep 2026 11:15:38 GMT  
		Size: 62.2 MB (62197250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcfea0b287bed0967f8980fe783e30ffdbe32b746b5d6773e9dc1503951129b3`  
		Last Modified: Wed, 16 Sep 2026 11:15:37 GMT  
		Size: 4.3 MB (4325449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibm-semeru-runtimes:open-25-jre-resolute` - unknown; unknown

```console
$ docker pull ibm-semeru-runtimes@sha256:35d77c260143cd7bd6f1882399cc12309fa4f43f1945f36bf2c9d1594aec3635
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (5023294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3ef0e8a425bde2d12e414b83b19e962d9607bedcfa3c38c64a834379eba5f54`

```dockerfile
```

-	Layers:
	-	`sha256:8faadb9661932088c8d86f2a2c78181718c60156a92162242edba58e3906127f`  
		Last Modified: Wed, 16 Sep 2026 11:15:37 GMT  
		Size: 5.0 MB (4996709 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f793ee822cdd08bd892d943c315b4ef5ab5889c5373418bdf7ee973a11d99d0`  
		Last Modified: Wed, 16 Sep 2026 11:15:36 GMT  
		Size: 26.6 KB (26585 bytes)  
		MIME: application/vnd.in-toto+json

### `ibm-semeru-runtimes:open-25-jre-resolute` - linux; s390x

```console
$ docker pull ibm-semeru-runtimes@sha256:475b17e730a441e319f70c55979c3e36b67e95e386a5afb4a1304339429f4915
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128573992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:993f310ebe3a9d52f0c390fcaf2de0e9b5c39fca3fcb465fd84c4864b5310b7f`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 17 Aug 2026 08:51:48 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.9176.tar --tag 26.04
# Mon, 17 Aug 2026 08:51:49 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 17 Aug 2026 08:51:49 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 17 Aug 2026 08:51:49 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 08:51:49 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-08-17T08:51:49.237511+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 08:51:49 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-08-17T08:51:49.237511+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 08:51:49 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.control_data.9176.tar
# Mon, 31 Aug 2026 18:32:39 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 31 Aug 2026 18:32:39 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 18:32:39 GMT
ENV JAVA_VERSION=25.0.4.10
# Mon, 31 Aug 2026 18:41:29 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='f6339ef7ca2b8c6726cc8b56bbe7cdaca8a3313d491f5ec10f0f6c26a12abfd7';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.10/ibm-semeru-open-jre_aarch64_linux_25.0.4.10.tar.gz';          ;;        amd64|x86_64)          ESUM='6284d91a7eb54cabc313e9cf768099934499d76561739e70c4de0e95a3334ca1';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.10/ibm-semeru-open-jre_x64_linux_25.0.4.10.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='0d70b4d738bf743c90679fea666d8681535c920925d0f29b5e09707900b31a26';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.10/ibm-semeru-open-jre_ppc64le_linux_25.0.4.10.tar.gz';          ;;        s390x)          ESUM='76092ec6d1de2dd7d618bd81bd952626a39d415be732777961424cf525401048';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.10/ibm-semeru-open-jre_s390x_linux_25.0.4.10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 31 Aug 2026 18:41:29 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 18:41:29 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 31 Aug 2026 18:42:33 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Mon, 31 Aug 2026 18:42:33 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:b1aa13925330270ece5314333db4d2d0539a9fa79fb104cd43d7595fe5aa69fc`  
		Last Modified: Mon, 17 Aug 2026 11:36:08 GMT  
		Size: 41.1 MB (41147115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d201668f161ff89d301e6e21bd71b4f685b5539cc6d2cda9e1c09a9dd2d0d04`  
		Last Modified: Mon, 17 Aug 2026 11:36:11 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83372de3a607b51d2cfb54dfb04a80750b6d297962c4ca23823d9ef3dfffffaa`  
		Last Modified: Mon, 31 Aug 2026 18:42:09 GMT  
		Size: 18.8 MB (18803978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8afb80bdc7a6471991fa336589c4cb0bd5e875964f5de5cbe9c5eb3866e39434`  
		Last Modified: Mon, 31 Aug 2026 18:42:58 GMT  
		Size: 62.9 MB (62912852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcd0480218fdd5346da6c2f12b25b535c67888bf0a018d682f0cfc392ccc0a68`  
		Last Modified: Mon, 31 Aug 2026 18:42:57 GMT  
		Size: 5.7 MB (5709658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibm-semeru-runtimes:open-25-jre-resolute` - unknown; unknown

```console
$ docker pull ibm-semeru-runtimes@sha256:fe476d81c89cf7b32ca781678d585f6b637f52d1b5766f6b686bfc8ec686d282
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (5020697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7318c693cf78aa90433e32eab94a15ac210e7d395cedae4f5a92d2314ff83702`

```dockerfile
```

-	Layers:
	-	`sha256:2bd0e44ef1ecafb51725cf50eb9bb282898313167e6570d827bcb05a9af74799`  
		Last Modified: Mon, 31 Aug 2026 18:42:56 GMT  
		Size: 5.0 MB (4994161 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8b95070d26a506b0024d97d97561621ac6decd3f2161b82c7a7c4e717dbc760`  
		Last Modified: Mon, 31 Aug 2026 18:42:56 GMT  
		Size: 26.5 KB (26536 bytes)  
		MIME: application/vnd.in-toto+json
