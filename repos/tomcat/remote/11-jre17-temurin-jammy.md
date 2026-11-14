## `tomcat:11-jre17-temurin-jammy`

```console
$ docker pull tomcat@sha256:c89092e5fbaf711e43b320e66779881f677b6975b0bd3fc1d215127d6f99a7e1
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

### `tomcat:11-jre17-temurin-jammy` - linux; amd64

```console
$ docker pull tomcat@sha256:69bf2c527fcbc86ee08d5238aba3af1985a7cef6d6e7c034d6810c62dbd9e4a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.8 MB (108788671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1db660fb5aba4794c47550be97b4b55550db3b27735f53b04bf9558ccbc97af`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:17:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:17:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:17:45 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:17:45 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:17:45 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Wed, 11 Nov 2026 23:17:48 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9f41bf88c7900c7097444a1bdeb84146ae692bc08842490ab098063c74bf9a8a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        arm64)          ESUM='1114f09d6174f54270c3117410b5e4022b43ebc0b43b751af08b927c55ed7bb5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        armhf)          ESUM='a1f61c0a9a76af31e6954f93ba329650ce16e556d0508227a50c6203ff012357';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_arm_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64el)          ESUM='7836a98346529939fc1149a59c7159d0ea721c2028fbfade620d60e58293d65f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='c2f8f6c55b09a5bb9c26fbdc85cad41e10860a396da447e2ce7a182480e74945';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:17:48 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:17:48 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:17:48 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 14 Nov 2026 00:11:14 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 14 Nov 2026 00:11:14 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Nov 2026 00:11:14 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Sat, 14 Nov 2026 00:11:14 GMT
WORKDIR /usr/local/tomcat
# Sat, 14 Nov 2026 00:11:14 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 14 Nov 2026 00:11:14 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 14 Nov 2026 00:11:14 GMT
ENV TOMCAT_MAJOR=11
# Sat, 14 Nov 2026 00:11:14 GMT
ENV TOMCAT_VERSION=11.0.29
# Sat, 14 Nov 2026 00:11:14 GMT
ENV TOMCAT_SHA512=be277ce58876a584653f980fd695c82e6708029f05fc7ad9fcfbdcede3836ae6ffa4f858eac26de6ff938f130f31158be8a54b5f546393ea1ad5da0cd202873c
# Sat, 14 Nov 2026 00:11:15 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Sat, 14 Nov 2026 00:11:19 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 14 Nov 2026 00:11:20 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Sat, 14 Nov 2026 00:11:20 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 14 Nov 2026 00:11:20 GMT
ENTRYPOINT []
# Sat, 14 Nov 2026 00:11:20 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:237d5f4a23aaa35362cd4f04790f05d22f384e34d0bd0fb88317b19fd15b0671`  
		Last Modified: Wed, 11 Nov 2026 23:18:01 GMT  
		Size: 16.1 MB (16115824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c66d3eb98ea40273b1de936626abc1b178cdb32e5c5d022abeb9269142b3543`  
		Last Modified: Wed, 11 Nov 2026 23:18:01 GMT  
		Size: 47.6 MB (47620318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07063e381e0effdbe22dfb9c5b4a76bfd6d4b2a78f851f48e098fb6b6ad12ae6`  
		Last Modified: Wed, 11 Nov 2026 23:18:00 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ac294d992d3683d6b999756fd3db542ecb508657e7e7abe00f671b162e088fc`  
		Last Modified: Wed, 11 Nov 2026 23:18:00 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8ebaf09f3cf1a308f5bfce52e62f7ae0858db85ff72792be644249213ff1f73`  
		Last Modified: Sat, 14 Nov 2026 00:11:28 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b17585ac78518805235b156f36f5f4e8647e15da5987012a7e2c4819c4c03318`  
		Last Modified: Sat, 14 Nov 2026 00:11:28 GMT  
		Size: 14.7 MB (14749900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67ab01a98eed6ac2bffc66c3325735bc690ba8f7a464bccfc2e48e7618bd5327`  
		Last Modified: Sat, 14 Nov 2026 00:11:28 GMT  
		Size: 230.3 KB (230273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:11-jre17-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:013637ae43db2c15707ebeaba8d7e2b0912bb09e89f1aacde091ebeae30c6f6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3947479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdde8be34c902fef0713578784521671c68b9a6839791abbc0cd2674b9c5af95`

```dockerfile
```

-	Layers:
	-	`sha256:b79563e39bbefd3c9b805ea4543a26541cca38449b1c79682a015ba357c78390`  
		Last Modified: Sat, 14 Nov 2026 00:11:28 GMT  
		Size: 3.9 MB (3925934 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8dcce6a2322fd40b6e3b32118d7ec678c5a7dc382e4c7cfcee03656ce958b9f`  
		Last Modified: Sat, 14 Nov 2026 00:11:28 GMT  
		Size: 21.5 KB (21545 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:11-jre17-temurin-jammy` - linux; arm variant v7

```console
$ docker pull tomcat@sha256:8de0012e9bb3160a0bd1f000a4e46731fb9bedc27bbb620caa1cc60c06eddf4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.1 MB (103140629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b1a34935d38617743ba168c45ab1fc1bb094589a9c0a145c8170febb9b11946`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:40 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:40 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:43 GMT
ADD file:b306f2c1ba859a05e286fcacfd7b1be4f12761835bf7f4a05b98b11e31f87a49 in / 
# Tue, 10 Nov 2026 08:11:44 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:20:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:20:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:20:49 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:20:49 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:20:49 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Wed, 11 Nov 2026 23:20:53 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9f41bf88c7900c7097444a1bdeb84146ae692bc08842490ab098063c74bf9a8a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        arm64)          ESUM='1114f09d6174f54270c3117410b5e4022b43ebc0b43b751af08b927c55ed7bb5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        armhf)          ESUM='a1f61c0a9a76af31e6954f93ba329650ce16e556d0508227a50c6203ff012357';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_arm_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64el)          ESUM='7836a98346529939fc1149a59c7159d0ea721c2028fbfade620d60e58293d65f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='c2f8f6c55b09a5bb9c26fbdc85cad41e10860a396da447e2ce7a182480e74945';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:20:53 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:20:53 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:20:53 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 14 Nov 2026 00:17:53 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 14 Nov 2026 00:17:53 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Nov 2026 00:17:53 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Sat, 14 Nov 2026 00:17:53 GMT
WORKDIR /usr/local/tomcat
# Sat, 14 Nov 2026 00:17:53 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 14 Nov 2026 00:17:53 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 14 Nov 2026 00:17:53 GMT
ENV TOMCAT_MAJOR=11
# Sat, 14 Nov 2026 00:17:53 GMT
ENV TOMCAT_VERSION=11.0.29
# Sat, 14 Nov 2026 00:17:53 GMT
ENV TOMCAT_SHA512=be277ce58876a584653f980fd695c82e6708029f05fc7ad9fcfbdcede3836ae6ffa4f858eac26de6ff938f130f31158be8a54b5f546393ea1ad5da0cd202873c
# Sat, 14 Nov 2026 00:17:53 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Sat, 14 Nov 2026 00:18:08 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 14 Nov 2026 00:18:09 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Sat, 14 Nov 2026 00:18:09 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 14 Nov 2026 00:18:09 GMT
ENTRYPOINT []
# Sat, 14 Nov 2026 00:18:09 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:3a0654f56483a49bba3f6f7738a3349f2bb29557b4b527a9f8ce2106f1da3f66`  
		Last Modified: Tue, 10 Nov 2026 08:55:01 GMT  
		Size: 27.2 MB (27171273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3f68c2b630fbe9e0b71bdf9422bb84644f3bfab7102e7edd0088987cc71aced`  
		Last Modified: Wed, 11 Nov 2026 23:21:06 GMT  
		Size: 15.9 MB (15851805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c3b3eb613614ce7f98af4e2e1752ce7094b093ca621fdb2b4fdccd822762d88`  
		Last Modified: Wed, 11 Nov 2026 23:21:06 GMT  
		Size: 45.2 MB (45188611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47612701afe7ab49b2adcf701840764c14cbea565177f59e4931189c15df2588`  
		Last Modified: Wed, 11 Nov 2026 23:21:05 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b255bc1cc80c2341cf1429f26a35ca19ce5ec80d4903f1d610212ff3f5995eee`  
		Last Modified: Wed, 11 Nov 2026 23:20:50 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c59a264eecee7c88cb93cdffe7337dae9b625fd9abce71d54adb15814b8ffee7`  
		Last Modified: Sat, 14 Nov 2026 00:18:17 GMT  
		Size: 136.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0e483a64dc0c2486e0b7b24ea8c2be52a26e3ec7371e678e72cd2451a9ee339`  
		Last Modified: Sat, 14 Nov 2026 00:18:17 GMT  
		Size: 14.7 MB (14723077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50491d417f266161f167b79bc03573a67a052f74c81f58b1b19db07478b00dc2`  
		Last Modified: Sat, 14 Nov 2026 00:18:17 GMT  
		Size: 203.0 KB (203040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:11-jre17-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:92b89df42150169413d001cb77fefb18eba284ad83066eb3066e5aca45f127f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3949950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e21b3a10b25eac3c270e2609317bd064a04b0bafd087daa05edd911a24dbad58`

```dockerfile
```

-	Layers:
	-	`sha256:cd125bdf7708c46dff65ac3333b6692af9822d4f68e348b557da98dc0891ec44`  
		Last Modified: Sat, 14 Nov 2026 00:18:17 GMT  
		Size: 3.9 MB (3928277 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc96b7e27611977210a0f597c808e1974da954c53f52555eed46daae9960c55b`  
		Last Modified: Sat, 14 Nov 2026 00:18:17 GMT  
		Size: 21.7 KB (21673 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:11-jre17-temurin-jammy` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:dff0eb61e5fab38073979365d9d59a07bbcf36afb2faa3b3156706e70d4e4f0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.2 MB (106162006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:834960412c16cea1fb39929ecab0e76f09f43a5e1e7162820cc5238d377e1956`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:20:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:20:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:20:32 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:20:32 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:20:32 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Wed, 11 Nov 2026 23:21:46 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9f41bf88c7900c7097444a1bdeb84146ae692bc08842490ab098063c74bf9a8a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        arm64)          ESUM='1114f09d6174f54270c3117410b5e4022b43ebc0b43b751af08b927c55ed7bb5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        armhf)          ESUM='a1f61c0a9a76af31e6954f93ba329650ce16e556d0508227a50c6203ff012357';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_arm_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64el)          ESUM='7836a98346529939fc1149a59c7159d0ea721c2028fbfade620d60e58293d65f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='c2f8f6c55b09a5bb9c26fbdc85cad41e10860a396da447e2ce7a182480e74945';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:21:46 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:21:46 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:21:46 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 14 Nov 2026 00:11:42 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 14 Nov 2026 00:11:42 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Nov 2026 00:11:42 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Sat, 14 Nov 2026 00:11:42 GMT
WORKDIR /usr/local/tomcat
# Sat, 14 Nov 2026 00:11:42 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 14 Nov 2026 00:11:42 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 14 Nov 2026 00:11:42 GMT
ENV TOMCAT_MAJOR=11
# Sat, 14 Nov 2026 00:11:42 GMT
ENV TOMCAT_VERSION=11.0.29
# Sat, 14 Nov 2026 00:11:42 GMT
ENV TOMCAT_SHA512=be277ce58876a584653f980fd695c82e6708029f05fc7ad9fcfbdcede3836ae6ffa4f858eac26de6ff938f130f31158be8a54b5f546393ea1ad5da0cd202873c
# Sat, 14 Nov 2026 00:11:42 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Sat, 14 Nov 2026 00:11:47 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 14 Nov 2026 00:11:47 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Sat, 14 Nov 2026 00:11:47 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 14 Nov 2026 00:11:47 GMT
ENTRYPOINT []
# Sat, 14 Nov 2026 00:11:47 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:add8fe02d40ec6a117b6603dabd94498754e1ec6873ef05f7a995a9065d5be50`  
		Last Modified: Wed, 11 Nov 2026 23:20:48 GMT  
		Size: 16.1 MB (16050655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7695dacb673530951aa0385a12c9506c8d1d493bfcbd8d38256490bcdf7de54`  
		Last Modified: Wed, 11 Nov 2026 23:22:00 GMT  
		Size: 47.1 MB (47128014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:580a3f73fce546ebbfe22c66af58772b2fd965eca55ef2546ba1284a85c0360e`  
		Last Modified: Wed, 11 Nov 2026 23:21:59 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0db72ead1d681284cf620f56f601aee62c0301e07c7631a906e9a7ef737e4996`  
		Last Modified: Wed, 11 Nov 2026 23:21:59 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f70c0124a8f0c3a462858f63c0dc905f90dd23544071bf5dd96e8fe3e619d695`  
		Last Modified: Sat, 14 Nov 2026 00:11:56 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87da10a3dd6be47a7fa901e6b2871214061fda746cb595f8d7f970753ed7bfc7`  
		Last Modified: Sat, 14 Nov 2026 00:11:56 GMT  
		Size: 14.7 MB (14749693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeb58b4713ff3676f4f4c5f988f54b5070819422bfa6ef2fdf08c37696dd32b3`  
		Last Modified: Sat, 14 Nov 2026 00:11:56 GMT  
		Size: 229.4 KB (229407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:11-jre17-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:2792fd615ada3baa87ab7e8292adac4e940612b0a79aff74b1c76cbd4d30a791
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3947320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87e39009a43e7a7eb1ca0997ae601f2ea2a2cc577ac7b3d05e174c13864c4acb`

```dockerfile
```

-	Layers:
	-	`sha256:1e92b0f7b50f544a81d77aae36b43faa29f20f2952688f4fac2ead9f27491bb1`  
		Last Modified: Sat, 14 Nov 2026 00:11:56 GMT  
		Size: 3.9 MB (3925615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5aedfb1c7ccf80e3a6bcd5d51926a3dad54f424b312dc04b2ecc0220d32f0890`  
		Last Modified: Sat, 14 Nov 2026 00:11:56 GMT  
		Size: 21.7 KB (21705 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:11-jre17-temurin-jammy` - linux; ppc64le

```console
$ docker pull tomcat@sha256:37407348e717e3b06ce646e14df2089edd75dd7c03bfd3c0e5c7aa51716556d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114610930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba5cc3b90c79079f9a8d2744873dfdc05f4204207bee48e2f425a19786d68480`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 10 Nov 2026 08:09:23 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:09:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:09:23 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:09:28 GMT
ADD file:385fbf5f6ded013bc8053d3b154b3dafc78f1addd59a1388bd56f2253ef77d18 in / 
# Tue, 10 Nov 2026 08:09:29 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 01:43:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:43:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:43:58 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 12 Nov 2026 01:43:58 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 01:43:58 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Thu, 12 Nov 2026 01:54:41 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9f41bf88c7900c7097444a1bdeb84146ae692bc08842490ab098063c74bf9a8a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        arm64)          ESUM='1114f09d6174f54270c3117410b5e4022b43ebc0b43b751af08b927c55ed7bb5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        armhf)          ESUM='a1f61c0a9a76af31e6954f93ba329650ce16e556d0508227a50c6203ff012357';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_arm_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64el)          ESUM='7836a98346529939fc1149a59c7159d0ea721c2028fbfade620d60e58293d65f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='c2f8f6c55b09a5bb9c26fbdc85cad41e10860a396da447e2ce7a182480e74945';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 12 Nov 2026 01:54:41 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 12 Nov 2026 01:54:41 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 12 Nov 2026 01:54:41 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 12 Nov 2026 09:14:42 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 12 Nov 2026 09:14:42 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 09:14:42 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Thu, 12 Nov 2026 09:14:43 GMT
WORKDIR /usr/local/tomcat
# Thu, 12 Nov 2026 09:14:43 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 12 Nov 2026 09:14:43 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 12 Nov 2026 09:14:43 GMT
ENV TOMCAT_MAJOR=11
# Thu, 12 Nov 2026 09:14:43 GMT
ENV TOMCAT_VERSION=11.0.29
# Thu, 12 Nov 2026 09:14:43 GMT
ENV TOMCAT_SHA512=be277ce58876a584653f980fd695c82e6708029f05fc7ad9fcfbdcede3836ae6ffa4f858eac26de6ff938f130f31158be8a54b5f546393ea1ad5da0cd202873c
# Sat, 14 Nov 2026 01:13:29 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Sat, 14 Nov 2026 01:13:36 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 14 Nov 2026 01:13:38 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Sat, 14 Nov 2026 01:13:38 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 14 Nov 2026 01:13:38 GMT
ENTRYPOINT []
# Sat, 14 Nov 2026 01:13:38 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:930bdfdd5d19974adb0ba597663b144584e8fa18e103e857a3dd3eb2cd73ec5e`  
		Last Modified: Tue, 10 Nov 2026 08:55:08 GMT  
		Size: 35.0 MB (35018100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cba1faedb9b6bca6e619f0939d86a75a1f14ccd767f8792a1fe2c301a11479c6`  
		Last Modified: Thu, 12 Nov 2026 01:44:33 GMT  
		Size: 17.6 MB (17589485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57f941889fee3ecdb9e446d52077fcef2ab873f3432e146237c212a4debdcd6f`  
		Last Modified: Thu, 12 Nov 2026 01:55:21 GMT  
		Size: 47.0 MB (46977678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcd8029ad3b320688866648a387070ea4191d81df8bec068de79eb4c5fa1bcf6`  
		Last Modified: Thu, 12 Nov 2026 01:55:19 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fc528d122a7689cea198e4a4b73fec4783e95e05935987f40276c0bb1dfdd71`  
		Last Modified: Thu, 12 Nov 2026 01:55:19 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e292eea73dc9b2a455b6345086caad55c9769fbbabda222ef512aefb4f7b022`  
		Last Modified: Thu, 12 Nov 2026 09:15:31 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37942a3f3438a01a8c4e3bd16f7ee2b6d4431c9aedc38cdc828762a36a802def`  
		Last Modified: Sat, 14 Nov 2026 01:13:58 GMT  
		Size: 14.8 MB (14763006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6acaf2ffb571ac0e6393c0b247b265cf37aaa5f801f1287ea1ca84d33e73c15b`  
		Last Modified: Sat, 14 Nov 2026 01:13:58 GMT  
		Size: 259.8 KB (259835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:11-jre17-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:641fb1df40afbe000ade9fd18c5b962e07a8bd5f9d2bebb2f243bb740daca552
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3950384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ca2b9991bad9d69e3afd67be128964c14b4996fb1875d45c2595567c32dfc80`

```dockerfile
```

-	Layers:
	-	`sha256:3a8f5c90fca140d2d65db74a498a69c8e08c194ea844f5f598eda4956168621e`  
		Last Modified: Sat, 14 Nov 2026 01:13:58 GMT  
		Size: 3.9 MB (3928782 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de3557d9cb277ce5ef9cb40b6ba8483948bfedf434c883b92c778875a4a59301`  
		Last Modified: Sat, 14 Nov 2026 01:13:58 GMT  
		Size: 21.6 KB (21602 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:11-jre17-temurin-jammy` - linux; s390x

```console
$ docker pull tomcat@sha256:ae4dd5980b0dac80008d8055377351d15d68a61e266a4d05e5467894708e2cee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.9 MB (103868418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dae9c4444e402c7ef31b214605aceac20cd600a2858c7e584d793b75575892a1`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 10 Nov 2026 08:09:25 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:09:25 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:09:25 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:09:27 GMT
ADD file:2eb742111a0ed752506db948cef18dd825d45b92c3bb8ae228a88ed48e1b7c11 in / 
# Tue, 10 Nov 2026 08:09:27 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:14:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:14:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:14:23 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:14:23 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:14:23 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Wed, 11 Nov 2026 23:15:04 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9f41bf88c7900c7097444a1bdeb84146ae692bc08842490ab098063c74bf9a8a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        arm64)          ESUM='1114f09d6174f54270c3117410b5e4022b43ebc0b43b751af08b927c55ed7bb5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        armhf)          ESUM='a1f61c0a9a76af31e6954f93ba329650ce16e556d0508227a50c6203ff012357';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_arm_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64el)          ESUM='7836a98346529939fc1149a59c7159d0ea721c2028fbfade620d60e58293d65f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='c2f8f6c55b09a5bb9c26fbdc85cad41e10860a396da447e2ce7a182480e74945';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:15:04 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:15:04 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:15:04 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 12 Nov 2026 02:15:12 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 12 Nov 2026 02:15:12 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 02:15:12 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Thu, 12 Nov 2026 02:15:13 GMT
WORKDIR /usr/local/tomcat
# Thu, 12 Nov 2026 02:15:13 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 12 Nov 2026 02:15:13 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 12 Nov 2026 02:15:13 GMT
ENV TOMCAT_MAJOR=11
# Thu, 12 Nov 2026 02:15:13 GMT
ENV TOMCAT_VERSION=11.0.29
# Thu, 12 Nov 2026 02:15:13 GMT
ENV TOMCAT_SHA512=be277ce58876a584653f980fd695c82e6708029f05fc7ad9fcfbdcede3836ae6ffa4f858eac26de6ff938f130f31158be8a54b5f546393ea1ad5da0cd202873c
# Sat, 14 Nov 2026 01:12:32 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Sat, 14 Nov 2026 01:12:35 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 14 Nov 2026 01:12:36 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Sat, 14 Nov 2026 01:12:36 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 14 Nov 2026 01:12:36 GMT
ENTRYPOINT []
# Sat, 14 Nov 2026 01:12:36 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:ee971bee4c45f08194cd2311c6f51955f945c5a0fa74935d1fe8a85ef452dc3b`  
		Last Modified: Tue, 10 Nov 2026 08:55:22 GMT  
		Size: 28.5 MB (28538219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bba5ac130dc4f34594a3afe2142fedfc37a45222075c042a069594c712d1b1f`  
		Last Modified: Wed, 11 Nov 2026 23:14:42 GMT  
		Size: 16.1 MB (16113971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18aeb9bb4fbbef19187cd4fe008a03f2e2799e72e578fb3d76c1a3860c601b80`  
		Last Modified: Wed, 11 Nov 2026 23:15:23 GMT  
		Size: 44.2 MB (44228163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8df47555f7cfe978bd17badb57b4704a6d3411a378009607600135ac352ce95e`  
		Last Modified: Wed, 11 Nov 2026 23:15:22 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27d16ebe54b77f9cb0c46d868fdf2cd06d3108fbd3814fbb1d51c82dca4bf7c9`  
		Last Modified: Wed, 11 Nov 2026 23:15:22 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef32c92a774cd0217b818c8f02ae95b527a26bc0603210c68ac384edb01686b6`  
		Last Modified: Thu, 12 Nov 2026 02:15:51 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:febf1bf1e0afbb72e59cd1c74fad2792b40c23ea0d09052b7cc29b24254fe38a`  
		Last Modified: Sat, 14 Nov 2026 01:12:48 GMT  
		Size: 14.8 MB (14753793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f8c03e9a675ddbacd4893267cf850a23e385379090e1e2bb268b6ba7f06cad2`  
		Last Modified: Sat, 14 Nov 2026 01:12:48 GMT  
		Size: 231.4 KB (231446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:11-jre17-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:c791e6eb268ec2a702acd0adb1cda78c5332cd903be5d1258439c6b958b984b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3947824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e9ede94fef0250258ec406819033e1175ee256211f5bf3596ff49add0a2d1d6`

```dockerfile
```

-	Layers:
	-	`sha256:0285a9d20cc150b3492b5f47921be69985d7d97c38908aa2df73507f908a84a9`  
		Last Modified: Sat, 14 Nov 2026 01:12:48 GMT  
		Size: 3.9 MB (3926279 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e98dc0d8474d9c3a097f6f4bde9ad16a28d0db477f65b5019a098fd07ae6205`  
		Last Modified: Sat, 14 Nov 2026 01:12:47 GMT  
		Size: 21.5 KB (21545 bytes)  
		MIME: application/vnd.in-toto+json
