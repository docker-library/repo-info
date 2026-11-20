## `bonita:latest`

```console
$ docker pull bonita@sha256:3edf05715f08f2c0bb5482dc14ed6c6de0cba9f407f86cc29c6b7d8a6df289c7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `bonita:latest` - linux; amd64

```console
$ docker pull bonita@sha256:c9d66fe97d87eea152032e20d6fedf175d1d4921879adcaf70dd081b47e9231c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.0 MB (187003481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ca84965eae602f54b28d07c50a046afcb1c14cff1c5fcd5bf0c1b81d5aa6686`
-	Entrypoint: `["\/__cacert_entrypoint.sh","\/opt\/files\/startup.sh"]`
-	Default Command: `["\/opt\/bonita\/server\/bin\/catalina.sh","run"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Fri, 20 Nov 2026 17:43:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:43:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:43:41 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:43:41 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 20 Nov 2026 17:43:41 GMT
ENV JAVA_VERSION=jdk-21.0.13.1+2
# Fri, 20 Nov 2026 17:43:44 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='0236751150c82f1ef91be8cc32a36091a95e97650285fea848f2bb82311e5da7';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jre_aarch64_alpine-linux_hotspot_21.0.13.1_2.tar.gz';          ;;        x86_64)          ESUM='72835f41a468ae949fc058f8ec6a73d303ca3e5ea165621e08aacb36bb537bba';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jre_x64_alpine-linux_hotspot_21.0.13.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 20 Nov 2026 17:43:44 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:43:44 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:43:44 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 18:07:41 GMT
LABEL maintainer=Bonitasoft Runtime team <rd.engine@bonitasoft.com>
# Fri, 20 Nov 2026 18:07:41 GMT
RUN apk add --no-cache tzdata curl unzip bash su-exec jattach # buildkit
# Fri, 20 Nov 2026 18:07:42 GMT
RUN mkdir /opt/custom-init.d/ # buildkit
# Fri, 20 Nov 2026 18:07:42 GMT
RUN addgroup -S -g 1000 bonita  && adduser -u 1000 -S -G bonita -h /opt/bonita/ -s /sbin/nologin bonita # buildkit
# Fri, 20 Nov 2026 18:07:42 GMT
ARG BONITA_VERSION
# Fri, 20 Nov 2026 18:07:42 GMT
ARG BRANDING_VERSION
# Fri, 20 Nov 2026 18:07:42 GMT
ARG BONITA_SHA256
# Fri, 20 Nov 2026 18:07:42 GMT
ARG BASE_URL
# Fri, 20 Nov 2026 18:07:42 GMT
ARG BONITA_URL
# Fri, 20 Nov 2026 18:07:42 GMT
ARG PROGRADE_VERSION=1.1.1
# Fri, 20 Nov 2026 18:07:42 GMT
ARG PROGRADE_JAR_SHA1=300d7ee29d79cc0ad8aad8e7abe17588ad3d33c5
# Fri, 20 Nov 2026 18:07:42 GMT
ENV BONITA_VERSION=11.1.0
# Fri, 20 Nov 2026 18:07:42 GMT
ENV BRANDING_VERSION=2026.2-u0
# Fri, 20 Nov 2026 18:07:42 GMT
ENV BONITA_SHA256=ebf172d5a6110a28b87b05071ce463f695d424afcd95948afd24e4280303387f
# Fri, 20 Nov 2026 18:07:42 GMT
ENV ZIP_FILE=BonitaCommunity-2026.2-u0.zip
# Fri, 20 Nov 2026 18:07:42 GMT
ENV BASE_URL=https://search.maven.org/remotecontent?filepath=org/bonitasoft/distrib/bundle-tomcat
# Fri, 20 Nov 2026 18:07:42 GMT
ENV BONITA_URL=https://search.maven.org/remotecontent?filepath=org/bonitasoft/distrib/bundle-tomcat/11.1.0/bundle-tomcat-11.1.0.zip
# Fri, 20 Nov 2026 18:07:42 GMT
# ARGS: BONITA_VERSION=11.1.0 BRANDING_VERSION=2026.2-u0 BONITA_SHA256=ebf172d5a6110a28b87b05071ce463f695d424afcd95948afd24e4280303387f BASE_URL=https://search.maven.org/remotecontent?filepath=org/bonitasoft/distrib/bundle-tomcat BONITA_URL=https://search.maven.org/remotecontent?filepath=org/bonitasoft/distrib/bundle-tomcat/11.1.0/bundle-tomcat-11.1.0.zip PROGRADE_VERSION=1.1.1 PROGRADE_JAR_SHA1=300d7ee29d79cc0ad8aad8e7abe17588ad3d33c5
RUN mkdir /opt/files # buildkit
# Fri, 20 Nov 2026 18:07:42 GMT
COPY files /opt/files # buildkit
# Fri, 20 Nov 2026 18:07:45 GMT
# ARGS: BONITA_VERSION=11.1.0 BRANDING_VERSION=2026.2-u0 BONITA_SHA256=ebf172d5a6110a28b87b05071ce463f695d424afcd95948afd24e4280303387f BASE_URL=https://search.maven.org/remotecontent?filepath=org/bonitasoft/distrib/bundle-tomcat BONITA_URL=https://search.maven.org/remotecontent?filepath=org/bonitasoft/distrib/bundle-tomcat/11.1.0/bundle-tomcat-11.1.0.zip PROGRADE_VERSION=1.1.1 PROGRADE_JAR_SHA1=300d7ee29d79cc0ad8aad8e7abe17588ad3d33c5
RUN if [ -f "/opt/files/BonitaCommunity-${BRANDING_VERSION}.zip" ]; then       echo "File already present in /opt/files";     else       curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip       && echo "$BONITA_SHA256 */opt/files/$ZIP_FILE" | sha256sum -c -;     fi   && unzip -q /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip -d /opt/bonita/   && mv /opt/bonita/BonitaCommunity-${BRANDING_VERSION}/* /opt/bonita   && rmdir /opt/bonita/BonitaCommunity-${BRANDING_VERSION}   && rm -f /opt/files/BonitaCommunity-${BRANDING_VERSION}.zip   && mkdir -p /opt/bonita/conf/logs/   && mkdir -p /opt/bonita/logs/   && mv /opt/files/log4j2/log4j2-appenders.xml /opt/bonita/conf/logs/   && mv /opt/bonita/server/conf/log4j2-loggers.xml /opt/bonita/conf/logs/   && mkdir -p /opt/bonita/conf/prograde   && mv /opt/files/prograde.policy /opt/bonita/conf/prograde/   && wget -nv -O pro-grade.jar https://repo1.maven.org/maven2/net/sourceforge/pro-grade/pro-grade/${PROGRADE_VERSION}/pro-grade-${PROGRADE_VERSION}.jar   && echo "${PROGRADE_JAR_SHA1}  pro-grade.jar" | sha1sum -c -   && mv pro-grade.jar /opt/bonita/server/lib/ext/pro-grade.jar   && chown -R bonita:bonita /opt/bonita   && chmod go+w /opt/   && chmod -R +rX /opt   && chmod go+w /opt/bonita   && chmod 777 /opt/bonita/server/logs   && chmod 777 /opt/bonita/logs/   && chmod 777 /opt/bonita/server/temp   && chmod 777 /opt/bonita/server/work   && chmod -R go+w /opt/bonita/server/conf   && chmod -R go+w /opt/bonita/server/bin   && chmod -R go+w /opt/bonita/server/lib/bonita   && chmod -R go+w /opt/bonita/setup # buildkit
# Fri, 20 Nov 2026 18:07:45 GMT
ENV HTTP_API=false
# Fri, 20 Nov 2026 18:07:45 GMT
ENV HTTP_API_USERNAME=http-api
# Fri, 20 Nov 2026 18:07:45 GMT
ENV HTTP_API_PASSWORD=
# Fri, 20 Nov 2026 18:07:45 GMT
ENV MONITORING_USERNAME=monitoring
# Fri, 20 Nov 2026 18:07:45 GMT
ENV MONITORING_PASSWORD=mon1tor1ng_adm1n
# Fri, 20 Nov 2026 18:07:45 GMT
ENV JMX_REMOTE_ACCESS=false
# Fri, 20 Nov 2026 18:07:45 GMT
ENV REMOTE_IP_VALVE_ENABLED=false
# Fri, 20 Nov 2026 18:07:45 GMT
ENV PRO_GRADE=true
# Fri, 20 Nov 2026 18:07:45 GMT
ENV PRO_GRADE_POLICY_PATH=/opt/bonita/conf/prograde
# Fri, 20 Nov 2026 18:07:45 GMT
ENV ACCESSLOGS_STDOUT_ENABLED=false
# Fri, 20 Nov 2026 18:07:45 GMT
ENV ACCESSLOGS_FILES_ENABLED=false
# Fri, 20 Nov 2026 18:07:45 GMT
ENV ACCESSLOGS_PATH=/opt/bonita/logs
# Fri, 20 Nov 2026 18:07:45 GMT
ENV ACCESSLOGS_PATH_APPEND_HOSTNAME=false
# Fri, 20 Nov 2026 18:07:45 GMT
ENV ACCESSLOGS_MAX_DAYS=30
# Fri, 20 Nov 2026 18:07:45 GMT
ENV HTTP_MAX_THREADS=20
# Fri, 20 Nov 2026 18:07:45 GMT
COPY templates /opt/templates # buildkit
# Fri, 20 Nov 2026 18:07:45 GMT
EXPOSE map[8080/tcp:{} 9000/tcp:{}]
# Fri, 20 Nov 2026 18:07:45 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh" "/opt/files/startup.sh"]
# Fri, 20 Nov 2026 18:07:45 GMT
CMD ["/opt/bonita/server/bin/catalina.sh" "run"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4d90d9289a0e95e6db9259bcca9fd70a3fbcba01c97077c9a5291d1e34ed6d2`  
		Last Modified: Fri, 20 Nov 2026 17:43:55 GMT  
		Size: 16.9 MB (16900178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c924f2decfc12e05e74bf81b194f86371b5bd5b0533850e692a4e66a2cb4e32f`  
		Last Modified: Fri, 20 Nov 2026 17:43:56 GMT  
		Size: 53.4 MB (53386012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8649f6ee63258eb318836a9e2f9ce6e9db7e763cd2c647da3edd3782aecc748f`  
		Last Modified: Fri, 20 Nov 2026 17:43:54 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc6b28bd48d94871dfefb789fa559eae8ab656f19187cf1702aa877437bb96cd`  
		Last Modified: Fri, 20 Nov 2026 17:43:55 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54d7d88280c95d6d3ad5ad59c1833eae51ad3d49a3fb030d633b32183e8c524d`  
		Last Modified: Fri, 20 Nov 2026 18:07:56 GMT  
		Size: 1.6 MB (1596399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20d9af0777c146d81a7092a24e78210f437364c0c48c38bb325ae395d47ceef2`  
		Last Modified: Fri, 20 Nov 2026 18:07:56 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b46840189c6bfaa07cac09d0de073a7eb1b108a61244882a22e16504bf7d3250`  
		Last Modified: Fri, 20 Nov 2026 18:07:56 GMT  
		Size: 945.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b64aafb0f4193fe3ba91a1becb7f7bcd356e8e19984f82a1110b9cc0534e0f7`  
		Last Modified: Fri, 20 Nov 2026 18:07:56 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79b9efa758419b6a5be1a3a5dc1e74e8f108a0201dfcdb7e5fcc1ad5c1a6e778`  
		Last Modified: Fri, 20 Nov 2026 18:07:57 GMT  
		Size: 4.9 KB (4923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6ceff1c0ae6da7b7be40e147a09081cbcfca4a5cb811beceb33cd5971a0cc74`  
		Last Modified: Fri, 20 Nov 2026 18:08:00 GMT  
		Size: 111.3 MB (111253663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b1fbeda87501b8bdcefc73b3a4c2a1419fbb8ae521909e45c40ab910653ba9e`  
		Last Modified: Fri, 20 Nov 2026 18:07:58 GMT  
		Size: 5.9 KB (5948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `bonita:latest` - unknown; unknown

```console
$ docker pull bonita@sha256:5daef0d2a7e7970088d6bef889173ad5238a749d2cbab570ac7e3d1deabff31f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1233536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d333c764d24e7280ed40f8d79809ab08b5bd9cc439d15fe32ee75f4a7e90deaa`

```dockerfile
```

-	Layers:
	-	`sha256:f720af3e956b10e7c607a7168dbb3236d0423edf9d85828be57e8419541399f0`  
		Last Modified: Fri, 20 Nov 2026 18:07:56 GMT  
		Size: 1.2 MB (1202825 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:19d70baf16ce5c94e1f1c17aebe8fc228e34d960811b1edb9987d02340eb8f05`  
		Last Modified: Fri, 20 Nov 2026 18:07:56 GMT  
		Size: 30.7 KB (30711 bytes)  
		MIME: application/vnd.in-toto+json
