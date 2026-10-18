## `tomcat:9-jre21-temurin-noble`

```console
$ docker pull tomcat@sha256:d37c4c1bd717158ddae4f10c3d28b366b3df49b8bfa79877c8c8246dfe22e7e8
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
$ docker pull tomcat@sha256:f0475551df3e92065b268ca9488bfc3ac513f4ce520c1c67d5ce8a4f4b721303
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.0 MB (113972559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d173178f7bcdcc85861eedfa0cf31dec0afdc418d7b29a2be6053546a79100d`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:19:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:19:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:19:40 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:19:40 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:19:40 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Sat, 17 Oct 2026 00:19:43 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        riscv64)          ESUM='7b0731083e1f298d2216b266bfbb2ea600482cc025362af4129aaed758afc611';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sat, 17 Oct 2026 00:19:43 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:19:44 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:19:44 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 17 Oct 2026 02:29:43 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 17 Oct 2026 02:29:43 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 02:29:43 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Sat, 17 Oct 2026 02:29:43 GMT
WORKDIR /usr/local/tomcat
# Sat, 17 Oct 2026 02:29:43 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 17 Oct 2026 02:29:43 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 17 Oct 2026 02:29:43 GMT
ENV TOMCAT_MAJOR=9
# Sat, 17 Oct 2026 02:29:43 GMT
ENV TOMCAT_VERSION=9.0.123
# Sat, 17 Oct 2026 02:29:43 GMT
ENV TOMCAT_SHA512=64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290
# Sat, 17 Oct 2026 02:29:44 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Sat, 17 Oct 2026 02:29:50 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:29:51 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Sat, 17 Oct 2026 02:29:51 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 17 Oct 2026 02:29:51 GMT
ENTRYPOINT []
# Sat, 17 Oct 2026 02:29:51 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaf861d4f8188e5ffe8a72588a029791e5605215fc8e74d125ac87d2372d07ff`  
		Last Modified: Sat, 17 Oct 2026 00:19:57 GMT  
		Size: 17.0 MB (16967790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f110615a9f6f3376123623427eb4979de0495b4a0b84273f23b01f2b42149382`  
		Last Modified: Sat, 17 Oct 2026 00:19:58 GMT  
		Size: 53.1 MB (53097606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97cb90eb1a2d7da0184ac4c165eeeb9defb596958c6b31f8d8af4e51814329f7`  
		Last Modified: Sat, 17 Oct 2026 00:19:56 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0911c87c1c74b29ce1bb866a50a6ae50a316c3b9b068e7c558312f827e151a1`  
		Last Modified: Sat, 17 Oct 2026 00:19:56 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94b475dfe9df2ab1c3127ba3bf6fd257bed183ec11fcddb7f533a0fa8dc1b45d`  
		Last Modified: Sat, 17 Oct 2026 02:29:59 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cb75aca86e135c432574f88156f3ec488bb69734edb6a5f7973463276514001`  
		Last Modified: Sat, 17 Oct 2026 02:30:00 GMT  
		Size: 13.9 MB (13913230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2b712d2714f4d5f0c2f1fab72857ec3106819676fa08c5198e8c975fdb856f0`  
		Last Modified: Sat, 17 Oct 2026 02:29:59 GMT  
		Size: 225.4 KB (225352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre21-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:7cdefaf1f266ebb0f17a2ef431c493400b4277fea1ee251a7f04f9364df60e7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3350833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a217b5c0008f3ee12c362d3fb56bfe7f53c45da6f2c5d17fee2e5a1d54a94fd`

```dockerfile
```

-	Layers:
	-	`sha256:9a2221266309ca4fa44f6a0e3cefc3df005facdf22dabe61eb9aef2d06f11642`  
		Last Modified: Sat, 17 Oct 2026 02:29:59 GMT  
		Size: 3.3 MB (3329615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d15d5df871478e64b38868adfff0525eace31013c4dc4c4f04cb144873cdf81a`  
		Last Modified: Sat, 17 Oct 2026 02:29:59 GMT  
		Size: 21.2 KB (21218 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jre21-temurin-noble` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:005215718531e4a6255ccd1315e1d8567672f2102f0ff0dcd222a3af27bc1087
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.3 MB (112344475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4452743d2153f8587e35b2a9034f7f30a177af7e43752817c0c5c9eef4c98ce`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:19:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:19:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:19:36 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:19:36 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:19:36 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Sat, 17 Oct 2026 00:19:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        riscv64)          ESUM='7b0731083e1f298d2216b266bfbb2ea600482cc025362af4129aaed758afc611';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sat, 17 Oct 2026 00:19:40 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:19:40 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:19:40 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 17 Oct 2026 02:29:33 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 17 Oct 2026 02:29:33 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 02:29:33 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Sat, 17 Oct 2026 02:29:33 GMT
WORKDIR /usr/local/tomcat
# Sat, 17 Oct 2026 02:29:33 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 17 Oct 2026 02:29:33 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 17 Oct 2026 02:29:33 GMT
ENV TOMCAT_MAJOR=9
# Sat, 17 Oct 2026 02:29:33 GMT
ENV TOMCAT_VERSION=9.0.123
# Sat, 17 Oct 2026 02:29:33 GMT
ENV TOMCAT_SHA512=64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290
# Sat, 17 Oct 2026 02:29:33 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Sat, 17 Oct 2026 02:29:42 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:29:42 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Sat, 17 Oct 2026 02:29:42 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 17 Oct 2026 02:29:42 GMT
ENTRYPOINT []
# Sat, 17 Oct 2026 02:29:42 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84e3cbf87c3518dbf60ff06aac90f06c32807eb24dfd96d5b5ca7f7e9886370a`  
		Last Modified: Sat, 17 Oct 2026 00:19:53 GMT  
		Size: 17.0 MB (16977505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b2c5d85e699a04b84f5095a28d0f6ef588c5f56d05b5921e1b94f54cd2773f3`  
		Last Modified: Sat, 17 Oct 2026 00:19:54 GMT  
		Size: 52.3 MB (52273854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70542b197b1460be941a11d55f176cd50e31c1839b23bdcde8887ff1ab7eb8ae`  
		Last Modified: Sat, 17 Oct 2026 00:19:52 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b345474eca76b320f9140446aa0d3a2b9c2f11928bda8408423754292f48f1f`  
		Last Modified: Sat, 17 Oct 2026 00:19:52 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7e4e4c077eaa923ffade1c44520e4402684de2938b86a11b41807fbbb7a1dc6`  
		Last Modified: Sat, 17 Oct 2026 02:29:54 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77f1bc9773cb377499aa4b43108b8ff94b43f23f93f24e458613f21cd3d08832`  
		Last Modified: Sat, 17 Oct 2026 02:29:54 GMT  
		Size: 13.9 MB (13924859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:045e1aa94505d99670af008c51b5d19a7d72bf6e4dd50a58614341c80562a55c`  
		Last Modified: Sat, 17 Oct 2026 02:29:54 GMT  
		Size: 225.7 KB (225670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre21-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:6b964c9c9033328bec19547e2c4aa53c94a3b301071b35b984627340c9733edd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3351442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9df718ad37ebf130cf187f6ac6a39df55d36697c4cb4dc1ea748b27ed593d076`

```dockerfile
```

-	Layers:
	-	`sha256:ebb095ae2cd9d15ae8f79bd23503f79bb2d719548f2677062b9a2256d590f187`  
		Last Modified: Sat, 17 Oct 2026 02:29:54 GMT  
		Size: 3.3 MB (3330075 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8b540df482bfe87c2b5a0b7e15592ad08932bd71c9dac92f6789c5c5c030fc3`  
		Last Modified: Sat, 17 Oct 2026 02:29:54 GMT  
		Size: 21.4 KB (21367 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jre21-temurin-noble` - linux; ppc64le

```console
$ docker pull tomcat@sha256:a5f2828faad492fc4eb9ac622780ec6a6589db36b7717e0b0cd71a7361b080a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120490051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f46633325a65e11af7aba9fd2b9b3ca1b7884c9bc6300b6b832977ce85376db0`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 02 Oct 2026 08:03:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:03:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:03:53 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:03:57 GMT
ADD file:453509713ec04b626052519f384e2b9d016f8f4971a3e6dd75d87e74e89202c9 in / 
# Fri, 02 Oct 2026 08:03:57 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:18:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:18:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:18:01 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:18:01 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:18:01 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Sat, 17 Oct 2026 00:34:44 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        riscv64)          ESUM='7b0731083e1f298d2216b266bfbb2ea600482cc025362af4129aaed758afc611';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sat, 17 Oct 2026 00:34:45 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:34:46 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:34:46 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 17 Oct 2026 07:40:18 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 17 Oct 2026 07:40:18 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 07:40:18 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Sat, 17 Oct 2026 07:40:18 GMT
WORKDIR /usr/local/tomcat
# Sat, 17 Oct 2026 07:40:18 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 17 Oct 2026 07:40:18 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 17 Oct 2026 07:40:18 GMT
ENV TOMCAT_MAJOR=9
# Sat, 17 Oct 2026 07:40:18 GMT
ENV TOMCAT_VERSION=9.0.123
# Sat, 17 Oct 2026 07:40:18 GMT
ENV TOMCAT_SHA512=64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290
# Sat, 17 Oct 2026 07:50:08 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Sat, 17 Oct 2026 07:50:22 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 07:50:24 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Sat, 17 Oct 2026 07:50:24 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 17 Oct 2026 07:50:24 GMT
ENTRYPOINT []
# Sat, 17 Oct 2026 07:50:24 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59db6a9d1a3ed60eb660e98a86b2cf1acd7c3a89fce5eae4653554ef133113fc`  
		Last Modified: Sat, 17 Oct 2026 00:18:57 GMT  
		Size: 18.8 MB (18785839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e93d7d3f4a7a097a0d29cbf4a975e49985c8334453ed4770f5cc530597204d65`  
		Last Modified: Sat, 17 Oct 2026 00:35:37 GMT  
		Size: 53.1 MB (53114356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3277562e163caf9573113c443bfb398565cf3218936c52344e5cc7f4120cd77`  
		Last Modified: Sat, 17 Oct 2026 00:35:35 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1d0bb9048557523f67935fafef816fa8f883a68f2502aa675d04830495053b0`  
		Last Modified: Sat, 17 Oct 2026 00:35:35 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e29cdaf355e2f581ef9a8d7ae126823c2883442baf189feba259315b47c17194`  
		Last Modified: Sat, 17 Oct 2026 07:40:51 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62cf3898c56f5be0fb7668f60f97a93332a32131a1532ba2c4c3b99c0eaa979a`  
		Last Modified: Sat, 17 Oct 2026 07:50:46 GMT  
		Size: 14.0 MB (13951738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80d2277d29c3b8f5f3c75e9a22b34a845697cdcf136bd66bb1e1aaf84cb61c3e`  
		Last Modified: Sat, 17 Oct 2026 07:50:46 GMT  
		Size: 257.3 KB (257301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre21-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:958c36cfbcd0bf163f436064e4fd7b48d9d74f0d4e181780f22c7095ea6fd0b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3354957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfb613119e0684ca7506a7b7c1b4a54c41099dab58be9be0ddffc362df506fba`

```dockerfile
```

-	Layers:
	-	`sha256:98ab3a8f53b4cd467633d0a36d8b770cf2ed88357c1173a29a2a1f32b1ac5453`  
		Last Modified: Sat, 17 Oct 2026 07:50:46 GMT  
		Size: 3.3 MB (3333686 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:22f3983e63c2a6feefcd6249818b345b3db0dfed075f9fc85e7347c7df2d187b`  
		Last Modified: Sat, 17 Oct 2026 07:50:46 GMT  
		Size: 21.3 KB (21271 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jre21-temurin-noble` - linux; riscv64

```console
$ docker pull tomcat@sha256:c68848ac550e9ff8fbb74f4b9956ae7505496b78fad44ed3d3c3bf3cc9a8e9be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.1 MB (116149539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:396bd6e9fc63967caab944f0978b6af463130195eda5ca97cf99c9d966be0192`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 02 Oct 2026 08:25:26 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:25:27 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:25:27 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:26:13 GMT
ADD file:902c2a17706a401d4186db6f76d930ee8d9bfdf11a18905ad7b4475895533666 in / 
# Fri, 02 Oct 2026 08:26:17 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 15:44:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 15:44:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 15:44:47 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 15:44:47 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 15:44:47 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Sat, 17 Oct 2026 15:54:33 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        riscv64)          ESUM='7b0731083e1f298d2216b266bfbb2ea600482cc025362af4129aaed758afc611';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sat, 17 Oct 2026 15:54:33 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 15:54:34 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 15:54:34 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 17 Oct 2026 23:03:36 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 17 Oct 2026 23:03:36 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 23:03:36 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Sat, 17 Oct 2026 23:03:36 GMT
WORKDIR /usr/local/tomcat
# Sat, 17 Oct 2026 23:03:36 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 17 Oct 2026 23:03:36 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 17 Oct 2026 23:03:36 GMT
ENV TOMCAT_MAJOR=9
# Sat, 17 Oct 2026 23:03:36 GMT
ENV TOMCAT_VERSION=9.0.123
# Sat, 17 Oct 2026 23:03:36 GMT
ENV TOMCAT_SHA512=64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290
# Sat, 17 Oct 2026 23:30:29 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Sat, 17 Oct 2026 23:31:13 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 23:31:22 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Sat, 17 Oct 2026 23:31:22 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 17 Oct 2026 23:31:22 GMT
ENTRYPOINT []
# Sat, 17 Oct 2026 23:31:22 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:6ac3b4459b1cfc53476c9bca2bcbbd91ffee22c902b3d5791e258f4a99455cf0`  
		Last Modified: Fri, 02 Oct 2026 08:36:44 GMT  
		Size: 31.1 MB (31052636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efab1a70aa08bf6470ebb5ef632b4b2051ea7c51767fddc1e8229a18650e1507`  
		Last Modified: Sat, 17 Oct 2026 15:47:33 GMT  
		Size: 17.8 MB (17845039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55d1d19dbbdb7bcd123323bb4c6688a36ba020d16e50eae626a741bfd65ef17d`  
		Last Modified: Sat, 17 Oct 2026 15:57:09 GMT  
		Size: 52.6 MB (52597297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f53a8680a56ae8488a7c229ed9af4cc6d619d9a8f9364fde16514545db312e1`  
		Last Modified: Sat, 17 Oct 2026 15:57:01 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:583571773a83ba26c9ce15316e6a02538d78ae7a3f975c86dba77e3d7f332cbc`  
		Last Modified: Sat, 17 Oct 2026 15:57:01 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:378c3997a8765a628703165243b7349399a24b6935a863bc4814226f39a0250c`  
		Last Modified: Sat, 17 Oct 2026 23:06:26 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d62547833947e54902230abbe958e41e801c5adc109214b466d1a1c1c29336b1`  
		Last Modified: Sat, 17 Oct 2026 23:33:21 GMT  
		Size: 14.4 MB (14422804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ffa3746a2baaf921d793960601bd771d3320e2a68f47f805aa131a779deb2d3`  
		Last Modified: Sat, 17 Oct 2026 23:33:19 GMT  
		Size: 228.9 KB (228937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre21-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:047dbd7c2ed46ddebe9758ef9e23d9399f28c1ceaf5f56f886dec7cd4da07da0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3342959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13a3af5e05fb12300a17d22bff2671c641eab0f35e23afb2f2be8886644aeca1`

```dockerfile
```

-	Layers:
	-	`sha256:25d87deabef09ec1c891e3eed1c222d5814e9dfc4d245825f4739eb7c2a81387`  
		Last Modified: Sat, 17 Oct 2026 23:33:19 GMT  
		Size: 3.3 MB (3321688 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f53b0a79e3d822cce662cb7440d80a0ce799ca181b37b6a452ba740770100010`  
		Last Modified: Sat, 17 Oct 2026 23:33:18 GMT  
		Size: 21.3 KB (21271 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jre21-temurin-noble` - linux; s390x

```console
$ docker pull tomcat@sha256:6c4ee2c07496234f73ce323b52f91ec953fa07382c0dd5240a33e36a72de4465
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.3 MB (111303774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aff2ab6172f4c9aa438dce40f40540ad2dc5cc2ded3f7c90855d8f4a705db760`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:03 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:04 GMT
ADD file:82fcbc85b577996d551267407ad62089cd19d90c5b58692649763a56286be003 in / 
# Fri, 02 Oct 2026 08:10:04 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:11:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:11:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:11:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:11:43 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:11:43 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Sat, 17 Oct 2026 00:15:43 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        riscv64)          ESUM='7b0731083e1f298d2216b266bfbb2ea600482cc025362af4129aaed758afc611';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sat, 17 Oct 2026 00:15:43 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:15:44 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:15:44 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 17 Oct 2026 03:11:53 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 17 Oct 2026 03:11:53 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 03:11:53 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Sat, 17 Oct 2026 03:11:53 GMT
WORKDIR /usr/local/tomcat
# Sat, 17 Oct 2026 03:11:53 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 17 Oct 2026 03:11:53 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 17 Oct 2026 03:11:53 GMT
ENV TOMCAT_MAJOR=9
# Sat, 17 Oct 2026 03:11:53 GMT
ENV TOMCAT_VERSION=9.0.123
# Sat, 17 Oct 2026 03:11:53 GMT
ENV TOMCAT_SHA512=64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290
# Sat, 17 Oct 2026 03:11:54 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Sat, 17 Oct 2026 03:11:56 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 03:11:57 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Sat, 17 Oct 2026 03:11:57 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 17 Oct 2026 03:11:57 GMT
ENTRYPOINT []
# Sat, 17 Oct 2026 03:11:57 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:065d1f6c380ca54736c8a4f70bc4b730e9eb82685c699b9c66d38d0136763b43`  
		Last Modified: Fri, 02 Oct 2026 08:36:52 GMT  
		Size: 29.9 MB (29946330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12f8d2ae8864d0bb0405c9bf6e5d47e4d82d94105cd0ee75f31d61d15b560de6`  
		Last Modified: Sat, 17 Oct 2026 00:12:17 GMT  
		Size: 17.6 MB (17557925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42be153494b565861ca05f49acd0dedafdd5628abc915e1a04837727cd0bcc9a`  
		Last Modified: Sat, 17 Oct 2026 00:16:07 GMT  
		Size: 49.6 MB (49638217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:723902bdb9de72b9d0cd592ac22b62b5b77cd501e7e09ded8a8ff4dbc1de564d`  
		Last Modified: Sat, 17 Oct 2026 00:16:05 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b0518e8d2955027a6d7365da2597af822e26dbb3087611fee926b57c6790906`  
		Last Modified: Sat, 17 Oct 2026 00:16:05 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bbcd465cdc5e11e0bdb844cf2fdd661c78fe38091804ff20370067d25f71cdb`  
		Last Modified: Sat, 17 Oct 2026 03:12:11 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c80be1f6b85fa3e2dec7d20d2be53b74eb6d3485a83ed843654370326faab04`  
		Last Modified: Sat, 17 Oct 2026 03:12:13 GMT  
		Size: 13.9 MB (13925094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f62009d5b0ee19a43b1238e6083dd19b32107dfe29c0932a12e4160b4d4507ca`  
		Last Modified: Sat, 17 Oct 2026 03:12:11 GMT  
		Size: 233.4 KB (233380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre21-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:c681948b2484e794727302d22570f846a919c81ae349b21fd842b29c8272ca08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3353033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:138ede9ec6e3a8eee8cda0a86f6182b08328db34871691409be277029c863c92`

```dockerfile
```

-	Layers:
	-	`sha256:0d49af14ae052b4d6e19d60a687e26eb49d42d0b8b4bbbecb9beddb766571ae7`  
		Last Modified: Sat, 17 Oct 2026 03:12:11 GMT  
		Size: 3.3 MB (3331814 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95b75cde3b2898910fabf2f8a1560cadeb26d8d13a7f83cbb3ba6390120185e5`  
		Last Modified: Sat, 17 Oct 2026 03:12:10 GMT  
		Size: 21.2 KB (21219 bytes)  
		MIME: application/vnd.in-toto+json
