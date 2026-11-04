## `tomcat:10-jre17-temurin-jammy`

```console
$ docker pull tomcat@sha256:e56adc54195c40dc9c53abb850234d007df7dab5bbc7a4c415629fbc73dbb65f
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

### `tomcat:10-jre17-temurin-jammy` - linux; amd64

```console
$ docker pull tomcat@sha256:52e42e3e004618a249a4892d9b7b4069edd69689a64154a154f12f57c3a56b48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.2 MB (108153356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f59babb5e43b014ca2f1c9ee9d540dcd3b9eea7ab21c25eac346a15faab88fa`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 21:57:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 21:57:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 21:57:42 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 03 Nov 2026 21:57:42 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 21:57:42 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Tue, 03 Nov 2026 21:57:45 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9f41bf88c7900c7097444a1bdeb84146ae692bc08842490ab098063c74bf9a8a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        arm64)          ESUM='1114f09d6174f54270c3117410b5e4022b43ebc0b43b751af08b927c55ed7bb5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        armhf)          ESUM='a1f61c0a9a76af31e6954f93ba329650ce16e556d0508227a50c6203ff012357';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_arm_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64el)          ESUM='7836a98346529939fc1149a59c7159d0ea721c2028fbfade620d60e58293d65f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='c2f8f6c55b09a5bb9c26fbdc85cad41e10860a396da447e2ce7a182480e74945';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 03 Nov 2026 21:57:45 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 03 Nov 2026 21:57:45 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 03 Nov 2026 21:57:45 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 03 Nov 2026 23:04:19 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 03 Nov 2026 23:04:19 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 23:04:19 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 03 Nov 2026 23:04:19 GMT
WORKDIR /usr/local/tomcat
# Tue, 03 Nov 2026 23:04:19 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 03 Nov 2026 23:04:19 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 03 Nov 2026 23:04:19 GMT
ENV TOMCAT_MAJOR=10
# Tue, 03 Nov 2026 23:04:19 GMT
ENV TOMCAT_VERSION=10.1.61
# Tue, 03 Nov 2026 23:04:19 GMT
ENV TOMCAT_SHA512=35120a2b1182bac3d55438fbec0dc581d03b0f1c16ce692a930f3bb6a1097cf896b94b389152257071a87cb2928ac8c15f1bad08387c14acc7c17dbc1bb598fb
# Tue, 03 Nov 2026 23:04:19 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 03 Nov 2026 23:04:26 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 23:04:27 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 03 Nov 2026 23:04:27 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 03 Nov 2026 23:04:27 GMT
ENTRYPOINT []
# Tue, 03 Nov 2026 23:04:27 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8a9b45adb05e917b80ab5abd5c187026187bc006b7c6c5b783f5fcdde83d413`  
		Last Modified: Tue, 03 Nov 2026 21:57:57 GMT  
		Size: 16.1 MB (16115606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1410acbf831134b8ca9cf23b943107f1112778cc5351a3cac675334c22ef8c8`  
		Last Modified: Tue, 03 Nov 2026 21:57:58 GMT  
		Size: 47.6 MB (47620329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:499aa3ede4f6a87e30986e3c47249cbba26653b2a877dac6f2ea03efb26d17aa`  
		Last Modified: Tue, 03 Nov 2026 21:57:57 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00ddeaac5320f3c95ef9b6493e7f76656f34392570fac1f1eca2e7505e686c53`  
		Last Modified: Tue, 03 Nov 2026 21:57:57 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3293d693192f16e0556a5d03ceab2937006fcc133c33d9eaa033b5a4509ddfd7`  
		Last Modified: Tue, 03 Nov 2026 23:04:35 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d37348bf54dc0a26c2250a1c41ca732afa531285fa3c84a17740d7350721fcea`  
		Last Modified: Tue, 03 Nov 2026 23:04:36 GMT  
		Size: 14.4 MB (14431727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24e62a6a334200c1d04da3bea37e0be6df9fa1bd426bdb0df2330f4da6a972a3`  
		Last Modified: Tue, 03 Nov 2026 23:04:35 GMT  
		Size: 230.4 KB (230381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:10-jre17-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:0dbaa1487450b8f93db1e4dc4348b80fd93e73eafde05ef87f8abd43cfd386ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3946226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcbbb4781a8d13205c424ba2272f9a4cc694d6b0cd8917dcfdc0873ebda1ef5e`

```dockerfile
```

-	Layers:
	-	`sha256:cf714b677df41f0ca34ad90ad08b8a3e08d9cec2a42311b2b15864ae3d5c2e4e`  
		Last Modified: Tue, 03 Nov 2026 23:04:35 GMT  
		Size: 3.9 MB (3925006 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75bdd32a34d4810ef10b831c4e43755ca7fbcd216de9b7d3cdb5bbcc9277ef57`  
		Last Modified: Tue, 03 Nov 2026 23:04:35 GMT  
		Size: 21.2 KB (21220 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:10-jre17-temurin-jammy` - linux; arm variant v7

```console
$ docker pull tomcat@sha256:d97a25bbf36d6014c5aa22608682634e046a8b43b960f128da6085ec8c555ef8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.5 MB (102507711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:624fe464a443607d33650fa3660fd2eebffef8b06d7a711bcdf9b8bb85408cbb`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Sun, 25 Oct 2026 20:11:10 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:11:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:11:10 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:11:14 GMT
ADD file:d5aead1ec8013ad6e577d2e1fc302b0d1e483da56b7a5a810a7ffb6694213525 in / 
# Sun, 25 Oct 2026 20:11:14 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 21:58:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 21:58:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 21:58:03 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 03 Nov 2026 21:58:03 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 21:58:03 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Tue, 03 Nov 2026 21:58:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9f41bf88c7900c7097444a1bdeb84146ae692bc08842490ab098063c74bf9a8a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        arm64)          ESUM='1114f09d6174f54270c3117410b5e4022b43ebc0b43b751af08b927c55ed7bb5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        armhf)          ESUM='a1f61c0a9a76af31e6954f93ba329650ce16e556d0508227a50c6203ff012357';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_arm_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64el)          ESUM='7836a98346529939fc1149a59c7159d0ea721c2028fbfade620d60e58293d65f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='c2f8f6c55b09a5bb9c26fbdc85cad41e10860a396da447e2ce7a182480e74945';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 03 Nov 2026 21:58:07 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 03 Nov 2026 21:58:07 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 03 Nov 2026 21:58:07 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 03 Nov 2026 22:56:50 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 03 Nov 2026 22:56:50 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 22:56:50 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 03 Nov 2026 22:56:50 GMT
WORKDIR /usr/local/tomcat
# Tue, 03 Nov 2026 22:56:50 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 03 Nov 2026 22:56:50 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 03 Nov 2026 22:56:50 GMT
ENV TOMCAT_MAJOR=10
# Tue, 03 Nov 2026 22:56:50 GMT
ENV TOMCAT_VERSION=10.1.61
# Tue, 03 Nov 2026 22:56:50 GMT
ENV TOMCAT_SHA512=35120a2b1182bac3d55438fbec0dc581d03b0f1c16ce692a930f3bb6a1097cf896b94b389152257071a87cb2928ac8c15f1bad08387c14acc7c17dbc1bb598fb
# Tue, 03 Nov 2026 22:56:50 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 03 Nov 2026 22:56:56 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 03 Nov 2026 22:56:57 GMT
ENTRYPOINT []
# Tue, 03 Nov 2026 22:56:57 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:d196a6cf79788071c4ad2a7753c754da85fe91c1c5cc6df9c5b8651a5582d129`  
		Last Modified: Sun, 25 Oct 2026 20:45:34 GMT  
		Size: 26.9 MB (26856546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6f2ba87e9732742e45d5a3390ccfef90ab48f828fd792bb465408b03f53312f`  
		Last Modified: Tue, 03 Nov 2026 21:58:19 GMT  
		Size: 15.9 MB (15851431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85167ba8fa3f5bdbc00138d1ff064273bff499b68e890b14ff4a13a962296054`  
		Last Modified: Tue, 03 Nov 2026 21:58:20 GMT  
		Size: 45.2 MB (45188613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f467e829bd05ce920826dfa743783ecd81a2bd7529026b1228dbf55b1dae3e8e`  
		Last Modified: Tue, 03 Nov 2026 21:58:18 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13b3a1871376c7f687a6d8872cfea49276ae9753800652869e9163991c289593`  
		Last Modified: Tue, 03 Nov 2026 21:58:18 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaf47ccb43b22c951473020884a520d33c4f925d2044bc1e79a93c8d23fc4a65`  
		Last Modified: Tue, 03 Nov 2026 22:57:06 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44fa201dbdd35e84eeb7bfd0ee7b621a95ccf94b0a2e3f4a0807374b498a232f`  
		Last Modified: Tue, 03 Nov 2026 22:57:06 GMT  
		Size: 14.4 MB (14405305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e4dede8b31771fecee5f4b38df4325512f98808d67e12ac861fdabbb8b86e69`  
		Last Modified: Tue, 03 Nov 2026 22:57:05 GMT  
		Size: 203.0 KB (202990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:10-jre17-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:c4b9adb1914d19b3fdeb73fb3f07fae188e66d39459f107ae5e3e6673d4ecc06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3948682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f20c07961e4dbca85c90c1a6059cdd5469705b1424545bec720dabbfc6f1275`

```dockerfile
```

-	Layers:
	-	`sha256:31cd0a4557353c6f4cc2defc2704cb8106ea19fec0b189aaf31cc71f5b38670a`  
		Last Modified: Tue, 03 Nov 2026 22:57:05 GMT  
		Size: 3.9 MB (3927341 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d8d734a399bd25113dae94e38a50eb88be1cd0ec557a8712a8cfacd095c364f5`  
		Last Modified: Tue, 03 Nov 2026 22:57:05 GMT  
		Size: 21.3 KB (21341 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:10-jre17-temurin-jammy` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:3a86071b464a1e3f84f57b297aa242eb7b1a1575fbe101f998287f2d425969e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.5 MB (105526185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:864cf06cc6f02d398acd74beb7904ede1a427437de0d55e41096ff7220e23a84`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 21:57:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 21:57:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 21:57:49 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 03 Nov 2026 21:57:49 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 21:57:49 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Tue, 03 Nov 2026 21:57:52 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9f41bf88c7900c7097444a1bdeb84146ae692bc08842490ab098063c74bf9a8a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        arm64)          ESUM='1114f09d6174f54270c3117410b5e4022b43ebc0b43b751af08b927c55ed7bb5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        armhf)          ESUM='a1f61c0a9a76af31e6954f93ba329650ce16e556d0508227a50c6203ff012357';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_arm_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64el)          ESUM='7836a98346529939fc1149a59c7159d0ea721c2028fbfade620d60e58293d65f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='c2f8f6c55b09a5bb9c26fbdc85cad41e10860a396da447e2ce7a182480e74945';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 03 Nov 2026 21:57:52 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 03 Nov 2026 21:57:52 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 03 Nov 2026 21:57:52 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 03 Nov 2026 22:57:39 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 03 Nov 2026 22:57:39 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 22:57:39 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 03 Nov 2026 22:57:39 GMT
WORKDIR /usr/local/tomcat
# Tue, 03 Nov 2026 22:57:39 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 03 Nov 2026 22:57:39 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 03 Nov 2026 22:57:39 GMT
ENV TOMCAT_MAJOR=10
# Tue, 03 Nov 2026 22:57:39 GMT
ENV TOMCAT_VERSION=10.1.61
# Tue, 03 Nov 2026 22:57:39 GMT
ENV TOMCAT_SHA512=35120a2b1182bac3d55438fbec0dc581d03b0f1c16ce692a930f3bb6a1097cf896b94b389152257071a87cb2928ac8c15f1bad08387c14acc7c17dbc1bb598fb
# Tue, 03 Nov 2026 22:57:39 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 03 Nov 2026 22:57:48 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 22:57:48 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 03 Nov 2026 22:57:48 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 03 Nov 2026 22:57:48 GMT
ENTRYPOINT []
# Tue, 03 Nov 2026 22:57:48 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c23fd8ae0a293782a6f73a2c3e32a7d3df1ed3c3621ec961d1254042a3ae49b6`  
		Last Modified: Tue, 03 Nov 2026 21:58:05 GMT  
		Size: 16.1 MB (16050279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd555a4170c11e5074812aa1bf56c6a65ec00e55fc9bb5d2f4d612127adc8ea1`  
		Last Modified: Tue, 03 Nov 2026 21:58:06 GMT  
		Size: 47.1 MB (47128011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd899a612509c7c00a9efffd884df5456dc7577909bb91e4e14fb98ad1d1f652`  
		Last Modified: Tue, 03 Nov 2026 21:58:04 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15ea2f5f29bc9d2b5a75d40335334437cbf42ca96222b6df809540832bc6a2f1`  
		Last Modified: Tue, 03 Nov 2026 21:58:06 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1ce74065cd78f952c60ed9b0d65ec5cfddc0882138500dbb2633fa61f0aabdb`  
		Last Modified: Tue, 03 Nov 2026 22:57:57 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db88057bcb36b154ec7c08da2fc793e583682f9ff9df07244109923b295272e3`  
		Last Modified: Tue, 03 Nov 2026 22:57:57 GMT  
		Size: 14.4 MB (14431216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7f2cdfceeee2248ff9714dcf141c8c611a4d2e9887f11bbd755a4e7a797ac03`  
		Last Modified: Tue, 03 Nov 2026 22:57:57 GMT  
		Size: 229.2 KB (229246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:10-jre17-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:bd7c26d6ebda80b64ff7f5bc6d609994655ea08f10c30a0fb22257511dea69f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3946044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7958c3b055c03067bfcd369f1ec8333a39a2016d103cd5536d11c8f09440e63c`

```dockerfile
```

-	Layers:
	-	`sha256:15be278930b931da7efa14408b77d78e09ccde11b1efbf9d15c347380a710653`  
		Last Modified: Tue, 03 Nov 2026 22:57:57 GMT  
		Size: 3.9 MB (3924675 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd780fbbb7401746a64add3fd804a0a6d1817ed70338dc57aa18469e1761bd25`  
		Last Modified: Tue, 03 Nov 2026 22:57:56 GMT  
		Size: 21.4 KB (21369 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:10-jre17-temurin-jammy` - linux; ppc64le

```console
$ docker pull tomcat@sha256:9888a2612f760849d6a4f2a6e4fcc573153bb3b689535cb656d3001620d3b7ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.0 MB (113975591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee2583dc7fa59643801c21a2d3fd6d0ef09189e0b0d2acb2bc02c061d82509f4`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Sun, 25 Oct 2026 20:11:53 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:11:53 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:11:53 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:11:58 GMT
ADD file:7feec6d52a7b8ecb88e64539851a17e874a49369018261edc3896e7f84f3b268 in / 
# Sun, 25 Oct 2026 20:11:58 GMT
CMD ["/bin/bash"]
# Thu, 29 Oct 2026 19:08:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:08:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:08:48 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 19:08:48 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 29 Oct 2026 19:08:48 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Tue, 03 Nov 2026 22:08:13 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9f41bf88c7900c7097444a1bdeb84146ae692bc08842490ab098063c74bf9a8a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        arm64)          ESUM='1114f09d6174f54270c3117410b5e4022b43ebc0b43b751af08b927c55ed7bb5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        armhf)          ESUM='a1f61c0a9a76af31e6954f93ba329650ce16e556d0508227a50c6203ff012357';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_arm_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64el)          ESUM='7836a98346529939fc1149a59c7159d0ea721c2028fbfade620d60e58293d65f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='c2f8f6c55b09a5bb9c26fbdc85cad41e10860a396da447e2ce7a182480e74945';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 03 Nov 2026 22:08:14 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 03 Nov 2026 22:08:15 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 03 Nov 2026 22:08:15 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 03 Nov 2026 23:47:39 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 03 Nov 2026 23:47:39 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 23:47:39 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 03 Nov 2026 23:47:39 GMT
WORKDIR /usr/local/tomcat
# Tue, 03 Nov 2026 23:47:39 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 03 Nov 2026 23:47:39 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 03 Nov 2026 23:47:39 GMT
ENV TOMCAT_MAJOR=10
# Tue, 03 Nov 2026 23:47:39 GMT
ENV TOMCAT_VERSION=10.1.61
# Tue, 03 Nov 2026 23:47:39 GMT
ENV TOMCAT_SHA512=35120a2b1182bac3d55438fbec0dc581d03b0f1c16ce692a930f3bb6a1097cf896b94b389152257071a87cb2928ac8c15f1bad08387c14acc7c17dbc1bb598fb
# Tue, 03 Nov 2026 23:48:31 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 03 Nov 2026 23:48:42 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 23:48:46 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 03 Nov 2026 23:48:46 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 03 Nov 2026 23:48:46 GMT
ENTRYPOINT []
# Tue, 03 Nov 2026 23:48:46 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:8f018a5a2acab966ca4e7a98422ebd9c5113430dc173e16eddd8ea016705c52b`  
		Last Modified: Sun, 25 Oct 2026 20:45:41 GMT  
		Size: 34.7 MB (34703933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5050be213f10672786ce71272f0788313b35fa51cfe35ebc963bc8bd545e6f0`  
		Last Modified: Thu, 29 Oct 2026 19:09:25 GMT  
		Size: 17.6 MB (17589152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c1ed85246f1300401712f6477b315742b3f2d3c06dd5fcb1d193c5142afd868`  
		Last Modified: Tue, 03 Nov 2026 22:09:02 GMT  
		Size: 47.0 MB (46977739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d6a12b2b27b30fa352f322cd895c8719c68615d8220d3598b130ecba8973cb1`  
		Last Modified: Tue, 03 Nov 2026 22:09:01 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58d78e8a09fc69f01de5851fa1a9b997c8008a022bf4a1addaf78f4e84d2a2de`  
		Last Modified: Tue, 03 Nov 2026 22:09:01 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c479b85f00cbdcf734e7f876586b60665d9c06b5b80107c4747219d3ae2945a`  
		Last Modified: Tue, 03 Nov 2026 23:48:06 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70ab6426376623af44a1c5ad4e3b44306359d740f1d7fb3e768d764c7673a04d`  
		Last Modified: Tue, 03 Nov 2026 23:49:09 GMT  
		Size: 14.4 MB (14442108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a85a65a67a22b334de444cbd7fa6a04fff67ee9278583ee5825fb46651811359`  
		Last Modified: Tue, 03 Nov 2026 23:49:08 GMT  
		Size: 259.8 KB (259833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:10-jre17-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:2fb02c20354fa461403463e9424a71c3ff237c6e34f9dd957419c45383ac23cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3949121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dc349280f3fcf57864d9333d4490d20e9695f1a3dfe186a58d2752dfa8f428e`

```dockerfile
```

-	Layers:
	-	`sha256:c261b3fd332a8d46ba659013442f1cd2dc828a7c8a8c35737937f33a15cc2133`  
		Last Modified: Tue, 03 Nov 2026 23:49:08 GMT  
		Size: 3.9 MB (3927848 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d5ea859040256c453fad0b0824ae6ec2e56c237da059441038483bcb4fd289f`  
		Last Modified: Tue, 03 Nov 2026 23:49:08 GMT  
		Size: 21.3 KB (21273 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:10-jre17-temurin-jammy` - linux; s390x

```console
$ docker pull tomcat@sha256:2be84ca46354c0adafedc9f7520f8c78274b25f135746677bc1d69482ce4c948
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.2 MB (103231596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:070e2cf996ef96c012bc89881308023b46721b05fc33db4b968bd12aa2e89ae9`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:37 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:37 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:37 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:38 GMT
ADD file:d70985f343b928adff62278c4163ebbf647660762ba70888621a1d5074b65885 in / 
# Sun, 25 Oct 2026 20:10:39 GMT
CMD ["/bin/bash"]
# Thu, 29 Oct 2026 19:01:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:01:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:01:28 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 19:01:28 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 29 Oct 2026 19:01:28 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Tue, 03 Nov 2026 21:55:29 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9f41bf88c7900c7097444a1bdeb84146ae692bc08842490ab098063c74bf9a8a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        arm64)          ESUM='1114f09d6174f54270c3117410b5e4022b43ebc0b43b751af08b927c55ed7bb5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        armhf)          ESUM='a1f61c0a9a76af31e6954f93ba329650ce16e556d0508227a50c6203ff012357';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_arm_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64el)          ESUM='7836a98346529939fc1149a59c7159d0ea721c2028fbfade620d60e58293d65f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='c2f8f6c55b09a5bb9c26fbdc85cad41e10860a396da447e2ce7a182480e74945';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 03 Nov 2026 21:55:29 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 03 Nov 2026 21:55:29 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 03 Nov 2026 21:55:29 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 03 Nov 2026 22:58:28 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 03 Nov 2026 22:58:28 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 22:58:28 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 03 Nov 2026 22:58:31 GMT
WORKDIR /usr/local/tomcat
# Tue, 03 Nov 2026 22:58:31 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 03 Nov 2026 22:58:31 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 03 Nov 2026 22:58:31 GMT
ENV TOMCAT_MAJOR=10
# Tue, 03 Nov 2026 22:58:31 GMT
ENV TOMCAT_VERSION=10.1.61
# Tue, 03 Nov 2026 22:58:31 GMT
ENV TOMCAT_SHA512=35120a2b1182bac3d55438fbec0dc581d03b0f1c16ce692a930f3bb6a1097cf896b94b389152257071a87cb2928ac8c15f1bad08387c14acc7c17dbc1bb598fb
# Tue, 03 Nov 2026 22:59:59 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 03 Nov 2026 23:00:08 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 23:00:13 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 03 Nov 2026 23:00:13 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 03 Nov 2026 23:00:13 GMT
ENTRYPOINT []
# Tue, 03 Nov 2026 23:00:13 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:6d5278bf453b336290a4ae5a6635916b6c428017410108ed8e9b4394a20bec9f`  
		Last Modified: Sun, 25 Oct 2026 20:45:54 GMT  
		Size: 28.2 MB (28222806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21b6cfa2d353961272ec29ddc67ca42663623575177b4840bfde5bd5ebd4d135`  
		Last Modified: Thu, 29 Oct 2026 19:01:57 GMT  
		Size: 16.1 MB (16114138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e78f73110fecf532b144121dda621da413d9eb279b7ad5662de18dcf1a5c3bae`  
		Last Modified: Tue, 03 Nov 2026 21:55:51 GMT  
		Size: 44.2 MB (44228162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:354caa0c2801259933b60013ce5d5ec06de3d4c6093ecbec8474ee9a22217f39`  
		Last Modified: Tue, 03 Nov 2026 21:55:50 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfcf83474c58975c3429ae31f135a9ae2df1f5d118441bd086afaa5c45ecf88c`  
		Last Modified: Tue, 03 Nov 2026 21:55:50 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5a7c88e431dd9277d3d45688590a3b0e82bf3a2f5aea2d7055d8005c86462fd`  
		Last Modified: Tue, 03 Nov 2026 22:59:42 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47cf7705c571ccbad8f3e2ce4de6c27da1b40bc0c27780cd58f0679f1bd9d83e`  
		Last Modified: Tue, 03 Nov 2026 23:01:01 GMT  
		Size: 14.4 MB (14432149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:068cce76d3fa5b61b9f9a217c671a67d395c5b42de3134a261db2cb58aae3cbc`  
		Last Modified: Tue, 03 Nov 2026 23:00:59 GMT  
		Size: 231.5 KB (231514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:10-jre17-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:e2a5462e2226a3f422913ecff9d922b22e294545720f79f812fb5f25957e7269
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3946572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd0408ec6a92ba633aace36e7524187cc1e9128c92b418e50c2e7a972fd53056`

```dockerfile
```

-	Layers:
	-	`sha256:18fb07cbb46843f1be1d1384243055b1e5cc59de8c676de7ed935278c52a0bd9`  
		Last Modified: Tue, 03 Nov 2026 23:00:57 GMT  
		Size: 3.9 MB (3925351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01900e42c080e7455b85b96c955d9cf5ae605160b2b3e5b526ad5c22ed8c6f25`  
		Last Modified: Tue, 03 Nov 2026 23:00:55 GMT  
		Size: 21.2 KB (21221 bytes)  
		MIME: application/vnd.in-toto+json
