## `tomcat:9-jre17-temurin-noble`

```console
$ docker pull tomcat@sha256:6543ed0fe6f04298071a74bb2113c2292319d6c08348e2c3611b95c4a6276afa
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
$ docker pull tomcat@sha256:08b268571ecbc49f0e3aafa948d723c8338506eff6edc1a04bfc4b6724690dd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.4 MB (121387102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f6e22ab91960fbe2d937ababf02755e7199cd1b5d0cc3874f8b1a47042a82dd`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:17:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:17:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:17:42 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:17:42 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:17:42 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Wed, 11 Nov 2026 23:17:45 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9f41bf88c7900c7097444a1bdeb84146ae692bc08842490ab098063c74bf9a8a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        arm64)          ESUM='1114f09d6174f54270c3117410b5e4022b43ebc0b43b751af08b927c55ed7bb5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        armhf)          ESUM='a1f61c0a9a76af31e6954f93ba329650ce16e556d0508227a50c6203ff012357';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_arm_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64el)          ESUM='7836a98346529939fc1149a59c7159d0ea721c2028fbfade620d60e58293d65f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        riscv64)          ESUM='106afdb1779c2187312717f76d116b6920b96bf8acf8c4b9055655cd7d01415a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_riscv64_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='c2f8f6c55b09a5bb9c26fbdc85cad41e10860a396da447e2ce7a182480e74945';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:17:45 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:17:45 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:17:45 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 14 Nov 2026 00:11:48 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 14 Nov 2026 00:11:48 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Nov 2026 00:11:48 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Sat, 14 Nov 2026 00:11:49 GMT
WORKDIR /usr/local/tomcat
# Sat, 14 Nov 2026 00:11:49 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 14 Nov 2026 00:11:49 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 14 Nov 2026 00:11:49 GMT
ENV TOMCAT_MAJOR=9
# Sat, 14 Nov 2026 00:11:49 GMT
ENV TOMCAT_VERSION=9.0.124
# Sat, 14 Nov 2026 00:11:49 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Sat, 14 Nov 2026 00:11:49 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Sat, 14 Nov 2026 00:11:59 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 14 Nov 2026 00:11:59 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Sat, 14 Nov 2026 00:11:59 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 14 Nov 2026 00:11:59 GMT
ENTRYPOINT []
# Sat, 14 Nov 2026 00:11:59 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94114971b85bfa3194afa6f23e955273440948820e9ed22a9a2613f14abc2ff2`  
		Last Modified: Wed, 11 Nov 2026 23:17:58 GMT  
		Size: 17.0 MB (16968826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b654fdc2d9149d805c48af7c5ab75461ee1370739d3cb4d93b6204ea6468d7ef`  
		Last Modified: Wed, 11 Nov 2026 23:18:00 GMT  
		Size: 47.6 MB (47620388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b69eacf6b66607563f9c4534243931d16771001c0eab4b57df0c95f1b7f84e6c`  
		Last Modified: Wed, 11 Nov 2026 23:17:58 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dee9ac36f7e302f40c3073e049051c5591ae750746e9eaf2affeec16ab8c9e2a`  
		Last Modified: Wed, 11 Nov 2026 23:17:58 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f43d68d7d42b1bbc8b4e361dc1877459f10c3b0790c6def5b224c6a57b567d37`  
		Last Modified: Sat, 14 Nov 2026 00:12:08 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9adc482c525af339dcab4b379896a539008d8e047172799c60f5393276aa146`  
		Last Modified: Sat, 14 Nov 2026 00:12:09 GMT  
		Size: 14.2 MB (14157851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b161df3ff80720db8b1ea551adee8025e65d948b422cbbc03f23ecd346fbaa`  
		Last Modified: Sat, 14 Nov 2026 00:12:09 GMT  
		Size: 12.8 MB (12843989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre17-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:01844f4bdf866079a08df40dc8f9d5b174500b3da733d9dbd9632298c653fc10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3349556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14ce797ee1f74ab46e098118622d8db5ef158c125d1e8ec208374f581864c3fb`

```dockerfile
```

-	Layers:
	-	`sha256:4180e449d20408ab14965e2ceb7809b21be156342934a078c2f0cfc95cec1e25`  
		Last Modified: Sat, 14 Nov 2026 00:12:08 GMT  
		Size: 3.3 MB (3328339 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87e170391a879eef47df4313ec8c88250220525201c13c133056b6087d7cf52a`  
		Last Modified: Sat, 14 Nov 2026 00:12:08 GMT  
		Size: 21.2 KB (21217 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jre17-temurin-noble` - linux; arm variant v7

```console
$ docker pull tomcat@sha256:7c73da6c80c4f96960848325791dbeea12f138e7933e87560baaab735d7bb352
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.1 MB (114052107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8949dd397e244704cd51f69ad7ef5e3d2844e84b73aa7ba7aceb76dedc146298`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:23 GMT
ADD file:3cbbfb6c4f8e63d9999d351c6c7c50b4ce512c57a42bc2c5bc2da9cb561f6eed in / 
# Tue, 10 Nov 2026 08:36:24 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:19:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:19:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:19:59 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:19:59 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:19:59 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Wed, 11 Nov 2026 23:20:39 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9f41bf88c7900c7097444a1bdeb84146ae692bc08842490ab098063c74bf9a8a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        arm64)          ESUM='1114f09d6174f54270c3117410b5e4022b43ebc0b43b751af08b927c55ed7bb5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        armhf)          ESUM='a1f61c0a9a76af31e6954f93ba329650ce16e556d0508227a50c6203ff012357';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_arm_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64el)          ESUM='7836a98346529939fc1149a59c7159d0ea721c2028fbfade620d60e58293d65f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        riscv64)          ESUM='106afdb1779c2187312717f76d116b6920b96bf8acf8c4b9055655cd7d01415a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_riscv64_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='c2f8f6c55b09a5bb9c26fbdc85cad41e10860a396da447e2ce7a182480e74945';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:20:39 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:20:39 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:20:39 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 14 Nov 2026 00:18:32 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 14 Nov 2026 00:18:32 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Nov 2026 00:18:32 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Sat, 14 Nov 2026 00:18:32 GMT
WORKDIR /usr/local/tomcat
# Sat, 14 Nov 2026 00:18:32 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 14 Nov 2026 00:18:32 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 14 Nov 2026 00:18:32 GMT
ENV TOMCAT_MAJOR=9
# Sat, 14 Nov 2026 00:18:32 GMT
ENV TOMCAT_VERSION=9.0.124
# Sat, 14 Nov 2026 00:18:32 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Sat, 14 Nov 2026 00:18:33 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Sat, 14 Nov 2026 00:18:42 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 14 Nov 2026 00:18:43 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Sat, 14 Nov 2026 00:18:43 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 14 Nov 2026 00:18:43 GMT
ENTRYPOINT []
# Sat, 14 Nov 2026 00:18:43 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:c9ad55dde9ad5376b797faf6b6dd0caa61cff4a20a14ef03107c1e7fdc9113f0`  
		Last Modified: Wed, 11 Nov 2026 22:58:50 GMT  
		Size: 26.9 MB (26922008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd325f0ba834363c8dbb0296e9c01ee3dffaab52091a6450e96f344d42c7e876`  
		Last Modified: Wed, 11 Nov 2026 23:20:25 GMT  
		Size: 16.3 MB (16286283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2345daa0927f63e35c91ee2255449dca718c141748b497026a03ede745fc4e6`  
		Last Modified: Wed, 11 Nov 2026 23:20:52 GMT  
		Size: 45.2 MB (45188533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc4be1c6e3531d66fc4b06b87f8b3b54826363ce164622c02eb1257260fcb458`  
		Last Modified: Wed, 11 Nov 2026 23:20:50 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b255bc1cc80c2341cf1429f26a35ca19ce5ec80d4903f1d610212ff3f5995eee`  
		Last Modified: Wed, 11 Nov 2026 23:20:50 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:503297c955e27ba13fdd5928bfaa0d99511de2f2c00505f427273ce4d801445b`  
		Last Modified: Sat, 14 Nov 2026 00:18:52 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d7c2f4f75aa5b97d2a73f6e0aaa130af3d6562dafad4adbfe55716ca10b4ec6`  
		Last Modified: Sat, 14 Nov 2026 00:18:53 GMT  
		Size: 14.1 MB (14093102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7af248cd2ff1d602aecf84b4b7645dce458cd56694bc01bf1f52bbfc3e970bc`  
		Last Modified: Sat, 14 Nov 2026 00:18:53 GMT  
		Size: 11.6 MB (11559356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre17-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:106d06cc0b0fa3dee2024d2d3c1bf15eb408aea7d53aed60a4aaf7cc99eb679f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3352008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61d06ee015db2edc6ae4f203e0da989608cd4e600833c7ca415270c79c7e54d0`

```dockerfile
```

-	Layers:
	-	`sha256:fc0e684b1009d220ed6845c1900bba7f8186f501a713f6a53c21dce62a8613e3`  
		Last Modified: Sat, 14 Nov 2026 00:18:52 GMT  
		Size: 3.3 MB (3330671 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b1f2307bc4f32afce4eae64538fe597e7ca557b9b6938971181a97b86d3a53e1`  
		Last Modified: Sat, 14 Nov 2026 00:18:52 GMT  
		Size: 21.3 KB (21337 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jre17-temurin-noble` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:07260152e97173c6bbb009f6af1893cf69fbcaaf4ddca9d9a039648f76c44614
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.9 MB (119850232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd68528432a0da325d5b6870167a6a4b96029e84ef6d3871eabbf3edea829d7b`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:21:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:21:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:21:49 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:21:49 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:21:49 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Wed, 11 Nov 2026 23:21:52 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9f41bf88c7900c7097444a1bdeb84146ae692bc08842490ab098063c74bf9a8a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        arm64)          ESUM='1114f09d6174f54270c3117410b5e4022b43ebc0b43b751af08b927c55ed7bb5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        armhf)          ESUM='a1f61c0a9a76af31e6954f93ba329650ce16e556d0508227a50c6203ff012357';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_arm_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64el)          ESUM='7836a98346529939fc1149a59c7159d0ea721c2028fbfade620d60e58293d65f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        riscv64)          ESUM='106afdb1779c2187312717f76d116b6920b96bf8acf8c4b9055655cd7d01415a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_riscv64_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='c2f8f6c55b09a5bb9c26fbdc85cad41e10860a396da447e2ce7a182480e74945';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:21:53 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:21:53 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:21:53 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 14 Nov 2026 00:12:19 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 14 Nov 2026 00:12:19 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Nov 2026 00:12:19 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Sat, 14 Nov 2026 00:12:19 GMT
WORKDIR /usr/local/tomcat
# Sat, 14 Nov 2026 00:12:19 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 14 Nov 2026 00:12:19 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 14 Nov 2026 00:12:19 GMT
ENV TOMCAT_MAJOR=9
# Sat, 14 Nov 2026 00:12:19 GMT
ENV TOMCAT_VERSION=9.0.124
# Sat, 14 Nov 2026 00:12:19 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Sat, 14 Nov 2026 00:12:19 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Sat, 14 Nov 2026 00:12:29 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 14 Nov 2026 00:12:30 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Sat, 14 Nov 2026 00:12:30 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 14 Nov 2026 00:12:30 GMT
ENTRYPOINT []
# Sat, 14 Nov 2026 00:12:30 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e89ce4e343282562307d8915dc0841e3a3a7a2c28a5bbc823a7481e83e29c8d`  
		Last Modified: Wed, 11 Nov 2026 23:22:06 GMT  
		Size: 17.0 MB (16978141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae5c24226a345d072e2421ad6941605b3d8680947d93c8ee862a5bd9d4d226d1`  
		Last Modified: Wed, 11 Nov 2026 23:22:07 GMT  
		Size: 47.1 MB (47128219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:636c979ea62f73ea9f354872f4c89b67519326e285d4ce7265c994a955989169`  
		Last Modified: Wed, 11 Nov 2026 23:22:05 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc73d827f8ce1f2abb7befe859f83c964e18c95b52c2ba60e3e1c9d23ad66d90`  
		Last Modified: Wed, 11 Nov 2026 23:22:05 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3f8d416916121fc540032507ce058ad5fa29d402a95d44fac2c1c3a32ad032b`  
		Last Modified: Sat, 14 Nov 2026 00:12:39 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d9e1d409afa79a5c2356fac736bc0412c903489a0835e8145e410ecb8c57ab9`  
		Last Modified: Sat, 14 Nov 2026 00:12:40 GMT  
		Size: 14.2 MB (14167556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8092d2776c4d68db039961a3435739d8958bb0a6f014078e5aa0a3690ee6b551`  
		Last Modified: Sat, 14 Nov 2026 00:12:40 GMT  
		Size: 12.6 MB (12608234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre17-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:4b72be6337cf2ccd2725ef998b1ad46efdd552177025a9e4e9d55a5018af4ab2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3350164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40d5942d3bac62dfeedcd2d3c18a66755b8428cf38ae43ac09367d8f8c07f3fa`

```dockerfile
```

-	Layers:
	-	`sha256:0e1aa686db05fbb96e34e59756df2af0b38fc9f90ea18afc7c53e03ffd0fc199`  
		Last Modified: Sat, 14 Nov 2026 00:12:39 GMT  
		Size: 3.3 MB (3328799 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a20ade6056950e24537330463b1d606b69bc5af52c80042a955630c91bed0fec`  
		Last Modified: Sat, 14 Nov 2026 00:12:39 GMT  
		Size: 21.4 KB (21365 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jre17-temurin-noble` - linux; ppc64le

```console
$ docker pull tomcat@sha256:861ec511ddc725d920b9901ea251c38a53b0e05d2b7fc827d3da1099ea160ccd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.0 MB (128016326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c9ef287fd2a17a167869350296b9cec5931ba1a9becefb38ddb2a0b65626674`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 10 Nov 2026 08:32:56 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:32:56 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:32:56 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:00 GMT
ADD file:89eeaf81edaeaabcc6b5e0c1d26ef4eb2e89301509f4585cbcd17562fbf95198 in / 
# Tue, 10 Nov 2026 08:33:01 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 01:42:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:42:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:42:18 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 12 Nov 2026 01:42:18 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 01:42:18 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Thu, 12 Nov 2026 01:54:19 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9f41bf88c7900c7097444a1bdeb84146ae692bc08842490ab098063c74bf9a8a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        arm64)          ESUM='1114f09d6174f54270c3117410b5e4022b43ebc0b43b751af08b927c55ed7bb5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        armhf)          ESUM='a1f61c0a9a76af31e6954f93ba329650ce16e556d0508227a50c6203ff012357';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_arm_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64el)          ESUM='7836a98346529939fc1149a59c7159d0ea721c2028fbfade620d60e58293d65f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        riscv64)          ESUM='106afdb1779c2187312717f76d116b6920b96bf8acf8c4b9055655cd7d01415a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_riscv64_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='c2f8f6c55b09a5bb9c26fbdc85cad41e10860a396da447e2ce7a182480e74945';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 12 Nov 2026 01:54:20 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 12 Nov 2026 01:54:22 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 12 Nov 2026 01:54:22 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 12 Nov 2026 09:13:38 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 12 Nov 2026 09:13:38 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 09:13:38 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Thu, 12 Nov 2026 09:13:38 GMT
WORKDIR /usr/local/tomcat
# Thu, 12 Nov 2026 09:13:38 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 12 Nov 2026 09:13:38 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 12 Nov 2026 09:13:38 GMT
ENV TOMCAT_MAJOR=9
# Thu, 12 Nov 2026 09:13:38 GMT
ENV TOMCAT_VERSION=9.0.124
# Thu, 12 Nov 2026 09:13:38 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Sat, 14 Nov 2026 01:38:01 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Sat, 14 Nov 2026 01:38:25 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 14 Nov 2026 01:38:27 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Sat, 14 Nov 2026 01:38:27 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 14 Nov 2026 01:38:27 GMT
ENTRYPOINT []
# Sat, 14 Nov 2026 01:38:27 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:f78755e68daa4220d3ba6537baccb7cf864d4848b823995344317af2921d0d92`  
		Last Modified: Wed, 11 Nov 2026 23:14:15 GMT  
		Size: 34.4 MB (34406511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d1a2eaa2f10ad948abed3101e624aa8a0b930bc8d06d4be10fffc1fc5e7ccbb`  
		Last Modified: Thu, 12 Nov 2026 01:43:03 GMT  
		Size: 18.8 MB (18782511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:957dffe25baf1a0d2b47202d6d8d77e54da7533ce2eb192cbe0f6875ff2aaeb2`  
		Last Modified: Thu, 12 Nov 2026 01:55:03 GMT  
		Size: 47.0 MB (46977654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d0b234f8499aa15a2368b8f3a7e421b06abb13d9be1107465ebf6e6767ebffc`  
		Last Modified: Thu, 12 Nov 2026 01:55:01 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbe2578ff704b20f59c828d24606b25bacdb95342193bcd610dca961997b670b`  
		Last Modified: Thu, 12 Nov 2026 01:55:01 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:776d29efaa52bcf61ef16c2758c4cc39b621eff63de31909478c64c660f7c4a2`  
		Last Modified: Thu, 12 Nov 2026 09:14:13 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35e45b7d70ba99436c8b31d7bf37fdbcfcc90bfb69a027dbc747bab6d2b0d6e6`  
		Last Modified: Sat, 14 Nov 2026 01:38:47 GMT  
		Size: 14.2 MB (14194613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b218bfa5f58e56e556069ecae33a1e9a84b152e4fbb7f694a228062dbc9b59d`  
		Last Modified: Sat, 14 Nov 2026 01:38:47 GMT  
		Size: 13.7 MB (13652211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre17-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:45259053d753fa114e532b0a673a52472c95eccf960018ac50389e2807ebb7f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3352433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:219d2002bd161ee19cfe63e392f2aeda0264660218627dc697138c8c8580a903`

```dockerfile
```

-	Layers:
	-	`sha256:47040bbe846851c5b54c23213b9929b10e22951364181a650cc2d08dd2ce2646`  
		Last Modified: Sat, 14 Nov 2026 01:38:46 GMT  
		Size: 3.3 MB (3331164 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c9a00c355fe1e974b02de78c647f3918bdd5bd9224a5c3c5037e3e23a55ec26`  
		Last Modified: Sat, 14 Nov 2026 01:38:46 GMT  
		Size: 21.3 KB (21269 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jre17-temurin-noble` - linux; riscv64

```console
$ docker pull tomcat@sha256:c8aa308dda5b9f58027cb54f9b2c34198a7636884f6d5e3ba9f6a231ffec5596
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.7 MB (109700368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc73d128e01ea286bbf181af59de6c3e7422b9d9ee02a6b62ab7188e67a29989`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Sun, 25 Oct 2026 14:40:59 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:41:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:41:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:41:55 GMT
ADD file:bd60d80275224295b295318dc71399dbd358b15bea499dc5c524ae8260970dd4 in / 
# Sun, 25 Oct 2026 14:42:00 GMT
CMD ["/bin/bash"]
# Sun, 01 Nov 2026 11:58:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sun, 01 Nov 2026 11:58:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 01 Nov 2026 11:58:03 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sun, 01 Nov 2026 11:58:03 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sun, 01 Nov 2026 11:58:03 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Wed, 04 Nov 2026 22:01:29 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9f41bf88c7900c7097444a1bdeb84146ae692bc08842490ab098063c74bf9a8a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        arm64)          ESUM='1114f09d6174f54270c3117410b5e4022b43ebc0b43b751af08b927c55ed7bb5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        armhf)          ESUM='a1f61c0a9a76af31e6954f93ba329650ce16e556d0508227a50c6203ff012357';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_arm_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64el)          ESUM='7836a98346529939fc1149a59c7159d0ea721c2028fbfade620d60e58293d65f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        riscv64)          ESUM='106afdb1779c2187312717f76d116b6920b96bf8acf8c4b9055655cd7d01415a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_riscv64_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='c2f8f6c55b09a5bb9c26fbdc85cad41e10860a396da447e2ce7a182480e74945';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 04 Nov 2026 22:01:30 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 04 Nov 2026 22:01:30 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 04 Nov 2026 22:01:30 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 05 Nov 2026 07:44:38 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 05 Nov 2026 07:44:38 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:44:38 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Thu, 05 Nov 2026 07:44:38 GMT
WORKDIR /usr/local/tomcat
# Thu, 05 Nov 2026 07:44:38 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 05 Nov 2026 07:44:38 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 05 Nov 2026 07:44:38 GMT
ENV TOMCAT_MAJOR=9
# Thu, 05 Nov 2026 07:44:38 GMT
ENV TOMCAT_VERSION=9.0.123
# Thu, 05 Nov 2026 07:44:38 GMT
ENV TOMCAT_SHA512=64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290
# Thu, 05 Nov 2026 07:53:24 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Thu, 05 Nov 2026 07:54:06 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:54:14 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Thu, 05 Nov 2026 07:54:14 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 05 Nov 2026 07:54:14 GMT
ENTRYPOINT []
# Thu, 05 Nov 2026 07:54:14 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:9c292ed508c8980046daab8996841e49bec6ec20e645ab48bb63b8228da83d11`  
		Last Modified: Sun, 25 Oct 2026 14:50:32 GMT  
		Size: 31.1 MB (31054629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:493a9f29deec8fa4763b83642302f5b3162f5f6a4c43d4076be96a5e4bcdb1d5`  
		Last Modified: Sun, 01 Nov 2026 12:00:52 GMT  
		Size: 17.8 MB (17842434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7adaf3c331f7140083c4b868722372847c857ece52f515054a3788611659b6cf`  
		Last Modified: Wed, 04 Nov 2026 22:04:02 GMT  
		Size: 46.1 MB (46149873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f435b61696f09e3123094a244ad8880fb7037ba76b862371d71b8abadaf551c4`  
		Last Modified: Wed, 04 Nov 2026 22:03:55 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ee9a92d3359117f56a0454a5096f991284c16a0619e35c4c51c2bcbea78e86c`  
		Last Modified: Wed, 04 Nov 2026 22:03:55 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39ce82c0197f7ecf1633a05b11e8bf5532ce509355c2cb4f9bbd153e079ee4d8`  
		Last Modified: Thu, 05 Nov 2026 07:47:26 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa9f262733fb47e8a15da898903b63e18f8630acb0492a180cb18d7bff2e210`  
		Last Modified: Thu, 05 Nov 2026 07:56:09 GMT  
		Size: 14.4 MB (14421313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37245f102687f9eb5bb0df8729663ae900b24ccb667a66eff752ed8fc797b8f4`  
		Last Modified: Thu, 05 Nov 2026 07:56:06 GMT  
		Size: 229.3 KB (229293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre17-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:fca32137785bc0a03511d740fb660020f09190789e8d296d995a844df0f8bb3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3341065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58980be56f90f569c70ea02fe347da2c4fac2987acfac08eb6da88cd70cafa72`

```dockerfile
```

-	Layers:
	-	`sha256:c56a55deac08dbebb26ff8386dfecce4e364fc91db7d6fc1a12241a3bd5269e8`  
		Last Modified: Thu, 05 Nov 2026 07:56:07 GMT  
		Size: 3.3 MB (3319800 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:11edf49003a1efc31a334257022e7cb166e4e760bf2682d8beddb55052f789c4`  
		Last Modified: Thu, 05 Nov 2026 07:56:06 GMT  
		Size: 21.3 KB (21265 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jre17-temurin-noble` - linux; s390x

```console
$ docker pull tomcat@sha256:f87ed75c145db1a464eafc881437c82db782927094404ecf3bfcb3338e23534c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.0 MB (117970643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5f3b80457212d3d5ad4c892b6984e8a4a24d8bf7a5db1b5d756b118471da95e`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 10 Nov 2026 08:37:01 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:37:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:37:01 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:37:02 GMT
ADD file:cd6ae236aa13077d423218b776b66e2af298e76f13baa19a6432bfa2416d84e1 in / 
# Tue, 10 Nov 2026 08:37:03 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:14:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:14:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:14:14 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:14:14 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:14:14 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Wed, 11 Nov 2026 23:14:53 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9f41bf88c7900c7097444a1bdeb84146ae692bc08842490ab098063c74bf9a8a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        arm64)          ESUM='1114f09d6174f54270c3117410b5e4022b43ebc0b43b751af08b927c55ed7bb5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        armhf)          ESUM='a1f61c0a9a76af31e6954f93ba329650ce16e556d0508227a50c6203ff012357';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_arm_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64el)          ESUM='7836a98346529939fc1149a59c7159d0ea721c2028fbfade620d60e58293d65f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        riscv64)          ESUM='106afdb1779c2187312717f76d116b6920b96bf8acf8c4b9055655cd7d01415a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_riscv64_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='c2f8f6c55b09a5bb9c26fbdc85cad41e10860a396da447e2ce7a182480e74945';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:14:53 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:14:53 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:14:53 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 12 Nov 2026 01:56:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 12 Nov 2026 01:56:20 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:56:20 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Thu, 12 Nov 2026 01:56:20 GMT
WORKDIR /usr/local/tomcat
# Thu, 12 Nov 2026 01:56:20 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 12 Nov 2026 01:56:20 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 12 Nov 2026 01:56:20 GMT
ENV TOMCAT_MAJOR=9
# Thu, 12 Nov 2026 01:56:20 GMT
ENV TOMCAT_VERSION=9.0.124
# Thu, 12 Nov 2026 01:56:20 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Sat, 14 Nov 2026 01:13:43 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Sat, 14 Nov 2026 01:13:50 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 14 Nov 2026 01:13:50 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Sat, 14 Nov 2026 01:13:50 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 14 Nov 2026 01:13:50 GMT
ENTRYPOINT []
# Sat, 14 Nov 2026 01:13:50 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:bd74e3675913208a1119a54d3789c9fc5c9abdb19b714ce963adc875d0495d64`  
		Last Modified: Wed, 11 Nov 2026 22:58:51 GMT  
		Size: 30.0 MB (29967584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3134634370e311faddec73a586b392392ac4795c1016e6b7ca6269409b4500fa`  
		Last Modified: Wed, 11 Nov 2026 23:14:32 GMT  
		Size: 17.6 MB (17557905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a654cf2e0cdb025abe7ecb9a82530b16f39d61f165a413bc2b0f21ead6022f0`  
		Last Modified: Wed, 11 Nov 2026 23:15:11 GMT  
		Size: 44.2 MB (44228013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3091d3c05c56ec880a8886a837be931f09820b01392cd11156f3ef8f0fc37607`  
		Last Modified: Wed, 11 Nov 2026 23:15:10 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d034c6b67d6afaa463eb9db99b3fd9d3a5639aedb5a69fff5ad2be5a003fec4`  
		Last Modified: Wed, 11 Nov 2026 23:15:10 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fcdc76ad008a584daa7f111f517aebd66585678035fa4702e4cae96cf850e4d`  
		Last Modified: Thu, 12 Nov 2026 01:56:46 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6ba64978c9bdb2f65752f94a1a69195cb374fa57605f017a1c27628d0a098a9`  
		Last Modified: Sat, 14 Nov 2026 01:14:03 GMT  
		Size: 14.2 MB (14166729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eed35c9412bcd319c30ef1a4a6c0015719af78023b1fb3dab46b9bf9d9da2c43`  
		Last Modified: Sat, 14 Nov 2026 01:14:03 GMT  
		Size: 12.0 MB (12047587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre17-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:fd3e000b6b0dce7edb6656d2bb03b3442036c60701fc3f7bf51289ce9cc19004
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3350509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:753ece3a844155104c20a3ce06593e08b1d18875d19977fc22788081222f1273`

```dockerfile
```

-	Layers:
	-	`sha256:21373f5d1ec67c06c571eab3599000e76e07bab1ee6e42b515cce84a03cc0f61`  
		Last Modified: Sat, 14 Nov 2026 01:14:03 GMT  
		Size: 3.3 MB (3329292 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1818e793de1d4fe62763afc1baf3968c5737bf8dfb04ab4c28f5e45f22d09d9`  
		Last Modified: Sat, 14 Nov 2026 01:14:03 GMT  
		Size: 21.2 KB (21217 bytes)  
		MIME: application/vnd.in-toto+json
