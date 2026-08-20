## `tomcat:jre17-temurin-jammy`

```console
$ docker pull tomcat@sha256:d9fc8b67dead8c9218bfa78bf58eb1d7d6fb34159dd9da846edd1b429691f407
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `tomcat:jre17-temurin-jammy` - linux; amd64

```console
$ docker pull tomcat@sha256:14185ffe7d8e4ff3c456bc529ff552390c2a883fed8e51fc9a65e63d5b2ce2ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.1 MB (108079481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a85b7871fce0590dad4680355f54ea3371b4f261c60d1cbe7253c54217141e3a`
-	Default Command: `["catalina.sh","run"]`

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
# Tue, 18 Aug 2026 01:14:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 01:14:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 01:14:32 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 01:14:32 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:14:32 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Tue, 18 Aug 2026 01:14:56 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='adb5a2364baa51de1ef91bb9911f5a61d24b045fe1d6647cb8050272a3a8ee75';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        arm64)          ESUM='aae834297a87736869745be7c1fca3207ea9167c5824f41c88b0ebb2e3ccb9b1';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        armhf)          ESUM='018d1f5c11b2f1a2175c282a0fe8a17d9166da84b70ec1c60c1fa628a261d1eb';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_arm_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64el)          ESUM='1b028a08d96054ef29a3b6c424537d9644e0ec5fb5742a64d967dd56d5571b6b';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='674547d46dad6909fdcdafe5a691c131b048a8d226ccd7d0a4e96f2b208d772a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 18 Aug 2026 01:14:56 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 18 Aug 2026 01:14:56 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:14:56 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 18 Aug 2026 18:09:59 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 18 Aug 2026 18:09:59 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 18:09:59 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 18 Aug 2026 18:09:59 GMT
WORKDIR /usr/local/tomcat
# Tue, 18 Aug 2026 18:09:59 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 18:09:59 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 18:09:59 GMT
ENV TOMCAT_MAJOR=11
# Tue, 18 Aug 2026 18:09:59 GMT
ENV TOMCAT_VERSION=11.0.25
# Tue, 18 Aug 2026 18:09:59 GMT
ENV TOMCAT_SHA512=81339c046dff1b363a80a3bccf80cb391660a6828dd8ae042180ceb11c8b1614317143e60b311b9e791dab585bb046b777234667acce7dca2203a74b37bf20f2
# Tue, 18 Aug 2026 18:10:00 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 18 Aug 2026 18:10:03 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 18:10:04 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 18 Aug 2026 18:10:04 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 18 Aug 2026 18:10:04 GMT
ENTRYPOINT []
# Tue, 18 Aug 2026 18:10:04 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5423de7963cca33ff119b8dd941bf2eded4396018f61d28291ed582b8aa8cf31`  
		Last Modified: Tue, 18 Aug 2026 01:14:47 GMT  
		Size: 16.1 MB (16108659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:233dff72bc6cdb585612484a9e7789e8b9c2a484e855d1c7aabad24d7dcd242b`  
		Last Modified: Tue, 18 Aug 2026 01:15:09 GMT  
		Size: 47.6 MB (47564733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6b25367d75c85973a8b4e8831e06a7d02c74583f406be37b261b7bb591ed1b9`  
		Last Modified: Tue, 18 Aug 2026 01:15:08 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c8aa244d810014a6e8768ebf6bc5357dc1de7eb50ecb681bf1027c008f10ebe`  
		Last Modified: Tue, 18 Aug 2026 01:15:08 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdd9309b8fc1ef71821f99129609a559148658d7c93052db3b375f9128c4f52c`  
		Last Modified: Tue, 18 Aug 2026 18:10:12 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0cf6b25282b7d66298be57ca2d24f77816d6ad6d1713c9723853bdf2956fc56`  
		Last Modified: Tue, 18 Aug 2026 18:10:12 GMT  
		Size: 14.4 MB (14436436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7041a0dcb708652b110fcae906b419c698a49e431d0d126280929d66b0501023`  
		Last Modified: Tue, 18 Aug 2026 18:10:12 GMT  
		Size: 230.1 KB (230067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:jre17-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:c875e4758082351a11258f2b56f0b8e32bbdacba4c9e51484f8e65688d0e17ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3947434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f508f15fdce131f00735bceae6d376326b107844ddcaf19db1b3e6f0570a16f8`

```dockerfile
```

-	Layers:
	-	`sha256:565f079b7bc9a12e8f664248e779f328bd6f6bf50c75fe012e690e5e7537e36f`  
		Last Modified: Tue, 18 Aug 2026 18:10:12 GMT  
		Size: 3.9 MB (3925886 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64fce38c4ad85314356d655617c0474119ba5a8ddde7a84bb3eb1799cffdacfd`  
		Last Modified: Tue, 18 Aug 2026 18:10:12 GMT  
		Size: 21.5 KB (21548 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:jre17-temurin-jammy` - linux; arm variant v7

```console
$ docker pull tomcat@sha256:4736d94361b7976353e8e481d257b5817ceca3de3cc1a78dfe6984d247a9fee2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.4 MB (102432826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4f5e3febeac9e8919e08aab1449befd0b19ff44976908e39f208617a63ff790`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:43 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:43 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:43 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:46 GMT
ADD file:28008f9e682e86fcfbf3a0a3e6cf7bc009d54f8a88db924bb6e29b30e688e939 in / 
# Mon, 10 Aug 2026 17:38:47 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 01:10:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 01:10:29 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 01:10:29 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:10:29 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Tue, 18 Aug 2026 01:11:15 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='adb5a2364baa51de1ef91bb9911f5a61d24b045fe1d6647cb8050272a3a8ee75';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        arm64)          ESUM='aae834297a87736869745be7c1fca3207ea9167c5824f41c88b0ebb2e3ccb9b1';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        armhf)          ESUM='018d1f5c11b2f1a2175c282a0fe8a17d9166da84b70ec1c60c1fa628a261d1eb';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_arm_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64el)          ESUM='1b028a08d96054ef29a3b6c424537d9644e0ec5fb5742a64d967dd56d5571b6b';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='674547d46dad6909fdcdafe5a691c131b048a8d226ccd7d0a4e96f2b208d772a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 18 Aug 2026 01:11:15 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 18 Aug 2026 01:11:15 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:11:15 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 18 Aug 2026 18:09:12 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 18 Aug 2026 18:09:12 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 18:09:12 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 18 Aug 2026 18:09:12 GMT
WORKDIR /usr/local/tomcat
# Tue, 18 Aug 2026 18:09:12 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 18:09:12 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 18:09:12 GMT
ENV TOMCAT_MAJOR=11
# Tue, 18 Aug 2026 18:09:12 GMT
ENV TOMCAT_VERSION=11.0.25
# Tue, 18 Aug 2026 18:09:12 GMT
ENV TOMCAT_SHA512=81339c046dff1b363a80a3bccf80cb391660a6828dd8ae042180ceb11c8b1614317143e60b311b9e791dab585bb046b777234667acce7dca2203a74b37bf20f2
# Tue, 18 Aug 2026 18:09:13 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 18 Aug 2026 18:09:17 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 18:09:17 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 18 Aug 2026 18:09:17 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 18 Aug 2026 18:09:17 GMT
ENTRYPOINT []
# Tue, 18 Aug 2026 18:09:17 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:deafe6b5876d5dead55957182e61b6fb35f90aab5d6265e0945beaff36062d3a`  
		Last Modified: Mon, 10 Aug 2026 20:08:55 GMT  
		Size: 26.8 MB (26848898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fecf499da1c363a94c0680c6248eae0c0a4d362235d428cb836bef697677e663`  
		Last Modified: Tue, 18 Aug 2026 01:11:00 GMT  
		Size: 15.8 MB (15839547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e199a4d65f089ed49db50e3cecf889572a75189fb5d039ac4dcbefdd2e18b1d6`  
		Last Modified: Tue, 18 Aug 2026 01:11:27 GMT  
		Size: 45.1 MB (45131854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:596f08ff9cb87ef147b1947c1078a511f1928f3ef7b78f0fc0c3561288e6e3b3`  
		Last Modified: Tue, 18 Aug 2026 01:11:26 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:477aa35d75c8f68805c02ef2dbe6fbaef9f99aaef94d1f9f291f28f078330104`  
		Last Modified: Tue, 18 Aug 2026 01:11:26 GMT  
		Size: 2.3 KB (2282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8ebfe8d00c2dcc57af5ded2f85b5bc78535a84f39810e9676400685467d2e13`  
		Last Modified: Tue, 18 Aug 2026 18:09:26 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d51fc5f371b3abbfdf9eb5f273aecd8a5089c1b2937b796263c04a13a3dd7a5`  
		Last Modified: Tue, 18 Aug 2026 18:09:26 GMT  
		Size: 14.4 MB (14407314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aac6acc1c1df53303d3f1cda4ff4c9b35a4f291e752392b798baced913e6d52`  
		Last Modified: Tue, 18 Aug 2026 18:09:26 GMT  
		Size: 202.6 KB (202568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:jre17-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:7a4daf76cab8dc6143df95af16940ece5679f08941523a31eb8263eb645c189b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3949904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3198bda93813da62303adc5cf752323dec4bcedf7269bf7b8032cb91b957f66b`

```dockerfile
```

-	Layers:
	-	`sha256:3c22232484140f1be194771ad930342f1973c89ebe1984512a5b30bbe85f771a`  
		Last Modified: Tue, 18 Aug 2026 18:09:26 GMT  
		Size: 3.9 MB (3928229 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5594f6258c9681a8daf2d6d60331772dc0fb2651b899bded209e9c106317a3d5`  
		Last Modified: Tue, 18 Aug 2026 18:09:26 GMT  
		Size: 21.7 KB (21675 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:jre17-temurin-jammy` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:e2151a133e656ade00aeb8e204065b729d03de89995317319e527d8c83e46d4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.4 MB (105377476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07d13cde934a359133adee51e4b556bbb600bcf91669f19ef6787fd9539cf3dc`
-	Default Command: `["catalina.sh","run"]`

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
# Tue, 18 Aug 2026 01:14:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 01:14:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 01:14:22 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 01:14:22 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:14:22 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Tue, 18 Aug 2026 01:14:51 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='adb5a2364baa51de1ef91bb9911f5a61d24b045fe1d6647cb8050272a3a8ee75';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        arm64)          ESUM='aae834297a87736869745be7c1fca3207ea9167c5824f41c88b0ebb2e3ccb9b1';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        armhf)          ESUM='018d1f5c11b2f1a2175c282a0fe8a17d9166da84b70ec1c60c1fa628a261d1eb';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_arm_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64el)          ESUM='1b028a08d96054ef29a3b6c424537d9644e0ec5fb5742a64d967dd56d5571b6b';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='674547d46dad6909fdcdafe5a691c131b048a8d226ccd7d0a4e96f2b208d772a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 18 Aug 2026 01:14:51 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 18 Aug 2026 01:14:51 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:14:51 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 18 Aug 2026 18:09:48 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 18 Aug 2026 18:09:48 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 18:09:48 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 18 Aug 2026 18:09:48 GMT
WORKDIR /usr/local/tomcat
# Tue, 18 Aug 2026 18:09:48 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 18:09:48 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 18:09:48 GMT
ENV TOMCAT_MAJOR=11
# Tue, 18 Aug 2026 18:09:48 GMT
ENV TOMCAT_VERSION=11.0.25
# Tue, 18 Aug 2026 18:09:48 GMT
ENV TOMCAT_SHA512=81339c046dff1b363a80a3bccf80cb391660a6828dd8ae042180ceb11c8b1614317143e60b311b9e791dab585bb046b777234667acce7dca2203a74b37bf20f2
# Tue, 18 Aug 2026 18:09:48 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 18 Aug 2026 18:09:54 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 18:09:54 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 18 Aug 2026 18:09:54 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 18 Aug 2026 18:09:54 GMT
ENTRYPOINT []
# Tue, 18 Aug 2026 18:09:54 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6589c79655ae8e027c1a6ff4a0c88b5ddfd9d8b8409e8e6fe669cddf65327487`  
		Last Modified: Tue, 18 Aug 2026 01:14:40 GMT  
		Size: 16.0 MB (16039327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5db9ee565da4902a2ee6de43497080340f0e1b418cbea5d6f075ca576f60033a`  
		Last Modified: Tue, 18 Aug 2026 01:15:04 GMT  
		Size: 47.1 MB (47050267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61d986e5cb69aaa0a61685e4eb0e6396973230890cec77f24204c2dc01034d7f`  
		Last Modified: Tue, 18 Aug 2026 01:15:02 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b085a2fb0001bf30d01d33785b565ddb15f64a47d6d383ef4e96d6cb448100c4`  
		Last Modified: Tue, 18 Aug 2026 01:15:03 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f454126cb9084264b7bd7060d66f44583824c5ff18664078d4f7efeabb2a5f9c`  
		Last Modified: Tue, 18 Aug 2026 18:10:03 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eac2231fa0e5d42324b03a0fcefbe9496d74835433c321a741f972317898d96`  
		Last Modified: Tue, 18 Aug 2026 18:10:03 GMT  
		Size: 14.4 MB (14435882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2220a66a336a4c35d2d8067f8e772d98570c4959d09f03ddf1bb90b5efe171ea`  
		Last Modified: Tue, 18 Aug 2026 18:10:03 GMT  
		Size: 228.9 KB (228904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:jre17-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:6f0bfc41624982312c7e853d25d0ee78ed2c415748a722221f37665b8b96f7d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3947275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e872b895c40347803d7fde0db3b27f069667aa5e7d943824084c7a90f98dfc5`

```dockerfile
```

-	Layers:
	-	`sha256:da54a34f3bc51fa4356617f4c772fd3ec376f850db828355d72f38198e8d5411`  
		Last Modified: Tue, 18 Aug 2026 18:10:03 GMT  
		Size: 3.9 MB (3925567 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6deb226f01b7039ce898c5b2a0a36b4b43d124acac2514a7a516b8eb64f54068`  
		Last Modified: Tue, 18 Aug 2026 18:10:03 GMT  
		Size: 21.7 KB (21708 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:jre17-temurin-jammy` - linux; ppc64le

```console
$ docker pull tomcat@sha256:9cfb462b601d55b95ae7a26ab350a9c7f2b35500d4305464b18074dc29f0cf2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.4 MB (114419246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0435bda9562028994672a80c7f4714eda6570a51d5cf5fa946be27d743124a1`
-	Default Command: `["catalina.sh","run"]`

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
# Tue, 18 Aug 2026 01:09:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 01:09:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 01:09:35 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 01:09:35 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:09:35 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Tue, 18 Aug 2026 01:11:31 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='adb5a2364baa51de1ef91bb9911f5a61d24b045fe1d6647cb8050272a3a8ee75';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        arm64)          ESUM='aae834297a87736869745be7c1fca3207ea9167c5824f41c88b0ebb2e3ccb9b1';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        armhf)          ESUM='018d1f5c11b2f1a2175c282a0fe8a17d9166da84b70ec1c60c1fa628a261d1eb';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_arm_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64el)          ESUM='1b028a08d96054ef29a3b6c424537d9644e0ec5fb5742a64d967dd56d5571b6b';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='674547d46dad6909fdcdafe5a691c131b048a8d226ccd7d0a4e96f2b208d772a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 18 Aug 2026 01:11:31 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 18 Aug 2026 01:11:31 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:11:31 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 19 Aug 2026 22:45:01 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 19 Aug 2026 22:45:01 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 22:45:01 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 19 Aug 2026 22:45:02 GMT
WORKDIR /usr/local/tomcat
# Wed, 19 Aug 2026 22:45:02 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 19 Aug 2026 22:45:02 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 19 Aug 2026 22:45:02 GMT
ENV TOMCAT_MAJOR=11
# Wed, 19 Aug 2026 22:45:02 GMT
ENV TOMCAT_VERSION=11.0.25
# Wed, 19 Aug 2026 22:45:02 GMT
ENV TOMCAT_SHA512=81339c046dff1b363a80a3bccf80cb391660a6828dd8ae042180ceb11c8b1614317143e60b311b9e791dab585bb046b777234667acce7dca2203a74b37bf20f2
# Wed, 19 Aug 2026 22:45:03 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Wed, 19 Aug 2026 22:45:08 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 22:45:10 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 19 Aug 2026 22:45:10 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 19 Aug 2026 22:45:10 GMT
ENTRYPOINT []
# Wed, 19 Aug 2026 22:45:10 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:f91e00e792a8adfcd4df0b5c8e802d3b4d1e06477f9753454043a7ce76772758`  
		Last Modified: Mon, 10 Aug 2026 20:09:02 GMT  
		Size: 34.6 MB (34638145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7828a02276f23af520fb4ec4c98cdd4cff28a3d7445aaac6c31b7ce46e1179b1`  
		Last Modified: Tue, 18 Aug 2026 01:10:09 GMT  
		Size: 17.6 MB (17582017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9205a578893b44674f267b87b51d7509399310b4ffbfc3547b013711e1b168b2`  
		Last Modified: Tue, 18 Aug 2026 01:11:58 GMT  
		Size: 47.5 MB (47487497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e13057e0186b57a8c1f4535adcb652be655f5f2e27d6557918714cf4222ae55c`  
		Last Modified: Tue, 18 Aug 2026 01:11:57 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1e16e49ee2f15f73ec8f10423d09cd53e32175b2680b5e64d473c3804966573`  
		Last Modified: Tue, 18 Aug 2026 01:11:57 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8c8564e088ec36f195936f0b9d56b8f2ecbb7638f1eedd11495155557cee1da`  
		Last Modified: Wed, 19 Aug 2026 22:45:29 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:227b0f6ad56532f6a1c85cb3a9fb0be80de98cca375a3550acb0dc03ec8f5801`  
		Last Modified: Wed, 19 Aug 2026 22:45:30 GMT  
		Size: 14.4 MB (14449473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53f724fabf86dd95c7034ed3b5b4c09d568a1878ca8c2858381720d6cdf97ba4`  
		Last Modified: Wed, 19 Aug 2026 22:45:30 GMT  
		Size: 259.5 KB (259470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:jre17-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:2bc991e0947115d0b6b3eaee2514cd5e560437f06c3f1b7b84934339602739ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3951586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1b0ff237d334329ae1ad7a757edd5276c0b0cac961ebc7403d6971d11351921`

```dockerfile
```

-	Layers:
	-	`sha256:77a50def7a4ff6187f9bdd951809250d0185baefa4c75f63cf7180e86d87733c`  
		Last Modified: Wed, 19 Aug 2026 22:45:30 GMT  
		Size: 3.9 MB (3929980 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ef0f27fa5173ca7fe09571ab936434598974f3efd992ae69fec2b69e6685761`  
		Last Modified: Wed, 19 Aug 2026 22:45:29 GMT  
		Size: 21.6 KB (21606 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:jre17-temurin-jammy` - linux; s390x

```console
$ docker pull tomcat@sha256:8293d9198d1b7a98164b914858cb8d401ff58def2ed2f01811581112a5260b96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.5 MB (103530552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f634a889868a5d6433df4e6a311d7d3d58c2ac53b91544162f7cc0aaaa122933`
-	Default Command: `["catalina.sh","run"]`

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
# Tue, 18 Aug 2026 00:08:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 00:08:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 00:08:24 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 00:08:24 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 00:08:24 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Tue, 18 Aug 2026 00:08:28 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='adb5a2364baa51de1ef91bb9911f5a61d24b045fe1d6647cb8050272a3a8ee75';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        arm64)          ESUM='aae834297a87736869745be7c1fca3207ea9167c5824f41c88b0ebb2e3ccb9b1';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        armhf)          ESUM='018d1f5c11b2f1a2175c282a0fe8a17d9166da84b70ec1c60c1fa628a261d1eb';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_arm_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64el)          ESUM='1b028a08d96054ef29a3b6c424537d9644e0ec5fb5742a64d967dd56d5571b6b';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='674547d46dad6909fdcdafe5a691c131b048a8d226ccd7d0a4e96f2b208d772a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jre_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 18 Aug 2026 00:08:28 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 18 Aug 2026 00:08:28 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 18 Aug 2026 00:08:28 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 18 Aug 2026 02:12:05 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 18 Aug 2026 02:12:05 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 02:12:05 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 18 Aug 2026 02:12:05 GMT
WORKDIR /usr/local/tomcat
# Tue, 18 Aug 2026 02:12:05 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 02:12:05 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 02:12:05 GMT
ENV TOMCAT_MAJOR=11
# Tue, 18 Aug 2026 02:12:05 GMT
ENV TOMCAT_VERSION=11.0.25
# Tue, 18 Aug 2026 02:12:05 GMT
ENV TOMCAT_SHA512=81339c046dff1b363a80a3bccf80cb391660a6828dd8ae042180ceb11c8b1614317143e60b311b9e791dab585bb046b777234667acce7dca2203a74b37bf20f2
# Tue, 18 Aug 2026 18:08:37 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 18 Aug 2026 18:08:41 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 18:08:42 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 18 Aug 2026 18:08:42 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 18 Aug 2026 18:08:42 GMT
ENTRYPOINT []
# Tue, 18 Aug 2026 18:08:42 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:3c9503cfff1c82d12820c3c752940964f6a091cb183b44e45fc5a003b8d47e87`  
		Last Modified: Mon, 10 Aug 2026 20:09:16 GMT  
		Size: 28.2 MB (28210903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:648f6e4164c063e6e0d2a22466272b8621c19472d69c3b723cc6010357f3d859`  
		Last Modified: Tue, 18 Aug 2026 00:08:52 GMT  
		Size: 16.1 MB (16103521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ab7139de17e41da3fec2da1aaca85a070936fd03509d043062e6e7351529993`  
		Last Modified: Tue, 18 Aug 2026 00:08:53 GMT  
		Size: 44.5 MB (44542158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dbbcd42df125b67d3ecc57fba6e16a257cd488303c537eabce64e5c5c9f6fb1`  
		Last Modified: Tue, 18 Aug 2026 00:08:51 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7a1c69a8f99ca504b9cf95084ed463785dfc97637993cec9bde550643875119`  
		Last Modified: Tue, 18 Aug 2026 00:08:51 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8174c2a41b70f90baf8fe2166df3e07830fe05b0951d5ab2cd1aa882f394854`  
		Last Modified: Tue, 18 Aug 2026 02:12:21 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:022e574f7ca938f0f658ae6a077a73029a4248e9033eefe1dbf8ef8ecab3abd9`  
		Last Modified: Tue, 18 Aug 2026 18:08:58 GMT  
		Size: 14.4 MB (14440053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2254a185ca1e16ddb02f7000bdc84aaab221a3aeb7f912369419db2efdc5521`  
		Last Modified: Tue, 18 Aug 2026 18:08:58 GMT  
		Size: 231.3 KB (231274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:jre17-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:f334226b126887e46d44b627ed6c5eea30c97afafd40c02144be081d54c55d6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3949025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ce9df2350ede508c6c2d62042d4aa2a198f09c292e01e4f67e78e09e30400f2`

```dockerfile
```

-	Layers:
	-	`sha256:d3b7ced2c315a219a0c17d4ff022e4761e636394402aa38f9a49de5b0e849205`  
		Last Modified: Tue, 18 Aug 2026 18:08:58 GMT  
		Size: 3.9 MB (3927477 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47add4574af2d685ccaea0ab5044e449ee2825dfd6c55e37433fdd37192bccd3`  
		Last Modified: Tue, 18 Aug 2026 18:08:58 GMT  
		Size: 21.5 KB (21548 bytes)  
		MIME: application/vnd.in-toto+json
