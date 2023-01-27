## `sonarqube:9-community`

```console
$ docker pull sonarqube@sha256:d01fc01edd48c0fcdd8841255cfc30eb05b43e160b4c1b9056ca0c75d32ac285
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `sonarqube:9-community` - linux; amd64

```console
$ docker pull sonarqube@sha256:709288e86514674efc6d7f1d821d194a53f73733ae9fae31c634821922f6c4fa
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.1 MB (377084908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db451e99d1334ef25e4e766bf7daed8d75ad896d265c337f371933f7d36f47f8`
-	Entrypoint: `["\/opt\/sonarqube\/bin\/run.sh"]`
-	Default Command: `["\/opt\/sonarqube\/bin\/sonar.sh"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:00 GMT
ADD file:f77e3f51f020890d22997e6c2ca98968b75b8bc8c463341a2010ff0655d4c88f in / 
# Tue, 09 Aug 2022 17:20:01 GMT
CMD ["/bin/sh"]
# Fri, 07 Oct 2022 04:08:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 19 Dec 2022 21:26:24 GMT
ARG JAVA_VERSION=17
# Mon, 19 Dec 2022 21:26:24 GMT
ARG SONARQUBE_VERSION=9.8.0.63668
# Mon, 19 Dec 2022 21:26:24 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.8.0.63668.zip
# Mon, 19 Dec 2022 21:26:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=9.8.0.63668 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp
# Mon, 19 Dec 2022 21:26:42 GMT
# ARGS: JAVA_VERSION=17 SONARQUBE_VERSION=9.8.0.63668 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.8.0.63668.zip
RUN set -eux;     addgroup -S -g 1000 sonarqube;     adduser -S -D -u 1000 -G sonarqube sonarqube;     apk add --no-cache --virtual build-dependencies gnupg unzip curl;     apk add --no-cache bash su-exec ttf-dejavu "openjdk${JAVA_VERSION}-jre";     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keys.openpgp.org                             hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt;     cd /opt;     curl --fail --location --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --fail --location --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     chown -R sonarqube:sonarqube ${SONARQUBE_HOME};     chmod -R 777 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}";     apk del --purge build-dependencies;
# Mon, 19 Dec 2022 21:26:43 GMT
COPY --chown=sonarqube:sonarqubemulti:66701f646ad2f21287c063721ad66eabe0c3f39a3371b70504abf154fe36a694 in /opt/sonarqube/bin/ 
# Mon, 19 Dec 2022 21:26:43 GMT
WORKDIR /opt/sonarqube
# Mon, 19 Dec 2022 21:26:43 GMT
EXPOSE 9000
# Mon, 19 Dec 2022 21:26:43 GMT
STOPSIGNAL SIGINT
# Mon, 19 Dec 2022 21:26:44 GMT
ENTRYPOINT ["/opt/sonarqube/bin/run.sh"]
# Mon, 19 Dec 2022 21:26:44 GMT
CMD ["/opt/sonarqube/bin/sonar.sh"]
```

-	Layers:
	-	`sha256:9621f1afde84053b2f9b6ff34fc7f7460712247c01cbab483c5fa7132cf782ca`  
		Last Modified: Tue, 09 Aug 2022 17:20:52 GMT  
		Size: 2.8 MB (2823512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c884cb0d3d1d23ced4fd5fdad79c7bfd3d1d1463d1ec66db1661140ccbbf934`  
		Last Modified: Mon, 19 Dec 2022 21:32:30 GMT  
		Size: 374.3 MB (374260281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb4d01bc5fb2325878a6eecadd93afaeed88243d1bbb531cbd3ec6b2843dcce8`  
		Last Modified: Mon, 19 Dec 2022 21:32:06 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
