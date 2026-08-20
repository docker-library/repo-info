## `tomcat:11-jre25-temurin-jammy`

```console
$ docker pull tomcat@sha256:9bc79734cddc30e1a43ce7314e3de2dc92f24820eee793a37586fc2a9de70d13
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `tomcat:11-jre25-temurin-jammy` - linux; amd64

```console
$ docker pull tomcat@sha256:1dc6f747c0a61392d648acaf812622495d1197af2a2801b8e8104eeef5d8e47c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.8 MB (118768726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bbf1334ff446092cb45ede1c89508102413ffcfb07f314029fe90fa175eea6d`
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
# Tue, 18 Aug 2026 01:15:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 01:15:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 01:15:29 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 01:15:29 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:15:29 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Tue, 18 Aug 2026 01:15:51 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='487ad434d8b121ae3902d5ad9cb830cd8e1f75fefad6e2ba80f89d60e3db95d7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        arm64)          ESUM='d12d5b19ff7f6c4a99fd4f9eecede2c96e64df7d1f41cc84f2e9c9b38408600b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64el)          ESUM='82daf66b73505d3974d831bd244acbb1123a340b7752ced449dcdca69ff3a780';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='ee513969bef35f10afb7d06840d9a421138a3d30c062cde3dda8fe780dc451a2';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 18 Aug 2026 01:15:51 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 18 Aug 2026 01:15:51 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:15:51 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 18 Aug 2026 18:09:27 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 18 Aug 2026 18:09:27 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 18:09:27 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 18 Aug 2026 18:09:27 GMT
WORKDIR /usr/local/tomcat
# Tue, 18 Aug 2026 18:09:27 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 18:09:27 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 18:09:27 GMT
ENV TOMCAT_MAJOR=11
# Tue, 18 Aug 2026 18:09:27 GMT
ENV TOMCAT_VERSION=11.0.25
# Tue, 18 Aug 2026 18:09:27 GMT
ENV TOMCAT_SHA512=81339c046dff1b363a80a3bccf80cb391660a6828dd8ae042180ceb11c8b1614317143e60b311b9e791dab585bb046b777234667acce7dca2203a74b37bf20f2
# Tue, 18 Aug 2026 18:09:27 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 18 Aug 2026 18:09:32 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 18:09:33 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 18 Aug 2026 18:09:33 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 18 Aug 2026 18:09:33 GMT
ENTRYPOINT []
# Tue, 18 Aug 2026 18:09:33 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95465834d22a60c932aa5da06809fd1474bf0a9ba8185851f4e401852707335e`  
		Last Modified: Tue, 18 Aug 2026 01:16:05 GMT  
		Size: 11.4 MB (11366732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eab5e9c4ac05f4f950dc7f96dd924daccd445a8450332e879164f3f22f93ac6`  
		Last Modified: Tue, 18 Aug 2026 01:16:07 GMT  
		Size: 63.0 MB (63010812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c988ed7c9a3e2b179410d896b7e61fffc6429d3d09bd5aca06aa9571b7f90fce`  
		Last Modified: Tue, 18 Aug 2026 01:16:05 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:085eaa0a1b45e026e378d2f767ae27fda1bb3b4f5666f9fa07e2ceec985e26e1`  
		Last Modified: Tue, 18 Aug 2026 18:09:42 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:202c1f5c59292e7e65990c50d366f0b33897898276bb87439896f90cc34e8b50`  
		Last Modified: Tue, 18 Aug 2026 18:09:43 GMT  
		Size: 14.4 MB (14437998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3657e45c74f8945d13b2a0661abee6b4dc8fc88c9a4b3091e39e7c602fd7e517`  
		Last Modified: Tue, 18 Aug 2026 18:09:43 GMT  
		Size: 213.7 KB (213723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:11-jre25-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:6a4e6865e7214e0c8907105239a28a0427be428b17db13e47a0bd724f4ebc71c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3713884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a092880fc250390582d251fbf08ef38f83294d74f6e3b64ca96d9852e63fab85`

```dockerfile
```

-	Layers:
	-	`sha256:43c0d9d026b7596d0ac6346a5c04cf1f05231d964a3bf3548019d7203837064d`  
		Last Modified: Tue, 18 Aug 2026 18:09:43 GMT  
		Size: 3.7 MB (3692350 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c37bc00a3fcfac2be1ac2160cf74ee6aa30335e5838b8f5b88f707085225c85e`  
		Last Modified: Tue, 18 Aug 2026 18:09:43 GMT  
		Size: 21.5 KB (21534 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:11-jre25-temurin-jammy` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:6bd55c7f42567321f5085f466666321fb6942a201ae9650e513bdbd19df176bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.5 MB (115496078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec007a5b3eab7a6d701e6d0f256b2c8fe966cb05f9f6448ba06301d11157ca8d`
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
# Tue, 18 Aug 2026 01:15:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 01:15:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 01:15:25 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 01:15:25 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:15:25 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Tue, 18 Aug 2026 01:15:45 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='487ad434d8b121ae3902d5ad9cb830cd8e1f75fefad6e2ba80f89d60e3db95d7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        arm64)          ESUM='d12d5b19ff7f6c4a99fd4f9eecede2c96e64df7d1f41cc84f2e9c9b38408600b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64el)          ESUM='82daf66b73505d3974d831bd244acbb1123a340b7752ced449dcdca69ff3a780';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='ee513969bef35f10afb7d06840d9a421138a3d30c062cde3dda8fe780dc451a2';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 18 Aug 2026 01:15:45 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 18 Aug 2026 01:15:45 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:15:45 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 18 Aug 2026 18:09:27 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 18 Aug 2026 18:09:27 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 18:09:27 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 18 Aug 2026 18:09:27 GMT
WORKDIR /usr/local/tomcat
# Tue, 18 Aug 2026 18:09:27 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 18:09:27 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 18:09:27 GMT
ENV TOMCAT_MAJOR=11
# Tue, 18 Aug 2026 18:09:27 GMT
ENV TOMCAT_VERSION=11.0.25
# Tue, 18 Aug 2026 18:09:27 GMT
ENV TOMCAT_SHA512=81339c046dff1b363a80a3bccf80cb391660a6828dd8ae042180ceb11c8b1614317143e60b311b9e791dab585bb046b777234667acce7dca2203a74b37bf20f2
# Tue, 18 Aug 2026 18:09:27 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 18 Aug 2026 18:09:33 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 18:09:33 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 18 Aug 2026 18:09:33 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 18 Aug 2026 18:09:33 GMT
ENTRYPOINT []
# Tue, 18 Aug 2026 18:09:33 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04cfbf21e6f5e08777009cff3866a328eb960cc7e8893b7a5fe39ada8a40d262`  
		Last Modified: Tue, 18 Aug 2026 01:15:59 GMT  
		Size: 11.3 MB (11310481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:614f6744d1f71af20dc9013725dbcd971248a879f6fb9bc3cb83b4a3c20b3396`  
		Last Modified: Tue, 18 Aug 2026 01:16:01 GMT  
		Size: 61.9 MB (61912903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2f4a3dcefad0a0368ac153bb8177732a3e6e9e829e7301e135dbba947020df9`  
		Last Modified: Tue, 18 Aug 2026 01:15:59 GMT  
		Size: 2.3 KB (2282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e7fe11346e045430c3cb947eb70bef6e1c9029dd7e3d36e0fe1530606280229`  
		Last Modified: Tue, 18 Aug 2026 18:09:42 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc1980a8f667b169566076fbd5c323239dee1b266f10ae8524dd9d8f3dde5828`  
		Last Modified: Tue, 18 Aug 2026 18:09:43 GMT  
		Size: 14.4 MB (14437005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c75c0858a6a2c8847a5ac7f04ed2da757a10d185e166b9144daf138d98f309d`  
		Last Modified: Tue, 18 Aug 2026 18:09:42 GMT  
		Size: 212.7 KB (212719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:11-jre25-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:210c3942cc9d2c89fbbe02833f01adabd68342b44d7ab567b49acd161836a8ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3713706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff1e7ef0dec001d0bfa074fb0b5c92342b9169d6b74179860dfc14f5aa635c6d`

```dockerfile
```

-	Layers:
	-	`sha256:3aa4250ec305ef20f28f7dcaecfe0d1880a0a57d0bfb702527b845498346d218`  
		Last Modified: Tue, 18 Aug 2026 18:09:43 GMT  
		Size: 3.7 MB (3692013 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52afd79ea2b30e22150ff93950e04935525454d2966bcd602c9d4559d06188f1`  
		Last Modified: Tue, 18 Aug 2026 18:09:42 GMT  
		Size: 21.7 KB (21693 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:11-jre25-temurin-jammy` - linux; ppc64le

```console
$ docker pull tomcat@sha256:a720e51cfb8bfaca910bc20ab011b662b3756b97d5193841da54111dc20a6357
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.6 MB (123595692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdca3939f0ed035b0f4e66046f2d2fc746dfb81c4d3c6c6cc2828223552fce2e`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 10 Aug 2026 17:41:01 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:41:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:41:01 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:41:05 GMT
ADD file:d76e60867a1f84b7db03c693179093620dc98a06de4f58fdcc806cfc4e4be11c in / 
# Mon, 10 Aug 2026 17:41:05 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:14:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 01:14:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 01:14:21 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 01:14:21 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:14:21 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Tue, 18 Aug 2026 01:14:55 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='487ad434d8b121ae3902d5ad9cb830cd8e1f75fefad6e2ba80f89d60e3db95d7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        arm64)          ESUM='d12d5b19ff7f6c4a99fd4f9eecede2c96e64df7d1f41cc84f2e9c9b38408600b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64el)          ESUM='82daf66b73505d3974d831bd244acbb1123a340b7752ced449dcdca69ff3a780';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='ee513969bef35f10afb7d06840d9a421138a3d30c062cde3dda8fe780dc451a2';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 18 Aug 2026 01:14:56 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 18 Aug 2026 01:14:56 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:14:56 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 19 Aug 2026 22:44:13 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 19 Aug 2026 22:44:13 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 22:44:13 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 19 Aug 2026 22:44:13 GMT
WORKDIR /usr/local/tomcat
# Wed, 19 Aug 2026 22:44:13 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 19 Aug 2026 22:44:13 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 19 Aug 2026 22:44:13 GMT
ENV TOMCAT_MAJOR=11
# Wed, 19 Aug 2026 22:44:13 GMT
ENV TOMCAT_VERSION=11.0.25
# Wed, 19 Aug 2026 22:44:13 GMT
ENV TOMCAT_SHA512=81339c046dff1b363a80a3bccf80cb391660a6828dd8ae042180ceb11c8b1614317143e60b311b9e791dab585bb046b777234667acce7dca2203a74b37bf20f2
# Wed, 19 Aug 2026 22:44:14 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Wed, 19 Aug 2026 22:44:23 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 22:44:25 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 19 Aug 2026 22:44:25 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 19 Aug 2026 22:44:25 GMT
ENTRYPOINT []
# Wed, 19 Aug 2026 22:44:25 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:f91e00e792a8adfcd4df0b5c8e802d3b4d1e06477f9753454043a7ce76772758`  
		Last Modified: Mon, 10 Aug 2026 20:09:02 GMT  
		Size: 34.6 MB (34638145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f43fbcb802fdb983ea909d289553567f7978025542b37fc166c76ed6e15e112`  
		Last Modified: Tue, 18 Aug 2026 01:15:26 GMT  
		Size: 11.8 MB (11849052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3e89e00cecd0b63119ca2cdc4bdb8f4f30be887c90b3d105f980b5f0a82a736`  
		Last Modified: Tue, 18 Aug 2026 01:15:27 GMT  
		Size: 62.4 MB (62411427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16dbcd766045edeea98a0224c29f1ccdb956dc746ffa560f576e2cad3dcac190`  
		Last Modified: Tue, 18 Aug 2026 01:15:25 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ac521578a29b0f1970d2accfb41030486a264e0dfb70fdc70eb20c1bc777443`  
		Last Modified: Wed, 19 Aug 2026 22:44:49 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aef5a1a38257017b68f270145126a23361d290b31d1f4f303f05ecb9cf4e45a1`  
		Last Modified: Wed, 19 Aug 2026 22:44:49 GMT  
		Size: 14.5 MB (14451060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e46d48844237cbe06b7ba34363327e63e56f3d29eeac28a56bcfbe4c3afff4ca`  
		Last Modified: Wed, 19 Aug 2026 22:44:49 GMT  
		Size: 243.5 KB (243490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:11-jre25-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:1ba618d988b3ac1a5040f2f5356dfed589d40f256e25eceb28103b65acda7a41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3717288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb752714ff908c80db921b666cbec90b76d329de556e6af2c083d29c0b823361`

```dockerfile
```

-	Layers:
	-	`sha256:701900f158680864244b9baefa6a9345a0fd2cadea618890d992805f9bfc3967`  
		Last Modified: Wed, 19 Aug 2026 22:44:49 GMT  
		Size: 3.7 MB (3695696 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:60d7a266e1f92bcd429b202efb0dad7afa9db7dac714909e605b4153d7a2e645`  
		Last Modified: Wed, 19 Aug 2026 22:44:49 GMT  
		Size: 21.6 KB (21592 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:11-jre25-temurin-jammy` - linux; s390x

```console
$ docker pull tomcat@sha256:64a39a46d91dba8e9e9482c410a9d8f12188cd020f5cef61332f36be568dccaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 MB (114823098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8c83acc1d0ef1e2aef78a41a10c739ac90143863a605e3ab878548cb589bc0c`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 10 Aug 2026 17:41:22 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:41:22 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:41:22 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:41:24 GMT
ADD file:ebe1295278656f2efe95b21ab9586cdaa8c816836b56de7bf7a802fc92465272 in / 
# Mon, 10 Aug 2026 17:41:24 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 00:09:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 00:09:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 00:09:35 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 00:09:35 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 00:09:35 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Tue, 18 Aug 2026 00:10:10 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='487ad434d8b121ae3902d5ad9cb830cd8e1f75fefad6e2ba80f89d60e3db95d7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        arm64)          ESUM='d12d5b19ff7f6c4a99fd4f9eecede2c96e64df7d1f41cc84f2e9c9b38408600b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64el)          ESUM='82daf66b73505d3974d831bd244acbb1123a340b7752ced449dcdca69ff3a780';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='ee513969bef35f10afb7d06840d9a421138a3d30c062cde3dda8fe780dc451a2';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 18 Aug 2026 00:10:10 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 18 Aug 2026 00:10:11 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 18 Aug 2026 00:10:11 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 18 Aug 2026 02:13:34 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 18 Aug 2026 02:13:34 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 02:13:34 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 18 Aug 2026 02:13:34 GMT
WORKDIR /usr/local/tomcat
# Tue, 18 Aug 2026 02:13:34 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 02:13:34 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 18 Aug 2026 02:13:34 GMT
ENV TOMCAT_MAJOR=11
# Tue, 18 Aug 2026 02:13:34 GMT
ENV TOMCAT_VERSION=11.0.25
# Tue, 18 Aug 2026 02:13:34 GMT
ENV TOMCAT_SHA512=81339c046dff1b363a80a3bccf80cb391660a6828dd8ae042180ceb11c8b1614317143e60b311b9e791dab585bb046b777234667acce7dca2203a74b37bf20f2
# Tue, 18 Aug 2026 18:08:09 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 18 Aug 2026 18:08:13 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 18:08:14 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 18 Aug 2026 18:08:14 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 18 Aug 2026 18:08:14 GMT
ENTRYPOINT []
# Tue, 18 Aug 2026 18:08:14 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:3c9503cfff1c82d12820c3c752940964f6a091cb183b44e45fc5a003b8d47e87`  
		Last Modified: Mon, 10 Aug 2026 20:09:16 GMT  
		Size: 28.2 MB (28210903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b85d8d31eef6d2cee59b9e10a9c227f505feccedc237982d8d79c5417941c8a2`  
		Last Modified: Tue, 18 Aug 2026 00:10:44 GMT  
		Size: 11.5 MB (11453317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:309298a2194b6659c5c8104df02bb058e0d0545da1244929edccb79c54223986`  
		Last Modified: Tue, 18 Aug 2026 00:10:46 GMT  
		Size: 60.5 MB (60500865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e091adbf7db95b2d46707ccbb5761e81ffc9441a6f037d00e0d326599d05128`  
		Last Modified: Tue, 18 Aug 2026 00:10:43 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd5622e856e31da764e83b5f417ac5386bb1ac9a41ea19465323b554288051ba`  
		Last Modified: Tue, 18 Aug 2026 02:13:50 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3f8acdb662f7914f7f279b00c2bac0e4ddf03db319ebbba68f63a6762aa53d7`  
		Last Modified: Tue, 18 Aug 2026 18:08:31 GMT  
		Size: 14.4 MB (14440466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d971fd0bcc884e1f8c5d052f4a18acf37e414f656991471bb2aa7a4f1172fb6e`  
		Last Modified: Tue, 18 Aug 2026 18:08:30 GMT  
		Size: 215.0 KB (215029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:11-jre25-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:4b5d877a507529275e0d13aad45689250a453acf11d75623cfceb097f5828b68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3714867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8612a9047218e5cbe62e513741d973fdd09ddd21b942beedd2ca3cdb4969fa5`

```dockerfile
```

-	Layers:
	-	`sha256:641d492ff140987170fbd8c4ed52e7ceda963c1e004460179a68847a298488e6`  
		Last Modified: Tue, 18 Aug 2026 18:08:30 GMT  
		Size: 3.7 MB (3693335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0eea4667a79791c6f16dc4bb4f91c29ee09e7a116d35395bda283bd748c08c2`  
		Last Modified: Tue, 18 Aug 2026 18:08:29 GMT  
		Size: 21.5 KB (21532 bytes)  
		MIME: application/vnd.in-toto+json
