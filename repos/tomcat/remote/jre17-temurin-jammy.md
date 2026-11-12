## `tomcat:jre17-temurin-jammy`

```console
$ docker pull tomcat@sha256:d05ea07790c61c7a3e0fbac116e2486d05a59a809391747957c992cc381032d6
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
$ docker pull tomcat@sha256:208a885e05f37af2feb5ee3fa22c87f68e82ce6c5faf542a6f3f76239dced11f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.2 MB (108210743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2efcf03353cddf3c74afb55c8fbc36a0e81a9e7105954b98078d104f6d7de504`
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
# Tue, 03 Nov 2026 23:03:49 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 03 Nov 2026 23:03:49 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 23:03:49 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 03 Nov 2026 23:03:49 GMT
WORKDIR /usr/local/tomcat
# Tue, 03 Nov 2026 23:03:49 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 03 Nov 2026 23:03:49 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 03 Nov 2026 23:03:49 GMT
ENV TOMCAT_MAJOR=11
# Tue, 03 Nov 2026 23:03:49 GMT
ENV TOMCAT_VERSION=11.0.27
# Tue, 03 Nov 2026 23:03:49 GMT
ENV TOMCAT_SHA512=a617896307cada4884b24f80c4e977ddad8b3e0f88ce0e2a6eea29d5f332498e276ae5976c227a9c8daecf05c7c90def684a3766dd5a81f47a56d8b1adf43dc3
# Tue, 03 Nov 2026 23:03:50 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 03 Nov 2026 23:03:57 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 23:03:57 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 03 Nov 2026 23:03:57 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 03 Nov 2026 23:03:57 GMT
ENTRYPOINT []
# Tue, 03 Nov 2026 23:03:57 GMT
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
	-	`sha256:df98eb1fbaee55d41e3ecee4bf765e5b68264159fa7c95deceb3692bd04c34d4`  
		Last Modified: Tue, 03 Nov 2026 23:04:05 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fa66e8bd8e24e4ef8ef163e8adde4009a63d9713a4a31ada16d4d61fabf6c0d`  
		Last Modified: Tue, 03 Nov 2026 23:04:06 GMT  
		Size: 14.5 MB (14489086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87679e186e0ac3b440e73cca62d53c081d985cdf4ccc5393ebc1c7a63b637ae4`  
		Last Modified: Tue, 03 Nov 2026 23:04:05 GMT  
		Size: 230.4 KB (230409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:jre17-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:294698a75a58ec45c23457951408d363b9bb820cfb1b9b7c4aed09c08039a64b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3946871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd083fbee2ebc39f4016cf5af58a008fcc4c6b518202eae04db495e6933a6c6b`

```dockerfile
```

-	Layers:
	-	`sha256:f1dc19056e9172c5ba97647a4c6e9c6f8fda38a946dc666b5f45b31e9fa7f155`  
		Last Modified: Tue, 03 Nov 2026 23:04:05 GMT  
		Size: 3.9 MB (3925326 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d0ec051c9986093a92a84fd211995a215944897cb5de2143aee0cd716df51fe7`  
		Last Modified: Tue, 03 Nov 2026 23:04:05 GMT  
		Size: 21.5 KB (21545 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:jre17-temurin-jammy` - linux; arm variant v7

```console
$ docker pull tomcat@sha256:c18d3ca9a5c3630ac565ebe1adbd74dbbda889d28ad8c88668c08e35a612483a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.9 MB (102878632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c34bc936845246e0c92354ebf5e279630f63966e2c5359cce68d6958a854296`
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
# Thu, 12 Nov 2026 01:05:30 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 12 Nov 2026 01:05:30 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:05:30 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Thu, 12 Nov 2026 01:05:30 GMT
WORKDIR /usr/local/tomcat
# Thu, 12 Nov 2026 01:05:30 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 12 Nov 2026 01:05:30 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 12 Nov 2026 01:05:30 GMT
ENV TOMCAT_MAJOR=11
# Thu, 12 Nov 2026 01:05:30 GMT
ENV TOMCAT_VERSION=11.0.27
# Thu, 12 Nov 2026 01:05:30 GMT
ENV TOMCAT_SHA512=a617896307cada4884b24f80c4e977ddad8b3e0f88ce0e2a6eea29d5f332498e276ae5976c227a9c8daecf05c7c90def684a3766dd5a81f47a56d8b1adf43dc3
# Thu, 12 Nov 2026 01:05:31 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Thu, 12 Nov 2026 01:05:39 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 01:05:40 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Thu, 12 Nov 2026 01:05:40 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 12 Nov 2026 01:05:40 GMT
ENTRYPOINT []
# Thu, 12 Nov 2026 01:05:40 GMT
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
	-	`sha256:fceeea5c8c20e67a889ba58961b0e235e058f8ff654e3b817c2c49c4ded9e108`  
		Last Modified: Thu, 12 Nov 2026 01:05:49 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:430b808bc2f0638b44b0df8e210723d668c846bf09b9cb7e883d0dde47d7ce8c`  
		Last Modified: Thu, 12 Nov 2026 01:05:49 GMT  
		Size: 14.5 MB (14461065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49b490be30ff8fd773fd40b931207943a115ced4cc64b634123af938d9cc4b1c`  
		Last Modified: Thu, 12 Nov 2026 01:05:49 GMT  
		Size: 203.1 KB (203054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:jre17-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:be021d277971bd09e5df35ff0a7a3b85ac3e05ed9f0cc47fa06302b63ca5d972
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3949950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4abbf9b4836d891cc94fb8f421ef64df4f9f9d62815012c7d5b33f9c31275902`

```dockerfile
```

-	Layers:
	-	`sha256:26929a6b0b96f29979a3ed59d3a8c4bbaaed37111792e03ee6c7112663a13f17`  
		Last Modified: Thu, 12 Nov 2026 01:05:49 GMT  
		Size: 3.9 MB (3928277 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:388c0eb065b85b1baca6c3eac8a1dcfd72a21d3a47c73249a4ae6c23cfe09167`  
		Last Modified: Thu, 12 Nov 2026 01:05:48 GMT  
		Size: 21.7 KB (21673 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:jre17-temurin-jammy` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:008b92bbe4598a5bb2b9e212d6ec1c910c0758de800a6a326aa6c7dca5d2078c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.6 MB (105583103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7da521ec7b927a58fb91de868d670ccc39e7599f281295164bab15d888cb8ce`
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
# Tue, 03 Nov 2026 22:57:34 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 03 Nov 2026 22:57:34 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 22:57:34 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 03 Nov 2026 22:57:34 GMT
WORKDIR /usr/local/tomcat
# Tue, 03 Nov 2026 22:57:34 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 03 Nov 2026 22:57:34 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 03 Nov 2026 22:57:34 GMT
ENV TOMCAT_MAJOR=11
# Tue, 03 Nov 2026 22:57:34 GMT
ENV TOMCAT_VERSION=11.0.27
# Tue, 03 Nov 2026 22:57:34 GMT
ENV TOMCAT_SHA512=a617896307cada4884b24f80c4e977ddad8b3e0f88ce0e2a6eea29d5f332498e276ae5976c227a9c8daecf05c7c90def684a3766dd5a81f47a56d8b1adf43dc3
# Tue, 03 Nov 2026 22:57:34 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 03 Nov 2026 22:57:43 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 22:57:43 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 03 Nov 2026 22:57:43 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 03 Nov 2026 22:57:43 GMT
ENTRYPOINT []
# Tue, 03 Nov 2026 22:57:43 GMT
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
	-	`sha256:6d4d77335c6e6697f6a449a025d9c98571fcc7a5a5ab5996b2c230143d85eeca`  
		Last Modified: Tue, 03 Nov 2026 22:57:51 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51adeaccefdecf9de25b5a398cf9b392dd0eca0fdf063159ec87826388f4fee8`  
		Last Modified: Tue, 03 Nov 2026 22:57:52 GMT  
		Size: 14.5 MB (14488143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ff03d20cc5f247cbf05545b59f22a2da195d028676b63ae18fe4725946d7f4d`  
		Last Modified: Tue, 03 Nov 2026 22:57:52 GMT  
		Size: 229.2 KB (229237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:jre17-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:6cd75d4f7bc075ae46d58197451f3fb3a6a3002985f7afd2f9f63276f5a98407
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3946712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83f2910ae2becf15acd3eca6e4a65171c63dc2ce81b0291fa58359595041f225`

```dockerfile
```

-	Layers:
	-	`sha256:2cb313f8af54f09139f92c55a528d0322ec3781ca10c23330e3d91ce692936f9`  
		Last Modified: Tue, 03 Nov 2026 22:57:52 GMT  
		Size: 3.9 MB (3925007 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:834a3bc35641a0863ed58bc4d3f25df9edbf038996db8aa1492ee0e03c5dcecf`  
		Last Modified: Tue, 03 Nov 2026 22:57:51 GMT  
		Size: 21.7 KB (21705 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:jre17-temurin-jammy` - linux; ppc64le

```console
$ docker pull tomcat@sha256:1040b3ef15e3041d5aa585da4597e056ec7b112a203552078ea29365666dc785
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.0 MB (114032709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9abed8fb2f6c28ac3639966588585a388acb6e04e5a047adf1ab946b4949a971`
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
ENV TOMCAT_MAJOR=11
# Tue, 03 Nov 2026 23:47:39 GMT
ENV TOMCAT_VERSION=11.0.27
# Tue, 03 Nov 2026 23:47:39 GMT
ENV TOMCAT_SHA512=a617896307cada4884b24f80c4e977ddad8b3e0f88ce0e2a6eea29d5f332498e276ae5976c227a9c8daecf05c7c90def684a3766dd5a81f47a56d8b1adf43dc3
# Tue, 03 Nov 2026 23:47:40 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 03 Nov 2026 23:47:47 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 23:47:48 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 03 Nov 2026 23:47:48 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 03 Nov 2026 23:47:48 GMT
ENTRYPOINT []
# Tue, 03 Nov 2026 23:47:48 GMT
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
	-	`sha256:5cdb6686ba1a4a93de860393130f58b228991b77fc5d4168ba7b573b72cf1a6b`  
		Last Modified: Tue, 03 Nov 2026 23:48:07 GMT  
		Size: 14.5 MB (14499228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00ab7d75907fb6074a190a10fc46a88d3074b992de906f6a78c36429bc8b3284`  
		Last Modified: Tue, 03 Nov 2026 23:48:06 GMT  
		Size: 259.8 KB (259831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:jre17-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:3fda04badb5fb260dd68c453dcd12750117db3f6e6593a0766c9d9bdd5101e91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3949777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c336891f557267f1a120acdbec00238abfc9d04d5bc2148aa8ca479ce5d2124`

```dockerfile
```

-	Layers:
	-	`sha256:1804eb329c4713fca920f785f332e9932265e28b16a4838774a62f52240889ea`  
		Last Modified: Tue, 03 Nov 2026 23:48:06 GMT  
		Size: 3.9 MB (3928174 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8cd9865f62c946668b2be3a74d0c5d3bad09f0ca2a4e2f4f535ee2e20669e51a`  
		Last Modified: Tue, 03 Nov 2026 23:48:06 GMT  
		Size: 21.6 KB (21603 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:jre17-temurin-jammy` - linux; s390x

```console
$ docker pull tomcat@sha256:e6203c91fd3d8c4ca515dbea739db2e80f72a93bcbce61a53e86eb420d22e96b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.3 MB (103289957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a693cd98cdbf04b32af27bc8986be11610a712f46552846b13fefe68e2da315c`
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
ENV TOMCAT_MAJOR=11
# Tue, 03 Nov 2026 22:58:31 GMT
ENV TOMCAT_VERSION=11.0.27
# Tue, 03 Nov 2026 22:58:31 GMT
ENV TOMCAT_SHA512=a617896307cada4884b24f80c4e977ddad8b3e0f88ce0e2a6eea29d5f332498e276ae5976c227a9c8daecf05c7c90def684a3766dd5a81f47a56d8b1adf43dc3
# Tue, 03 Nov 2026 22:58:46 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 03 Nov 2026 22:59:00 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 22:59:06 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 03 Nov 2026 22:59:06 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 03 Nov 2026 22:59:06 GMT
ENTRYPOINT []
# Tue, 03 Nov 2026 22:59:06 GMT
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
	-	`sha256:0fb260236b4a739bbef7c71aa555379c5e2539f2f82080caa4b3f242455de980`  
		Last Modified: Tue, 03 Nov 2026 22:59:43 GMT  
		Size: 14.5 MB (14490514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6640fbca2445e615dcf69861cebd79c30bd23c66bee98217d9a9b4b2328f189`  
		Last Modified: Tue, 03 Nov 2026 22:59:42 GMT  
		Size: 231.5 KB (231510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:jre17-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:fb1a65848bf7e42d31705e2ea3e64df3a8f942389642bda6269ab1ed84f6ecb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3947216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adf09c6ea1a71cfc558ff1c3e09ff285c86ea824f083ca132ec1a0cc3a7e3c61`

```dockerfile
```

-	Layers:
	-	`sha256:c0f805255cdf31aaacab8275f04961ffcc5068c53ece6bfe941e048064643e9c`  
		Last Modified: Tue, 03 Nov 2026 22:59:42 GMT  
		Size: 3.9 MB (3925671 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:999e391214ebe8c4584134104a2ac6bcc8aad02f72915ab8eec6b37d450b6e02`  
		Last Modified: Tue, 03 Nov 2026 22:59:42 GMT  
		Size: 21.5 KB (21545 bytes)  
		MIME: application/vnd.in-toto+json
