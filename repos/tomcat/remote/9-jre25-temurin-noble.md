## `tomcat:9-jre25-temurin-noble`

```console
$ docker pull tomcat@sha256:d7cd269a0136502533df69bc1705e09cca8b669f8bf88cd5024df5027ee15c65
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `tomcat:9-jre25-temurin-noble` - linux; amd64

```console
$ docker pull tomcat@sha256:0d327113503690d0cd55b9dfd7e48e3a2141fd4065b8c77cce5b57d8be8af89e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118349777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22202a29c0df7c10cb54170a61e6bf47f8d43363c1fc3a9e62fc6862be880b38`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 18:26:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:26:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:26:21 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:26:21 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:26:21 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Fri, 21 Aug 2026 18:26:33 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='aed3915f8facc0c80733ab2448bb0df4b494a36a2c5759e9a6e1eb979720f2b3';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_x64_linux_hotspot_25.0.4_7.tar.gz';          ;;        arm64)          ESUM='1f2644427000316bc431df3389504551ed7464fe8486bf6b4f1130af9ffc8f55';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4_7.tar.gz';          ;;        ppc64el)          ESUM='7c4235dc156e85d4e8b7b12075d7d72265fa49b73af2d0453d118a4786176476';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4_7.tar.gz';          ;;        riscv64)          ESUM='ee3e62f50e2bdd5b65f9f8937b33d862846d0245bc1be0dd8e3a99ea10fce32a';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.4_7.tar.gz';          ;;        s390x)          ESUM='7698a64e995bf41cb2620bea225b6383e66a8b76a0b97ea04db89e300c470ed8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 18:26:33 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:26:33 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:26:33 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 20:36:23 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 21 Aug 2026 20:36:23 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 20:36:23 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 21 Aug 2026 20:36:23 GMT
WORKDIR /usr/local/tomcat
# Fri, 21 Aug 2026 20:36:23 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 21 Aug 2026 20:36:23 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 21 Aug 2026 20:36:23 GMT
ENV TOMCAT_MAJOR=9
# Fri, 21 Aug 2026 20:36:23 GMT
ENV TOMCAT_VERSION=9.0.121
# Fri, 21 Aug 2026 20:36:23 GMT
ENV TOMCAT_SHA512=16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11
# Fri, 21 Aug 2026 20:37:05 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 21 Aug 2026 20:37:09 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 20:37:09 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 21 Aug 2026 20:37:09 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 21 Aug 2026 20:37:09 GMT
ENTRYPOINT []
# Fri, 21 Aug 2026 20:37:09 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe860d81cd49b3b4e6736f841a56605ac315b6061ca1fa0aa36201b3f470f0a8`  
		Last Modified: Fri, 21 Aug 2026 18:26:47 GMT  
		Size: 11.4 MB (11437454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f9b4977682d696b24ee33229e1cb3bee4b674ebf368026218f3ee759aad09a0`  
		Last Modified: Fri, 21 Aug 2026 18:26:48 GMT  
		Size: 63.1 MB (63075050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1acd3d9c2420115ce6b7aaf5de44855ff9a8f624aa2a0d9e142040f5158ee4a5`  
		Last Modified: Fri, 21 Aug 2026 18:26:46 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee5479fe371ea682cd2eabd7e06530c1201059e53e8c963385f605429e465aa3`  
		Last Modified: Fri, 21 Aug 2026 20:36:36 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32af2b00d49c27b9d24075516ae57005eb1e233e9e6082de4e2e985ae32ba5a2`  
		Last Modified: Fri, 21 Aug 2026 20:37:17 GMT  
		Size: 13.9 MB (13873637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f33216c5fbae512f0f7a744d488b1724947eae2ca0b01dbcf9fcc81db218ff7b`  
		Last Modified: Fri, 21 Aug 2026 20:37:16 GMT  
		Size: 208.1 KB (208130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre25-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:e4c44ed1fa47f2ada1ed56ed11cdf1e865289f9f1a264971509c19df51a77632
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3132517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9aed34fbbb6fc8b075219106d7fa976ca2736285613ec89a35a1ad2406407491`

```dockerfile
```

-	Layers:
	-	`sha256:291467fde3425a65bad03dbb292f82eb1a055f65d2aec5c58fef6fd5db30e926`  
		Last Modified: Fri, 21 Aug 2026 20:37:16 GMT  
		Size: 3.1 MB (3109435 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d1ce5230cf1373b366bc3bdb8e28cd6006d0e2602e3c4b1dcfce6ce4677ee83`  
		Last Modified: Fri, 21 Aug 2026 20:37:16 GMT  
		Size: 23.1 KB (23082 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jre25-temurin-noble` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:2d7aeb39219fec537e1be30e05f7fce23f9fdf7572ff588f5b45c01829ac753a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.3 MB (116334748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a0551551bcae7c4953894bcb2bbf8a9662861e7f3ae8bd039647cdb4b070f73`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 18:29:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:29:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:29:27 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:29:27 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:29:27 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Fri, 21 Aug 2026 18:29:43 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='aed3915f8facc0c80733ab2448bb0df4b494a36a2c5759e9a6e1eb979720f2b3';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_x64_linux_hotspot_25.0.4_7.tar.gz';          ;;        arm64)          ESUM='1f2644427000316bc431df3389504551ed7464fe8486bf6b4f1130af9ffc8f55';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4_7.tar.gz';          ;;        ppc64el)          ESUM='7c4235dc156e85d4e8b7b12075d7d72265fa49b73af2d0453d118a4786176476';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4_7.tar.gz';          ;;        riscv64)          ESUM='ee3e62f50e2bdd5b65f9f8937b33d862846d0245bc1be0dd8e3a99ea10fce32a';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.4_7.tar.gz';          ;;        s390x)          ESUM='7698a64e995bf41cb2620bea225b6383e66a8b76a0b97ea04db89e300c470ed8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 18:29:43 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:29:43 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:29:43 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 19:22:04 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 21 Aug 2026 19:22:04 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:22:04 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 21 Aug 2026 19:22:04 GMT
WORKDIR /usr/local/tomcat
# Fri, 21 Aug 2026 19:22:04 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 21 Aug 2026 19:22:04 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 21 Aug 2026 19:22:04 GMT
ENV TOMCAT_MAJOR=9
# Fri, 21 Aug 2026 19:22:04 GMT
ENV TOMCAT_VERSION=9.0.121
# Fri, 21 Aug 2026 19:22:04 GMT
ENV TOMCAT_SHA512=16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11
# Fri, 21 Aug 2026 19:22:04 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 21 Aug 2026 19:22:09 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 19:22:10 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 21 Aug 2026 19:22:10 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 21 Aug 2026 19:22:10 GMT
ENTRYPOINT []
# Fri, 21 Aug 2026 19:22:10 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51b4386bd70c2954b2582a2981aa1e49491827ee714eab8c29eaab2a9b353052`  
		Last Modified: Fri, 21 Aug 2026 18:29:57 GMT  
		Size: 11.4 MB (11431041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfb95e3836e0c5e3b34139686fd2e946b7a0af413c997a45fc2d6fd038335b0e`  
		Last Modified: Fri, 21 Aug 2026 18:29:59 GMT  
		Size: 61.9 MB (61923262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8da00c517fa718e5b9e470c462fee10e7bf750b4bb9e76a32e451b66e0864c74`  
		Last Modified: Fri, 21 Aug 2026 18:29:57 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6f81272fd31f8c11fe78ca57e272e523ee25bd8af1b11e07d88487ed4eb09fd`  
		Last Modified: Fri, 21 Aug 2026 19:22:19 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a271160bf26c8d0187c46cd14ba44364b17daed2e91373380ec911b4c6fd20ba`  
		Last Modified: Fri, 21 Aug 2026 19:22:19 GMT  
		Size: 13.9 MB (13882951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30f1cab9bff7ad0db3767f6cfcd9289666822a3f52bcbc2a3fbf34e5db5b71c3`  
		Last Modified: Fri, 21 Aug 2026 19:22:19 GMT  
		Size: 207.6 KB (207561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre25-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:39898a33a522a699c7d049fbd8d322212de3a099719267df8a7254d62ba26d5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3133247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:390ee3dd350c81e48cb6f9238f9e4af0693d040c3b6fe1c2afb371d0afef9a78`

```dockerfile
```

-	Layers:
	-	`sha256:1d2ddb8e612726d6a1fe63f4a065ad05f5dcbda7ca3c71ceb962a166e6fdf1f9`  
		Last Modified: Fri, 21 Aug 2026 19:22:19 GMT  
		Size: 3.1 MB (3109945 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a15b9d19bce4d6e095beaf044d39a267c2aafb46f9c0e055f00fdeaa82ff975`  
		Last Modified: Fri, 21 Aug 2026 19:22:18 GMT  
		Size: 23.3 KB (23302 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jre25-temurin-noble` - linux; ppc64le

```console
$ docker pull tomcat@sha256:5d3719d6e18023d232adf95bd0642ab4b2cdab09394c920b3f85c017d9623950
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.5 MB (122484071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ff530aa9dfb42f6bcc7fb28ae992abf36bb238709bf6d5203f2357d30a0c2b7`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 17 Aug 2026 13:37:16 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:37:16 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:37:16 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:37:19 GMT
ADD file:2c1f3ca3b8968d5c5bcce4fb1290d9ca7224bbde9578f0051bf2d5493b3b6481 in / 
# Mon, 17 Aug 2026 13:37:20 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 21:21:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 19 Aug 2026 21:21:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 21:21:07 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 19 Aug 2026 21:21:07 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 21:21:07 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Fri, 21 Aug 2026 20:48:03 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='aed3915f8facc0c80733ab2448bb0df4b494a36a2c5759e9a6e1eb979720f2b3';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_x64_linux_hotspot_25.0.4_7.tar.gz';          ;;        arm64)          ESUM='1f2644427000316bc431df3389504551ed7464fe8486bf6b4f1130af9ffc8f55';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4_7.tar.gz';          ;;        ppc64el)          ESUM='7c4235dc156e85d4e8b7b12075d7d72265fa49b73af2d0453d118a4786176476';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4_7.tar.gz';          ;;        riscv64)          ESUM='ee3e62f50e2bdd5b65f9f8937b33d862846d0245bc1be0dd8e3a99ea10fce32a';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.4_7.tar.gz';          ;;        s390x)          ESUM='7698a64e995bf41cb2620bea225b6383e66a8b76a0b97ea04db89e300c470ed8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 20:48:03 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 20:48:04 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 20:48:04 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 23:24:19 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 21 Aug 2026 23:24:19 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 23:24:19 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 21 Aug 2026 23:24:20 GMT
WORKDIR /usr/local/tomcat
# Fri, 21 Aug 2026 23:24:20 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 21 Aug 2026 23:24:20 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 21 Aug 2026 23:24:20 GMT
ENV TOMCAT_MAJOR=9
# Fri, 21 Aug 2026 23:24:20 GMT
ENV TOMCAT_VERSION=9.0.121
# Fri, 21 Aug 2026 23:24:20 GMT
ENV TOMCAT_SHA512=16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11
# Fri, 21 Aug 2026 23:29:39 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 21 Aug 2026 23:29:47 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 23:29:48 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 21 Aug 2026 23:29:48 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 21 Aug 2026 23:29:48 GMT
ENTRYPOINT []
# Fri, 21 Aug 2026 23:29:48 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:9ce277f493517cc144a5fc2f41269e529e99b662f089df362b22f62d1fbb7436`  
		Last Modified: Mon, 17 Aug 2026 14:27:41 GMT  
		Size: 34.3 MB (34311195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0c799aab13c57e92a746f75f9dcd7290067f96f9a113cd0686f556d04a90572`  
		Last Modified: Wed, 19 Aug 2026 21:22:21 GMT  
		Size: 12.0 MB (12003201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9545ec609753da099b5245f92e29645ffa42184cb28b8521a42b497df5d01d1`  
		Last Modified: Fri, 21 Aug 2026 20:48:32 GMT  
		Size: 62.0 MB (62018052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaf47da010727268039ea0ec711c6808bc0bf7655537f4ac6a2e82e0d9549f80`  
		Last Modified: Fri, 21 Aug 2026 20:48:30 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:981712cec34d4d603ba4b585692254b2694adaa0f6cb1f686273512e51c301bd`  
		Last Modified: Fri, 21 Aug 2026 23:24:56 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ee94e98e63cd62b6eeac5633f7f99f9102aeafd6843011ce012af08b0efecea`  
		Last Modified: Fri, 21 Aug 2026 23:30:06 GMT  
		Size: 13.9 MB (13909608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50de5b55fd51a8080809770984ca0877e68f5d1d90063376b0d11f0d94396af1`  
		Last Modified: Fri, 21 Aug 2026 23:30:05 GMT  
		Size: 239.3 KB (239315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre25-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:457a1aad92b3da812a561456d5cf4946269718b78d7eb4a25b5731f5b5edf062
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3135932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c34cccf7238fcb55d9af39c80b0610f3d335b2e9b63fcf418c817e210f13e981`

```dockerfile
```

-	Layers:
	-	`sha256:2d9ce8d21937b78d3b2205395ee6a6443759fad45af0587ee839ac79bc253628`  
		Last Modified: Fri, 21 Aug 2026 23:30:06 GMT  
		Size: 3.1 MB (3112762 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:767478b889b66bcab44c920d35aacb0873bc9ab193dbe405eb827950bce20fa7`  
		Last Modified: Fri, 21 Aug 2026 23:30:05 GMT  
		Size: 23.2 KB (23170 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jre25-temurin-noble` - linux; riscv64

```console
$ docker pull tomcat@sha256:5d5bf775f0008e1f7b3afef8a9e45fd2022cae1bc6e8ee6dba61dc31e0442fa5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.8 MB (118795448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:123b5bb572451532ed3ed4210d411ee747ea86d6b18a5bad5b8eb82bf62b5fff`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 17 Aug 2026 14:15:49 GMT
ARG RELEASE
# Mon, 17 Aug 2026 14:15:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 14:15:51 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 14:17:04 GMT
ADD file:337a123e95e711614eff11fd53aa4a84d1e090961d0511f1605a70ac7c33d46a in / 
# Mon, 17 Aug 2026 14:17:10 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 00:47:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 19 Aug 2026 00:47:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 00:47:33 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 19 Aug 2026 00:47:33 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 00:47:33 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Sat, 22 Aug 2026 14:49:58 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='aed3915f8facc0c80733ab2448bb0df4b494a36a2c5759e9a6e1eb979720f2b3';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_x64_linux_hotspot_25.0.4_7.tar.gz';          ;;        arm64)          ESUM='1f2644427000316bc431df3389504551ed7464fe8486bf6b4f1130af9ffc8f55';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4_7.tar.gz';          ;;        ppc64el)          ESUM='7c4235dc156e85d4e8b7b12075d7d72265fa49b73af2d0453d118a4786176476';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4_7.tar.gz';          ;;        riscv64)          ESUM='ee3e62f50e2bdd5b65f9f8937b33d862846d0245bc1be0dd8e3a99ea10fce32a';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.4_7.tar.gz';          ;;        s390x)          ESUM='7698a64e995bf41cb2620bea225b6383e66a8b76a0b97ea04db89e300c470ed8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sat, 22 Aug 2026 14:49:59 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sat, 22 Aug 2026 14:49:59 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 22 Aug 2026 14:49:59 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 24 Aug 2026 22:30:36 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 24 Aug 2026 22:30:36 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Aug 2026 22:30:36 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 24 Aug 2026 22:30:36 GMT
WORKDIR /usr/local/tomcat
# Mon, 24 Aug 2026 22:30:36 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 24 Aug 2026 22:30:36 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 24 Aug 2026 22:30:36 GMT
ENV TOMCAT_MAJOR=9
# Mon, 24 Aug 2026 22:30:36 GMT
ENV TOMCAT_VERSION=9.0.121
# Mon, 24 Aug 2026 22:30:36 GMT
ENV TOMCAT_SHA512=16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11
# Mon, 24 Aug 2026 22:48:48 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Mon, 24 Aug 2026 22:49:28 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 24 Aug 2026 22:49:36 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 24 Aug 2026 22:49:36 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 24 Aug 2026 22:49:36 GMT
ENTRYPOINT []
# Mon, 24 Aug 2026 22:49:36 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:d85e724d9e83fe5958acde2418944fdb2b9077a9c6b5963f99e62d6feb11fb31`  
		Last Modified: Mon, 17 Aug 2026 14:27:49 GMT  
		Size: 31.0 MB (30983072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c556adb6f2f76ea09f0cbc62a3c42c8c538726308f8514cb62d39ff4a9400ecb`  
		Last Modified: Wed, 19 Aug 2026 00:52:20 GMT  
		Size: 11.5 MB (11527891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:369d41c16e09722007c91c1b678812a9c4ae06f974aff2a14bf6c86653cfc86f`  
		Last Modified: Sat, 22 Aug 2026 14:52:49 GMT  
		Size: 61.7 MB (61680330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:579653e0f76202dbe218b7074acc0d5d3ec9940b2346d510ec469cd79f619a96`  
		Last Modified: Sat, 22 Aug 2026 14:52:39 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb229be6b93f32a991b1d9ea5e0c52219e0cdd0a14a93af61c052e1b6127a60b`  
		Last Modified: Mon, 24 Aug 2026 22:33:09 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dd19749ea96a58b5d803a808fbfb0609b4ffa5d240aa4dd51d0793e75a7ab21`  
		Last Modified: Mon, 24 Aug 2026 22:51:19 GMT  
		Size: 14.4 MB (14391009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cad8f4d9b902828e24636f2b453cc2f3218c23736fc882d70b311f0addf71056`  
		Last Modified: Mon, 24 Aug 2026 22:51:17 GMT  
		Size: 210.4 KB (210446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre25-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:7d60b1d28cbab1c0eef21d719890967b2dcb0a690d10df222ba6c757194d0982
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3124628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c59abf6395372a88f52de637acca5e32e9def64240797bebce1864ac5fc02d7`

```dockerfile
```

-	Layers:
	-	`sha256:61215536fdbe1d1f0ea90c868699e3125c76cf715b20213a118e25d7e73784ac`  
		Last Modified: Mon, 24 Aug 2026 22:51:18 GMT  
		Size: 3.1 MB (3101458 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67074484321f5e5332ae175532d70c389ad2890f1be83f8accad48506cda5b05`  
		Last Modified: Mon, 24 Aug 2026 22:51:17 GMT  
		Size: 23.2 KB (23170 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jre25-temurin-noble` - linux; s390x

```console
$ docker pull tomcat@sha256:05e85367f042ddfb0539ca8ae239708e350546b49642aecca947a9b703037bb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.3 MB (116281824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b219438f20c8c1373bc00abe30fa74614ac0704dd9b1df5271faaa1881b4b2d`
-	Default Command: `["catalina.sh","run"]`

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
# Fri, 21 Aug 2026 18:33:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:33:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:33:33 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:33:33 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:33:33 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Fri, 21 Aug 2026 18:33:43 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='aed3915f8facc0c80733ab2448bb0df4b494a36a2c5759e9a6e1eb979720f2b3';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_x64_linux_hotspot_25.0.4_7.tar.gz';          ;;        arm64)          ESUM='1f2644427000316bc431df3389504551ed7464fe8486bf6b4f1130af9ffc8f55';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4_7.tar.gz';          ;;        ppc64el)          ESUM='7c4235dc156e85d4e8b7b12075d7d72265fa49b73af2d0453d118a4786176476';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4_7.tar.gz';          ;;        riscv64)          ESUM='ee3e62f50e2bdd5b65f9f8937b33d862846d0245bc1be0dd8e3a99ea10fce32a';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.4_7.tar.gz';          ;;        s390x)          ESUM='7698a64e995bf41cb2620bea225b6383e66a8b76a0b97ea04db89e300c470ed8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 18:33:43 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:33:43 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:33:43 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 19:18:27 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 21 Aug 2026 19:18:27 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:18:27 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 21 Aug 2026 19:18:27 GMT
WORKDIR /usr/local/tomcat
# Fri, 21 Aug 2026 19:18:27 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 21 Aug 2026 19:18:27 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 21 Aug 2026 19:18:27 GMT
ENV TOMCAT_MAJOR=9
# Fri, 21 Aug 2026 19:18:27 GMT
ENV TOMCAT_VERSION=9.0.121
# Fri, 21 Aug 2026 19:18:27 GMT
ENV TOMCAT_SHA512=16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11
# Fri, 21 Aug 2026 19:19:41 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 21 Aug 2026 19:19:44 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 19:19:44 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 21 Aug 2026 19:19:44 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 21 Aug 2026 19:19:44 GMT
ENTRYPOINT []
# Fri, 21 Aug 2026 19:19:44 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:5d1d3f92cfa6f52fd8d52857915fa3c3464dbd12014bfc03e5e163fc72a4de1d`  
		Last Modified: Mon, 17 Aug 2026 14:27:57 GMT  
		Size: 29.9 MB (29935255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:febd56f9bf01d7054c014eb4509f039de23d43ebc88ca4c7662a39f6f884c1b2`  
		Last Modified: Fri, 21 Aug 2026 18:34:03 GMT  
		Size: 11.7 MB (11717138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1137918b91b46982f25053b528a0d312761eb409c75320a3dbd24a02abf0ab0`  
		Last Modified: Fri, 21 Aug 2026 18:34:04 GMT  
		Size: 60.5 MB (60527922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30291770412d2ab40020ed222505da8d61b3b598ea2e3ae93772b74c1bd574d9`  
		Last Modified: Fri, 21 Aug 2026 18:34:02 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26389976e92448425ccc66cbf546e43d18c18eb519bc498ed5091621db380dfc`  
		Last Modified: Fri, 21 Aug 2026 19:18:42 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c49854548bb9ae3af5830b4d589105cc33361d14f251d648dc30e51cb5825c64`  
		Last Modified: Fri, 21 Aug 2026 19:19:57 GMT  
		Size: 13.9 MB (13883322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae4bd66ba3f273473911411783f0350dd80c8cfe0a4c93d01e124318c5ccacd8`  
		Last Modified: Fri, 21 Aug 2026 19:19:57 GMT  
		Size: 215.5 KB (215488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre25-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:82468b6409b924cae7bfc6928f7d658d3c5ce57f5c990f8271f3c4a6e61d18f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3134113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84418a0c82490a45b0a3818e76437b58ce0cd23d1dda2adff7e92503f36a8f6e`

```dockerfile
```

-	Layers:
	-	`sha256:ba80cae34d961e43d698ca39b50d843f8e1ef40990dbcfc2f6aea5b42097eefd`  
		Last Modified: Fri, 21 Aug 2026 19:19:57 GMT  
		Size: 3.1 MB (3111032 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9bac5c19eb2b7427073160095854e7da4ecad7b8d570bb1502ecc988cc99311e`  
		Last Modified: Fri, 21 Aug 2026 19:19:57 GMT  
		Size: 23.1 KB (23081 bytes)  
		MIME: application/vnd.in-toto+json
