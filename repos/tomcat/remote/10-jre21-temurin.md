## `tomcat:10-jre21-temurin`

```console
$ docker pull tomcat@sha256:f7f227b9b6b25fdffb02ac0ac7bad1b252e70d76dab272a827d03d7fb305a277
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

### `tomcat:10-jre21-temurin` - linux; amd64

```console
$ docker pull tomcat@sha256:9e9a9c19e821961f554bba66ca071cc939dde133f3dc8cfe9157f67226f430d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.4 MB (114409235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:782589ec63b0d635b52619c909b62b7e3c1e224736d81443589b70b0a7a52c5b`
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
# Tue, 18 Aug 2026 19:15:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 19:15:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 19:15:35 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 19:15:35 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:15:35 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Tue, 18 Aug 2026 19:16:11 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='e5038aae3ca9ff670bc696496b0728dbd23d280026bad30291cb919221ecfdcb';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        arm64)          ESUM='fa23d9d9945053e67bcc7638410eabf1e17a7672c7c95a24f70cd08b8407d36e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64el)          ESUM='fefb53c4bd687e7a91a9a9809ec80e0862e829cd20513839ad1a9988ddc89482';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        riscv64)          ESUM='f3d8843c5a1b77ded3353e0df85d803d84b9faa5ece20673564e7c47fc4591d9';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='45736e9e14d52619133900a077b4f72d1ebee0fd0bb053da0bca9dce9fc4d916';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 18 Aug 2026 19:16:11 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 18 Aug 2026 19:16:11 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 18 Aug 2026 19:16:11 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 18 Aug 2026 21:15:39 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 18 Aug 2026 21:15:39 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 21:15:39 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 18 Aug 2026 21:15:39 GMT
WORKDIR /usr/local/tomcat
# Tue, 18 Aug 2026 21:15:39 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 21:15:39 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 21:15:39 GMT
ENV TOMCAT_MAJOR=10
# Tue, 18 Aug 2026 21:15:39 GMT
ENV TOMCAT_VERSION=10.1.57
# Tue, 18 Aug 2026 21:15:39 GMT
ENV TOMCAT_SHA512=2fa1866ec647d4222b07ea937a4cc266adee219a1a8870107e72fc2349248dd1e32b157fa18108451f4c6e3b162f0fdfbdd11dd7855d4e49a2f0f609004a77f3
# Tue, 18 Aug 2026 21:15:39 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 18 Aug 2026 21:15:43 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 21:15:43 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 18 Aug 2026 21:15:43 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 18 Aug 2026 21:15:43 GMT
ENTRYPOINT []
# Tue, 18 Aug 2026 21:15:43 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2771b2e9ef6b54dcdf2f31bfbba037f8b65d1e3eab3a15aa5173c63409d1fa30`  
		Last Modified: Tue, 18 Aug 2026 19:15:58 GMT  
		Size: 16.9 MB (16945503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:634b8a7a3f1340e536238a3cac6000e0067396c2785a0263a7c819295d1fa683`  
		Last Modified: Tue, 18 Aug 2026 19:16:25 GMT  
		Size: 53.1 MB (53123240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9105b6f366b2847256e96e3a2b6a4d39ed0ea7154bbbe8b9b2e11381a7cfc361`  
		Last Modified: Tue, 18 Aug 2026 19:16:23 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17c7052a0132f9c7dff0e902fec1cd10acdfbd052bb7a74d3e978de00f3e0fb8`  
		Last Modified: Tue, 18 Aug 2026 19:16:23 GMT  
		Size: 2.3 KB (2282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54e2dffc28b1fd874884a8139167bd43e3769e5843c69cc625ccae1fe10fda9b`  
		Last Modified: Tue, 18 Aug 2026 21:15:52 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16d3c4cde223f0e252dc14a04fc1c7a572c68f36bc23937ae62e571f690c10bc`  
		Last Modified: Tue, 18 Aug 2026 21:15:52 GMT  
		Size: 14.4 MB (14359776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:319edbef5c963fb3f423b2e3ff97ecc399168c79960f07dfb249b4bcea4f93ac`  
		Last Modified: Tue, 18 Aug 2026 21:15:52 GMT  
		Size: 225.3 KB (225265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:10-jre21-temurin` - unknown; unknown

```console
$ docker pull tomcat@sha256:4180637d0bad3b2e83f3ecd7ad9d5ab0c6c0e49504ed9034118c174e27bc0c57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3357249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acf9b5b0d993cdae772eee777aba84b948c5b238d05b51dd66b4d28631a90bc5`

```dockerfile
```

-	Layers:
	-	`sha256:204ffa2b811c27904035768a946ef66dda50ec54b1a62a221a47e18b086f8301`  
		Last Modified: Tue, 18 Aug 2026 21:15:52 GMT  
		Size: 3.3 MB (3334137 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e333c7d24eb8c2d065bac2c582e483291d4974ed948c16d1b1a8b7f7bc591570`  
		Last Modified: Tue, 18 Aug 2026 21:15:52 GMT  
		Size: 23.1 KB (23112 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:10-jre21-temurin` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:9fbb72fc728a041994f78061dbd202e9ed505d1381efd0dd5c35d537d0eaba2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.7 MB (112744092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f38f4ccad9ae29ad984cd267b2f1353672366fdb12920158ed2fd4f9494b38e0`
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
# Tue, 18 Aug 2026 19:15:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 19:15:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 19:15:37 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 19:15:37 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:15:37 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Tue, 18 Aug 2026 19:16:02 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='e5038aae3ca9ff670bc696496b0728dbd23d280026bad30291cb919221ecfdcb';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        arm64)          ESUM='fa23d9d9945053e67bcc7638410eabf1e17a7672c7c95a24f70cd08b8407d36e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64el)          ESUM='fefb53c4bd687e7a91a9a9809ec80e0862e829cd20513839ad1a9988ddc89482';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        riscv64)          ESUM='f3d8843c5a1b77ded3353e0df85d803d84b9faa5ece20673564e7c47fc4591d9';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='45736e9e14d52619133900a077b4f72d1ebee0fd0bb053da0bca9dce9fc4d916';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 18 Aug 2026 19:16:03 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 18 Aug 2026 19:16:03 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 18 Aug 2026 19:16:03 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 18 Aug 2026 21:15:35 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 18 Aug 2026 21:15:35 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 21:15:35 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 18 Aug 2026 21:15:35 GMT
WORKDIR /usr/local/tomcat
# Tue, 18 Aug 2026 21:15:35 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 21:15:35 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 21:15:35 GMT
ENV TOMCAT_MAJOR=10
# Tue, 18 Aug 2026 21:15:35 GMT
ENV TOMCAT_VERSION=10.1.57
# Tue, 18 Aug 2026 21:15:35 GMT
ENV TOMCAT_SHA512=2fa1866ec647d4222b07ea937a4cc266adee219a1a8870107e72fc2349248dd1e32b157fa18108451f4c6e3b162f0fdfbdd11dd7855d4e49a2f0f609004a77f3
# Tue, 18 Aug 2026 21:15:35 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 18 Aug 2026 21:15:39 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 21:15:40 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 18 Aug 2026 21:15:40 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 18 Aug 2026 21:15:40 GMT
ENTRYPOINT []
# Tue, 18 Aug 2026 21:15:40 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0aa6f6b979e790323442c15c773248f5d2dd3b3e0a4f00c7d6dc6d455e80887`  
		Last Modified: Tue, 18 Aug 2026 19:15:52 GMT  
		Size: 17.0 MB (16951235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc16a2983e67f3df48ad6c6b0d9d67ea3fd71f005b7b217fb805005feec30c30`  
		Last Modified: Tue, 18 Aug 2026 19:16:16 GMT  
		Size: 52.3 MB (52314893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b789d85bca077188204eeedae7d3ea4ee198b8ec6255e3b00102cec48d6526c`  
		Last Modified: Tue, 18 Aug 2026 19:16:14 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff5c46b82ecb64dce6cf4a9be5f79f6ca5f20b999f2f71dc60ec9de511ec9db5`  
		Last Modified: Tue, 18 Aug 2026 19:16:15 GMT  
		Size: 2.3 KB (2282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:929d1d96c59628cd8fa18b5e34e27cce1f1b6e9780457915b90ac949daf3c77a`  
		Last Modified: Tue, 18 Aug 2026 21:15:49 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cc533ad85fb66a6dc3258c8a39dc67ae40f30fa1bcce7cae78bc737f2a6d0ce`  
		Last Modified: Tue, 18 Aug 2026 21:15:49 GMT  
		Size: 14.4 MB (14362554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7592de1dc51f87f3c449fe6f70e680313b58f9782427d0df689789a09f430790`  
		Last Modified: Tue, 18 Aug 2026 21:15:49 GMT  
		Size: 225.5 KB (225530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:10-jre21-temurin` - unknown; unknown

```console
$ docker pull tomcat@sha256:23b94705ccc5b6e09fc2b8dd7868f6ebe3abd704e20209507de337810ad14a55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3358001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:710541e0d33ce561850e1b2716e96cf0f572fe2fc1d84e3558c755b319c4fc40`

```dockerfile
```

-	Layers:
	-	`sha256:066d4946369c2de664567dcc94bcde34c1e2e637a318dc3e2f37ee429590c6da`  
		Last Modified: Tue, 18 Aug 2026 21:15:49 GMT  
		Size: 3.3 MB (3334669 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc7c7ae2004b17ccf869080eabca6c6f76edb8b1fdeb9773c7146bc44e8ce14d`  
		Last Modified: Tue, 18 Aug 2026 21:15:49 GMT  
		Size: 23.3 KB (23332 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:10-jre21-temurin` - linux; ppc64le

```console
$ docker pull tomcat@sha256:03e05f27ba82ef6f827368db62e5003cf795a2ceff9a8f901e9089165e07f252
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.5 MB (123486730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fcb14b64175842d6e296f392ebb3b6bf516653676590e5a6c70f8f22b8f8f40`
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
ENV JAVA_VERSION=jdk-21.0.11+10
# Tue, 04 Aug 2026 01:25:54 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='e5038aae3ca9ff670bc696496b0728dbd23d280026bad30291cb919221ecfdcb';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        arm64)          ESUM='fa23d9d9945053e67bcc7638410eabf1e17a7672c7c95a24f70cd08b8407d36e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64el)          ESUM='fefb53c4bd687e7a91a9a9809ec80e0862e829cd20513839ad1a9988ddc89482';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        riscv64)          ESUM='f3d8843c5a1b77ded3353e0df85d803d84b9faa5ece20673564e7c47fc4591d9';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='45736e9e14d52619133900a077b4f72d1ebee0fd0bb053da0bca9dce9fc4d916';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 04 Aug 2026 01:25:56 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 01:25:56 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:25:56 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 04 Aug 2026 06:26:38 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 04 Aug 2026 06:26:38 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 06:26:38 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 04 Aug 2026 06:26:38 GMT
WORKDIR /usr/local/tomcat
# Tue, 04 Aug 2026 06:26:38 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 04 Aug 2026 06:26:38 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 04 Aug 2026 06:26:38 GMT
ENV TOMCAT_MAJOR=10
# Tue, 04 Aug 2026 06:26:38 GMT
ENV TOMCAT_VERSION=10.1.57
# Tue, 04 Aug 2026 06:26:38 GMT
ENV TOMCAT_SHA512=2fa1866ec647d4222b07ea937a4cc266adee219a1a8870107e72fc2349248dd1e32b157fa18108451f4c6e3b162f0fdfbdd11dd7855d4e49a2f0f609004a77f3
# Tue, 04 Aug 2026 06:30:43 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 04 Aug 2026 06:30:52 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 06:30:53 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 04 Aug 2026 06:30:53 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 04 Aug 2026 06:30:53 GMT
ENTRYPOINT []
# Tue, 04 Aug 2026 06:30:53 GMT
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
	-	`sha256:ac44fc4e125bec61118ef50594b83c0eb2ad0440e33a40b6b12798be189239d0`  
		Last Modified: Tue, 04 Aug 2026 01:26:31 GMT  
		Size: 53.1 MB (53148814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31052f8177493cf34fec8b66c52dedfd7074481090765e08f19a5002225ee6e5`  
		Last Modified: Tue, 04 Aug 2026 01:26:29 GMT  
		Size: 161.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a701d3bc403e71cab6d91cdfd7763ad4c51fd8f88fad30ddf60a97bd0cb12f8c`  
		Last Modified: Tue, 04 Aug 2026 01:26:29 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6efbbca4297b0cadf80db1a23b1e769ce2481c4bf63eeea7935ae91ec6fc7745`  
		Last Modified: Tue, 04 Aug 2026 06:27:07 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b741de4f4dcbbf4bb97f1732d2c11299a43db298d0c74badc8a7042dfb5ed153`  
		Last Modified: Tue, 04 Aug 2026 06:31:13 GMT  
		Size: 14.4 MB (14377438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4e5e3e46238ce76a231ec202c425702f47669cb982c23864e16428fa606ac40`  
		Last Modified: Tue, 04 Aug 2026 06:31:13 GMT  
		Size: 256.9 KB (256945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:10-jre21-temurin` - unknown; unknown

```console
$ docker pull tomcat@sha256:c2b27cbbff754990c1367f8e95f1a2eddfd61293a8d6cbfcab4a4f304d4e2eea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3361444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a19632cb9169690b114b3e40ec005147adb1e18fb13cd7b30abc1d132dfcb216`

```dockerfile
```

-	Layers:
	-	`sha256:e9a1b18eff832fb9f58ce504cec282dba21dab4b32003286cba93b18fcce9a2f`  
		Last Modified: Tue, 04 Aug 2026 06:31:13 GMT  
		Size: 3.3 MB (3338244 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a6a497537d55bf8294dc121f34ed4853f0442418c957dc554e4062e3d1b6ecb5`  
		Last Modified: Tue, 04 Aug 2026 06:31:13 GMT  
		Size: 23.2 KB (23200 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:10-jre21-temurin` - linux; riscv64

```console
$ docker pull tomcat@sha256:f92d67760418c1e5f36ceb8db8ea143f4ab8b4f4de55bef15e31ec40824a27b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.2 MB (116230912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aae05bb98bd458e2f7836c740f7bea3a3f6f43f64b740821a84e351c33fadbf`
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
# Wed, 19 Aug 2026 00:25:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 19 Aug 2026 00:25:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 00:25:03 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 19 Aug 2026 00:25:03 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 00:25:03 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Wed, 19 Aug 2026 00:34:59 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='e5038aae3ca9ff670bc696496b0728dbd23d280026bad30291cb919221ecfdcb';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        arm64)          ESUM='fa23d9d9945053e67bcc7638410eabf1e17a7672c7c95a24f70cd08b8407d36e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64el)          ESUM='fefb53c4bd687e7a91a9a9809ec80e0862e829cd20513839ad1a9988ddc89482';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        riscv64)          ESUM='f3d8843c5a1b77ded3353e0df85d803d84b9faa5ece20673564e7c47fc4591d9';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='45736e9e14d52619133900a077b4f72d1ebee0fd0bb053da0bca9dce9fc4d916';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 19 Aug 2026 00:35:00 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 19 Aug 2026 00:35:00 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 19 Aug 2026 00:35:00 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 19 Aug 2026 08:01:51 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 19 Aug 2026 08:01:51 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 08:01:51 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 19 Aug 2026 08:01:51 GMT
WORKDIR /usr/local/tomcat
# Wed, 19 Aug 2026 08:01:51 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 19 Aug 2026 08:01:51 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 19 Aug 2026 08:01:51 GMT
ENV TOMCAT_MAJOR=10
# Wed, 19 Aug 2026 08:01:51 GMT
ENV TOMCAT_VERSION=10.1.57
# Wed, 19 Aug 2026 08:01:51 GMT
ENV TOMCAT_SHA512=2fa1866ec647d4222b07ea937a4cc266adee219a1a8870107e72fc2349248dd1e32b157fa18108451f4c6e3b162f0fdfbdd11dd7855d4e49a2f0f609004a77f3
# Wed, 19 Aug 2026 08:11:22 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Wed, 19 Aug 2026 08:12:04 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 08:12:12 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 19 Aug 2026 08:12:12 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 19 Aug 2026 08:12:12 GMT
ENTRYPOINT []
# Wed, 19 Aug 2026 08:12:12 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:d85e724d9e83fe5958acde2418944fdb2b9077a9c6b5963f99e62d6feb11fb31`  
		Last Modified: Mon, 17 Aug 2026 14:27:49 GMT  
		Size: 31.0 MB (30983072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33dbfaef4e6988f708a979feb5214ded7a576feeb9c4d3047b55c608ee88c6f7`  
		Last Modified: Wed, 19 Aug 2026 00:27:50 GMT  
		Size: 17.8 MB (17830365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83a3f99711c6e28e868889330df90d47883eda7b1fb000eec2b6eb6dfacc319e`  
		Last Modified: Wed, 19 Aug 2026 00:37:33 GMT  
		Size: 52.6 MB (52641550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df84fd5fa86c67fe8a28d2feac16f64dc7219cac0dc3ba24264ec78bbe5af87c`  
		Last Modified: Wed, 19 Aug 2026 00:37:24 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c60ca189812721ae5ea5a7547577472e53d7e22815f21de85d911ef6a8b9cfa`  
		Last Modified: Wed, 19 Aug 2026 00:37:24 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8916c1abfdc682bef25afab64ad3eac9003749ec141ac48c916e9f24f94c3c85`  
		Last Modified: Wed, 19 Aug 2026 08:04:27 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c95eb5bafb52ff8f99cefd0256dacaf903fb0a18294e56752668d682405f2bca`  
		Last Modified: Wed, 19 Aug 2026 08:13:57 GMT  
		Size: 14.5 MB (14544951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22b0e761ed7f9571fc30876dd186eda771efb79fa5671c626811ab68c3a5e38e`  
		Last Modified: Wed, 19 Aug 2026 08:13:54 GMT  
		Size: 228.3 KB (228328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:10-jre21-temurin` - unknown; unknown

```console
$ docker pull tomcat@sha256:75177edb23d9bdf6bcea030e075b41d0368ab6fec2880dcffc924b1fd9e1b56f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3349446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad9f72a478333e1cd22cbf82471003c2ec71866f59f810871de0dec8005dbe7a`

```dockerfile
```

-	Layers:
	-	`sha256:b76879002771ab862c290fbdbfcc1073f579ba71e94afd1f44b50bf5d2a51983`  
		Last Modified: Wed, 19 Aug 2026 08:13:55 GMT  
		Size: 3.3 MB (3326246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a73287ef6945a904e2f4b83952b3dac12dfc99518529a7bff793fcae72fe4242`  
		Last Modified: Wed, 19 Aug 2026 08:13:54 GMT  
		Size: 23.2 KB (23200 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:10-jre21-temurin` - linux; s390x

```console
$ docker pull tomcat@sha256:5c236960d9e1e31978e0f767d89e2a88b4b481e3eecbd0cb6261a1dce980b44e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.7 MB (111742986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf6b58805a06ef5d95f0218a94f94d8a1ba880bc4d4be4e0b3cac4e9c3f6ae0b`
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
# Tue, 18 Aug 2026 19:10:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 19:10:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 19:10:38 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 19:10:38 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:10:38 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Tue, 18 Aug 2026 19:12:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='e5038aae3ca9ff670bc696496b0728dbd23d280026bad30291cb919221ecfdcb';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        arm64)          ESUM='fa23d9d9945053e67bcc7638410eabf1e17a7672c7c95a24f70cd08b8407d36e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64el)          ESUM='fefb53c4bd687e7a91a9a9809ec80e0862e829cd20513839ad1a9988ddc89482';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        riscv64)          ESUM='f3d8843c5a1b77ded3353e0df85d803d84b9faa5ece20673564e7c47fc4591d9';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='45736e9e14d52619133900a077b4f72d1ebee0fd0bb053da0bca9dce9fc4d916';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 18 Aug 2026 19:12:07 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 18 Aug 2026 19:12:07 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 18 Aug 2026 19:12:07 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 18 Aug 2026 21:14:36 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 18 Aug 2026 21:14:36 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 21:14:36 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 18 Aug 2026 21:14:36 GMT
WORKDIR /usr/local/tomcat
# Tue, 18 Aug 2026 21:14:36 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 21:14:36 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 21:14:36 GMT
ENV TOMCAT_MAJOR=10
# Tue, 18 Aug 2026 21:14:36 GMT
ENV TOMCAT_VERSION=10.1.57
# Tue, 18 Aug 2026 21:14:36 GMT
ENV TOMCAT_SHA512=2fa1866ec647d4222b07ea937a4cc266adee219a1a8870107e72fc2349248dd1e32b157fa18108451f4c6e3b162f0fdfbdd11dd7855d4e49a2f0f609004a77f3
# Tue, 18 Aug 2026 21:14:36 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 18 Aug 2026 21:14:40 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 21:14:40 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 18 Aug 2026 21:14:40 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 18 Aug 2026 21:14:40 GMT
ENTRYPOINT []
# Tue, 18 Aug 2026 21:14:40 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:5d1d3f92cfa6f52fd8d52857915fa3c3464dbd12014bfc03e5e163fc72a4de1d`  
		Last Modified: Mon, 17 Aug 2026 14:27:57 GMT  
		Size: 29.9 MB (29935255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d72b5aadfed96074c33ee30b373dae2f579ea653a17ef5f0341c4f39146bbf1d`  
		Last Modified: Tue, 18 Aug 2026 19:11:01 GMT  
		Size: 17.5 MB (17534017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89c3393afd43bd7499a9ccd615b0e85d24ee1b4b162ca50870d90852c10c9592`  
		Last Modified: Tue, 18 Aug 2026 19:12:29 GMT  
		Size: 49.7 MB (49668408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21af238e31d3fda78c0b83b0f249c5a48173f64c487171113edb5bbbf37bd03c`  
		Last Modified: Tue, 18 Aug 2026 19:12:26 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6700e51efff117def01677660dba73a2eb2952cb84cc9f7ee119102412db32ac`  
		Last Modified: Tue, 18 Aug 2026 19:12:27 GMT  
		Size: 2.3 KB (2281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b4e1c4efc3516c645b6c3fdd8c350899e44c2e187939e6fe6fb2b662b5fb702`  
		Last Modified: Tue, 18 Aug 2026 21:14:54 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33722cc94ce5e6cb016f62239ed4aa5a69eddf3e5498e92ffe3bf7f28a23f325`  
		Last Modified: Tue, 18 Aug 2026 21:14:55 GMT  
		Size: 14.4 MB (14369320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7d951c8bfa6c030087466e11932cca31fa6af20570ac22c97fb8a33d4f6c7cf`  
		Last Modified: Tue, 18 Aug 2026 21:14:54 GMT  
		Size: 233.3 KB (233342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:10-jre21-temurin` - unknown; unknown

```console
$ docker pull tomcat@sha256:64c6fae71557cca2000cdec45a17d30cae44758a548923f3887db6799fe63541
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3359448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87f8f5edac554b63136f312a9a0deefcc9c9b86ee53c34cfc7afb75774dd2bb6`

```dockerfile
```

-	Layers:
	-	`sha256:a57da4b17308864aada651b7e701359586c4b3db2db9a79b7f4d7775a6e160a5`  
		Last Modified: Tue, 18 Aug 2026 21:14:54 GMT  
		Size: 3.3 MB (3336336 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce5ccd85422f0a88b6b6e30b9438db8bbdcb269b2f5156f977404f6d141ac803`  
		Last Modified: Tue, 18 Aug 2026 21:14:54 GMT  
		Size: 23.1 KB (23112 bytes)  
		MIME: application/vnd.in-toto+json
