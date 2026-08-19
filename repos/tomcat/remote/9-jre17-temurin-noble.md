## `tomcat:9-jre17-temurin-noble`

```console
$ docker pull tomcat@sha256:ed80a15708bf1d2eb2f5a0c698f1a43ad8a388e727f1a22d3e851dd06750c280
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `tomcat:9-jre17-temurin-noble` - linux; amd64

```console
$ docker pull tomcat@sha256:96c671710d4fb71dd17e4675eb4db49a1d6975cb55a1ca53a10ad5735150aad4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.4 MB (108363392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d81c065c810e4867adba068749d5791c4146297b9db3c9b1d8245ddc941e881e`
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
# Tue, 18 Aug 2026 19:15:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 19:15:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 19:15:02 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 19:15:02 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:15:02 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Tue, 18 Aug 2026 19:15:50 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='adb5a2364baa51de1ef91bb9911f5a61d24b045fe1d6647cb8050272a3a8ee75';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        arm64)          ESUM='aae834297a87736869745be7c1fca3207ea9167c5824f41c88b0ebb2e3ccb9b1';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        armhf)          ESUM='018d1f5c11b2f1a2175c282a0fe8a17d9166da84b70ec1c60c1fa628a261d1eb';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_arm_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64el)          ESUM='1b028a08d96054ef29a3b6c424537d9644e0ec5fb5742a64d967dd56d5571b6b';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        riscv64)          ESUM='08c8c193fc2e8e6eb4450d3ddcefa78889eef338b2bbc0b30e5a6d586fc6d646';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_riscv64_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='674547d46dad6909fdcdafe5a691c131b048a8d226ccd7d0a4e96f2b208d772a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 18 Aug 2026 19:15:50 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 18 Aug 2026 19:15:50 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 18 Aug 2026 19:15:50 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 18 Aug 2026 21:16:05 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 18 Aug 2026 21:16:05 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 21:16:05 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 18 Aug 2026 21:16:05 GMT
WORKDIR /usr/local/tomcat
# Tue, 18 Aug 2026 21:16:05 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 21:16:05 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 21:16:05 GMT
ENV TOMCAT_MAJOR=9
# Tue, 18 Aug 2026 21:16:05 GMT
ENV TOMCAT_VERSION=9.0.121
# Tue, 18 Aug 2026 21:16:05 GMT
ENV TOMCAT_SHA512=16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11
# Tue, 18 Aug 2026 21:16:05 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 18 Aug 2026 21:16:09 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 21:16:09 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 18 Aug 2026 21:16:09 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 18 Aug 2026 21:16:09 GMT
ENTRYPOINT []
# Tue, 18 Aug 2026 21:16:09 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ea1b5f470325e321108d074727a0da28a9892851e82e02e73b75e190732b546`  
		Last Modified: Tue, 18 Aug 2026 19:15:17 GMT  
		Size: 16.9 MB (16945595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0976d588e0c19b7b2e18fbf0ad054f7cfd5ac66a30a861e2ec0ed44d1fc72802`  
		Last Modified: Tue, 18 Aug 2026 19:16:03 GMT  
		Size: 47.6 MB (47565075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92228cd89f0b3005cf5b1b2272b8435616ae66853a72bcc165d3e77bcd0fb0c7`  
		Last Modified: Tue, 18 Aug 2026 19:16:01 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0036e81299df9b8035bb45b1dbd2afa0ab7caf16fef08ab265dc2e2c511e0246`  
		Last Modified: Tue, 18 Aug 2026 19:16:01 GMT  
		Size: 2.3 KB (2282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3250fd88661be8ef083e446d951e12f1db32f32b6e4a07ce96e35c99ced4c6a`  
		Last Modified: Tue, 18 Aug 2026 21:16:17 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed5fa1462bfbe696b92abb54f8270a864a1055d3b2f6b0f788d9960986abe064`  
		Last Modified: Tue, 18 Aug 2026 21:16:18 GMT  
		Size: 13.9 MB (13872020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a8e6c55f54578abd7de9a77d64ba01fbc44c30dd4142e79f065249f48d49a81`  
		Last Modified: Tue, 18 Aug 2026 21:16:18 GMT  
		Size: 225.3 KB (225251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre17-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:d2e08570bb6ad8d311f5f2cc45c8119723a71c4672e84d5759aaa9e6965d72ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3353307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3beb55a600a700bdac10e6b03c7d2adf2fc8f027accbce219580f46b4f430516`

```dockerfile
```

-	Layers:
	-	`sha256:81b67d366f09ec083dfcc7caafe8312c90bb7c190c9fb10807dbdaf173647ea7`  
		Last Modified: Tue, 18 Aug 2026 21:16:18 GMT  
		Size: 3.3 MB (3330211 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b29badcff3370d28f4e128fdb9c443732d472398cd102854a1043a4052c99269`  
		Last Modified: Tue, 18 Aug 2026 21:16:17 GMT  
		Size: 23.1 KB (23096 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jre17-temurin-noble` - linux; arm variant v7

```console
$ docker pull tomcat@sha256:2a72dad2dcc5cedf99881ba00816f84127bb104199f2f211deeefacb1802a30c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.3 MB (102277745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22b557e9116dfb41a770ea760c7d152c71eb472896f7aea9f3820300e651e555`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 17 Aug 2026 13:17:18 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:17:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:17:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:17:21 GMT
ADD file:2164aa16295913265eec9e47409ded367df44d23b10145b85e6b3cb27d1e239c in / 
# Mon, 17 Aug 2026 13:17:21 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:11:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 19:11:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 19:11:57 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 19:11:57 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:11:57 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Tue, 18 Aug 2026 19:12:25 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='adb5a2364baa51de1ef91bb9911f5a61d24b045fe1d6647cb8050272a3a8ee75';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        arm64)          ESUM='aae834297a87736869745be7c1fca3207ea9167c5824f41c88b0ebb2e3ccb9b1';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        armhf)          ESUM='018d1f5c11b2f1a2175c282a0fe8a17d9166da84b70ec1c60c1fa628a261d1eb';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_arm_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64el)          ESUM='1b028a08d96054ef29a3b6c424537d9644e0ec5fb5742a64d967dd56d5571b6b';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        riscv64)          ESUM='08c8c193fc2e8e6eb4450d3ddcefa78889eef338b2bbc0b30e5a6d586fc6d646';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_riscv64_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='674547d46dad6909fdcdafe5a691c131b048a8d226ccd7d0a4e96f2b208d772a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 18 Aug 2026 19:12:25 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 18 Aug 2026 19:12:25 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 18 Aug 2026 19:12:25 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 18 Aug 2026 21:15:25 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 18 Aug 2026 21:15:25 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 21:15:25 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 18 Aug 2026 21:15:25 GMT
WORKDIR /usr/local/tomcat
# Tue, 18 Aug 2026 21:15:25 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 21:15:25 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 21:15:25 GMT
ENV TOMCAT_MAJOR=9
# Tue, 18 Aug 2026 21:15:25 GMT
ENV TOMCAT_VERSION=9.0.121
# Tue, 18 Aug 2026 21:15:25 GMT
ENV TOMCAT_SHA512=16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11
# Tue, 18 Aug 2026 21:15:25 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 18 Aug 2026 21:15:30 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 21:15:31 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 18 Aug 2026 21:15:31 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 18 Aug 2026 21:15:31 GMT
ENTRYPOINT []
# Tue, 18 Aug 2026 21:15:31 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:66f3e1c55273a462a0982068d442942c00c78585376028748a23901efa512546`  
		Last Modified: Mon, 17 Aug 2026 14:27:34 GMT  
		Size: 26.9 MB (26872780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bea1ca397fd7ceb071b8291fb79a2d388fc6961e0472cf4e9adfaece699fc00`  
		Last Modified: Tue, 18 Aug 2026 19:12:14 GMT  
		Size: 16.3 MB (16268599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bdca2bac8b75de64accad79027916eb1b06ec382ce91e218737aee50d047502`  
		Last Modified: Tue, 18 Aug 2026 19:12:38 GMT  
		Size: 45.1 MB (45131945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ff2fe1cd21f5631f463692f1ccabe39772bdea4e1ae6d5a545d4d2c096646ef`  
		Last Modified: Tue, 18 Aug 2026 19:12:36 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:965a982b7d514dd29856868e502aaf75e04f395e7aad04b0231afe7101206dd4`  
		Last Modified: Tue, 18 Aug 2026 19:12:36 GMT  
		Size: 2.3 KB (2281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61a086bcf83db709c225b1d850facc858717a1b9699216f35412c18d3d271938`  
		Last Modified: Tue, 18 Aug 2026 21:15:39 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b70c5c18edadfbc09a70ae67aa7dbe7ac3530f370f814ad17a4972aff79d473f`  
		Last Modified: Tue, 18 Aug 2026 21:15:40 GMT  
		Size: 13.8 MB (13805122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb3dedf703f004967b0dd9dbf59ae661e63916ec026411f2a041fd686f012ea6`  
		Last Modified: Tue, 18 Aug 2026 21:15:39 GMT  
		Size: 196.7 KB (196655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre17-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:1db61da0fc2d80ae34037b9b19e844e5ace0a9bbed79d9046664e44dd30cfc82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3355855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51c10343eb42316b1aacd49bd5c84483bc18056010ad8375d72c74238aedef79`

```dockerfile
```

-	Layers:
	-	`sha256:4e918acf34cd386c994ade3695272acd593a78460403f15e9658a9e0a756813d`  
		Last Modified: Tue, 18 Aug 2026 21:15:39 GMT  
		Size: 3.3 MB (3332591 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7659c92bb1c6792736c47ca7df4e408747aefbb31d1a2e495fa99f483b159f2a`  
		Last Modified: Tue, 18 Aug 2026 21:15:39 GMT  
		Size: 23.3 KB (23264 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jre17-temurin-noble` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:b709fdfd47e61f06bd3ed050735168954221ca430204188e2b17650f774fad7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.0 MB (106997176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:537590eb34dc401a6ee4f45b88154f9b13172a119d9dac2b55459497ad1f3c5d`
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
# Tue, 18 Aug 2026 19:16:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 19:16:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 19:16:01 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 19:16:01 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:16:01 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Tue, 18 Aug 2026 19:16:04 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='adb5a2364baa51de1ef91bb9911f5a61d24b045fe1d6647cb8050272a3a8ee75';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        arm64)          ESUM='aae834297a87736869745be7c1fca3207ea9167c5824f41c88b0ebb2e3ccb9b1';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        armhf)          ESUM='018d1f5c11b2f1a2175c282a0fe8a17d9166da84b70ec1c60c1fa628a261d1eb';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_arm_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64el)          ESUM='1b028a08d96054ef29a3b6c424537d9644e0ec5fb5742a64d967dd56d5571b6b';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        riscv64)          ESUM='08c8c193fc2e8e6eb4450d3ddcefa78889eef338b2bbc0b30e5a6d586fc6d646';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_riscv64_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='674547d46dad6909fdcdafe5a691c131b048a8d226ccd7d0a4e96f2b208d772a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 18 Aug 2026 19:16:04 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 18 Aug 2026 19:16:04 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 18 Aug 2026 19:16:04 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 18 Aug 2026 21:15:57 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 18 Aug 2026 21:15:57 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 21:15:57 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 18 Aug 2026 21:15:57 GMT
WORKDIR /usr/local/tomcat
# Tue, 18 Aug 2026 21:15:57 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 21:15:57 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 21:15:57 GMT
ENV TOMCAT_MAJOR=9
# Tue, 18 Aug 2026 21:15:57 GMT
ENV TOMCAT_VERSION=9.0.121
# Tue, 18 Aug 2026 21:15:57 GMT
ENV TOMCAT_SHA512=16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11
# Tue, 18 Aug 2026 21:15:57 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 18 Aug 2026 21:16:01 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 21:16:02 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 18 Aug 2026 21:16:02 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 18 Aug 2026 21:16:02 GMT
ENTRYPOINT []
# Tue, 18 Aug 2026 21:16:02 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15495dc017b2b6626ae0e3f1c62081f2954c8d9f62df6c83c87652cedf509566`  
		Last Modified: Tue, 18 Aug 2026 19:16:17 GMT  
		Size: 17.0 MB (16951312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65110997f4413bc0d6579824ecb2a767c55d3d0a440e613095d61f082c02917d`  
		Last Modified: Tue, 18 Aug 2026 19:16:18 GMT  
		Size: 47.1 MB (47050200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c57c47ce0430b41100e7180347937b630c712acedcddaf9f769e01611e394c6`  
		Last Modified: Tue, 18 Aug 2026 19:16:16 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c30fbcd8c0734dd2d0ad151427325aa6ead8edf65dcacc9a1b2705a3543583`  
		Last Modified: Tue, 18 Aug 2026 19:16:16 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e5f7338d67de2d7a4bf5949a749aac447fd2002134d1e4e92ef3c6dcaec6e85`  
		Last Modified: Tue, 18 Aug 2026 21:16:10 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f75220a72aa89d252140f23ce3b940b0290cad49f324201685511f46a9a7f6b`  
		Last Modified: Tue, 18 Aug 2026 21:16:11 GMT  
		Size: 13.9 MB (13880251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b48aa596fb53f46fbde6be44a2e4fd32f360f3cd673c1b422f672d1772700fb`  
		Last Modified: Tue, 18 Aug 2026 21:16:10 GMT  
		Size: 225.5 KB (225534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre17-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:17ff5b1854d0ae085f13a9306cbbfa542634cb35318f3dfcc522bcff6fbf60e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3354059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cf9b8d6050c0dd44052011a020e686cfc6e49928038b260c16988876a1da69e`

```dockerfile
```

-	Layers:
	-	`sha256:35683e742925fac7d2a30600480f9806db8acdd6b7939e3754fef2f4faf1df97`  
		Last Modified: Tue, 18 Aug 2026 21:16:10 GMT  
		Size: 3.3 MB (3330743 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b4883b38240639e1c8ed2c4e1fff3ec40af5b1dc343a8fbab3a747c492ad3423`  
		Last Modified: Tue, 18 Aug 2026 21:16:10 GMT  
		Size: 23.3 KB (23316 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jre17-temurin-noble` - linux; ppc64le

```console
$ docker pull tomcat@sha256:6e135eb1ade5a92a56649bb1bb1e1bd8cd6aa092b937f57a109811928663727e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.3 MB (117331018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef3b266dade118a46db5c786fad0ec7d13b593b6bc38f001716f960ba0cf99b9`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 31 Jul 2026 20:44:29 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:44:29 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:44:29 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:44:32 GMT
ADD file:de84028a58b37b343ef7acd8f4c9a3bfde61683d6c522e683a978115b04d031b in / 
# Fri, 31 Jul 2026 20:44:33 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:14:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 01:14:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:14:23 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:14:23 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:14:23 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Tue, 04 Aug 2026 01:22:45 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='adb5a2364baa51de1ef91bb9911f5a61d24b045fe1d6647cb8050272a3a8ee75';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        arm64)          ESUM='aae834297a87736869745be7c1fca3207ea9167c5824f41c88b0ebb2e3ccb9b1';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        armhf)          ESUM='018d1f5c11b2f1a2175c282a0fe8a17d9166da84b70ec1c60c1fa628a261d1eb';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_arm_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64el)          ESUM='1b028a08d96054ef29a3b6c424537d9644e0ec5fb5742a64d967dd56d5571b6b';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        riscv64)          ESUM='08c8c193fc2e8e6eb4450d3ddcefa78889eef338b2bbc0b30e5a6d586fc6d646';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_riscv64_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='674547d46dad6909fdcdafe5a691c131b048a8d226ccd7d0a4e96f2b208d772a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 04 Aug 2026 01:22:46 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 01:22:46 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:22:46 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 04 Aug 2026 06:28:21 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 04 Aug 2026 06:28:21 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 06:28:21 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 04 Aug 2026 06:28:21 GMT
WORKDIR /usr/local/tomcat
# Tue, 04 Aug 2026 06:28:21 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 04 Aug 2026 06:28:21 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 04 Aug 2026 06:28:21 GMT
ENV TOMCAT_MAJOR=9
# Tue, 04 Aug 2026 06:28:21 GMT
ENV TOMCAT_VERSION=9.0.120
# Tue, 04 Aug 2026 06:28:21 GMT
ENV TOMCAT_SHA512=07eb6d9639c3e69af81171a16ccff1c19b7fd5b2e87e3646851f0a3f42a4ce3c1bf128fbe40fc978a08935ba4f0400ef3b43ded3e470b9aaf23b97a9e1fa0858
# Tue, 04 Aug 2026 06:35:07 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 04 Aug 2026 06:35:14 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 06:35:16 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 04 Aug 2026 06:35:16 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 04 Aug 2026 06:35:16 GMT
ENTRYPOINT []
# Tue, 04 Aug 2026 06:35:16 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:9d1bffbd46bb5cede430c07896855e38e8bfe397bbc67fe1808f03623a4aad12`  
		Last Modified: Fri, 31 Jul 2026 22:22:43 GMT  
		Size: 34.3 MB (34310673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:511319b2e0803887cfd0c90af4cb35091e190f8fd52c0cfc09ab24dc5a25e75d`  
		Last Modified: Tue, 04 Aug 2026 01:14:52 GMT  
		Size: 21.4 MB (21390214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:857a943c02c09015a17d52824b8a95dba43b2a37ac7e06492eba4cd105e3cd63`  
		Last Modified: Tue, 04 Aug 2026 01:23:10 GMT  
		Size: 47.5 MB (47487509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c61265220448081ff5c40673757e4a2073bd2a674f838e7041e27f242f9bce84`  
		Last Modified: Tue, 04 Aug 2026 01:23:08 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c506477db13a1637bf2d6b932e0f08f93c4df00ce6b602eba1d846e5d5e39dad`  
		Last Modified: Tue, 04 Aug 2026 01:23:09 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dd471ded058a34105d9a263907debd5de8c4bf8df16062e85e79bbfd4c9fd0f`  
		Last Modified: Tue, 04 Aug 2026 06:28:47 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca3f72421baee1fe0b3c44ffefe6c399d361ab132bba733840e318cbb4b7d616`  
		Last Modified: Tue, 04 Aug 2026 06:35:32 GMT  
		Size: 13.9 MB (13883057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60572ad61704e250aaacb65c99b5718fe0b78a1dd1638a7daded92fa2f71ae32`  
		Last Modified: Tue, 04 Aug 2026 06:35:32 GMT  
		Size: 256.9 KB (256921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre17-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:a3dd4e7c61c2954dfa891d3de43065a9423fae313daa33b86e7c687e3d164a87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3357501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dadb8f98cd274eeaeb94d92203449a7b81d4792b861e6bac4c7fb72e84ac05cb`

```dockerfile
```

-	Layers:
	-	`sha256:91019fed53dc771e3a7cce2e9f4d0232983f9857beccee0bfdc0b9a6bc2ff286`  
		Last Modified: Tue, 04 Aug 2026 06:35:32 GMT  
		Size: 3.3 MB (3334318 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:328e5a3c2b3eba96a8171b4b3dea2f30f55f938673b9673852746508f72a5b03`  
		Last Modified: Tue, 04 Aug 2026 06:35:32 GMT  
		Size: 23.2 KB (23183 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jre17-temurin-noble` - linux; riscv64

```console
$ docker pull tomcat@sha256:0575ba92388b47d9c1ef93a56717837d48ba0ac442734103e048528a80ef7a40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.5 MB (109517827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21113cb74d17db11c10a433d6a473bdfa36ab19ea94cedc7dca8122c07516a39`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 31 Jul 2026 22:05:08 GMT
ARG RELEASE
# Fri, 31 Jul 2026 22:05:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 22:05:09 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 22:06:18 GMT
ADD file:92a48184ab69ab31b698d333efd875f6fa0f69b8c6b66fb9364e2c45ad98a3e9 in / 
# Fri, 31 Jul 2026 22:06:24 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:25:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 01:25:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:25:36 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:25:36 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:25:36 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Tue, 04 Aug 2026 01:26:00 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='adb5a2364baa51de1ef91bb9911f5a61d24b045fe1d6647cb8050272a3a8ee75';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        arm64)          ESUM='aae834297a87736869745be7c1fca3207ea9167c5824f41c88b0ebb2e3ccb9b1';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        armhf)          ESUM='018d1f5c11b2f1a2175c282a0fe8a17d9166da84b70ec1c60c1fa628a261d1eb';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_arm_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64el)          ESUM='1b028a08d96054ef29a3b6c424537d9644e0ec5fb5742a64d967dd56d5571b6b';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        riscv64)          ESUM='08c8c193fc2e8e6eb4450d3ddcefa78889eef338b2bbc0b30e5a6d586fc6d646';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_riscv64_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='674547d46dad6909fdcdafe5a691c131b048a8d226ccd7d0a4e96f2b208d772a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 04 Aug 2026 01:26:00 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 01:26:00 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:26:00 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 04 Aug 2026 07:37:09 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 04 Aug 2026 07:37:09 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 07:37:09 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 04 Aug 2026 07:37:09 GMT
WORKDIR /usr/local/tomcat
# Tue, 04 Aug 2026 07:37:09 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 04 Aug 2026 07:37:09 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 04 Aug 2026 07:37:09 GMT
ENV TOMCAT_MAJOR=9
# Tue, 04 Aug 2026 07:37:09 GMT
ENV TOMCAT_VERSION=9.0.120
# Tue, 04 Aug 2026 07:37:09 GMT
ENV TOMCAT_SHA512=07eb6d9639c3e69af81171a16ccff1c19b7fd5b2e87e3646851f0a3f42a4ce3c1bf128fbe40fc978a08935ba4f0400ef3b43ded3e470b9aaf23b97a9e1fa0858
# Tue, 04 Aug 2026 07:58:46 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 04 Aug 2026 07:59:32 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 07:59:39 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 04 Aug 2026 07:59:39 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 04 Aug 2026 07:59:39 GMT
ENTRYPOINT []
# Tue, 04 Aug 2026 07:59:39 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:762baa88da0248ffd5b4e64693b9d04fc144101bcdbcc6dcc7d9a6be2a8b7953`  
		Last Modified: Fri, 31 Jul 2026 22:22:50 GMT  
		Size: 31.0 MB (30982563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9204a703f92c86d54bcd269915514fffc107fa6118031ed8c8b4ade32fef8acc`  
		Last Modified: Tue, 04 Aug 2026 01:28:20 GMT  
		Size: 17.8 MB (17830256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9444aaa88f4e7d4447cf64a1f26c68c20c42878be8e55a75ac50e1b7da50f6c`  
		Last Modified: Tue, 04 Aug 2026 01:28:24 GMT  
		Size: 46.1 MB (46111403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97fee6aba43f7563bb0ab7f17d51fb4b8df6845d14491018cc77e5f25360d46f`  
		Last Modified: Tue, 04 Aug 2026 01:28:14 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baa4274e6a536ab132113dcb33ad2cafd3a9be9b1082751701b9f9f8525a392d`  
		Last Modified: Tue, 04 Aug 2026 01:28:14 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b22b789fdb31dbc89053035ddd832fb57bdaaad95425fd1e0a7ab737b630cfc6`  
		Last Modified: Tue, 04 Aug 2026 07:39:42 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3173ba36bc9d29d93ac5a7c12006e12807a23ba5674df7355b8dc5df9e1112c`  
		Last Modified: Tue, 04 Aug 2026 08:01:23 GMT  
		Size: 14.4 MB (14362451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8ba79c8ffa8f75e06a8a88a666fb71cc01f8bb778942137485d974a57cf2de8`  
		Last Modified: Tue, 04 Aug 2026 08:01:20 GMT  
		Size: 228.5 KB (228508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre17-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:3855dddbb46d7ebe2e2e484c2e99de5a7e880c322f82bf051b921f4fc783c41b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3345504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb8067682591f913e741eb454c0f914996d2fb3cdd4f2d328e37bbd7a9e0837e`

```dockerfile
```

-	Layers:
	-	`sha256:8aa0c38903eaba859459517199182a8121c79d4f0e15bb9dd96c3b3382031e37`  
		Last Modified: Tue, 04 Aug 2026 08:01:21 GMT  
		Size: 3.3 MB (3322320 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88bad27686f97ea3c9f734af8563e7194cc844787ff54faf5dcc446032b80256`  
		Last Modified: Tue, 04 Aug 2026 08:01:20 GMT  
		Size: 23.2 KB (23184 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jre17-temurin-noble` - linux; s390x

```console
$ docker pull tomcat@sha256:0c55d49c9c005ea5d98615244799fe867a9c1986115347842808f19ebb648d9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.1 MB (106126551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51972b86f4ed500f34d7f99c09dfda406515ee658699ce871b40d42f92b2bb46`
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
# Tue, 18 Aug 2026 19:09:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 19:09:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 19:09:47 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 19:09:47 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:09:47 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Tue, 18 Aug 2026 19:11:22 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='adb5a2364baa51de1ef91bb9911f5a61d24b045fe1d6647cb8050272a3a8ee75';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        arm64)          ESUM='aae834297a87736869745be7c1fca3207ea9167c5824f41c88b0ebb2e3ccb9b1';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        armhf)          ESUM='018d1f5c11b2f1a2175c282a0fe8a17d9166da84b70ec1c60c1fa628a261d1eb';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_arm_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64el)          ESUM='1b028a08d96054ef29a3b6c424537d9644e0ec5fb5742a64d967dd56d5571b6b';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        riscv64)          ESUM='08c8c193fc2e8e6eb4450d3ddcefa78889eef338b2bbc0b30e5a6d586fc6d646';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_riscv64_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='674547d46dad6909fdcdafe5a691c131b048a8d226ccd7d0a4e96f2b208d772a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 18 Aug 2026 19:11:23 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 18 Aug 2026 19:11:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 18 Aug 2026 19:11:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 18 Aug 2026 21:15:21 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 18 Aug 2026 21:15:21 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 21:15:21 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 18 Aug 2026 21:15:23 GMT
WORKDIR /usr/local/tomcat
# Tue, 18 Aug 2026 21:15:23 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 21:15:23 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 21:15:23 GMT
ENV TOMCAT_MAJOR=9
# Tue, 18 Aug 2026 21:15:23 GMT
ENV TOMCAT_VERSION=9.0.121
# Tue, 18 Aug 2026 21:15:23 GMT
ENV TOMCAT_SHA512=16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11
# Tue, 18 Aug 2026 21:15:23 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 18 Aug 2026 21:15:26 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 21:15:27 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 18 Aug 2026 21:15:27 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 18 Aug 2026 21:15:27 GMT
ENTRYPOINT []
# Tue, 18 Aug 2026 21:15:27 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:5d1d3f92cfa6f52fd8d52857915fa3c3464dbd12014bfc03e5e163fc72a4de1d`  
		Last Modified: Mon, 17 Aug 2026 14:27:57 GMT  
		Size: 29.9 MB (29935255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3de9d023c757cb6293927ef8b08c265b285717cec6387290c40a61634f58a3a9`  
		Last Modified: Tue, 18 Aug 2026 19:10:14 GMT  
		Size: 17.5 MB (17533891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:794b442852f01e62076aaa5be9b3280d7967ab4a7b6ef545693e58074485fab3`  
		Last Modified: Tue, 18 Aug 2026 19:11:41 GMT  
		Size: 44.5 MB (44541834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf96728478268274e746dd1ba79e6413d936f29d90bcf2cc117c5ebd2d9b0d4e`  
		Last Modified: Tue, 18 Aug 2026 19:11:41 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb3883b71d17beadc5ea823959dfea54d87a280040148320c9026f67385a0275`  
		Last Modified: Tue, 18 Aug 2026 19:11:41 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a65ee2e9739d8dbc81c52d7a9ba6be8d782dac678e54fab15b2ac6c3e18f37cf`  
		Last Modified: Tue, 18 Aug 2026 21:15:40 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8f9237a72b97fcac710c01ce1a2abb6b6da8f4c3c84e47aa3d0adbbe667f579`  
		Last Modified: Tue, 18 Aug 2026 21:15:41 GMT  
		Size: 13.9 MB (13879616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8809ea6a16e483d61070027da671cfc7f51edb99f10a811e256182f3526b9f09`  
		Last Modified: Tue, 18 Aug 2026 21:15:40 GMT  
		Size: 233.3 KB (233310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre17-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:38d06c353b0569c33e8c44bc283ed5c3a9e24e9a44b0be34217e140965420c00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3355506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24b5dee588762e283494db72ba3e6b985b5023a0169243d6e8887974af9e7e77`

```dockerfile
```

-	Layers:
	-	`sha256:dc9da49a51695330934facdf0e47c3983b08b9227a9c2740c2a57f7af8453341`  
		Last Modified: Tue, 18 Aug 2026 21:15:40 GMT  
		Size: 3.3 MB (3332410 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db2b7981579a87d985fd11ddc8a671cea674f7cf32abb28dec42db286a3a2d8b`  
		Last Modified: Tue, 18 Aug 2026 21:15:40 GMT  
		Size: 23.1 KB (23096 bytes)  
		MIME: application/vnd.in-toto+json
