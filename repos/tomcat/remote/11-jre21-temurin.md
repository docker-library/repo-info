## `tomcat:11-jre21-temurin`

```console
$ docker pull tomcat@sha256:fcb0c760d22b879ca04961845bf075a474d9ac6658b1956d3ae0ad452309f755
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

### `tomcat:11-jre21-temurin` - linux; amd64

```console
$ docker pull tomcat@sha256:7a30a84af7879566972f926a4816e71fd7b05f3e40a4629611c4bfdcf3d8b438
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.5 MB (114476678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a849a9cdd93fe3c712296c7b480e5ff7e6adb07aaa448be3cf4c667ac78729c`
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
# Tue, 18 Aug 2026 21:15:23 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 18 Aug 2026 21:15:23 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 21:15:23 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 18 Aug 2026 21:15:23 GMT
WORKDIR /usr/local/tomcat
# Tue, 18 Aug 2026 21:15:23 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 21:15:23 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 21:15:23 GMT
ENV TOMCAT_MAJOR=11
# Tue, 18 Aug 2026 21:15:23 GMT
ENV TOMCAT_VERSION=11.0.25
# Tue, 18 Aug 2026 21:15:23 GMT
ENV TOMCAT_SHA512=81339c046dff1b363a80a3bccf80cb391660a6828dd8ae042180ceb11c8b1614317143e60b311b9e791dab585bb046b777234667acce7dca2203a74b37bf20f2
# Tue, 18 Aug 2026 21:15:23 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 18 Aug 2026 21:15:27 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 21:15:28 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 18 Aug 2026 21:15:28 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 18 Aug 2026 21:15:28 GMT
ENTRYPOINT []
# Tue, 18 Aug 2026 21:15:28 GMT
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
	-	`sha256:bfe81d28734943d158be313f8ff48aa04203d1328f60c22c1056897e8fbe6249`  
		Last Modified: Tue, 18 Aug 2026 21:15:36 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc9573d8c22b58eb226333c0bfc3a4b6bee2c6028a3c868c27b6f38a3bfede05`  
		Last Modified: Tue, 18 Aug 2026 21:15:37 GMT  
		Size: 14.4 MB (14427291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a4110ba1d0fd76980de26c0f692bd89a71e39d206fd7d80285212c53322add4`  
		Last Modified: Tue, 18 Aug 2026 21:15:37 GMT  
		Size: 225.2 KB (225193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:11-jre21-temurin` - unknown; unknown

```console
$ docker pull tomcat@sha256:2a69ee85d8d0aba1072116630a41484bb3ac462149f7cd2931c725078d4d94cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3359109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1907052f0f90db35d676642bbe5ece25ec48dbd4a91e47d3ee32dd0bc4c71569`

```dockerfile
```

-	Layers:
	-	`sha256:8c2541e26fa20fd4bb2d2149cc960b67d3b3841cbf6ddeac0682ff0ddf46ef1b`  
		Last Modified: Tue, 18 Aug 2026 21:15:36 GMT  
		Size: 3.3 MB (3335065 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4bc7b62cd9f6a7737fa936c16907d24c2282a6331a0ab71fd50666b81ceeb50`  
		Last Modified: Tue, 18 Aug 2026 21:15:36 GMT  
		Size: 24.0 KB (24044 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:11-jre21-temurin` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:f86435b50ea92a24270e83ee53e7d84611fd242fc916756f1ac74da73bd9a09a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.8 MB (112810394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4692b930cb772309cd5d72db994275ee68859ce361691473c2e7374d7c36d60`
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
# Tue, 18 Aug 2026 21:15:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 18 Aug 2026 21:15:20 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 21:15:20 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 18 Aug 2026 21:15:20 GMT
WORKDIR /usr/local/tomcat
# Tue, 18 Aug 2026 21:15:20 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 21:15:20 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 21:15:20 GMT
ENV TOMCAT_MAJOR=11
# Tue, 18 Aug 2026 21:15:20 GMT
ENV TOMCAT_VERSION=11.0.25
# Tue, 18 Aug 2026 21:15:20 GMT
ENV TOMCAT_SHA512=81339c046dff1b363a80a3bccf80cb391660a6828dd8ae042180ceb11c8b1614317143e60b311b9e791dab585bb046b777234667acce7dca2203a74b37bf20f2
# Tue, 18 Aug 2026 21:15:20 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 18 Aug 2026 21:15:24 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 21:15:25 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 18 Aug 2026 21:15:25 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 18 Aug 2026 21:15:25 GMT
ENTRYPOINT []
# Tue, 18 Aug 2026 21:15:25 GMT
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
	-	`sha256:874416db11f1631ae3f3316a6121ea0c298412e1a7aeccd2916482f01b10c9a3`  
		Last Modified: Tue, 18 Aug 2026 21:15:33 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bfe580383c0d9ba8d75a82ddeb70f4136f4d530f345d452c9c2edf351fe0c8f`  
		Last Modified: Tue, 18 Aug 2026 21:15:34 GMT  
		Size: 14.4 MB (14428841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88421dc6240cd2a5cb99ec0d30edc84b34925af924c169fbba0e920b2518a2a4`  
		Last Modified: Tue, 18 Aug 2026 21:15:33 GMT  
		Size: 225.5 KB (225544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:11-jre21-temurin` - unknown; unknown

```console
$ docker pull tomcat@sha256:c1c51f82a5ca4b2a88845de11e7db828a424685779cb75bd5547eb6dc787b9bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3359933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c81f82a0e75951c4072bdc14ede3311bf5eee844086d5d0b2f501e965bee5204`

```dockerfile
```

-	Layers:
	-	`sha256:024d0d4295bfb7222146b85e27b74d71dfea404714e8117f7881aef55d542307`  
		Last Modified: Tue, 18 Aug 2026 21:15:33 GMT  
		Size: 3.3 MB (3335633 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13c7a792b30e08b5c31f73754e0d0715bebf32c5f1ed945d560f1b95bd4a1379`  
		Last Modified: Tue, 18 Aug 2026 21:15:33 GMT  
		Size: 24.3 KB (24300 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:11-jre21-temurin` - linux; ppc64le

```console
$ docker pull tomcat@sha256:ce1b97e7dcdc8c049de244838afc7544e554d2e5456fc03b2bebf0d92cc4f919
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.5 MB (123527302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44145727c3dfbd3af2ec50abb8bb07074feda13a6acc5a7ac91431d079c6a6d4`
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
ENV TOMCAT_MAJOR=11
# Tue, 04 Aug 2026 06:26:38 GMT
ENV TOMCAT_VERSION=11.0.24
# Tue, 04 Aug 2026 06:26:38 GMT
ENV TOMCAT_SHA512=a2fb1bd511735bd3d135b87f628d2b1f71a43aed7c4d7511e770092e571bad6d5ad9e97a580852119770477fd86d7ed156d83d3cee2854bce260725ce48934d0
# Tue, 04 Aug 2026 06:26:39 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 04 Aug 2026 06:26:46 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 06:26:49 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 04 Aug 2026 06:26:49 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 04 Aug 2026 06:26:49 GMT
ENTRYPOINT []
# Tue, 04 Aug 2026 06:26:49 GMT
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
	-	`sha256:b655228eae961b421c5af9f597c58d56e4165de9c569d20e04a3fdd7f9902dcc`  
		Last Modified: Tue, 04 Aug 2026 06:27:07 GMT  
		Size: 14.4 MB (14418009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f29f195e318d96ac3f2db1ca815319dfe688186fdaf2f7d09b895314d4afeec8`  
		Last Modified: Tue, 04 Aug 2026 06:27:07 GMT  
		Size: 256.9 KB (256946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:11-jre21-temurin` - unknown; unknown

```console
$ docker pull tomcat@sha256:4e79cee3fc25ec660fa7b9d771ed737a8ea6227bf0e94a66968afba6396d04d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3363339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fa73bffacb10e8e587aa4907370a0b5da844c74d9af9d945589860b9981be93`

```dockerfile
```

-	Layers:
	-	`sha256:2d5ae467c6c307449372d1fae47ca09c8cc162eab944b5f5b97d8e16dc5acbeb`  
		Last Modified: Tue, 04 Aug 2026 06:27:07 GMT  
		Size: 3.3 MB (3339190 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2238223898a87d8f21f6a6ce382223ee3dbb397a1cfc93159c027e8078363158`  
		Last Modified: Tue, 04 Aug 2026 06:27:07 GMT  
		Size: 24.1 KB (24149 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:11-jre21-temurin` - linux; riscv64

```console
$ docker pull tomcat@sha256:eef852c81b42bfe1b8c57c37e507b538d028ecbedf4aae7525f7ebef99ab7707
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.3 MB (116274440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68dba0f42d8ca6d3a9ab7d3f62e6fa9097eb006dea69ce270c0367a2740c884d`
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
ENV JAVA_VERSION=jdk-21.0.11+10
# Tue, 04 Aug 2026 01:35:13 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='e5038aae3ca9ff670bc696496b0728dbd23d280026bad30291cb919221ecfdcb';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        arm64)          ESUM='fa23d9d9945053e67bcc7638410eabf1e17a7672c7c95a24f70cd08b8407d36e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64el)          ESUM='fefb53c4bd687e7a91a9a9809ec80e0862e829cd20513839ad1a9988ddc89482';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        riscv64)          ESUM='f3d8843c5a1b77ded3353e0df85d803d84b9faa5ece20673564e7c47fc4591d9';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='45736e9e14d52619133900a077b4f72d1ebee0fd0bb053da0bca9dce9fc4d916';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 04 Aug 2026 01:35:14 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 01:35:14 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:35:14 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 04 Aug 2026 07:34:02 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 04 Aug 2026 07:34:02 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 07:34:02 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 04 Aug 2026 07:34:02 GMT
WORKDIR /usr/local/tomcat
# Tue, 04 Aug 2026 07:34:02 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 04 Aug 2026 07:34:02 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 04 Aug 2026 07:34:02 GMT
ENV TOMCAT_MAJOR=11
# Tue, 04 Aug 2026 07:34:02 GMT
ENV TOMCAT_VERSION=11.0.24
# Tue, 04 Aug 2026 07:34:02 GMT
ENV TOMCAT_SHA512=a2fb1bd511735bd3d135b87f628d2b1f71a43aed7c4d7511e770092e571bad6d5ad9e97a580852119770477fd86d7ed156d83d3cee2854bce260725ce48934d0
# Tue, 04 Aug 2026 07:34:05 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 04 Aug 2026 07:34:47 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 07:34:55 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 04 Aug 2026 07:34:55 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 04 Aug 2026 07:34:55 GMT
ENTRYPOINT []
# Tue, 04 Aug 2026 07:34:55 GMT
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
	-	`sha256:dd7211ee1972bfa07772afdf59f793485e2d17e58eb142d3321a3aed49a9788a`  
		Last Modified: Tue, 04 Aug 2026 01:37:47 GMT  
		Size: 52.6 MB (52641587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c4a0ea9123aeecd6fb44a6eae9dfee2e22fb4bb98f26af3e636cfa846f8f87b`  
		Last Modified: Tue, 04 Aug 2026 01:37:38 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04499a5959142a41ec147068fdf851d998c6d841a41c35535d4e2c944aff778a`  
		Last Modified: Tue, 04 Aug 2026 01:37:38 GMT  
		Size: 2.3 KB (2282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5855fbfaa8f15bc9803ab83547ea3ac3235762d97f6db97a6f14beae1bd3668`  
		Last Modified: Tue, 04 Aug 2026 07:36:39 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82d048deeae1234dd691b593d3266937d02542a2fdc951eb2f8df42e815641eb`  
		Last Modified: Tue, 04 Aug 2026 07:36:41 GMT  
		Size: 14.6 MB (14588900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15718899e8dbf82d45da18784b916d2935d60a98f283d6d1ce3b26b44a70c4f3`  
		Last Modified: Tue, 04 Aug 2026 07:36:38 GMT  
		Size: 228.5 KB (228490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:11-jre21-temurin` - unknown; unknown

```console
$ docker pull tomcat@sha256:6b5d6fe82a98b6eef651a69b524a3ad7dc613b6703133486f15a2e7c60d68346
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3351342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99582a465000e3cd99f06c39e5e082ba52ec21255122377c836e497d2d338c28`

```dockerfile
```

-	Layers:
	-	`sha256:cac1d1260595e561784b4c6d25051d1a3662b1459d9f9b303842ba15499d4ae6`  
		Last Modified: Tue, 04 Aug 2026 07:36:39 GMT  
		Size: 3.3 MB (3327192 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91fc6daf8412a792757ec5a3f9dce61bc0a56bb0d3af2b41e898fd9747e692c2`  
		Last Modified: Tue, 04 Aug 2026 07:36:38 GMT  
		Size: 24.1 KB (24150 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:11-jre21-temurin` - linux; s390x

```console
$ docker pull tomcat@sha256:d29017df12302248dda5bb5da50588ade0268ddc98429ccd6e81543eda03b2ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.8 MB (111809852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f8e14ffb93dc9a8e15b3f647208b9c897916953b35f3bbd13b4aeb20fd2bd78`
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
# Tue, 18 Aug 2026 21:13:25 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 18 Aug 2026 21:13:25 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 21:13:25 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 18 Aug 2026 21:13:25 GMT
WORKDIR /usr/local/tomcat
# Tue, 18 Aug 2026 21:13:25 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 21:13:25 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 21:13:25 GMT
ENV TOMCAT_MAJOR=11
# Tue, 18 Aug 2026 21:13:25 GMT
ENV TOMCAT_VERSION=11.0.25
# Tue, 18 Aug 2026 21:13:25 GMT
ENV TOMCAT_SHA512=81339c046dff1b363a80a3bccf80cb391660a6828dd8ae042180ceb11c8b1614317143e60b311b9e791dab585bb046b777234667acce7dca2203a74b37bf20f2
# Tue, 18 Aug 2026 21:13:25 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 18 Aug 2026 21:13:28 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 21:13:29 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 18 Aug 2026 21:13:29 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 18 Aug 2026 21:13:29 GMT
ENTRYPOINT []
# Tue, 18 Aug 2026 21:13:29 GMT
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
	-	`sha256:f14fe7109938c8bcf40e32fe08db26f5e8c586e13b7e771d223cb5afb58e1771`  
		Last Modified: Tue, 18 Aug 2026 21:13:43 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6df7266f87f3f627e4273a4f0c7c86117282117886443b9433f72143c374b74`  
		Last Modified: Tue, 18 Aug 2026 21:13:44 GMT  
		Size: 14.4 MB (14436250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a61de404fb6231ac8e5b80c74f3afcfa6f629a3c156251743b55f600e7d5fff`  
		Last Modified: Tue, 18 Aug 2026 21:13:43 GMT  
		Size: 233.3 KB (233280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:11-jre21-temurin` - unknown; unknown

```console
$ docker pull tomcat@sha256:03ea9c058358c0c8c58d16c4ff669b169abaa14b8c149364f7f8bd5d1d57dcd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3361307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32d4caae5f436c1fec42de6850b319a2fd927843ec08fc5d67b71a6e9768f5c5`

```dockerfile
```

-	Layers:
	-	`sha256:197d2e6fea8ba26b831e204ff274b387d64ae33a8e482c3cd7e5daa65e783e1c`  
		Last Modified: Tue, 18 Aug 2026 21:13:43 GMT  
		Size: 3.3 MB (3337264 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42e34ed71546c963f377700c0b70d03f1a0530b32aed41c6b6f0646edafeb43d`  
		Last Modified: Tue, 18 Aug 2026 21:13:43 GMT  
		Size: 24.0 KB (24043 bytes)  
		MIME: application/vnd.in-toto+json
