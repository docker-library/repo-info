## `silverpeas:latest`

```console
$ docker pull silverpeas@sha256:84184f6353845dc7310bfb67e3a20b073fe623e498f8df6815cd0287f6349b1e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `silverpeas:latest` - linux; amd64

```console
$ docker pull silverpeas@sha256:f87009d5b6a9d15be51e40bbc1414ef956e6252c7854979665ec708d30abc368
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 GB (1818545649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bacd1b1c988a2b6b40fa7ed60edb43ea8266f46faa441ffecba4a9572604afa`
-	Default Command: `["\/opt\/run.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:44:11 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Wed, 09 Sep 2026 02:44:11 GMT
ENV TERM=xterm
# Wed, 09 Sep 2026 02:44:11 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends tzdata   && apt-get install -y --no-install-recommends     apt-utils     iputils-ping     curl     wget     vim     locales     language-pack-en     language-pack-fr     procps     net-tools     zip     unzip     openjdk-11-jdk     ffmpeg     imagemagick     ghostscript     libreoffice     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f # buildkit
# Wed, 09 Sep 2026 02:44:13 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 swftools-bin-0.9.2.zip' | sha256sum -c --status -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip # buildkit
# Wed, 09 Sep 2026 02:44:15 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 pdf2json-bin-0.68.zip' | sha256sum -c --status -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip # buildkit
# Wed, 09 Sep 2026 02:44:15 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Wed, 09 Sep 2026 02:44:38 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE} # buildkit
# Wed, 09 Sep 2026 02:44:38 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 02:44:38 GMT
ENV LANGUAGE=en_US.UTF-8
# Wed, 09 Sep 2026 02:44:38 GMT
ENV LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 02:44:38 GMT
ENV PING_ON=1
# Wed, 09 Sep 2026 02:44:38 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home # buildkit
# Wed, 09 Sep 2026 02:44:38 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home # buildkit
# Wed, 09 Sep 2026 02:44:38 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 09 Sep 2026 02:44:38 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Wed, 09 Sep 2026 02:44:38 GMT
ENV JBOSS_HOME=/opt/wildfly
# Wed, 09 Sep 2026 02:44:38 GMT
ENV SILVERPEAS_VERSION=6.4.7
# Wed, 09 Sep 2026 02:44:38 GMT
ENV WILDFLY_VERSION=26.1.3
# Wed, 09 Sep 2026 02:44:38 GMT
LABEL name=Silverpeas 6.4.7 description=Image to install and to run Silverpeas 6.4.7 vendor=Silverpeas version=6.4.7 build=1
# Wed, 09 Sep 2026 02:45:01 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver keys.openpgp.org --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && wget -nc https://www.silverpeas.org/files/oak-migrate.zip   && echo '87009e55520e74b5d2a386f4ebc843ee43cd1f25ca5138f342a94a31add3cfbd oak-migrate.zip' | sha256sum -c --status -   && mkdir -p /opt/oak-migration   && unzip oak-migrate.zip -d /opt/oak-migration/   && chmod +x /opt/oak-migration/oak-migrate.sh   && rm *.zip   && mkdir -p /root/.m2 # buildkit
# Wed, 09 Sep 2026 02:45:01 GMT
COPY src/settings.xml /root/.m2/ # buildkit
# Wed, 09 Sep 2026 02:45:01 GMT
COPY src/silverpeas.gradle /opt/silverpeas/bin/ # buildkit
# Wed, 09 Sep 2026 02:45:01 GMT
WORKDIR /opt/silverpeas/bin
# Wed, 09 Sep 2026 02:45:01 GMT
COPY src/run.sh /opt/ # buildkit
# Wed, 09 Sep 2026 02:45:01 GMT
COPY src/converter.groovy /opt/silverpeas/configuration/silverpeas/ # buildkit
# Wed, 09 Sep 2026 02:46:21 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN set -eux;   sed -i -e "s/SILVERPEAS_VERSION/${SILVERPEAS_VERSION}/g" ${SILVERPEAS_HOME}/bin/silverpeas.gradle;   echo "Construct Silverpeas ${SILVERPEAS_VERSION}";   ./silverpeas assemble || (cat ../log/build-* && exit 1);   rm ../log/build-*;   touch .install; # buildkit
# Wed, 09 Sep 2026 02:46:21 GMT
EXPOSE map[8000/tcp:{} 9990/tcp:{}]
# Wed, 09 Sep 2026 02:46:21 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/properties /opt/silverpeas/xmlcomponents/workflows]
# Wed, 09 Sep 2026 02:46:21 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad5bf657fc6f5f6ed06d436f7c86f54f54683f9e77b9af417a384de0371ad9d7`  
		Last Modified: Wed, 09 Sep 2026 02:48:08 GMT  
		Size: 494.8 MB (494826814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d958173750b9501be14e53188c982014be1d75c3082180bf551c2564792ec91`  
		Last Modified: Wed, 09 Sep 2026 02:47:50 GMT  
		Size: 4.0 MB (3994008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9503baee88be92adb3c695bd5df920cb55742624ab4154d90eab6d712d998ba8`  
		Last Modified: Wed, 09 Sep 2026 02:47:51 GMT  
		Size: 7.1 MB (7146619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af5b7280f331982e9117f7c84c5f910ef02c8c56c47a585e6600dd66dec6a3ab`  
		Last Modified: Wed, 09 Sep 2026 02:47:50 GMT  
		Size: 2.5 MB (2538619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ab77dd5e35edf0eee06bb46660a5e33069a0cbbb0905eb8f507ed0c392bff8f`  
		Last Modified: Wed, 09 Sep 2026 02:47:52 GMT  
		Size: 236.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29088b13ecf4abaf91d332f94bbb94d9203ba8a46e89e5ac219de119237538f0`  
		Last Modified: Wed, 09 Sep 2026 02:47:52 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30afd34e4cfb4cf563eb4e8ff514e27539900a255fb2383f8b93d650c652c989`  
		Last Modified: Wed, 09 Sep 2026 02:48:04 GMT  
		Size: 269.1 MB (269106983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd910ab941ce0f71f384e468ac975a78d0eeb10b46f10cb8247753671f3ac0bb`  
		Last Modified: Wed, 09 Sep 2026 02:47:53 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91b510ab96e136ed81ecbe375b01ddf2ded61a7ad5ed92f170aa455ba4770495`  
		Last Modified: Wed, 09 Sep 2026 02:47:53 GMT  
		Size: 663.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96ab7d1b70d162bbfb7cd79cef2a3bd7d8c4e8968f832ee1f4d9848a98ceafe1`  
		Last Modified: Wed, 09 Sep 2026 02:47:54 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fec9427648ccb52a9a2b049474603e506dc26beaf06f04a79bb1ef52592f4639`  
		Last Modified: Wed, 09 Sep 2026 02:47:54 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:586a2f86721451f02837bc9acd2cab5f0a559dab4b43429370f0812e9841ff27`  
		Last Modified: Wed, 09 Sep 2026 02:48:21 GMT  
		Size: 1.0 GB (1011179056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `silverpeas:latest` - unknown; unknown

```console
$ docker pull silverpeas@sha256:b7bca17221c578f9be9a80121ae3f5dc923f027982450b3769732bfcc3682d6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16639076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:887ddd3e2319c826253a36268e609fdf5a82db5ebac3b30cdc47eda44ee06591`

```dockerfile
```

-	Layers:
	-	`sha256:b6cc0e87524d900b22370ab3bab83d9a6edbc511e14dca7a7bfa400d1d6d1592`  
		Last Modified: Wed, 09 Sep 2026 02:47:51 GMT  
		Size: 16.6 MB (16596270 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4ad8860da3db3eff2e2d59cfd91395ed9bad36203e7ae100231584491d93655`  
		Last Modified: Wed, 09 Sep 2026 02:47:50 GMT  
		Size: 42.8 KB (42806 bytes)  
		MIME: application/vnd.in-toto+json
