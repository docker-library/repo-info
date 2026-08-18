## `tomcat:9-jre8-temurin-jammy`

```console
$ docker pull tomcat@sha256:a271d575d2c8905923e92ac05500e8c814afbb1ecf8207b4c2ea851569c5b449
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `tomcat:9-jre8-temurin-jammy` - linux; amd64

```console
$ docker pull tomcat@sha256:93d5db215d70fdbbeea16f5f300850463b08f9df7bc57d76281674f15a5fc4a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.3 MB (102326784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fcfff779666232daecb0bdbf85a4fd2720c4a3f416c1ee9059e8ad9dd7035f5`
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
ENV JAVA_VERSION=jdk8u492-b09
# Tue, 18 Aug 2026 01:14:35 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8eef3d4a837bb7a9e45d30a7579d84d5b76a4321f4376573311e6bf89e48f9b0';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_x64_linux_hotspot_8u492b09.tar.gz';          ;;        arm64)          ESUM='d5e50cb002600007dbdfac523605d26196607fa5212db0942ef05cdce9fe2892';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        armhf)          ESUM='5f0693c6c8ca0eb8df969bb1053b1926b1e7c57a3f90c6f9e8d493395e76a329';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_arm_linux_hotspot_8u492b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='4f724a0fce1117521a3a3e55ebb0281d56f6c9a066092bc3186ee40d8cd955a2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Tue, 18 Aug 2026 01:14:35 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 18 Aug 2026 01:14:35 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:14:35 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 18 Aug 2026 18:09:58 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 18 Aug 2026 18:09:58 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 18:09:58 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 18 Aug 2026 18:09:59 GMT
WORKDIR /usr/local/tomcat
# Tue, 18 Aug 2026 18:09:59 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 18:09:59 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 18:09:59 GMT
ENV TOMCAT_MAJOR=9
# Tue, 18 Aug 2026 18:09:59 GMT
ENV TOMCAT_VERSION=9.0.121
# Tue, 18 Aug 2026 18:09:59 GMT
ENV TOMCAT_SHA512=16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11
# Tue, 18 Aug 2026 18:09:59 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 18 Aug 2026 18:10:04 GMT
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
	-	`sha256:4a56ef8c607e284ea5731fc9119b621d33c2d28a648e15b2f36c13beab2161fa`  
		Last Modified: Tue, 18 Aug 2026 01:14:47 GMT  
		Size: 42.3 MB (42337308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bf051d3ca0d8bf025428daf870091afd39cc3223b1860959ffaa04ec8840f48`  
		Last Modified: Tue, 18 Aug 2026 01:14:46 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46b69d535435ac8a9a51cf308ab5609d315e7cebbd8655263fd39827cd53c96b`  
		Last Modified: Tue, 18 Aug 2026 01:14:46 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c897dc7a0bc533e7aae42a468ee16a96b0da26b9de48369ed8f70cb3c04c5a3`  
		Last Modified: Tue, 18 Aug 2026 18:10:13 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:015a8e28c3dbfe595b614b04c0866aeb71cd20a37554d7a0fc5e91d6d88125b0`  
		Last Modified: Tue, 18 Aug 2026 18:10:13 GMT  
		Size: 13.9 MB (13911052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b302d00947e744d527e0fbe7c36990d8baff107431b2f7cc145b53baa13bcc7`  
		Last Modified: Tue, 18 Aug 2026 18:10:13 GMT  
		Size: 230.0 KB (230029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre8-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:1b8572dd7b10a8bcb68a1716e8eb522b00d86a4fcba131c8939b5d9323030292
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3972944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0565b9e3cbb03ec7af91e6227e6600896d298f11e397e5397216d7c8d9e1b4a`

```dockerfile
```

-	Layers:
	-	`sha256:133251e23fd01b1772556d5828a84a1a5d8fe31f726c1165f4efbe2840084829`  
		Last Modified: Tue, 18 Aug 2026 18:10:13 GMT  
		Size: 4.0 MB (3951749 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:63023c2f05fd3e6ea8b22b0de46125c4d3e32f37b12fd8cd882639140c110cbe`  
		Last Modified: Tue, 18 Aug 2026 18:10:13 GMT  
		Size: 21.2 KB (21195 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jre8-temurin-jammy` - linux; arm variant v7

```console
$ docker pull tomcat@sha256:72c15e7a15c289cbf8d2aac3aeafb9de1c32e842877bfa8b6af56927e8e7822d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.5 MB (96514916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80b31b2b43f285818fca53a5b28da197cd522818d859865f757dc23d3b60d7a0`
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
# Tue, 18 Aug 2026 01:10:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 01:10:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 01:10:50 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 01:10:50 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:10:50 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Tue, 18 Aug 2026 01:11:00 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8eef3d4a837bb7a9e45d30a7579d84d5b76a4321f4376573311e6bf89e48f9b0';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_x64_linux_hotspot_8u492b09.tar.gz';          ;;        arm64)          ESUM='d5e50cb002600007dbdfac523605d26196607fa5212db0942ef05cdce9fe2892';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        armhf)          ESUM='5f0693c6c8ca0eb8df969bb1053b1926b1e7c57a3f90c6f9e8d493395e76a329';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_arm_linux_hotspot_8u492b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='4f724a0fce1117521a3a3e55ebb0281d56f6c9a066092bc3186ee40d8cd955a2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Tue, 18 Aug 2026 01:11:01 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 18 Aug 2026 01:11:01 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:11:01 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 18 Aug 2026 18:10:11 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 18 Aug 2026 18:10:11 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 18:10:11 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 18 Aug 2026 18:10:11 GMT
WORKDIR /usr/local/tomcat
# Tue, 18 Aug 2026 18:10:11 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 18:10:11 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 18:10:11 GMT
ENV TOMCAT_MAJOR=9
# Tue, 18 Aug 2026 18:10:11 GMT
ENV TOMCAT_VERSION=9.0.121
# Tue, 18 Aug 2026 18:10:11 GMT
ENV TOMCAT_SHA512=16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11
# Tue, 18 Aug 2026 18:10:11 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 18 Aug 2026 18:10:16 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 18:10:17 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 18 Aug 2026 18:10:17 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 18 Aug 2026 18:10:17 GMT
ENTRYPOINT []
# Tue, 18 Aug 2026 18:10:17 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:deafe6b5876d5dead55957182e61b6fb35f90aab5d6265e0945beaff36062d3a`  
		Last Modified: Mon, 10 Aug 2026 20:08:55 GMT  
		Size: 26.8 MB (26848898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a08011687e807e375a185525ee35f4b7c86cb9476302e4efa66f8f39bef28279`  
		Last Modified: Tue, 18 Aug 2026 01:11:12 GMT  
		Size: 15.8 MB (15839576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65ca3680485a984970b3b39443b94f1fef5dd638ebac2256406769e3902ac6e7`  
		Last Modified: Tue, 18 Aug 2026 01:11:13 GMT  
		Size: 39.8 MB (39778929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d73937b5cd41c8b82aea3347146571b3e76d8bc9890d0e3113ce47986401b092`  
		Last Modified: Tue, 18 Aug 2026 01:11:11 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f14475a6ee0334ca0731ef4ee611ba146203f476b01f7f38d1c6abb568df8d3`  
		Last Modified: Tue, 18 Aug 2026 01:11:12 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbdf63340599bc3614d5d4f2449d870b29ca91601387a53072cae1fbc2fc5666`  
		Last Modified: Tue, 18 Aug 2026 18:10:25 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33943588be7bdb19b8bf4cd5171bea762071bdcf40edaea679eac7d6e082d0ec`  
		Last Modified: Tue, 18 Aug 2026 18:10:26 GMT  
		Size: 13.8 MB (13841873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84d8171ef4e141ba3dda20e842a4cd778ea133b50a040ec39e015505bc317e09`  
		Last Modified: Tue, 18 Aug 2026 18:10:26 GMT  
		Size: 202.8 KB (202845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre8-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:8326efcf0ee04ddd7c475590a30e537ff491a77877a0193a01012d839320ccca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3979079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d059b38aeafaab28eebb59f491879287f6466f577414a32480222ccc55c9de2`

```dockerfile
```

-	Layers:
	-	`sha256:9fbf0015ed25bbf968c8b417d02fa940a382e69192e3330b6519a2321438bcff`  
		Last Modified: Tue, 18 Aug 2026 18:10:26 GMT  
		Size: 4.0 MB (3957767 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fe7907c52f3bea95bb82c5f9de0468db772fab50ecf8aa5e81deaf5f4da82351`  
		Last Modified: Tue, 18 Aug 2026 18:10:25 GMT  
		Size: 21.3 KB (21312 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jre8-temurin-jammy` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:27f00e88e1935fc13bb93b935b44c28452e56e88af5a9e13bd7a9c9c588490dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.1 MB (99116216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8caab579ab69abb20a6ccf6fbf747ba15ac188177781c5fcd9c051f177ecf380`
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
ENV JAVA_VERSION=jdk8u492-b09
# Tue, 18 Aug 2026 01:14:25 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8eef3d4a837bb7a9e45d30a7579d84d5b76a4321f4376573311e6bf89e48f9b0';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_x64_linux_hotspot_8u492b09.tar.gz';          ;;        arm64)          ESUM='d5e50cb002600007dbdfac523605d26196607fa5212db0942ef05cdce9fe2892';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        armhf)          ESUM='5f0693c6c8ca0eb8df969bb1053b1926b1e7c57a3f90c6f9e8d493395e76a329';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_arm_linux_hotspot_8u492b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='4f724a0fce1117521a3a3e55ebb0281d56f6c9a066092bc3186ee40d8cd955a2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Tue, 18 Aug 2026 01:14:25 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 18 Aug 2026 01:14:25 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:14:25 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 18 Aug 2026 18:10:24 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 18 Aug 2026 18:10:24 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 18:10:24 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 18 Aug 2026 18:10:24 GMT
WORKDIR /usr/local/tomcat
# Tue, 18 Aug 2026 18:10:24 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 18:10:24 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 18:10:24 GMT
ENV TOMCAT_MAJOR=9
# Tue, 18 Aug 2026 18:10:24 GMT
ENV TOMCAT_VERSION=9.0.121
# Tue, 18 Aug 2026 18:10:24 GMT
ENV TOMCAT_SHA512=16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11
# Tue, 18 Aug 2026 18:10:24 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 18 Aug 2026 18:10:30 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 18:10:30 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 18 Aug 2026 18:10:30 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 18 Aug 2026 18:10:30 GMT
ENTRYPOINT []
# Tue, 18 Aug 2026 18:10:30 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba343b11b9294e9682b0bbca7b8c45906dbe4f61562272052d28cb6a937fde02`  
		Last Modified: Tue, 18 Aug 2026 01:14:37 GMT  
		Size: 16.0 MB (16039403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81b4d4fb45ab4fd9801df2b147fab46b8586f92f37017b7d7c9db96fc5cf5123`  
		Last Modified: Tue, 18 Aug 2026 01:14:38 GMT  
		Size: 41.3 MB (41307623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d54d3034757a3887c509baea61088fbf293b982099eb57b622161aedebb243c6`  
		Last Modified: Tue, 18 Aug 2026 01:14:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75b81cc4ae1e986688b91f95242969dbee6c96fa97276fe3f7ede872608aa62c`  
		Last Modified: Tue, 18 Aug 2026 01:14:37 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:814b9adb7c694f1815e7557cd2ff76d7002db3d0fefbaea79f98e757b3794c44`  
		Last Modified: Tue, 18 Aug 2026 18:10:39 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d8621b6a7cb29de95ef5a351118f77e7b8a535b58676906d53f4d7d690ad8ab`  
		Last Modified: Tue, 18 Aug 2026 18:10:40 GMT  
		Size: 13.9 MB (13917002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:588abdaef505649f022127f5ab861b4b136ff9867d3a885efb765bdc58bbc35b`  
		Last Modified: Tue, 18 Aug 2026 18:10:39 GMT  
		Size: 228.9 KB (228941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre8-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:24c0a5ee57bdd5842a7687ac1ab24a341eea5f1992378458ed1da41675bd3ab3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3973453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ef7528676c7d63fe088a4d5e948ebe5691e757524ccfceb7ff846e8104949f5`

```dockerfile
```

-	Layers:
	-	`sha256:4efa1ac607db2e2f15986d2b19f051af5f1faace7586af90c3354b9004b95c71`  
		Last Modified: Tue, 18 Aug 2026 18:10:39 GMT  
		Size: 4.0 MB (3952110 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:23727f6e763292417461e32e99701a4d7505a96abb1ec8071397f15ed6fdf059`  
		Last Modified: Tue, 18 Aug 2026 18:10:39 GMT  
		Size: 21.3 KB (21343 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jre8-temurin-jammy` - linux; ppc64le

```console
$ docker pull tomcat@sha256:69b38445a7ceffed20ced18743f5680ba3d6cbbb49f3583dfae4ddaf7a47322a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.1 MB (108136448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:544ebdcf62b14273424a80416efff54bb764ebebad348963fb3a76f495788a3f`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 31 Jul 2026 21:52:30 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:52:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:52:30 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:52:33 GMT
ADD file:f48db2a791f6b574e2518d202e6b75268dc7b57826c0aa7a238e41ef3f2dbaeb in / 
# Fri, 31 Jul 2026 21:52:34 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:14:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 01:14:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:14:48 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:14:48 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:14:48 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Tue, 04 Aug 2026 01:15:58 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8eef3d4a837bb7a9e45d30a7579d84d5b76a4321f4376573311e6bf89e48f9b0';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_x64_linux_hotspot_8u492b09.tar.gz';          ;;        arm64)          ESUM='d5e50cb002600007dbdfac523605d26196607fa5212db0942ef05cdce9fe2892';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        armhf)          ESUM='5f0693c6c8ca0eb8df969bb1053b1926b1e7c57a3f90c6f9e8d493395e76a329';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_arm_linux_hotspot_8u492b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='4f724a0fce1117521a3a3e55ebb0281d56f6c9a066092bc3186ee40d8cd955a2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Tue, 04 Aug 2026 01:15:58 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 01:15:59 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:15:59 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 04 Aug 2026 06:36:43 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 04 Aug 2026 06:36:43 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 06:36:43 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 04 Aug 2026 06:36:43 GMT
WORKDIR /usr/local/tomcat
# Tue, 04 Aug 2026 06:36:43 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 04 Aug 2026 06:36:43 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 04 Aug 2026 06:36:43 GMT
ENV TOMCAT_MAJOR=9
# Tue, 04 Aug 2026 06:36:43 GMT
ENV TOMCAT_VERSION=9.0.120
# Tue, 04 Aug 2026 06:36:43 GMT
ENV TOMCAT_SHA512=07eb6d9639c3e69af81171a16ccff1c19b7fd5b2e87e3646851f0a3f42a4ce3c1bf128fbe40fc978a08935ba4f0400ef3b43ded3e470b9aaf23b97a9e1fa0858
# Tue, 04 Aug 2026 06:36:44 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 04 Aug 2026 06:36:52 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 06:36:54 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 04 Aug 2026 06:36:54 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 04 Aug 2026 06:36:54 GMT
ENTRYPOINT []
# Tue, 04 Aug 2026 06:36:54 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:f47d82beca9eaeb15de580e2a4f77f430e6d50327a147c5b9295c3c9879cbaeb`  
		Last Modified: Fri, 31 Jul 2026 22:54:10 GMT  
		Size: 34.6 MB (34637666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33c5a6f18201c8b0833c4c17e45da59be12a88489dbdf1c5cf8c6baa008a72d2`  
		Last Modified: Tue, 04 Aug 2026 01:15:18 GMT  
		Size: 17.6 MB (17581531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc26ea1e4b91f472e61e63c9f628dc8b1053c40669956cd7afcffd9661e79bc4`  
		Last Modified: Tue, 04 Aug 2026 01:16:22 GMT  
		Size: 41.7 MB (41741378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22121ad624d486e2e823d311dbac32cd7a41e934bae71b1746331921d5cf5929`  
		Last Modified: Tue, 04 Aug 2026 01:16:20 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdfdac7f67ad573a30fdc1edb0c10e0d01f289f20583c455804f60196a3b8563`  
		Last Modified: Tue, 04 Aug 2026 01:16:21 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8942f008614d8b9b9ab9f8fb5173be22b6c7fc64e90abef525225187df1231d`  
		Last Modified: Tue, 04 Aug 2026 06:37:17 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fb36ecb1e7870a511400569ab4d6daad401ed01b12212026aed29ac4d789425`  
		Last Modified: Tue, 04 Aug 2026 06:37:18 GMT  
		Size: 13.9 MB (13913947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c4a9f38d03d9445af9f153f487f3c17683b1db40f7e33ae93db6d307bbf8064`  
		Last Modified: Tue, 04 Aug 2026 06:37:18 GMT  
		Size: 259.1 KB (259131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre8-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:739514260ee038e00383cb5fd1f7e04dfd673ed2933f2c846ed937dc77d236ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3977776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd0d382f8813e62e8aebd9ca45d13fb4968642c32876449c2ddc3066f882432e`

```dockerfile
```

-	Layers:
	-	`sha256:825b73f145999441d8c7c30ddf451b98b4025c3d38035c800d901d267f338695`  
		Last Modified: Tue, 04 Aug 2026 06:37:17 GMT  
		Size: 4.0 MB (3956529 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a6a60a93a8c8d3cafdea906e10b5f92c1d3e565af2b993f680b2ea136d4fcef`  
		Last Modified: Tue, 04 Aug 2026 06:37:17 GMT  
		Size: 21.2 KB (21247 bytes)  
		MIME: application/vnd.in-toto+json
