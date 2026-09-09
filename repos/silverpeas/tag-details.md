<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `silverpeas`

-	[`silverpeas:6.3`](#silverpeas63)
-	[`silverpeas:6.3.6`](#silverpeas636)
-	[`silverpeas:6.4`](#silverpeas64)
-	[`silverpeas:6.4.7`](#silverpeas647)
-	[`silverpeas:latest`](#silverpeaslatest)

## `silverpeas:6.3`

```console
$ docker pull silverpeas@sha256:8de5bcd82bb6f88ddff14c90d8f94f22b27b34f8c50a9b00c2aaf34fc483f403
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `silverpeas:6.3` - linux; amd64

```console
$ docker pull silverpeas@sha256:5b764f377cc278881dd684b6bb360af8d64490a1354612683178d6ed05f57c07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.9 GB (1889833116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d07145e1dc317a33152264bb63f4a29c453bf930ebab812d2304fda2093d1cd`
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
# Wed, 09 Sep 2026 02:47:37 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Wed, 09 Sep 2026 02:47:37 GMT
ENV TERM=xterm
# Wed, 09 Sep 2026 02:47:37 GMT
RUN apt-get update   && apt-get install -y tzdata   && apt-get install -y     apt-utils     iputils-ping     curl     wget     vim     locales     language-pack-en     language-pack-fr     procps     net-tools     zip     unzip     openjdk-11-jdk     ffmpeg     imagemagick     ghostscript     libreoffice     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f # buildkit
# Wed, 09 Sep 2026 02:47:39 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 *swftools-bin-0.9.2.zip' | sha256sum -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip # buildkit
# Wed, 09 Sep 2026 02:47:42 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 *pdf2json-bin-0.68.zip' | sha256sum -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip # buildkit
# Wed, 09 Sep 2026 02:47:42 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Wed, 09 Sep 2026 02:48:04 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE} # buildkit
# Wed, 09 Sep 2026 02:48:04 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 02:48:04 GMT
ENV LANGUAGE=en_US.UTF-8
# Wed, 09 Sep 2026 02:48:04 GMT
ENV LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 02:48:04 GMT
ENV PING_ON=1
# Wed, 09 Sep 2026 02:48:04 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home # buildkit
# Wed, 09 Sep 2026 02:48:04 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home # buildkit
# Wed, 09 Sep 2026 02:48:04 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 09 Sep 2026 02:48:04 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Wed, 09 Sep 2026 02:48:04 GMT
ENV JBOSS_HOME=/opt/wildfly
# Wed, 09 Sep 2026 02:48:04 GMT
ENV SILVERPEAS_VERSION=6.3.6
# Wed, 09 Sep 2026 02:48:04 GMT
ENV WILDFLY_VERSION=26.1.1
# Wed, 09 Sep 2026 02:48:04 GMT
LABEL name=Silverpeas 6.3.6 description=Image to install and to run Silverpeas 6.3.6 vendor=Silverpeas version=6.3.6 build=2
# Wed, 09 Sep 2026 02:48:23 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver keys.openpgp.org --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && rm *.zip   && mkdir -p /root/.m2 # buildkit
# Wed, 09 Sep 2026 02:48:23 GMT
COPY src/settings.xml /root/.m2/ # buildkit
# Wed, 09 Sep 2026 02:48:23 GMT
COPY src/silverpeas.gradle /opt/silverpeas/bin/ # buildkit
# Wed, 09 Sep 2026 02:48:23 GMT
WORKDIR /opt/silverpeas/bin
# Wed, 09 Sep 2026 02:48:23 GMT
COPY src/run.sh /opt/ # buildkit
# Wed, 09 Sep 2026 02:48:23 GMT
COPY src/converter.groovy /opt/silverpeas/configuration/silverpeas/ # buildkit
# Wed, 09 Sep 2026 02:49:32 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN sed -i -e "s/SILVERPEAS_VERSION/${SILVERPEAS_VERSION}/g" ${SILVERPEAS_HOME}/bin/silverpeas.gradle   && ./silverpeas construct   && rm ../log/build-*   && touch .install # buildkit
# Wed, 09 Sep 2026 02:49:32 GMT
EXPOSE map[8000/tcp:{} 9990/tcp:{}]
# Wed, 09 Sep 2026 02:49:32 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/properties /opt/silverpeas/xmlcomponents/workflows]
# Wed, 09 Sep 2026 02:49:32 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74aed50262a2ea181d01c54420811248bbcf6cb02745835098a3051300e02ceb`  
		Last Modified: Wed, 09 Sep 2026 02:52:03 GMT  
		Size: 874.0 MB (873957018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e9933ec82ae1e375f231469da407e8b53bb45ef1df590b644242832ab7c6c2b`  
		Last Modified: Wed, 09 Sep 2026 02:51:33 GMT  
		Size: 4.0 MB (3994007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70ec8e0371fcf89cc6488f541f1e883fcd029ce64e2a86a032d772dfafe480ae`  
		Last Modified: Wed, 09 Sep 2026 02:51:33 GMT  
		Size: 7.1 MB (7146616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ab71230848e38e0c7a1cd8f61047a0e96c0ff908af9084f105347046a5a5e76`  
		Last Modified: Wed, 09 Sep 2026 02:51:33 GMT  
		Size: 2.5 MB (2538622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd95bea97c3d9011cdb5b9628457365333cda242972b7ad74aa5b9129c72c429`  
		Last Modified: Wed, 09 Sep 2026 02:51:35 GMT  
		Size: 235.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71f7c91785d55c3c5ca4421e80ca21f8ba16ef34dc4e88e49b4ea6b6018f53b8`  
		Last Modified: Wed, 09 Sep 2026 02:51:35 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41d94e0ac1fd66df149fc37107b905f238162b0c91610052d44729e6dab25243`  
		Last Modified: Wed, 09 Sep 2026 02:51:45 GMT  
		Size: 217.8 MB (217843289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e84a6ea68854bc2aa743c8ee36491c8f97ca60c4ed3539ce35c71d61bc9b531a`  
		Last Modified: Wed, 09 Sep 2026 02:51:36 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66349822ba14b9abad8e9f18ff87de22384844708df97a525e5c30a90b8534b6`  
		Last Modified: Wed, 09 Sep 2026 02:51:36 GMT  
		Size: 665.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f7f72390b1b31a3b474fcee5d5333a1fa61f36e1b63ee7e2a8e9352fa34f3f7`  
		Last Modified: Wed, 09 Sep 2026 02:51:37 GMT  
		Size: 923.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1a47da7060717e4d6308306603755c2e6ad4447f3ffa267a797e0fed28c284a`  
		Last Modified: Wed, 09 Sep 2026 02:51:37 GMT  
		Size: 385.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:140202b919ceba324a9d2544ac67a5e1846a613107ac33263d90a568659f1e23`  
		Last Modified: Wed, 09 Sep 2026 02:52:04 GMT  
		Size: 754.6 MB (754600537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `silverpeas:6.3` - unknown; unknown

```console
$ docker pull silverpeas@sha256:758f7b0bfc7968ed3b8a11c08cc34db891cc56333f06a668cfe1640b971c8aa9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 MB (26853584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c9bfdd3c39cf77438230d52fd59fedb835980c5076f00df13827c9b93e024ec`

```dockerfile
```

-	Layers:
	-	`sha256:70b5f3d215ed262fcc5124aea2268183ab53518bc5322d6793ca027540e83d22`  
		Last Modified: Wed, 09 Sep 2026 02:51:34 GMT  
		Size: 26.8 MB (26812582 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ebb692465befcc9b268876f974947fd4fb25e52d147965e90cdd2bafd2bfe45`  
		Last Modified: Wed, 09 Sep 2026 02:51:33 GMT  
		Size: 41.0 KB (41002 bytes)  
		MIME: application/vnd.in-toto+json

## `silverpeas:6.3.6`

```console
$ docker pull silverpeas@sha256:8de5bcd82bb6f88ddff14c90d8f94f22b27b34f8c50a9b00c2aaf34fc483f403
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `silverpeas:6.3.6` - linux; amd64

```console
$ docker pull silverpeas@sha256:5b764f377cc278881dd684b6bb360af8d64490a1354612683178d6ed05f57c07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.9 GB (1889833116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d07145e1dc317a33152264bb63f4a29c453bf930ebab812d2304fda2093d1cd`
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
# Wed, 09 Sep 2026 02:47:37 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Wed, 09 Sep 2026 02:47:37 GMT
ENV TERM=xterm
# Wed, 09 Sep 2026 02:47:37 GMT
RUN apt-get update   && apt-get install -y tzdata   && apt-get install -y     apt-utils     iputils-ping     curl     wget     vim     locales     language-pack-en     language-pack-fr     procps     net-tools     zip     unzip     openjdk-11-jdk     ffmpeg     imagemagick     ghostscript     libreoffice     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f # buildkit
# Wed, 09 Sep 2026 02:47:39 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 *swftools-bin-0.9.2.zip' | sha256sum -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip # buildkit
# Wed, 09 Sep 2026 02:47:42 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 *pdf2json-bin-0.68.zip' | sha256sum -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip # buildkit
# Wed, 09 Sep 2026 02:47:42 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Wed, 09 Sep 2026 02:48:04 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE} # buildkit
# Wed, 09 Sep 2026 02:48:04 GMT
ENV LANG=en_US.UTF-8
# Wed, 09 Sep 2026 02:48:04 GMT
ENV LANGUAGE=en_US.UTF-8
# Wed, 09 Sep 2026 02:48:04 GMT
ENV LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 02:48:04 GMT
ENV PING_ON=1
# Wed, 09 Sep 2026 02:48:04 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home # buildkit
# Wed, 09 Sep 2026 02:48:04 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home # buildkit
# Wed, 09 Sep 2026 02:48:04 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 09 Sep 2026 02:48:04 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Wed, 09 Sep 2026 02:48:04 GMT
ENV JBOSS_HOME=/opt/wildfly
# Wed, 09 Sep 2026 02:48:04 GMT
ENV SILVERPEAS_VERSION=6.3.6
# Wed, 09 Sep 2026 02:48:04 GMT
ENV WILDFLY_VERSION=26.1.1
# Wed, 09 Sep 2026 02:48:04 GMT
LABEL name=Silverpeas 6.3.6 description=Image to install and to run Silverpeas 6.3.6 vendor=Silverpeas version=6.3.6 build=2
# Wed, 09 Sep 2026 02:48:23 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver keys.openpgp.org --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && rm *.zip   && mkdir -p /root/.m2 # buildkit
# Wed, 09 Sep 2026 02:48:23 GMT
COPY src/settings.xml /root/.m2/ # buildkit
# Wed, 09 Sep 2026 02:48:23 GMT
COPY src/silverpeas.gradle /opt/silverpeas/bin/ # buildkit
# Wed, 09 Sep 2026 02:48:23 GMT
WORKDIR /opt/silverpeas/bin
# Wed, 09 Sep 2026 02:48:23 GMT
COPY src/run.sh /opt/ # buildkit
# Wed, 09 Sep 2026 02:48:23 GMT
COPY src/converter.groovy /opt/silverpeas/configuration/silverpeas/ # buildkit
# Wed, 09 Sep 2026 02:49:32 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN sed -i -e "s/SILVERPEAS_VERSION/${SILVERPEAS_VERSION}/g" ${SILVERPEAS_HOME}/bin/silverpeas.gradle   && ./silverpeas construct   && rm ../log/build-*   && touch .install # buildkit
# Wed, 09 Sep 2026 02:49:32 GMT
EXPOSE map[8000/tcp:{} 9990/tcp:{}]
# Wed, 09 Sep 2026 02:49:32 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/properties /opt/silverpeas/xmlcomponents/workflows]
# Wed, 09 Sep 2026 02:49:32 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74aed50262a2ea181d01c54420811248bbcf6cb02745835098a3051300e02ceb`  
		Last Modified: Wed, 09 Sep 2026 02:52:03 GMT  
		Size: 874.0 MB (873957018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e9933ec82ae1e375f231469da407e8b53bb45ef1df590b644242832ab7c6c2b`  
		Last Modified: Wed, 09 Sep 2026 02:51:33 GMT  
		Size: 4.0 MB (3994007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70ec8e0371fcf89cc6488f541f1e883fcd029ce64e2a86a032d772dfafe480ae`  
		Last Modified: Wed, 09 Sep 2026 02:51:33 GMT  
		Size: 7.1 MB (7146616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ab71230848e38e0c7a1cd8f61047a0e96c0ff908af9084f105347046a5a5e76`  
		Last Modified: Wed, 09 Sep 2026 02:51:33 GMT  
		Size: 2.5 MB (2538622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd95bea97c3d9011cdb5b9628457365333cda242972b7ad74aa5b9129c72c429`  
		Last Modified: Wed, 09 Sep 2026 02:51:35 GMT  
		Size: 235.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71f7c91785d55c3c5ca4421e80ca21f8ba16ef34dc4e88e49b4ea6b6018f53b8`  
		Last Modified: Wed, 09 Sep 2026 02:51:35 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41d94e0ac1fd66df149fc37107b905f238162b0c91610052d44729e6dab25243`  
		Last Modified: Wed, 09 Sep 2026 02:51:45 GMT  
		Size: 217.8 MB (217843289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e84a6ea68854bc2aa743c8ee36491c8f97ca60c4ed3539ce35c71d61bc9b531a`  
		Last Modified: Wed, 09 Sep 2026 02:51:36 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66349822ba14b9abad8e9f18ff87de22384844708df97a525e5c30a90b8534b6`  
		Last Modified: Wed, 09 Sep 2026 02:51:36 GMT  
		Size: 665.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f7f72390b1b31a3b474fcee5d5333a1fa61f36e1b63ee7e2a8e9352fa34f3f7`  
		Last Modified: Wed, 09 Sep 2026 02:51:37 GMT  
		Size: 923.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1a47da7060717e4d6308306603755c2e6ad4447f3ffa267a797e0fed28c284a`  
		Last Modified: Wed, 09 Sep 2026 02:51:37 GMT  
		Size: 385.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:140202b919ceba324a9d2544ac67a5e1846a613107ac33263d90a568659f1e23`  
		Last Modified: Wed, 09 Sep 2026 02:52:04 GMT  
		Size: 754.6 MB (754600537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `silverpeas:6.3.6` - unknown; unknown

```console
$ docker pull silverpeas@sha256:758f7b0bfc7968ed3b8a11c08cc34db891cc56333f06a668cfe1640b971c8aa9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 MB (26853584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c9bfdd3c39cf77438230d52fd59fedb835980c5076f00df13827c9b93e024ec`

```dockerfile
```

-	Layers:
	-	`sha256:70b5f3d215ed262fcc5124aea2268183ab53518bc5322d6793ca027540e83d22`  
		Last Modified: Wed, 09 Sep 2026 02:51:34 GMT  
		Size: 26.8 MB (26812582 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ebb692465befcc9b268876f974947fd4fb25e52d147965e90cdd2bafd2bfe45`  
		Last Modified: Wed, 09 Sep 2026 02:51:33 GMT  
		Size: 41.0 KB (41002 bytes)  
		MIME: application/vnd.in-toto+json

## `silverpeas:6.4`

```console
$ docker pull silverpeas@sha256:84184f6353845dc7310bfb67e3a20b073fe623e498f8df6815cd0287f6349b1e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `silverpeas:6.4` - linux; amd64

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

### `silverpeas:6.4` - unknown; unknown

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

## `silverpeas:6.4.7`

```console
$ docker pull silverpeas@sha256:84184f6353845dc7310bfb67e3a20b073fe623e498f8df6815cd0287f6349b1e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `silverpeas:6.4.7` - linux; amd64

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

### `silverpeas:6.4.7` - unknown; unknown

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
