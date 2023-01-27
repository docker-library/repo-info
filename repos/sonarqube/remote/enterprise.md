## `sonarqube:enterprise`

```console
$ docker pull sonarqube@sha256:1ab1bf770b7cf836462935d895bce56ee91a715332a58c034d7a14989bdce34b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `sonarqube:enterprise` - linux; amd64

```console
$ docker pull sonarqube@sha256:31b5f861c349b66b57fc3ca2227361934f6654b929c4d2a19bb80b05c2d86005
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **489.7 MB (489737330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b2e8af1c318101d4ef9bfb01b15aeecda72889cf0b1b9a9c4273519ce7d4a18`
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
# Mon, 19 Dec 2022 21:27:16 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-enterprise/sonarqube-enterprise-9.8.0.63668.zip
# Mon, 19 Dec 2022 21:27:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=9.8.0.63668 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp
# Mon, 19 Dec 2022 21:27:51 GMT
# ARGS: JAVA_VERSION=17 SONARQUBE_VERSION=9.8.0.63668 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-enterprise/sonarqube-enterprise-9.8.0.63668.zip
RUN set -eux;     addgroup -S -g 1000 sonarqube;     adduser -S -D -u 1000 -G sonarqube sonarqube;     apk add --no-cache --virtual build-dependencies gnupg unzip curl;     apk add --no-cache bash su-exec ttf-dejavu "openjdk${JAVA_VERSION}-jre";     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keys.openpgp.org                             hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt;     cd /opt;     curl --fail --location --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --fail --location --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     chown -R sonarqube:sonarqube ${SONARQUBE_HOME};     chmod -R 777 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}";     apk del --purge build-dependencies; 	cd "${SONARQUBE_HOME}/elasticsearch/bin" ; 	sed -i -e 's/\r$//' elasticsearch elasticsearch-env elasticsearch-env-from-file ;
# Mon, 19 Dec 2022 21:27:53 GMT
COPY --chown=sonarqube:sonarqubemulti:66701f646ad2f21287c063721ad66eabe0c3f39a3371b70504abf154fe36a694 in /opt/sonarqube/bin/ 
# Mon, 19 Dec 2022 21:27:53 GMT
WORKDIR /opt/sonarqube
# Mon, 19 Dec 2022 21:27:53 GMT
EXPOSE 9000
# Mon, 19 Dec 2022 21:27:53 GMT
STOPSIGNAL SIGINT
# Mon, 19 Dec 2022 21:27:54 GMT
ENTRYPOINT ["/opt/sonarqube/bin/run.sh"]
# Mon, 19 Dec 2022 21:27:54 GMT
CMD ["/opt/sonarqube/bin/sonar.sh"]
```

-	Layers:
	-	`sha256:9621f1afde84053b2f9b6ff34fc7f7460712247c01cbab483c5fa7132cf782ca`  
		Last Modified: Tue, 09 Aug 2022 17:20:52 GMT  
		Size: 2.8 MB (2823512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a74adf3e42460539d08a81f6e32c7eac14d43ad96e3a1bc724e0dcf0b169b92`  
		Last Modified: Mon, 19 Dec 2022 21:33:52 GMT  
		Size: 486.9 MB (486912702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6766136c10d8f070ea88591b85a9f9d3acb4057aba76c2a7a608cdcbd9acb59c`  
		Last Modified: Mon, 19 Dec 2022 21:33:24 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
