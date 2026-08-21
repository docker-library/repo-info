## `bonita:latest`

```console
$ docker pull bonita@sha256:4ad337bd7dd24905633a94f59fe25304a92858521640b60ba8aa101e6cbf5fd4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `bonita:latest` - linux; amd64

```console
$ docker pull bonita@sha256:e7febae184fef5a33d87c9cea6c96f05b13e357a493a909e4c75da81b363b0a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.8 MB (186816542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99b7769bbde076a4f7f1dba498603791f950ce262fee8f3a985f007b366bed4f`
-	Entrypoint: `["\/__cacert_entrypoint.sh","\/opt\/files\/startup.sh"]`
-	Default Command: `["\/opt\/bonita\/server\/bin\/catalina.sh","run"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:24:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:24:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:24:11 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:24:11 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:24:11 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Fri, 21 Aug 2026 18:25:09 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='a4f70d2be5c55940dd60b6636643a05125e60e6c3dbc2a8402032b0346744dfa';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_aarch64_alpine-linux_hotspot_21.0.12_8.tar.gz';          ;;        x86_64)          ESUM='9a7f8712a2741bb14e2452eed2de99f62d02e05617e27d59f1861a0cdad58486';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_x64_alpine-linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 21 Aug 2026 18:25:09 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:25:09 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:25:09 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 19:08:08 GMT
LABEL maintainer=Bonitasoft Runtime team <rd.engine@bonitasoft.com>
# Fri, 21 Aug 2026 19:08:08 GMT
RUN apk add --no-cache tzdata curl unzip bash su-exec jattach # buildkit
# Fri, 21 Aug 2026 19:08:08 GMT
RUN mkdir /opt/custom-init.d/ # buildkit
# Fri, 21 Aug 2026 19:08:08 GMT
RUN addgroup -S -g 1000 bonita  && adduser -u 1000 -S -G bonita -h /opt/bonita/ -s /sbin/nologin bonita # buildkit
# Fri, 21 Aug 2026 19:08:08 GMT
ARG BONITA_VERSION
# Fri, 21 Aug 2026 19:08:08 GMT
ARG BRANDING_VERSION
# Fri, 21 Aug 2026 19:08:08 GMT
ARG BONITA_SHA256
# Fri, 21 Aug 2026 19:08:08 GMT
ARG BASE_URL
# Fri, 21 Aug 2026 19:08:08 GMT
ARG BONITA_URL
# Fri, 21 Aug 2026 19:08:08 GMT
ARG PROGRADE_VERSION=1.1.1
# Fri, 21 Aug 2026 19:08:08 GMT
ARG PROGRADE_JAR_SHA1=300d7ee29d79cc0ad8aad8e7abe17588ad3d33c5
# Fri, 21 Aug 2026 19:08:08 GMT
ENV BONITA_VERSION=11.1.0
# Fri, 21 Aug 2026 19:08:08 GMT
ENV BRANDING_VERSION=2026.2-u0
# Fri, 21 Aug 2026 19:08:08 GMT
ENV BONITA_SHA256=ebf172d5a6110a28b87b05071ce463f695d424afcd95948afd24e4280303387f
# Fri, 21 Aug 2026 19:08:08 GMT
ENV ZIP_FILE=BonitaCommunity-2026.2-u0.zip
# Fri, 21 Aug 2026 19:08:08 GMT
ENV BASE_URL=https://search.maven.org/remotecontent?filepath=org/bonitasoft/distrib/bundle-tomcat
# Fri, 21 Aug 2026 19:08:08 GMT
ENV BONITA_URL=https://search.maven.org/remotecontent?filepath=org/bonitasoft/distrib/bundle-tomcat/11.1.0/bundle-tomcat-11.1.0.zip
# Fri, 21 Aug 2026 19:08:08 GMT
# ARGS: BONITA_VERSION=11.1.0 BRANDING_VERSION=2026.2-u0 BONITA_SHA256=ebf172d5a6110a28b87b05071ce463f695d424afcd95948afd24e4280303387f BASE_URL=https://search.maven.org/remotecontent?filepath=org/bonitasoft/distrib/bundle-tomcat BONITA_URL=https://search.maven.org/remotecontent?filepath=org/bonitasoft/distrib/bundle-tomcat/11.1.0/bundle-tomcat-11.1.0.zip PROGRADE_VERSION=1.1.1 PROGRADE_JAR_SHA1=300d7ee29d79cc0ad8aad8e7abe17588ad3d33c5
RUN mkdir /opt/files # buildkit
# Fri, 21 Aug 2026 19:08:08 GMT
COPY files /opt/files # buildkit
# Fri, 21 Aug 2026 19:08:13 GMT
# ARGS: BONITA_VERSION=11.1.0 BRANDING_VERSION=2026.2-u0 BONITA_SHA256=ebf172d5a6110a28b87b05071ce463f695d424afcd95948afd24e4280303387f BASE_URL=https://search.maven.org/remotecontent?filepath=org/bonitasoft/distrib/bundle-tomcat BONITA_URL=https://search.maven.org/remotecontent?filepath=org/bonitasoft/distrib/bundle-tomcat/11.1.0/bundle-tomcat-11.1.0.zip PROGRADE_VERSION=1.1.1 PROGRADE_JAR_SHA1=300d7ee29d79cc0ad8aad8e7abe17588ad3d33c5
RUN if [ -f "/opt/files/BonitaCommunity-${BRANDING_VERSION}.zip" ]; then       echo "File already present in /opt/files";     else       curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip       && echo "$BONITA_SHA256 */opt/files/$ZIP_FILE" | sha256sum -c -;     fi   && unzip -q /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip -d /opt/bonita/   && mv /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/* /opt/bonita   && rmdir /opt/bonita/BonitaCommunity-${BRANDING_VERSION}   && rm -f /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && mkdir -p /opt/bonita/conf/logs/   && mkdir -p /opt/bonita/logs/   && mv /opt/files/log4j2/log4j2-appenders.xml /opt/bonita/conf/logs/   && mv /opt/bonita/server/conf/log4j2-loggers.xml /opt/bonita/conf/logs/   && mkdir -p /opt/bonita/conf/prograde   && mv /opt/files/prograde.policy /opt/bonita/conf/prograde/   && wget -nv -O pro-grade.jar https://repo1.maven.org/maven2/net/sourceforge/pro-grade/pro-grade/${PROGRADE_VERSION}/pro-grade-${PROGRADE_VERSION}.jar   && echo "${PROGRADE_JAR_SHA1}  pro-grade.jar" | sha1sum -c -   && mv pro-grade.jar /opt/bonita/server/lib/ext/pro-grade.jar   && chown -R bonita:bonita /opt/bonita   && chmod go+w /opt/   && chmod -R +rX /opt   && chmod go+w /opt/bonita   && chmod 777 /opt/bonita/server/logs   && chmod 777 /opt/bonita/logs/   && chmod 777 /opt/bonita/server/temp   && chmod 777 /opt/bonita/server/work   && chmod -R go+w /opt/bonita/server/conf   && chmod -R go+w /opt/bonita/server/bin   && chmod -R go+w /opt/bonita/server/lib/bonita   && chmod -R go+w /opt/bonita/setup # buildkit
# Fri, 21 Aug 2026 19:08:13 GMT
ENV HTTP_API=false
# Fri, 21 Aug 2026 19:08:13 GMT
ENV HTTP_API_USERNAME=http-api
# Fri, 21 Aug 2026 19:08:13 GMT
ENV HTTP_API_PASSWORD=
# Fri, 21 Aug 2026 19:08:13 GMT
ENV MONITORING_USERNAME=monitoring
# Fri, 21 Aug 2026 19:08:13 GMT
ENV MONITORING_PASSWORD=mon1tor1ng_adm1n
# Fri, 21 Aug 2026 19:08:13 GMT
ENV JMX_REMOTE_ACCESS=false
# Fri, 21 Aug 2026 19:08:13 GMT
ENV REMOTE_IP_VALVE_ENABLED=false
# Fri, 21 Aug 2026 19:08:13 GMT
ENV PRO_GRADE=true
# Fri, 21 Aug 2026 19:08:13 GMT
ENV PRO_GRADE_POLICY_PATH=/opt/bonita/conf/prograde
# Fri, 21 Aug 2026 19:08:13 GMT
ENV ACCESSLOGS_STDOUT_ENABLED=false
# Fri, 21 Aug 2026 19:08:13 GMT
ENV ACCESSLOGS_FILES_ENABLED=false
# Fri, 21 Aug 2026 19:08:13 GMT
ENV ACCESSLOGS_PATH=/opt/bonita/logs
# Fri, 21 Aug 2026 19:08:13 GMT
ENV ACCESSLOGS_PATH_APPEND_HOSTNAME=false
# Fri, 21 Aug 2026 19:08:13 GMT
ENV ACCESSLOGS_MAX_DAYS=30
# Fri, 21 Aug 2026 19:08:13 GMT
ENV HTTP_MAX_THREADS=20
# Fri, 21 Aug 2026 19:08:13 GMT
COPY templates /opt/templates # buildkit
# Fri, 21 Aug 2026 19:08:13 GMT
EXPOSE map[8080/tcp:{} 9000/tcp:{}]
# Fri, 21 Aug 2026 19:08:13 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh" "/opt/files/startup.sh"]
# Fri, 21 Aug 2026 19:08:13 GMT
CMD ["/opt/bonita/server/bin/catalina.sh" "run"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90ba7fef02326041c78b680f9da08cd7becb868e10ebfdb85a03f9539b0152f0`  
		Last Modified: Fri, 21 Aug 2026 18:24:25 GMT  
		Size: 16.9 MB (16887204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d996f3e62fc53ae7f500e19c9073b0900a767cb8870e9fe9807b6f7841c4914e`  
		Last Modified: Fri, 21 Aug 2026 18:25:21 GMT  
		Size: 53.3 MB (53255913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd6e3765f9adc72784c1e9a2477f52673d347e62d99ee8997876238feca29ade`  
		Last Modified: Fri, 21 Aug 2026 18:25:19 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a1b76978903a31f21f1964b9c8f5b745b5fb0e185385a8cecb33e3e37fada27`  
		Last Modified: Fri, 21 Aug 2026 18:25:19 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49f7e7b91b402aee352cafdb3fa50c594adb4f0c8204e4e75283cebf3504a334`  
		Last Modified: Fri, 21 Aug 2026 19:08:24 GMT  
		Size: 1.6 MB (1560658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4269bbd7a40e34d54e735f525e1d0e57cd7c6a4b292865701183ea2993fbafea`  
		Last Modified: Fri, 21 Aug 2026 19:08:24 GMT  
		Size: 123.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a25ad41357446ca1938959cbf94b9394f53521e325edb77f00dd368e8ed2dc4b`  
		Last Modified: Fri, 21 Aug 2026 19:08:24 GMT  
		Size: 945.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4b12a16bd2af986e9017bc3791cc6245c8b41733a53836a44b34b55cdf3c858`  
		Last Modified: Fri, 21 Aug 2026 19:08:24 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1c3559302d3470cb0dfe9bb5509c890f173f20a93de11c8d5e99104f0449da6`  
		Last Modified: Fri, 21 Aug 2026 19:08:25 GMT  
		Size: 4.9 KB (4922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50a658fd679991db825e40c9e3b90c4d11ac22b8b0b3750571b8e327e7ecfd47`  
		Last Modified: Fri, 21 Aug 2026 19:08:28 GMT  
		Size: 111.3 MB (111253703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b740bc473b1e287ce3d5fd7c6569dca5cee41339c643b117e6ce310da4ae5e0`  
		Last Modified: Fri, 21 Aug 2026 19:08:25 GMT  
		Size: 5.9 KB (5949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bonita:latest` - unknown; unknown

```console
$ docker pull bonita@sha256:7705a08baac5d49ed2c197fc8f5da24584a50505cc22ec2f781ae2f4d5f48a35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1234157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13d720734f4b835146367aeda4a234bde22b4408d3eca62e0ca81f0a4411a96d`

```dockerfile
```

-	Layers:
	-	`sha256:fc16e3e383699638415c1992d7a73b6124f69e2308d3bb8d3812aa96e110f1d4`  
		Last Modified: Fri, 21 Aug 2026 19:08:24 GMT  
		Size: 1.2 MB (1203456 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b812f2ce2b5a4b6ae59043134b8619eee6855ea453f60d09516325f87c3dbdec`  
		Last Modified: Fri, 21 Aug 2026 19:08:24 GMT  
		Size: 30.7 KB (30701 bytes)  
		MIME: application/vnd.in-toto+json
