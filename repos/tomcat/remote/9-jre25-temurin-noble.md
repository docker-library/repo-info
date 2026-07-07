## `tomcat:9-jre25-temurin-noble`

```console
$ docker pull tomcat@sha256:c7b3c5662f7ef8b237f405e3ea9e95fc7709100c9ef918c52333b8382a47a405
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
$ docker pull tomcat@sha256:992625ef231abfbe161648c35f5fbfcc1955e5add51ac67f736ace2306d783e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118276719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c7580c50cd4d3c9425ab34b41c5ad3cfa3c98ca815743c6347a02b6a23394de`
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
# Thu, 02 Jul 2026 02:21:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:21:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:21:53 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:21:53 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:21:53 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Thu, 02 Jul 2026 02:22:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='487ad434d8b121ae3902d5ad9cb830cd8e1f75fefad6e2ba80f89d60e3db95d7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        arm64)          ESUM='d12d5b19ff7f6c4a99fd4f9eecede2c96e64df7d1f41cc84f2e9c9b38408600b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64el)          ESUM='82daf66b73505d3974d831bd244acbb1123a340b7752ced449dcdca69ff3a780';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        riscv64)          ESUM='8325460857162b85050622962cee64cbc441ca9baf07f93a7535fd3f9962ca33';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='ee513969bef35f10afb7d06840d9a421138a3d30c062cde3dda8fe780dc451a2';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:22:08 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:22:08 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:22:08 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 07 Jul 2026 17:54:56 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 07 Jul 2026 17:54:56 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 17:54:56 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 07 Jul 2026 17:54:57 GMT
WORKDIR /usr/local/tomcat
# Tue, 07 Jul 2026 17:54:57 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 07 Jul 2026 17:54:57 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 07 Jul 2026 17:54:57 GMT
ENV TOMCAT_MAJOR=9
# Tue, 07 Jul 2026 17:54:57 GMT
ENV TOMCAT_VERSION=9.0.120
# Tue, 07 Jul 2026 17:54:57 GMT
ENV TOMCAT_SHA512=07eb6d9639c3e69af81171a16ccff1c19b7fd5b2e87e3646851f0a3f42a4ce3c1bf128fbe40fc978a08935ba4f0400ef3b43ded3e470b9aaf23b97a9e1fa0858
# Tue, 07 Jul 2026 17:54:57 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 07 Jul 2026 17:55:00 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:55:01 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 07 Jul 2026 17:55:01 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 07 Jul 2026 17:55:01 GMT
ENTRYPOINT []
# Tue, 07 Jul 2026 17:55:01 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e10951483a8cc3d89eca117d3ac11b4ecec6f65b0f105cc42c6b176d1df3a22e`  
		Last Modified: Thu, 02 Jul 2026 02:22:22 GMT  
		Size: 11.4 MB (11436968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c3bd3b5b199c0faf09f2b7414b3102afa7908897c5dd0cd9cfe0c41f8c464b3`  
		Last Modified: Thu, 02 Jul 2026 02:22:23 GMT  
		Size: 63.0 MB (63042732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52239bb54cad8a94bd2087a54085510aaf232369ef1584e977b36e2e14968c2f`  
		Last Modified: Thu, 02 Jul 2026 02:22:21 GMT  
		Size: 2.3 KB (2282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cacb773ea7766ab51368d9b3bfc0e70beb898dfaff536d7780e106f0273b67e7`  
		Last Modified: Tue, 07 Jul 2026 17:55:08 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e424cc2dadef104b361fbfff0b6a9b1ddb9de31e8ddf2ccad23ef386f8495509`  
		Last Modified: Tue, 07 Jul 2026 17:55:09 GMT  
		Size: 13.9 MB (13851124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf47ed8dad0c2c064a1c7d4d8481d5c4fed8f8061cea4cff4f94718f70358599`  
		Last Modified: Tue, 07 Jul 2026 17:55:08 GMT  
		Size: 207.8 KB (207777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre25-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:ca19967efb8d3ea3af594164ffc58b61d459d8db70bbc6f5d0febd5891616d73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3132490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8d1835796eeee9957751ea350f18a849f4dd356e220e34b4f7af27e63674a69`

```dockerfile
```

-	Layers:
	-	`sha256:4539a62be178910a1f7d8761bb98d084f31003e633cf6526005a9ea537509702`  
		Last Modified: Tue, 07 Jul 2026 17:55:08 GMT  
		Size: 3.1 MB (3109409 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64025dca06938043d052409b444c80b5b7f73071b261d5758445ae406d780f80`  
		Last Modified: Tue, 07 Jul 2026 17:55:08 GMT  
		Size: 23.1 KB (23081 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jre25-temurin-noble` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:fec8fbe2bc43b19308570e8331bed45ad8e58d411144228c015f4bac36459b6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.3 MB (116327951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:645eac36b1f2c35c240ea75a1ab690a672cd6548627bbf8b9e7bd18fdb6a6661`
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
# Thu, 02 Jul 2026 02:21:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:21:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:21:06 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:21:06 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:21:06 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Thu, 02 Jul 2026 02:21:21 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='487ad434d8b121ae3902d5ad9cb830cd8e1f75fefad6e2ba80f89d60e3db95d7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        arm64)          ESUM='d12d5b19ff7f6c4a99fd4f9eecede2c96e64df7d1f41cc84f2e9c9b38408600b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64el)          ESUM='82daf66b73505d3974d831bd244acbb1123a340b7752ced449dcdca69ff3a780';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        riscv64)          ESUM='8325460857162b85050622962cee64cbc441ca9baf07f93a7535fd3f9962ca33';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='ee513969bef35f10afb7d06840d9a421138a3d30c062cde3dda8fe780dc451a2';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:21:21 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:21:21 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:21:21 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 07 Jul 2026 17:55:00 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 07 Jul 2026 17:55:00 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 17:55:00 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 07 Jul 2026 17:55:00 GMT
WORKDIR /usr/local/tomcat
# Tue, 07 Jul 2026 17:55:00 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 07 Jul 2026 17:55:00 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 07 Jul 2026 17:55:00 GMT
ENV TOMCAT_MAJOR=9
# Tue, 07 Jul 2026 17:55:00 GMT
ENV TOMCAT_VERSION=9.0.120
# Tue, 07 Jul 2026 17:55:00 GMT
ENV TOMCAT_SHA512=07eb6d9639c3e69af81171a16ccff1c19b7fd5b2e87e3646851f0a3f42a4ce3c1bf128fbe40fc978a08935ba4f0400ef3b43ded3e470b9aaf23b97a9e1fa0858
# Tue, 07 Jul 2026 17:55:00 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 07 Jul 2026 17:55:05 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:55:05 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 07 Jul 2026 17:55:05 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 07 Jul 2026 17:55:05 GMT
ENTRYPOINT []
# Tue, 07 Jul 2026 17:55:05 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:149da39efb80d29aaec98ee626868991b2d37859bd07cb443a61319ff43b123f`  
		Last Modified: Thu, 02 Jul 2026 02:21:35 GMT  
		Size: 11.4 MB (11430534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:069199232015eecad793e21fd8b35d5553d4eeb879d962aacc54bef1696d5abd`  
		Last Modified: Thu, 02 Jul 2026 02:21:37 GMT  
		Size: 61.9 MB (61943146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eecdfb00c93af21fc3a8abf72d01d84a0414fcf66b44221435da6ac0505c364`  
		Last Modified: Thu, 02 Jul 2026 02:21:34 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1354cd4d45f3ed20585fb617765b7cc39c3ad5b63192540e06558c12375a9fd`  
		Last Modified: Tue, 07 Jul 2026 17:55:14 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d34c3c6dcd87495a561ec06f47725e30b7435e75e6521f42ca9e3d151674ebca`  
		Last Modified: Tue, 07 Jul 2026 17:55:14 GMT  
		Size: 13.9 MB (13860216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8963100f1cb15c0683e7c00e57c7d16810d9d68a34f17980785c3ff84c3e61a`  
		Last Modified: Tue, 07 Jul 2026 17:55:14 GMT  
		Size: 207.4 KB (207357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre25-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:65dd499d349f16e816ba8d9ec6abe6de5baca72f810f8f5457dbf3988b8c0195
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3133221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f05c3d2bfa54d5330d2b3910ce0b53c3785e7c5c975b2550c7cd0da5a5e1ff1e`

```dockerfile
```

-	Layers:
	-	`sha256:a1c2b1706d518135017b5c65dd4756a924df3656ee718011f8a16846aa3b1d20`  
		Last Modified: Tue, 07 Jul 2026 17:55:14 GMT  
		Size: 3.1 MB (3109919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:05ef3b7b2a3d19d26cfd5200eefce7f0d72f2083d9d2637de0bfdc4cd0dae752`  
		Last Modified: Tue, 07 Jul 2026 17:55:14 GMT  
		Size: 23.3 KB (23302 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jre25-temurin-noble` - linux; ppc64le

```console
$ docker pull tomcat@sha256:78dec63f916d5a2bdace0c34e116cdf95a0ec08ba76829f53c70612a332ef579
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.9 MB (122887724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff468246dd6573a08215d901f261492d1422d2469f9471f90f398f4cc2b45fce`
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
# Thu, 02 Jul 2026 02:27:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:27:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:27:58 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:27:58 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:27:58 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Thu, 02 Jul 2026 02:28:24 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='487ad434d8b121ae3902d5ad9cb830cd8e1f75fefad6e2ba80f89d60e3db95d7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        arm64)          ESUM='d12d5b19ff7f6c4a99fd4f9eecede2c96e64df7d1f41cc84f2e9c9b38408600b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64el)          ESUM='82daf66b73505d3974d831bd244acbb1123a340b7752ced449dcdca69ff3a780';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        riscv64)          ESUM='8325460857162b85050622962cee64cbc441ca9baf07f93a7535fd3f9962ca33';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='ee513969bef35f10afb7d06840d9a421138a3d30c062cde3dda8fe780dc451a2';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:28:25 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:28:25 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:28:25 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 02 Jul 2026 08:15:11 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 02 Jul 2026 08:15:11 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 08:15:11 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Thu, 02 Jul 2026 08:15:11 GMT
WORKDIR /usr/local/tomcat
# Thu, 02 Jul 2026 08:15:11 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 02 Jul 2026 08:15:11 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 02 Jul 2026 08:15:11 GMT
ENV TOMCAT_MAJOR=9
# Thu, 02 Jul 2026 08:15:11 GMT
ENV TOMCAT_VERSION=9.0.120
# Thu, 02 Jul 2026 08:15:11 GMT
ENV TOMCAT_SHA512=07eb6d9639c3e69af81171a16ccff1c19b7fd5b2e87e3646851f0a3f42a4ce3c1bf128fbe40fc978a08935ba4f0400ef3b43ded3e470b9aaf23b97a9e1fa0858
# Tue, 07 Jul 2026 19:08:51 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 07 Jul 2026 19:08:59 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 19:09:01 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 07 Jul 2026 19:09:01 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 07 Jul 2026 19:09:01 GMT
ENTRYPOINT []
# Tue, 07 Jul 2026 19:09:01 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04ae947197b1b3272308ae193c9ea99a18e2efda53668782cb159114b54defa7`  
		Last Modified: Thu, 02 Jul 2026 02:28:53 GMT  
		Size: 12.0 MB (12003320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79cf97e5fde3595b2bdbca3e60123ea8b0c776f67f3f832312c691f8952d4284`  
		Last Modified: Thu, 02 Jul 2026 02:28:54 GMT  
		Size: 62.4 MB (62442986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8cf674da19b3c0a46d388697d3f5bc105e8df24a3f04a21ddd224c82b83b5a7`  
		Last Modified: Thu, 02 Jul 2026 02:28:52 GMT  
		Size: 2.3 KB (2282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18dea78489d1f9f6c43d6631e152397e05c9b34b2ee3e9bb401f165d3efc09b5`  
		Last Modified: Thu, 02 Jul 2026 08:15:55 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73b3f0dde16ecb6bd83549cf98f5a067ad87d29ffcceca10169fc0c853a57ecc`  
		Last Modified: Tue, 07 Jul 2026 19:09:22 GMT  
		Size: 13.9 MB (13886587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6bfb8da1ce8d52b9de10f980f28086fdd5bd340e1e52a5df72fff50a0ba280b`  
		Last Modified: Tue, 07 Jul 2026 19:09:21 GMT  
		Size: 238.8 KB (238838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre25-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:257b23daf27df8ae7e05aa63ff0b13ce5b54167908c7c925e37353fb9893d2b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3135906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87e4129766f95171e31b56a6be07c707c39a3052ff07c56d1b86bb39d70f6fd1`

```dockerfile
```

-	Layers:
	-	`sha256:4a831689fcc2b99eb07b0af46fe4fce4fb197ee98259913b1bbdd8f341342a1a`  
		Last Modified: Tue, 07 Jul 2026 19:09:22 GMT  
		Size: 3.1 MB (3112736 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:735acb16fa4b5dc745a002b2115f7f3b8777bec11f6ca844c49e5d740d194fa5`  
		Last Modified: Tue, 07 Jul 2026 19:09:21 GMT  
		Size: 23.2 KB (23170 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jre25-temurin-noble` - linux; riscv64

```console
$ docker pull tomcat@sha256:7a9202ca9a192d7b49354e0cccfc83553b530fd9a527e387e3a3583788e04e85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.8 MB (118761356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14ad563231152172adf9ced5e378f16665603a56350c66555bf593c0fca74368`
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
# Thu, 02 Jul 2026 02:49:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:49:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:49:01 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:49:01 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:49:01 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Thu, 02 Jul 2026 02:51:28 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='487ad434d8b121ae3902d5ad9cb830cd8e1f75fefad6e2ba80f89d60e3db95d7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        arm64)          ESUM='d12d5b19ff7f6c4a99fd4f9eecede2c96e64df7d1f41cc84f2e9c9b38408600b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64el)          ESUM='82daf66b73505d3974d831bd244acbb1123a340b7752ced449dcdca69ff3a780';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        riscv64)          ESUM='8325460857162b85050622962cee64cbc441ca9baf07f93a7535fd3f9962ca33';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='ee513969bef35f10afb7d06840d9a421138a3d30c062cde3dda8fe780dc451a2';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:51:29 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:51:29 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:51:29 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 02 Jul 2026 09:17:48 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 02 Jul 2026 09:17:48 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 09:17:48 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Thu, 02 Jul 2026 09:17:49 GMT
WORKDIR /usr/local/tomcat
# Thu, 02 Jul 2026 09:17:49 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 02 Jul 2026 09:17:49 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 02 Jul 2026 09:17:49 GMT
ENV TOMCAT_MAJOR=9
# Thu, 02 Jul 2026 09:17:49 GMT
ENV TOMCAT_VERSION=9.0.119
# Thu, 02 Jul 2026 09:17:49 GMT
ENV TOMCAT_SHA512=5215f1c672a9869f8405e440afcc84cc8a2f1e2dce795f5afbaa534d1bc9f2ca20f083661b1d893b9ef26b9b57aa048215c58b861d808130362ba1422a23649a
# Thu, 02 Jul 2026 09:35:56 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Thu, 02 Jul 2026 09:36:36 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 09:36:45 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Thu, 02 Jul 2026 09:36:45 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 02 Jul 2026 09:36:45 GMT
ENTRYPOINT []
# Thu, 02 Jul 2026 09:36:45 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:d36d9a4ee5b21337a0038d06f00582b458b412ffa7aa3be4086c8692dfab4687`  
		Last Modified: Tue, 23 Jun 2026 01:35:00 GMT  
		Size: 31.0 MB (30971606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a4e3c69b0a5f74a82fafd799cd0fb3ffef41f3db3f18856d118f1d6fee89ab5`  
		Last Modified: Thu, 02 Jul 2026 02:54:10 GMT  
		Size: 11.5 MB (11527724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bc368a72911ac3901ce0a085127788ad9e81996f70558dc8ddcccda80bae9a0`  
		Last Modified: Thu, 02 Jul 2026 02:54:18 GMT  
		Size: 61.7 MB (61694091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80c985f43bbe1fe525c56514ee8a74098ea03cceb7eacc2ea59e6834316918b7`  
		Last Modified: Thu, 02 Jul 2026 02:54:07 GMT  
		Size: 2.3 KB (2281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a1ffcd5beb15786d3f7c14f8edb4195523a9f274a15cbe05bdf973e47896ab8`  
		Last Modified: Thu, 02 Jul 2026 09:20:21 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1b6672bdf7509865cb577c568a10289dec9ba114378c29564f193702bf76039`  
		Last Modified: Thu, 02 Jul 2026 09:38:29 GMT  
		Size: 14.4 MB (14354814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ae199bc73fc9c69a972fced8bdb2ebbd55d079c485a6dcd2bad35fe80876845`  
		Last Modified: Thu, 02 Jul 2026 09:38:27 GMT  
		Size: 210.6 KB (210605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre25-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:df03f55150dcecbe44bc9d2ea280905019b2e978e6d78c68d7478e7709950751
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3124602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85aceb3e823e28f4b46bb2e809b9e785c1417bb077afa07bce7afb1ea5e73e05`

```dockerfile
```

-	Layers:
	-	`sha256:51f38ed2abc37a7b1d0a144dbedbde9b11c590c394985255cc2d6282742edb56`  
		Last Modified: Thu, 02 Jul 2026 09:38:27 GMT  
		Size: 3.1 MB (3101432 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d4c7f538b52943b41f3f91afafbcb8e8f68141ae13ab59e4165affb916fc83c8`  
		Last Modified: Thu, 02 Jul 2026 09:38:27 GMT  
		Size: 23.2 KB (23170 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jre25-temurin-noble` - linux; s390x

```console
$ docker pull tomcat@sha256:9f4e3c688a19aacd5279979a71f4f35c3569632d77e7ac452fee1e77e2a89773
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.3 MB (116266651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2409ecbd6f526f2e958b60fda7a6a446a77fcd677bc2dc3e6a0399a54015095`
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
# Thu, 02 Jul 2026 02:15:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:15:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:15:32 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:15:32 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:15:32 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Thu, 02 Jul 2026 02:15:42 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='487ad434d8b121ae3902d5ad9cb830cd8e1f75fefad6e2ba80f89d60e3db95d7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        arm64)          ESUM='d12d5b19ff7f6c4a99fd4f9eecede2c96e64df7d1f41cc84f2e9c9b38408600b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64el)          ESUM='82daf66b73505d3974d831bd244acbb1123a340b7752ced449dcdca69ff3a780';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        riscv64)          ESUM='8325460857162b85050622962cee64cbc441ca9baf07f93a7535fd3f9962ca33';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='ee513969bef35f10afb7d06840d9a421138a3d30c062cde3dda8fe780dc451a2';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:15:42 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:15:42 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:15:42 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 02 Jul 2026 06:16:38 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 02 Jul 2026 06:16:38 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:16:38 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Thu, 02 Jul 2026 06:16:38 GMT
WORKDIR /usr/local/tomcat
# Thu, 02 Jul 2026 06:16:38 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 02 Jul 2026 06:16:38 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 02 Jul 2026 06:16:38 GMT
ENV TOMCAT_MAJOR=9
# Thu, 02 Jul 2026 06:16:38 GMT
ENV TOMCAT_VERSION=9.0.120
# Thu, 02 Jul 2026 06:16:38 GMT
ENV TOMCAT_SHA512=07eb6d9639c3e69af81171a16ccff1c19b7fd5b2e87e3646851f0a3f42a4ce3c1bf128fbe40fc978a08935ba4f0400ef3b43ded3e470b9aaf23b97a9e1fa0858
# Tue, 07 Jul 2026 21:09:03 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 07 Jul 2026 21:09:07 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 21:09:08 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 07 Jul 2026 21:09:08 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 07 Jul 2026 21:09:08 GMT
ENTRYPOINT []
# Tue, 07 Jul 2026 21:09:08 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:017bf1549f7106f258688738600d68c2eebf2c29476ebfe929e2762f93f82609`  
		Last Modified: Tue, 23 Jun 2026 01:35:07 GMT  
		Size: 29.9 MB (29941314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:179940f3693cadfac186d575d9831fa100a31c45a3924d2e5c3823deb71e5315`  
		Last Modified: Thu, 02 Jul 2026 02:16:02 GMT  
		Size: 11.7 MB (11716604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7993c935ce72972ff29ff7a54ea66a278fcd45b29143cda71c9ba8c38c7f15d`  
		Last Modified: Thu, 02 Jul 2026 02:16:02 GMT  
		Size: 60.5 MB (60531728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d9e52bfafb72c885c77c546f6f024b9312b2eee241e0e17f384d3f715d59c7e`  
		Last Modified: Thu, 02 Jul 2026 02:16:01 GMT  
		Size: 2.3 KB (2282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2d84d16972007cd7638132250838c94c45c623d39e8f15af3173c25585c8a39`  
		Last Modified: Thu, 02 Jul 2026 06:16:55 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:428270aee900341ae4ffa463a1c8d675869f9704250421c7424f8ac99346ae4a`  
		Last Modified: Tue, 07 Jul 2026 21:09:23 GMT  
		Size: 13.9 MB (13859251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2de8fb90fae25795c16c455ed4508288c629abe37ed41bcd88940192188f8e73`  
		Last Modified: Tue, 07 Jul 2026 21:09:23 GMT  
		Size: 215.2 KB (215238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre25-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:50ba9b2dff690491f5e28c1964a81ccc89a9bb66daa892e2a730a63b60a93416
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3134087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e28c45d7be0432477ceefaab70770d9f7bb7a092d141ba05d4a28c90b74d3a08`

```dockerfile
```

-	Layers:
	-	`sha256:afb1730274724d617d03481e193bf3e222584a374fb8ca9232cf9f255d985d8c`  
		Last Modified: Tue, 07 Jul 2026 21:09:23 GMT  
		Size: 3.1 MB (3111006 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6cb381771acb3a056ad8f42f176123bcf2ef9c42c22a252747b2bc0a7c4fdcf7`  
		Last Modified: Tue, 07 Jul 2026 21:09:23 GMT  
		Size: 23.1 KB (23081 bytes)  
		MIME: application/vnd.in-toto+json
