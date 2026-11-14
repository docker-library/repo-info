## `tomcat:9-jre21-temurin-jammy`

```console
$ docker pull tomcat@sha256:dd377e254dd55d2be38aaf13db20d9f6a7d44683d0ef055bd2a91a06c031cb8d
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

### `tomcat:9-jre21-temurin-jammy` - linux; amd64

```console
$ docker pull tomcat@sha256:cab3a46e16348d046d368ff04cf3c06b32c988a603de35356d6ecd997ca90993
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.8 MB (113828520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b97f11426cfd2fa61de1f4436e80267578d48a9aeb8065ffa693fc68192b8da`
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
# Wed, 11 Nov 2026 23:18:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:18:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:18:23 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:18:23 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:18:23 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Wed, 11 Nov 2026 23:18:28 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='a535a1df9c6284d9618872984e026ae0352d1f7e9e0605425c0e6114f47351dd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='b1734db7ade49c3f6acc6ae06233b8c2dd90e3e2f00f67000ae1c972aaa64d8c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='4994d5bf70a58b683c86158dc1c19c973551cc225956893f91008c6180469c6c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='f4722f400e7fce6e6d80c86d5ef68d0007694670a0a2b0bb569ad0e83dd5f996';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:18:28 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:18:28 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:18:28 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 14 Nov 2026 00:11:40 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 14 Nov 2026 00:11:40 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Nov 2026 00:11:40 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Sat, 14 Nov 2026 00:11:40 GMT
WORKDIR /usr/local/tomcat
# Sat, 14 Nov 2026 00:11:40 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 14 Nov 2026 00:11:40 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 14 Nov 2026 00:11:40 GMT
ENV TOMCAT_MAJOR=9
# Sat, 14 Nov 2026 00:11:40 GMT
ENV TOMCAT_VERSION=9.0.124
# Sat, 14 Nov 2026 00:11:40 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Sat, 14 Nov 2026 00:11:40 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Sat, 14 Nov 2026 00:11:45 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 14 Nov 2026 00:11:45 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Sat, 14 Nov 2026 00:11:45 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 14 Nov 2026 00:11:45 GMT
ENTRYPOINT []
# Sat, 14 Nov 2026 00:11:45 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64c669fcec3e030edf6d2c12142164764d763f5ab9b4bf374598bc70d4f5ea6a`  
		Last Modified: Wed, 11 Nov 2026 23:18:42 GMT  
		Size: 16.1 MB (16115788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e67f4804db649285e2894079cc70663ad503ced9ccf52dd7a6cd756e54eb14d9`  
		Last Modified: Wed, 11 Nov 2026 23:18:44 GMT  
		Size: 53.2 MB (53212236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f258e5941cb21baf92f8436ef2b3297324c4d121261f0984db53b857a104dfce`  
		Last Modified: Wed, 11 Nov 2026 23:18:41 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6792de25975b4075fe4065cfaa458b54391deeb904dcd73ca17668e4fd078e51`  
		Last Modified: Wed, 11 Nov 2026 23:18:42 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5b1967be7c2fe2c388eed733f08ffc6aa7c12ae7fe025bcac66303ddeadfa43`  
		Last Modified: Sat, 14 Nov 2026 00:11:54 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:093074d6063cfca71ef8676878add93ccdc2b9dc1fb7cbe4a2c586901357c2a7`  
		Last Modified: Sat, 14 Nov 2026 00:11:54 GMT  
		Size: 14.2 MB (14197882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65116dd349df9df1a079c6ead556b57c4e16c1cf51a9ee27e0e10731e1ce1459`  
		Last Modified: Sat, 14 Nov 2026 00:11:54 GMT  
		Size: 230.3 KB (230257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre21-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:5dc521c7af084495415a3497b466b5f6bd42925d1236d2159926159520961b9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3945405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4be88c312a0eb962060d0e393ca2771b2374e03f5008dfac58111611d38bda08`

```dockerfile
```

-	Layers:
	-	`sha256:7b8b25fba4815b25f56427637129f2c5d7088e5d393d86a0da6ef48e34e39c1c`  
		Last Modified: Sat, 14 Nov 2026 00:11:54 GMT  
		Size: 3.9 MB (3924192 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a63922fc4ce9f1ee4d9b6b06f409eb8bbb599678ea7ba416448d6b4d7151ca4b`  
		Last Modified: Sat, 14 Nov 2026 00:11:54 GMT  
		Size: 21.2 KB (21213 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jre21-temurin-jammy` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:39395c64b3586b24d2fbe2bc7b5a354124280508218540d3dbdb0a7c6e1d6803
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.9 MB (110879697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7be41c2e794bd5c35eedb445987e0e17b7226086089236c2b672c4f93e99a20e`
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
# Wed, 11 Nov 2026 23:20:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:20:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:20:18 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:20:18 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:20:18 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Wed, 11 Nov 2026 23:22:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='a535a1df9c6284d9618872984e026ae0352d1f7e9e0605425c0e6114f47351dd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='b1734db7ade49c3f6acc6ae06233b8c2dd90e3e2f00f67000ae1c972aaa64d8c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='4994d5bf70a58b683c86158dc1c19c973551cc225956893f91008c6180469c6c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='f4722f400e7fce6e6d80c86d5ef68d0007694670a0a2b0bb569ad0e83dd5f996';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:22:14 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:22:14 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:22:14 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 14 Nov 2026 00:12:09 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 14 Nov 2026 00:12:09 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Nov 2026 00:12:09 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Sat, 14 Nov 2026 00:12:09 GMT
WORKDIR /usr/local/tomcat
# Sat, 14 Nov 2026 00:12:09 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 14 Nov 2026 00:12:09 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 14 Nov 2026 00:12:09 GMT
ENV TOMCAT_MAJOR=9
# Sat, 14 Nov 2026 00:12:09 GMT
ENV TOMCAT_VERSION=9.0.124
# Sat, 14 Nov 2026 00:12:09 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Sat, 14 Nov 2026 00:12:10 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Sat, 14 Nov 2026 00:12:14 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 14 Nov 2026 00:12:15 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Sat, 14 Nov 2026 00:12:15 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 14 Nov 2026 00:12:15 GMT
ENTRYPOINT []
# Sat, 14 Nov 2026 00:12:15 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3373f3943b479ab1fd2784447296f07e79b3fd791bd55e47c7acc7ed291614ab`  
		Last Modified: Wed, 11 Nov 2026 23:20:35 GMT  
		Size: 16.1 MB (16050675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1bfa6047bb36087be2428c3ab7804a08e34761045f00a9ef6f82631a4ffd917`  
		Last Modified: Wed, 11 Nov 2026 23:22:28 GMT  
		Size: 52.4 MB (52390627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d40adfa1a82207795c78a88681acd4451872bdcea1eb1900d7e6ceb54e874d95`  
		Last Modified: Wed, 11 Nov 2026 23:22:26 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0db4a80bade5dba1d9124d28aa7337b4cf9ba3ef0ec4ce75c4b8818997234ff`  
		Last Modified: Wed, 11 Nov 2026 23:22:26 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60c40381d28280db5fa234a14bd11f4656a27f482cc25eaa335e0a8e85092d10`  
		Last Modified: Sat, 14 Nov 2026 00:12:24 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6176368d4889df09d126c87e15283751df1a261f43e39acaed2af52960f4ff3c`  
		Last Modified: Sat, 14 Nov 2026 00:12:24 GMT  
		Size: 14.2 MB (14204781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e720ba3792de51fe8bf1a5c87fdedb1ef699ee6f416e7969bf9884dc80c065a3`  
		Last Modified: Sat, 14 Nov 2026 00:12:24 GMT  
		Size: 229.4 KB (229378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre21-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:d0f72b202fe440e39e2a3318b3358675a77defdedada4a80487cefea261dc24c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3945222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cba57b6c843f612c7030af6f12b640f85f30064a9b8f4a982519380a358cf242`

```dockerfile
```

-	Layers:
	-	`sha256:08421a563aa083eb043ce4cf12049a622c6dfdb57506dbd72cf5e262b02dcf89`  
		Last Modified: Sat, 14 Nov 2026 00:12:24 GMT  
		Size: 3.9 MB (3923861 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7baff2fd2a0b94897066ec656a24a216c1896a4c90007dc2f0201237c89edc1c`  
		Last Modified: Sat, 14 Nov 2026 00:12:24 GMT  
		Size: 21.4 KB (21361 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jre21-temurin-jammy` - linux; ppc64le

```console
$ docker pull tomcat@sha256:f271dbd61637c4e13c5d5c5d1c38ffadfc17d31573e884ec680ec7b9d106ac28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.8 MB (119808861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:021b12042a9d5e6a0f082ff18bf05eda851b1b814db1b4ca55a2e7073c312764`
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
ENV JAVA_VERSION=jdk-21.0.13+9
# Thu, 12 Nov 2026 01:59:22 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='a535a1df9c6284d9618872984e026ae0352d1f7e9e0605425c0e6114f47351dd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='b1734db7ade49c3f6acc6ae06233b8c2dd90e3e2f00f67000ae1c972aaa64d8c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='4994d5bf70a58b683c86158dc1c19c973551cc225956893f91008c6180469c6c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='f4722f400e7fce6e6d80c86d5ef68d0007694670a0a2b0bb569ad0e83dd5f996';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 12 Nov 2026 01:59:23 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 12 Nov 2026 01:59:44 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 12 Nov 2026 01:59:44 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 12 Nov 2026 09:12:29 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 12 Nov 2026 09:12:29 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 09:12:29 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Thu, 12 Nov 2026 09:12:30 GMT
WORKDIR /usr/local/tomcat
# Thu, 12 Nov 2026 09:12:30 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 12 Nov 2026 09:12:30 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 12 Nov 2026 09:12:30 GMT
ENV TOMCAT_MAJOR=9
# Thu, 12 Nov 2026 09:12:30 GMT
ENV TOMCAT_VERSION=9.0.124
# Thu, 12 Nov 2026 09:12:30 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Sat, 14 Nov 2026 01:36:37 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Sat, 14 Nov 2026 01:36:45 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 14 Nov 2026 01:36:47 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Sat, 14 Nov 2026 01:36:47 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 14 Nov 2026 01:36:47 GMT
ENTRYPOINT []
# Sat, 14 Nov 2026 01:36:47 GMT
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
	-	`sha256:7d3dcbf57998c3dff8f4cae162a45c68ce60ff46bcd48da43dd042ba586fa612`  
		Last Modified: Thu, 12 Nov 2026 02:01:06 GMT  
		Size: 52.7 MB (52715157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bde0cb11f04dff6545b437b2d7bc12712a35ade6474100bcd923307645f63eb`  
		Last Modified: Thu, 12 Nov 2026 02:01:05 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:924ff4bcd9391cb2b03f92df0ab99da29be458f537d02c6f858758ec3a8ae938`  
		Last Modified: Thu, 12 Nov 2026 02:01:07 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:358e246611172d77d46ebfeff35c976c951e71517bab034d9731bbdc9fd51de9`  
		Last Modified: Thu, 12 Nov 2026 09:13:25 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ecf2ad4a57beac8570e67d8c25018fc99e1d0fe12711e1d6ce7c35615daf8e9`  
		Last Modified: Sat, 14 Nov 2026 01:37:05 GMT  
		Size: 14.2 MB (14223463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9be724d273f00b468e2afdb688f48991a89048c9049c78b0e386a08b38c4cf04`  
		Last Modified: Sat, 14 Nov 2026 01:37:04 GMT  
		Size: 259.8 KB (259829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre21-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:750dd9dcf6420d9b64b20994f89f152d166e81d1f93f6d9785e4f3c8112d338d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3948299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac309bfa7aad4333bd6e594f116a4f25e4306cb7303e3cecabff082cf0397ce8`

```dockerfile
```

-	Layers:
	-	`sha256:eecb6704a1476310a0010d4345d255067a6d7af9c931e521739ac3c0488da571`  
		Last Modified: Sat, 14 Nov 2026 01:37:04 GMT  
		Size: 3.9 MB (3927034 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ffeb02516f53758b7dd8818a4fdfc06369212a8634e0f2e756bfa180253fc21`  
		Last Modified: Sat, 14 Nov 2026 01:37:04 GMT  
		Size: 21.3 KB (21265 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jre21-temurin-jammy` - linux; s390x

```console
$ docker pull tomcat@sha256:42dc4f18c02aa01a438f5bd61d51fe28eef4e564a653adfd3291a02681ca0232
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.5 MB (108453566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:325fbe09b8b8800eb0b858671bdbddfde12872d568db126dc70e8043469bdb8c`
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
# Wed, 11 Nov 2026 23:13:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:13:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:13:50 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:13:50 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:13:50 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Wed, 11 Nov 2026 23:15:56 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='a535a1df9c6284d9618872984e026ae0352d1f7e9e0605425c0e6114f47351dd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='b1734db7ade49c3f6acc6ae06233b8c2dd90e3e2f00f67000ae1c972aaa64d8c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='4994d5bf70a58b683c86158dc1c19c973551cc225956893f91008c6180469c6c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='f4722f400e7fce6e6d80c86d5ef68d0007694670a0a2b0bb569ad0e83dd5f996';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:15:56 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:15:56 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:15:56 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 12 Nov 2026 01:55:14 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 12 Nov 2026 01:55:14 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:55:14 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Thu, 12 Nov 2026 01:55:15 GMT
WORKDIR /usr/local/tomcat
# Thu, 12 Nov 2026 01:55:15 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 12 Nov 2026 01:55:15 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 12 Nov 2026 01:55:15 GMT
ENV TOMCAT_MAJOR=9
# Thu, 12 Nov 2026 01:55:15 GMT
ENV TOMCAT_VERSION=9.0.124
# Thu, 12 Nov 2026 01:55:15 GMT
ENV TOMCAT_SHA512=925e4fefe25b2ecccd032acd0b4cb1b506455037ed0f8b0e51824bed839c5e92bf5e58982b990d2fdcbc790bcda1a533db7faffb325f8a7baee939fc8ae871c1
# Sat, 14 Nov 2026 01:13:19 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Sat, 14 Nov 2026 01:13:21 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 14 Nov 2026 01:13:22 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Sat, 14 Nov 2026 01:13:22 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 14 Nov 2026 01:13:22 GMT
ENTRYPOINT []
# Sat, 14 Nov 2026 01:13:22 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:ee971bee4c45f08194cd2311c6f51955f945c5a0fa74935d1fe8a85ef452dc3b`  
		Last Modified: Tue, 10 Nov 2026 08:55:22 GMT  
		Size: 28.5 MB (28538219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a5f19b70c447e0c46d8df8a46500724c1234eb09add13957815d69bab81f074`  
		Last Modified: Wed, 11 Nov 2026 23:14:19 GMT  
		Size: 16.1 MB (16113969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b99400544665a41f86a94b302ca6fa2399c4f19e4eaa9a38ccd8ce782c97de4a`  
		Last Modified: Wed, 11 Nov 2026 23:16:15 GMT  
		Size: 49.4 MB (49374268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:696d0b8d559152dab8ca0d963267051cdd610674f51a19052bef654758431ab8`  
		Last Modified: Wed, 11 Nov 2026 23:16:14 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2152da3a98d85cf449af38fcd068036eb62b2b3467c8c6c1f59f8fa2561744ac`  
		Last Modified: Wed, 11 Nov 2026 23:16:14 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7de666bb49a7bb4127a236907159081019396cc7d9b64f0e953fea39f6a83af9`  
		Last Modified: Thu, 12 Nov 2026 01:55:58 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53597a6822854589b998c77bc827c186d327e26be12a45af3a275c862e562c6f`  
		Last Modified: Sat, 14 Nov 2026 01:13:34 GMT  
		Size: 14.2 MB (14192833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18e674adf3cf43288c8d0e591c632b77f770f64ebfa2771f8d351a1ba6926fa6`  
		Last Modified: Sat, 14 Nov 2026 01:13:34 GMT  
		Size: 231.5 KB (231453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre21-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:9e4fa4bea547921c8a096ac4b1e7201bbf5110f8b62ec10fa0ac784635889364
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3945750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:438ce837f495899aad4f43d5e9bb07865388415f7812a3cb2df28fcdc1bbdcfa`

```dockerfile
```

-	Layers:
	-	`sha256:dd35cdbf2656af298a39b74e18220805f1a5409d34b388dbe14472cf5372c850`  
		Last Modified: Sat, 14 Nov 2026 01:13:34 GMT  
		Size: 3.9 MB (3924537 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2be0ba788c7ec30e249f8535fd17609ab90b94bd5bd71fcb5bb47ba03004be96`  
		Last Modified: Sat, 14 Nov 2026 01:13:34 GMT  
		Size: 21.2 KB (21213 bytes)  
		MIME: application/vnd.in-toto+json
