## `sonarqube:9-datacenter-app`

```console
$ docker pull sonarqube@sha256:0286235a959203db35298bc52263af4ea86626aae21f4f5860a3ee80e7e0721b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `sonarqube:9-datacenter-app` - linux; amd64

```console
$ docker pull sonarqube@sha256:89ab281af2e3890496c3caf7379f5920ad0d95e305ade20a81bdb1d8be620102
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **512.2 MB (512201950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15aeaee88ab27bc342c859834e6688e6a5a82726f2b14f9bcf26824893f50018`
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
# Mon, 19 Dec 2022 21:27:56 GMT
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-datacenter/sonarqube-datacenter-9.8.0.63668.zip
# Mon, 19 Dec 2022 21:27:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SONARQUBE_HOME=/opt/sonarqube SONAR_VERSION=9.8.0.63668 SQ_DATA_DIR=/opt/sonarqube/data SQ_EXTENSIONS_DIR=/opt/sonarqube/extensions SQ_LOGS_DIR=/opt/sonarqube/logs SQ_TEMP_DIR=/opt/sonarqube/temp SONAR_CLUSTER_NODE_TYPE=application SONAR_CLUSTER_ENABLED=true
# Mon, 19 Dec 2022 21:28:17 GMT
# ARGS: JAVA_VERSION=17 SONARQUBE_VERSION=9.8.0.63668 SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/CommercialDistribution/sonarqube-datacenter/sonarqube-datacenter-9.8.0.63668.zip
RUN set -eux;     addgroup -S -g 1000 sonarqube;     adduser -S -D -u 1000 -G sonarqube sonarqube;     apk add --no-cache --virtual build-dependencies gnupg unzip curl;     apk add --no-cache bash su-exec ttf-dejavu "openjdk${JAVA_VERSION}-jre";     echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security";     sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security";     for server in $(shuf -e hkps://keys.openpgp.org                             hkps://keyserver.ubuntu.com) ; do         gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ;     done;     mkdir --parents /opt ;    cd /opt;     curl --fail --location --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}";     curl --fail --location --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc";     gpg --batch --verify sonarqube.zip.asc sonarqube.zip;     unzip -q sonarqube.zip;     mv "sonarqube-${SONARQUBE_VERSION}" sonarqube;     rm sonarqube.zip*;     rm -rf ${SONARQUBE_HOME}/bin/*;     chown -R sonarqube:sonarqube ${SONARQUBE_HOME} ;     chmod -R 777 "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}" ;     apk del --purge build-dependencies;
# Mon, 19 Dec 2022 21:28:19 GMT
COPY --chown=sonarqube:sonarqubemulti:b3583528dc7e1c8c3d5b50dfbb55820aeec61ed9bbc812d0d58f5c5875189ea8 in /opt/sonarqube/bin/ 
# Mon, 19 Dec 2022 21:28:19 GMT
WORKDIR /opt/sonarqube
# Mon, 19 Dec 2022 21:28:19 GMT
EXPOSE 9000
# Mon, 19 Dec 2022 21:28:20 GMT
STOPSIGNAL SIGINT
# Mon, 19 Dec 2022 21:28:20 GMT
ENTRYPOINT ["/opt/sonarqube/bin/run.sh"]
# Mon, 19 Dec 2022 21:28:20 GMT
CMD ["/opt/sonarqube/bin/sonar.sh"]
```

-	Layers:
	-	`sha256:9621f1afde84053b2f9b6ff34fc7f7460712247c01cbab483c5fa7132cf782ca`  
		Last Modified: Tue, 09 Aug 2022 17:20:52 GMT  
		Size: 2.8 MB (2823512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:782855121ed446725fc66028c41268e133e5f19f78de505fa93cae76004b7254`  
		Last Modified: Mon, 19 Dec 2022 21:34:33 GMT  
		Size: 509.4 MB (509376915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2f730c985f4097ad6293c1d3ca485acc0ccadb2159527ba1b5802ce253674f1`  
		Last Modified: Mon, 19 Dec 2022 21:34:04 GMT  
		Size: 1.5 KB (1523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
