## `tomcat:10-jre21-temurin-jammy`

```console
$ docker pull tomcat@sha256:00543e7f92e3b66052eeaab0b1239f2b83ddf986c0414350a67a3e34f0ae2437
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

### `tomcat:10-jre21-temurin-jammy` - linux; amd64

```console
$ docker pull tomcat@sha256:57dd40bbff2f6b7f38b0421b23aa04743eb0fd41bf4a6e77b35addb50e29d575
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.3 MB (116328328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:030c5a96db6a155de43111fec57d0da460abf11c270a430e64057fc50dda1509`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:17:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:17:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:17:23 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:17:23 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:17:23 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 02 Oct 2026 01:19:09 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:19:10 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:19:10 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:19:10 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 03:26:31 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 02 Oct 2026 03:26:31 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 03:26:31 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 02 Oct 2026 03:26:31 GMT
WORKDIR /usr/local/tomcat
# Fri, 02 Oct 2026 03:26:31 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:26:31 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:26:31 GMT
ENV TOMCAT_MAJOR=10
# Fri, 02 Oct 2026 03:26:31 GMT
ENV TOMCAT_VERSION=10.1.60
# Fri, 02 Oct 2026 03:26:31 GMT
ENV TOMCAT_SHA512=aa06508300ca137a023b74b8600f2c1b3248412eb85d4fc5e2f337c6c4d3776f4491e272f79856ac541cfab0fc35537111ae4f3cfcd0bbe702c0a3610a61bd04
# Fri, 02 Oct 2026 03:26:31 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 02 Oct 2026 03:26:38 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:26:38 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 02 Oct 2026 03:26:38 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 02 Oct 2026 03:26:38 GMT
ENTRYPOINT []
# Fri, 02 Oct 2026 03:26:38 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04554394ac477b50174eaac591344e0ebed72cda3dee2a3754179f5386f434a9`  
		Last Modified: Fri, 02 Oct 2026 01:17:40 GMT  
		Size: 16.1 MB (16114143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8299b2794a7bf11e0cbae06221c48727bae196cdfa8779aea9bebf431dd5d095`  
		Last Modified: Fri, 02 Oct 2026 01:19:23 GMT  
		Size: 53.1 MB (53097327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:246658e744f6dbdade05a9cae0cf7d193e07b240d2a1470a9249f8ab173957e2`  
		Last Modified: Fri, 02 Oct 2026 01:19:21 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e992b94e17ea2591367c150fcb7bd3ee1e5f100c522782a41a7aea8e1c2c5577`  
		Last Modified: Fri, 02 Oct 2026 01:19:21 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb63d3d2a7cfd9917997029a97f01cbddd234abe064b471baff9a0b5e5fb2704`  
		Last Modified: Fri, 02 Oct 2026 03:26:47 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd71679f2378c4831ec1425f53dd98d4173f1d3fab0f8b772b71ab063d6b21d2`  
		Last Modified: Fri, 02 Oct 2026 03:26:48 GMT  
		Size: 14.4 MB (14382742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c35b611b62661f0b1904f49eb5f8b4c85fdecda2ec2b40936524f1de4f8eacb`  
		Last Modified: Fri, 02 Oct 2026 03:26:48 GMT  
		Size: 3.0 MB (2979665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:10-jre21-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:276db1e431b62bf55a6cd0ae308f7eff1ba332bcec8dc49cda989dea699987c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3948123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e609c6607fc22f0c0e1e602946b9836800e4369088110fa1c7e92815cdb9e15d`

```dockerfile
```

-	Layers:
	-	`sha256:2ff574957e282aaf9fdcdfcc19c5f545ab4dbab1cacbb17941e668b45d5b1838`  
		Last Modified: Fri, 02 Oct 2026 03:26:47 GMT  
		Size: 3.9 MB (3926894 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f75603e1a1d4634fac6b4816e556225b3211148efb2ecf518a237f8019c2b35`  
		Last Modified: Fri, 02 Oct 2026 03:26:47 GMT  
		Size: 21.2 KB (21229 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:10-jre21-temurin-jammy` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:99e9e6830d2a2b67629beec1c8c49556423bee2efbf53b2afd2b81a6d9b08b93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.3 MB (113260981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8b91385ba1adc0595c896c71f80f2ef0581be849ea845a092d2a95b86d42947`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:18:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:18:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:18:40 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:18:40 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:18:40 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 02 Oct 2026 01:19:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:19:07 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:19:07 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:19:07 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 03:25:34 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 02 Oct 2026 03:25:34 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 03:25:34 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 02 Oct 2026 03:25:34 GMT
WORKDIR /usr/local/tomcat
# Fri, 02 Oct 2026 03:25:34 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:25:34 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:25:34 GMT
ENV TOMCAT_MAJOR=10
# Fri, 02 Oct 2026 03:25:34 GMT
ENV TOMCAT_VERSION=10.1.60
# Fri, 02 Oct 2026 03:25:34 GMT
ENV TOMCAT_SHA512=aa06508300ca137a023b74b8600f2c1b3248412eb85d4fc5e2f337c6c4d3776f4491e272f79856ac541cfab0fc35537111ae4f3cfcd0bbe702c0a3610a61bd04
# Fri, 02 Oct 2026 03:25:34 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 02 Oct 2026 03:25:43 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:25:44 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 02 Oct 2026 03:25:44 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 02 Oct 2026 03:25:44 GMT
ENTRYPOINT []
# Fri, 02 Oct 2026 03:25:44 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d4f07e0ac95219d9caeb9d6fc5bc01e5f6803579fc458127af6bf82d9ddd344`  
		Last Modified: Fri, 02 Oct 2026 01:18:57 GMT  
		Size: 16.0 MB (16048135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e3a6cd663c0c65b9cf28324bc2ffa2ec5073bf9222c74e47a2b8b09e3be52ee`  
		Last Modified: Fri, 02 Oct 2026 01:19:21 GMT  
		Size: 52.3 MB (52273643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e98619ad31209554cf888d01a927e8eacc51b5b26cd74f6c150c0daafc6690d`  
		Last Modified: Fri, 02 Oct 2026 01:19:19 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baae1338e74a2d60cbc4c8b6599e3cb5e1480d72d2fd8e6bb14911288c467627`  
		Last Modified: Fri, 02 Oct 2026 01:19:20 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:671f7e3a0b5879b53ecd93842cc5f4c87bb46d74f687647bf6224be2b6f0e98e`  
		Last Modified: Fri, 02 Oct 2026 03:25:53 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6cefd5a5e0b55055ffa74c3d67c2d91fb344bd918453b4629e88b003eea7566`  
		Last Modified: Fri, 02 Oct 2026 03:25:53 GMT  
		Size: 14.4 MB (14381966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dac25455c132d18d50b8fddbbcd9d499d38b072e4ad5593e6169b77fb60869f7`  
		Last Modified: Fri, 02 Oct 2026 03:25:53 GMT  
		Size: 2.9 MB (2870274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:10-jre21-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:d6afab060ea4ae2cafb99a95ac5bdaf86faaeb0aa5e54c4742d418ad2cf2d109
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3947940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bec949bc6b5f4920b556de89334c8c73ce04ca395cbfdc1ec6c9c81598f0680a`

```dockerfile
```

-	Layers:
	-	`sha256:6c0456d8a154a39d4246acc081aa779446c0c1f029fb30627ed0b73f9f80e6fe`  
		Last Modified: Fri, 02 Oct 2026 03:25:53 GMT  
		Size: 3.9 MB (3926563 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85eb5ae2a0bf3d568b57e20894e526f31fcbf0089c1ed1ea6c8a421a8cbb602d`  
		Last Modified: Fri, 02 Oct 2026 03:25:53 GMT  
		Size: 21.4 KB (21377 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:10-jre21-temurin-jammy` - linux; ppc64le

```console
$ docker pull tomcat@sha256:96d3baa7a3b381cf84eb91bd60921438e670e4b76f1580c65f426f0c4695ad8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.2 MB (123228393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:438cb71f4772c8def5a66d4707e85680f2b839a6ac7efcbd8e4656f5217beddb`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:59 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:59 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:25:02 GMT
ADD file:045fd400d3feed52639c1d69b89f522795380adacf8a6025e5d8b200e9a878dc in / 
# Thu, 24 Sep 2026 22:25:03 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 03:34:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 03:34:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 03:34:32 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 03:34:32 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:34:32 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 02 Oct 2026 03:50:50 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 03:50:51 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 03:50:53 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 03:50:53 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 08:55:35 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 02 Oct 2026 08:55:35 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 08:55:35 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 02 Oct 2026 08:55:36 GMT
WORKDIR /usr/local/tomcat
# Fri, 02 Oct 2026 08:55:36 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 08:55:36 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 08:55:36 GMT
ENV TOMCAT_MAJOR=10
# Fri, 02 Oct 2026 08:55:36 GMT
ENV TOMCAT_VERSION=10.1.60
# Fri, 02 Oct 2026 08:55:36 GMT
ENV TOMCAT_SHA512=aa06508300ca137a023b74b8600f2c1b3248412eb85d4fc5e2f337c6c4d3776f4491e272f79856ac541cfab0fc35537111ae4f3cfcd0bbe702c0a3610a61bd04
# Fri, 02 Oct 2026 08:58:30 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 02 Oct 2026 08:58:40 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 08:58:45 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 02 Oct 2026 08:58:45 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 02 Oct 2026 08:58:45 GMT
ENTRYPOINT []
# Fri, 02 Oct 2026 08:58:45 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:4ec38ea96fb6e9976b5659ce60f9385aeabcf358353540676f8685df8f5439db`  
		Last Modified: Thu, 24 Sep 2026 23:36:25 GMT  
		Size: 34.7 MB (34703208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0293deb3c1983b9215d56b486798d88bc4f16eb2bd51413c759d76cb73436437`  
		Last Modified: Fri, 02 Oct 2026 03:35:09 GMT  
		Size: 17.6 MB (17594211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee97390bad6a038cf2f65e48c24152c27ca854ebe05cce7a4dc58190f60c6c48`  
		Last Modified: Fri, 02 Oct 2026 03:51:28 GMT  
		Size: 53.1 MB (53113964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b8954fce98fda8194cdfc74d1c225a1891eff1d365468785fce610edab4838a`  
		Last Modified: Fri, 02 Oct 2026 03:51:26 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9499e23607b23cac6419a4a48b25a934882a00b881025784cbc7cbbdc0d0732a`  
		Last Modified: Fri, 02 Oct 2026 03:51:26 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:678e66640de8a68828f5831da63c6ead40fc941d454da121a74eff315be40088`  
		Last Modified: Fri, 02 Oct 2026 08:56:13 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62569c078ecc80150ee54441b4bb58c0011654d1146f5b9dfcc93362171f67a1`  
		Last Modified: Fri, 02 Oct 2026 08:59:15 GMT  
		Size: 14.4 MB (14393072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8be382266904f0b02338d3d3daec8ad1942909f7a1f1997f3d9c0d3d1917a8db`  
		Last Modified: Fri, 02 Oct 2026 08:59:14 GMT  
		Size: 3.4 MB (3421113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:10-jre21-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:1e683b6ec9cc4be81a8211a77471481679446740b8e74ec7d0641402ab492bbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3952262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93f90cb206dfc302bba7c4168b2fc2ede133189e3d753aa1e831c25ae4ae0d5b`

```dockerfile
```

-	Layers:
	-	`sha256:a98eb601da8b49a8506799470ca2ce6e4d96742101571ba4b76a11118efd61ac`  
		Last Modified: Fri, 02 Oct 2026 08:59:14 GMT  
		Size: 3.9 MB (3930982 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8bbb3a74c1385eb10fdc164e27825e5df9fd4329a8ea9b67b408eeb0c8b01a75`  
		Last Modified: Fri, 02 Oct 2026 08:59:14 GMT  
		Size: 21.3 KB (21280 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:10-jre21-temurin-jammy` - linux; s390x

```console
$ docker pull tomcat@sha256:71177b6b4486c54877f7bc30e972f330e8a1a838be283a49916a8b4ec5115caa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.0 MB (111023995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81dc7de4df685d7af1e015cc3c87feb76394c0451ccd9fe07aed9d1c896fcf1f`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:54 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:55 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:55 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:56 GMT
ADD file:db47e3926ab7bde0eac1956f72b5e29cdfee4e7ba1a182277e89477759e0044a in / 
# Thu, 24 Sep 2026 22:24:56 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:17:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:17:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:17:07 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:17:07 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:17:07 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 02 Oct 2026 01:28:37 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:28:40 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:28:43 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:28:43 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 03:39:39 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 02 Oct 2026 03:39:39 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 03:39:39 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 02 Oct 2026 03:39:39 GMT
WORKDIR /usr/local/tomcat
# Fri, 02 Oct 2026 03:39:39 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:39:39 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:39:39 GMT
ENV TOMCAT_MAJOR=10
# Fri, 02 Oct 2026 03:39:39 GMT
ENV TOMCAT_VERSION=10.1.60
# Fri, 02 Oct 2026 03:39:39 GMT
ENV TOMCAT_SHA512=aa06508300ca137a023b74b8600f2c1b3248412eb85d4fc5e2f337c6c4d3776f4491e272f79856ac541cfab0fc35537111ae4f3cfcd0bbe702c0a3610a61bd04
# Fri, 02 Oct 2026 03:41:03 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 02 Oct 2026 03:41:05 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:41:06 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 02 Oct 2026 03:41:06 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 02 Oct 2026 03:41:06 GMT
ENTRYPOINT []
# Fri, 02 Oct 2026 03:41:06 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:e1502cdfd138d89dddc82531455ad8426a7eaa0d843665253c16b88cb6870c91`  
		Last Modified: Thu, 24 Sep 2026 23:36:39 GMT  
		Size: 28.2 MB (28222068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b425b310d4cc599e020eb9bd22817101c9306572f90f7d708f54a01bed2aac85`  
		Last Modified: Fri, 02 Oct 2026 01:18:38 GMT  
		Size: 16.1 MB (16114331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cec93dd882ab980980394a1975def99d8fa08b49c46c72cf2e592a32d111e46`  
		Last Modified: Fri, 02 Oct 2026 01:29:50 GMT  
		Size: 49.6 MB (49638086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6767e7a390a9035c3d773b8f72083fb18c80f2e602d1e51ebe8a4d95d678560e`  
		Last Modified: Fri, 02 Oct 2026 01:29:46 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:709d36705852650a162a97614dcf4f69e5cf3c1f4708c0ddbf86e9a13d3a82bf`  
		Last Modified: Fri, 02 Oct 2026 01:29:47 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c589313116cf30743ead6f07ea28d5e1b946b9274ba78709d805a0b5167c6ad0`  
		Last Modified: Fri, 02 Oct 2026 03:39:55 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1ea16acb12bf0d8c08d7a2430142aa906dcc3318448bea1351b521336c3da64`  
		Last Modified: Fri, 02 Oct 2026 03:41:19 GMT  
		Size: 14.4 MB (14383894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b819c433da43de0fb8212e436695bd5338ef0d4298d7a44d3de6ea7b4aa86e6`  
		Last Modified: Fri, 02 Oct 2026 03:41:19 GMT  
		Size: 2.7 MB (2662789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:10-jre21-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:12a6400bb7e084ea60999d8cac20938aac52eae379f68b88ac639904e54f8986
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3949714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f8f84d6e7b49c415b0095f1a2c550f1a79ae01a104e2a0f38df879da421e412`

```dockerfile
```

-	Layers:
	-	`sha256:d722fb9be0c75e55eb0419c606d9feacee26d4c747bd79d768f3a7141fd9816c`  
		Last Modified: Fri, 02 Oct 2026 03:41:19 GMT  
		Size: 3.9 MB (3928485 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65cfb31016b8494ef6ed7f07dec9c1ceb56547e29cb2d23f10e9111da4ec74fc`  
		Last Modified: Fri, 02 Oct 2026 03:41:19 GMT  
		Size: 21.2 KB (21229 bytes)  
		MIME: application/vnd.in-toto+json
