## `tomcat:9-jre21-temurin-noble`

```console
$ docker pull tomcat@sha256:cf113117584a62e6b5c2c3778d6ece50fba6ec20cb197ee79d0c7e3d980b9d5b
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

### `tomcat:9-jre21-temurin-noble` - linux; amd64

```console
$ docker pull tomcat@sha256:443461747c2ef12e161a5288a1577e8aaec48c067269ccaea9cbd69f091a1f07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.9 MB (113881175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c274f1886c3a39bece25309749802555cec9d938bd7492d6fa2adbd99432c3ae`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:21:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:21:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:21:37 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:21:37 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:21:37 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Thu, 02 Jul 2026 02:21:41 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='e5038aae3ca9ff670bc696496b0728dbd23d280026bad30291cb919221ecfdcb';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        arm64)          ESUM='fa23d9d9945053e67bcc7638410eabf1e17a7672c7c95a24f70cd08b8407d36e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64el)          ESUM='fefb53c4bd687e7a91a9a9809ec80e0862e829cd20513839ad1a9988ddc89482';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        riscv64)          ESUM='f3d8843c5a1b77ded3353e0df85d803d84b9faa5ece20673564e7c47fc4591d9';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='45736e9e14d52619133900a077b4f72d1ebee0fd0bb053da0bca9dce9fc4d916';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:21:41 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:21:41 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:21:41 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 07 Jul 2026 17:54:59 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 07 Jul 2026 17:54:59 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 17:54:59 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 07 Jul 2026 17:54:59 GMT
WORKDIR /usr/local/tomcat
# Tue, 07 Jul 2026 17:54:59 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 07 Jul 2026 17:54:59 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 07 Jul 2026 17:54:59 GMT
ENV TOMCAT_MAJOR=9
# Tue, 07 Jul 2026 17:54:59 GMT
ENV TOMCAT_VERSION=9.0.120
# Tue, 07 Jul 2026 17:54:59 GMT
ENV TOMCAT_SHA512=07eb6d9639c3e69af81171a16ccff1c19b7fd5b2e87e3646851f0a3f42a4ce3c1bf128fbe40fc978a08935ba4f0400ef3b43ded3e470b9aaf23b97a9e1fa0858
# Tue, 07 Jul 2026 17:54:59 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 07 Jul 2026 17:55:03 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:55:03 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 07 Jul 2026 17:55:03 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 07 Jul 2026 17:55:03 GMT
ENTRYPOINT []
# Tue, 07 Jul 2026 17:55:03 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4659a3f0a10cbdc0c83229ad68d274d301233e350f6ac37acd8b32d57494d2b`  
		Last Modified: Thu, 02 Jul 2026 02:21:53 GMT  
		Size: 16.9 MB (16944548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:731837b1a3884014378c504ce2435a1a4b03c6b5447f28ad0ef87ffa59a3b579`  
		Last Modified: Thu, 02 Jul 2026 02:21:55 GMT  
		Size: 53.1 MB (53123202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55a03f4df9eb3b2b6dde23a3ba7c33f29f915d9813d28f742e9e703b3491754e`  
		Last Modified: Thu, 02 Jul 2026 02:21:52 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:622a4f311026ef54c349d9581ea611b6840dde68b9b03b8dacfa0ba946cacef5`  
		Last Modified: Thu, 02 Jul 2026 02:21:53 GMT  
		Size: 2.3 KB (2282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7510bd92d977182a4a0006bfa821d6cc3e986fcb65c7584e99957d1ad7ae846b`  
		Last Modified: Tue, 07 Jul 2026 17:55:12 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf785f86bddd29e3d0131dd81188ddb49eb8d271a6dd128da458737b3fa427a3`  
		Last Modified: Tue, 07 Jul 2026 17:55:13 GMT  
		Size: 13.9 MB (13850237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3277a2888ae933f63125e13c191db526253d3ea5619c98c927bd11e4427e4c98`  
		Last Modified: Tue, 07 Jul 2026 17:55:12 GMT  
		Size: 224.9 KB (224943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre21-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:965c071a3dc13b4b5a6f2be97a2da5e2530f9ab22ac1ae9b8cd4e9077dcfdb50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3354529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7a5d842c2e7c011f8d5dbe2d82c3d8c9c9e8e3f996d0751ac52f79879b55ebc`

```dockerfile
```

-	Layers:
	-	`sha256:ba881ff280e83b2b19202781eeaaf5cbdb044254be6043408612bb7f06cd9c7e`  
		Last Modified: Tue, 07 Jul 2026 17:55:12 GMT  
		Size: 3.3 MB (3331433 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0cbf54299c1c5261594719e754e26557df2085a8757a2ce253d7a88e18ab030a`  
		Last Modified: Tue, 07 Jul 2026 17:55:12 GMT  
		Size: 23.1 KB (23096 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jre21-temurin-noble` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:57664d22dc07d8bfa3c28a6b99dc9be598c0dafbed138e1bd5e3e97b425f5d86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.2 MB (112236139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea52a3b00d42bc6f7692904f5a8111a02ddd80f2fbf8f5c7ba6d525858e9c7cf`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:20:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:20:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:20:35 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:20:35 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:20:35 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Thu, 02 Jul 2026 02:20:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='e5038aae3ca9ff670bc696496b0728dbd23d280026bad30291cb919221ecfdcb';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        arm64)          ESUM='fa23d9d9945053e67bcc7638410eabf1e17a7672c7c95a24f70cd08b8407d36e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64el)          ESUM='fefb53c4bd687e7a91a9a9809ec80e0862e829cd20513839ad1a9988ddc89482';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        riscv64)          ESUM='f3d8843c5a1b77ded3353e0df85d803d84b9faa5ece20673564e7c47fc4591d9';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='45736e9e14d52619133900a077b4f72d1ebee0fd0bb053da0bca9dce9fc4d916';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:20:40 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:20:40 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:20:40 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 07 Jul 2026 17:55:08 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 07 Jul 2026 17:55:08 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 17:55:08 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 07 Jul 2026 17:55:10 GMT
WORKDIR /usr/local/tomcat
# Tue, 07 Jul 2026 17:55:10 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 07 Jul 2026 17:55:10 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 07 Jul 2026 17:55:10 GMT
ENV TOMCAT_MAJOR=9
# Tue, 07 Jul 2026 17:55:10 GMT
ENV TOMCAT_VERSION=9.0.120
# Tue, 07 Jul 2026 17:55:10 GMT
ENV TOMCAT_SHA512=07eb6d9639c3e69af81171a16ccff1c19b7fd5b2e87e3646851f0a3f42a4ce3c1bf128fbe40fc978a08935ba4f0400ef3b43ded3e470b9aaf23b97a9e1fa0858
# Tue, 07 Jul 2026 17:55:10 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 07 Jul 2026 17:55:15 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:55:15 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 07 Jul 2026 17:55:15 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 07 Jul 2026 17:55:15 GMT
ENTRYPOINT []
# Tue, 07 Jul 2026 17:55:15 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4475bb8ddba9ec9625d934465a03fa921efbea1fd8aff40b3605d9d85b5028e`  
		Last Modified: Thu, 02 Jul 2026 02:20:54 GMT  
		Size: 17.0 MB (16951457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bfa8304becf1bb05f54254c011a194caa5e83fb46ca04101ddf15c00d4142a1`  
		Last Modified: Thu, 02 Jul 2026 02:20:55 GMT  
		Size: 52.3 MB (52314891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1747af856ddb4f793dc019f23a0e80e87ad78ed3829e6e3a4f490dd2938f1643`  
		Last Modified: Thu, 02 Jul 2026 02:20:53 GMT  
		Size: 161.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed507c913156f1d9395acbd5915eb0a2bb85af7b85502500780e7184e0ded549`  
		Last Modified: Thu, 02 Jul 2026 02:20:53 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5748ca6c23c63da0e868ccab7b34b15d7ff0fe37d8a380e4199e930b4af368b8`  
		Last Modified: Tue, 07 Jul 2026 17:55:24 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88255f61e68e431344d383bb93136ad02bffcee54b195a7dab17abf3cd4c553e`  
		Last Modified: Tue, 07 Jul 2026 17:55:25 GMT  
		Size: 13.9 MB (13857666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b52a7784881b35ddeb0e6fd41fdb1ca2c759f53c9170f7d8b0b560dd1738821`  
		Last Modified: Tue, 07 Jul 2026 17:55:24 GMT  
		Size: 225.3 KB (225299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre21-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:29da63e6637bedea3eebe2279dbd2683ba11cda7fa3e6b4ba899fc26609bbae7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3355281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64a31f9a6b0d1c73e6ea90118406fc3facf82b9093c9cbc0998f7dcc2b9eda5b`

```dockerfile
```

-	Layers:
	-	`sha256:b4714234f6ec02d2a1b1d8ae16d45a22c6b06234cf966c2b02383a84e6f869dd`  
		Last Modified: Tue, 07 Jul 2026 17:55:24 GMT  
		Size: 3.3 MB (3331965 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c048a113c6cd1e1c8009ebc9475baa07e6ba1c422a9348cc6488fca6b75817f`  
		Last Modified: Tue, 07 Jul 2026 17:55:24 GMT  
		Size: 23.3 KB (23316 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jre21-temurin-noble` - linux; ppc64le

```console
$ docker pull tomcat@sha256:62de396216b679040c512291414efbef595bad757192af26d070a62c43c2f279
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.4 MB (120373198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cd21daacf93440afc6e09faeb8396aa6c3dfef6b51b30d59c307608d3b65264`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:57 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:00 GMT
ADD file:80a608ac5245946ff88c571e9d9b1259a58a3a309e569fbe7ed52f07c2ed3b39 in / 
# Mon, 22 Jun 2026 21:25:01 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:12:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:12:53 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:53 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:12:53 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Thu, 02 Jul 2026 02:23:22 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='e5038aae3ca9ff670bc696496b0728dbd23d280026bad30291cb919221ecfdcb';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        arm64)          ESUM='fa23d9d9945053e67bcc7638410eabf1e17a7672c7c95a24f70cd08b8407d36e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64el)          ESUM='fefb53c4bd687e7a91a9a9809ec80e0862e829cd20513839ad1a9988ddc89482';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        riscv64)          ESUM='f3d8843c5a1b77ded3353e0df85d803d84b9faa5ece20673564e7c47fc4591d9';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='45736e9e14d52619133900a077b4f72d1ebee0fd0bb053da0bca9dce9fc4d916';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:23:22 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:23:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:23:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 02 Jul 2026 08:17:38 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 02 Jul 2026 08:17:38 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 08:17:38 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Thu, 02 Jul 2026 08:17:39 GMT
WORKDIR /usr/local/tomcat
# Thu, 02 Jul 2026 08:17:39 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 02 Jul 2026 08:17:39 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 02 Jul 2026 08:17:39 GMT
ENV TOMCAT_MAJOR=9
# Thu, 02 Jul 2026 08:17:39 GMT
ENV TOMCAT_VERSION=9.0.120
# Thu, 02 Jul 2026 08:17:39 GMT
ENV TOMCAT_SHA512=07eb6d9639c3e69af81171a16ccff1c19b7fd5b2e87e3646851f0a3f42a4ce3c1bf128fbe40fc978a08935ba4f0400ef3b43ded3e470b9aaf23b97a9e1fa0858
# Tue, 07 Jul 2026 19:09:34 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 07 Jul 2026 19:09:40 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 19:09:43 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 07 Jul 2026 19:09:43 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 07 Jul 2026 19:09:43 GMT
ENTRYPOINT []
# Tue, 07 Jul 2026 19:09:43 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:190c767f9112ca5805c4561e533bf5c74fb5c5be019b50ce3fc6a9dfe3031127`  
		Last Modified: Thu, 02 Jul 2026 02:13:26 GMT  
		Size: 18.8 MB (18766530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e033fc670b2cfeb9596ab3c2df54b0ba2e86964f6903b11defb09cd4d0bbf22f`  
		Last Modified: Thu, 02 Jul 2026 02:23:49 GMT  
		Size: 53.1 MB (53148711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4217dbc0b07f0187e62ef9d876b879c947ca994e97d462946de5b1e2e04fe476`  
		Last Modified: Thu, 02 Jul 2026 02:23:47 GMT  
		Size: 161.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4def5b82b5130db09cc70de4ad24fe5540785f795d13cb6e2dd8ef4e2ecb90fb`  
		Last Modified: Thu, 02 Jul 2026 02:23:48 GMT  
		Size: 2.3 KB (2282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffd978a1150a35b90137ebccd57592769148b23737e5af45477bc5c65e02d839`  
		Last Modified: Thu, 02 Jul 2026 08:18:18 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84f7031a9bae919e3de5a5541afa1e2bdeac8c34862a2bbedfa84d15a9abcfb8`  
		Last Modified: Tue, 07 Jul 2026 19:10:01 GMT  
		Size: 13.9 MB (13885206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc41932fc48652a2dfebdcbe00b6d400a759e8b177c5e065ebccd0b016991a08`  
		Last Modified: Tue, 07 Jul 2026 19:10:01 GMT  
		Size: 256.6 KB (256628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre21-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:128f86748b95e8aac569e319d3061edf57d839db7a1f337d1e0e65b67439fcf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3358724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15a181a6b7b5a0a534b1ba7a28192da1a03304d303a01dc884cda20b57e14a9d`

```dockerfile
```

-	Layers:
	-	`sha256:f0180d6ccf292d16aa525573f57aaf85d1885813b949e6d8109a96f9534f3dbe`  
		Last Modified: Tue, 07 Jul 2026 19:10:01 GMT  
		Size: 3.3 MB (3335540 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7d91c3467c9c40c26b565012f0e302b29413e840aa0cce719295e7be0e3635e`  
		Last Modified: Tue, 07 Jul 2026 19:10:01 GMT  
		Size: 23.2 KB (23184 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jre21-temurin-noble` - linux; riscv64

```console
$ docker pull tomcat@sha256:b5e34aa36e0ea9ec35fc927d95ff10a179065d17217bb11fc3ac5be4701a70a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (116030420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1250a6ca721b49a3be9445ee01d893262a69ddfdeccc0a01d630f10dbb1fc98d`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 23 Jun 2026 01:25:37 GMT
ARG RELEASE
# Tue, 23 Jun 2026 01:25:37 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 23 Jun 2026 01:25:38 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 23 Jun 2026 01:26:18 GMT
ADD file:7170cf1f50457fa19167130bbb168bf8fb601a52574716867b67758ab43d5dbb in / 
# Tue, 23 Jun 2026 01:26:22 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:25:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:25:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:25:42 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:25:42 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:25:42 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Thu, 02 Jul 2026 02:36:08 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='e5038aae3ca9ff670bc696496b0728dbd23d280026bad30291cb919221ecfdcb';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        arm64)          ESUM='fa23d9d9945053e67bcc7638410eabf1e17a7672c7c95a24f70cd08b8407d36e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64el)          ESUM='fefb53c4bd687e7a91a9a9809ec80e0862e829cd20513839ad1a9988ddc89482';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        riscv64)          ESUM='f3d8843c5a1b77ded3353e0df85d803d84b9faa5ece20673564e7c47fc4591d9';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='45736e9e14d52619133900a077b4f72d1ebee0fd0bb053da0bca9dce9fc4d916';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:36:09 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:36:09 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:36:09 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 02 Jul 2026 09:20:52 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 02 Jul 2026 09:20:52 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 09:20:52 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Thu, 02 Jul 2026 09:20:53 GMT
WORKDIR /usr/local/tomcat
# Thu, 02 Jul 2026 09:20:53 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 02 Jul 2026 09:20:53 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 02 Jul 2026 09:20:53 GMT
ENV TOMCAT_MAJOR=9
# Thu, 02 Jul 2026 09:20:53 GMT
ENV TOMCAT_VERSION=9.0.119
# Thu, 02 Jul 2026 09:20:53 GMT
ENV TOMCAT_SHA512=5215f1c672a9869f8405e440afcc84cc8a2f1e2dce795f5afbaa534d1bc9f2ca20f083661b1d893b9ef26b9b57aa048215c58b861d808130362ba1422a23649a
# Thu, 02 Jul 2026 09:39:00 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Thu, 02 Jul 2026 09:39:41 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 09:39:49 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Thu, 02 Jul 2026 09:39:49 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 02 Jul 2026 09:39:49 GMT
ENTRYPOINT []
# Thu, 02 Jul 2026 09:39:49 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:d36d9a4ee5b21337a0038d06f00582b458b412ffa7aa3be4086c8692dfab4687`  
		Last Modified: Tue, 23 Jun 2026 01:35:00 GMT  
		Size: 31.0 MB (30971606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ac67dd6c068291ec7a10af8483682c929d96d783d13897b916862b7778a69fc`  
		Last Modified: Thu, 02 Jul 2026 02:28:42 GMT  
		Size: 17.8 MB (17831597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3352f718b94ca8c996b747ced90987b1692ca8f81f4b45c857e367ca86ccbef`  
		Last Modified: Thu, 02 Jul 2026 02:38:54 GMT  
		Size: 52.6 MB (52641562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5562d564466d74709c621675cd9a6fdf6f357113c4f68842787e32aa4595a685`  
		Last Modified: Thu, 02 Jul 2026 02:38:46 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7c6374c7ee67f95ba3c5251cf67489cd3c6841beefe7f47ca2a340d06aed1ec`  
		Last Modified: Thu, 02 Jul 2026 02:38:45 GMT  
		Size: 2.3 KB (2282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:427ea509179868e567778e70b284db54fde4606e6233b20b7264f6899a9c8508`  
		Last Modified: Thu, 02 Jul 2026 09:23:25 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17d5b144d30fe5a592700724efedaae87f23a0baee5712d106079eecc1e4f9d0`  
		Last Modified: Thu, 02 Jul 2026 09:41:34 GMT  
		Size: 14.4 MB (14354447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0468b5033ed21ecc110bc242d3a05b1a5b73c0f6339f4c374dd14073abf43d2`  
		Last Modified: Thu, 02 Jul 2026 09:41:32 GMT  
		Size: 228.6 KB (228565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre21-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:ccb9408a2c94a336a21ed9b1e0b9cfdb3cc38dab44c6625566c85cb811aa9aa9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3346726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2d10792d736b998fb8f0fc223eca654c784d0b3acd71ce17b30158b48340d3c`

```dockerfile
```

-	Layers:
	-	`sha256:54163c03138e1ea3990b8255dd8676754ab793ff5efaddd3b853b53c3f9b7d4e`  
		Last Modified: Thu, 02 Jul 2026 09:41:32 GMT  
		Size: 3.3 MB (3323542 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2fd992e3f8d801164ed271622176f646969fce5419a8053dbe411c9e329e4dad`  
		Last Modified: Thu, 02 Jul 2026 09:41:31 GMT  
		Size: 23.2 KB (23184 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jre21-temurin-noble` - linux; s390x

```console
$ docker pull tomcat@sha256:105b3df8319c0ce7453abb120a70e357dd0c7edf4d51049c83e4d322b4004f5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.2 MB (111239562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd96a8189d99e2db357ad976260e665bdd5215af361ffd0dc191a4d263422441`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:04 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:04 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:05 GMT
ADD file:2e6c463b4adb9218af4efdc52eb0c653c0b81b2e15486825eeeee9fbbf21b4c7 in / 
# Mon, 22 Jun 2026 21:24:05 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:12:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:12:57 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:57 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:12:57 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Thu, 02 Jul 2026 02:13:53 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='e5038aae3ca9ff670bc696496b0728dbd23d280026bad30291cb919221ecfdcb';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        arm64)          ESUM='fa23d9d9945053e67bcc7638410eabf1e17a7672c7c95a24f70cd08b8407d36e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64el)          ESUM='fefb53c4bd687e7a91a9a9809ec80e0862e829cd20513839ad1a9988ddc89482';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        riscv64)          ESUM='f3d8843c5a1b77ded3353e0df85d803d84b9faa5ece20673564e7c47fc4591d9';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='45736e9e14d52619133900a077b4f72d1ebee0fd0bb053da0bca9dce9fc4d916';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:13:53 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:13:53 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:13:53 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 07 Jul 2026 21:09:10 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 07 Jul 2026 21:09:10 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 21:09:10 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 07 Jul 2026 21:09:10 GMT
WORKDIR /usr/local/tomcat
# Tue, 07 Jul 2026 21:09:10 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 07 Jul 2026 21:09:10 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 07 Jul 2026 21:09:10 GMT
ENV TOMCAT_MAJOR=9
# Tue, 07 Jul 2026 21:09:10 GMT
ENV TOMCAT_VERSION=9.0.120
# Tue, 07 Jul 2026 21:09:10 GMT
ENV TOMCAT_SHA512=07eb6d9639c3e69af81171a16ccff1c19b7fd5b2e87e3646851f0a3f42a4ce3c1bf128fbe40fc978a08935ba4f0400ef3b43ded3e470b9aaf23b97a9e1fa0858
# Tue, 07 Jul 2026 21:09:11 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 07 Jul 2026 21:09:14 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 21:09:16 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 07 Jul 2026 21:09:16 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 07 Jul 2026 21:09:16 GMT
ENTRYPOINT []
# Tue, 07 Jul 2026 21:09:16 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:017bf1549f7106f258688738600d68c2eebf2c29476ebfe929e2762f93f82609`  
		Last Modified: Tue, 23 Jun 2026 01:35:07 GMT  
		Size: 29.9 MB (29941314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:476fac0d5d3a7641a1daba5df2bf0b0405c3f995c682d350769fe51ff17d492b`  
		Last Modified: Thu, 02 Jul 2026 02:13:19 GMT  
		Size: 17.5 MB (17536176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72cd5434299daa60f960038a070cd8fa2a5d38eea398cb68eeb2d1d8ee215e82`  
		Last Modified: Thu, 02 Jul 2026 02:14:12 GMT  
		Size: 49.7 MB (49668456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7883b6fe62ad403d77951e8981728fc1d0e2a78fe2887fec6acbad7d74651c9`  
		Last Modified: Thu, 02 Jul 2026 02:14:11 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f632ba3c00723907f704f938cf46c5cf7c1197237d07402d8a8edfd66e24bb6f`  
		Last Modified: Thu, 02 Jul 2026 02:14:11 GMT  
		Size: 2.3 KB (2282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21fe18706d416e0b1e830eb884cae7149dca4a75c0bd75dff08516275512962a`  
		Last Modified: Tue, 07 Jul 2026 21:09:31 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75a8584eaf1f95bd8105056e23eba0f3526d111fa56aa9287b3592abe02c3adb`  
		Last Modified: Tue, 07 Jul 2026 21:09:31 GMT  
		Size: 13.9 MB (13857910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6df16ba415690adb7be30ded41af25a90553dbec917b1e26ca93695ac5dc93f`  
		Last Modified: Tue, 07 Jul 2026 21:09:31 GMT  
		Size: 233.1 KB (233061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre21-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:7f282369faeb22388214e51b34e1045346fea100a8142ce784f87a4f70eabe99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3356728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eef082d7ed315191e77a304b1df02eaceb9a3ad10b3d4b2037746ce36e2bdd23`

```dockerfile
```

-	Layers:
	-	`sha256:8c9f42340dcf325eb96f4f65d06b3099848e6474d59f46c82acb7dadde36bdaa`  
		Last Modified: Tue, 07 Jul 2026 21:09:31 GMT  
		Size: 3.3 MB (3333632 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:227e2fab7ce3aa0d49891d93e80ffc33ff8eda61bccb319dc2a20221f6c17048`  
		Last Modified: Tue, 07 Jul 2026 21:09:31 GMT  
		Size: 23.1 KB (23096 bytes)  
		MIME: application/vnd.in-toto+json
