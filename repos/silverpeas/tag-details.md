<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `silverpeas`

-	[`silverpeas:6.3`](#silverpeas63)
-	[`silverpeas:6.3.6`](#silverpeas636)
-	[`silverpeas:6.4`](#silverpeas64)
-	[`silverpeas:6.4.7`](#silverpeas647)
-	[`silverpeas:latest`](#silverpeaslatest)

## `silverpeas:6.3`

```console
$ docker pull silverpeas@sha256:6d92e3b850f10ff003b6961aa879a7034ef3a28aa1878ad38c76030a48f8eaf0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `silverpeas:6.3` - linux; amd64

```console
$ docker pull silverpeas@sha256:54de8f773b52bf08abbf1a7735c2edad2e274f4bee946cae3f6e9cd89038dcdc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.9 GB (1887472668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00ba5ec1e0ba3d8ca8fe27c1233cac4457ae1c87ee579dbf6e99bb3fa0f8038b`
-	Default Command: `["\/opt\/run.sh"]`

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
# Tue, 18 Aug 2026 01:23:42 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Tue, 18 Aug 2026 01:23:42 GMT
ENV TERM=xterm
# Tue, 18 Aug 2026 01:23:42 GMT
RUN apt-get update   && apt-get install -y tzdata   && apt-get install -y     apt-utils     iputils-ping     curl     wget     vim     locales     language-pack-en     language-pack-fr     procps     net-tools     zip     unzip     openjdk-11-jdk     ffmpeg     imagemagick     ghostscript     libreoffice     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f # buildkit
# Tue, 18 Aug 2026 01:23:44 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 *swftools-bin-0.9.2.zip' | sha256sum -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip # buildkit
# Tue, 18 Aug 2026 01:23:46 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 *pdf2json-bin-0.68.zip' | sha256sum -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip # buildkit
# Tue, 18 Aug 2026 01:23:46 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Tue, 18 Aug 2026 01:24:09 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE} # buildkit
# Tue, 18 Aug 2026 01:24:09 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:24:09 GMT
ENV LANGUAGE=en_US.UTF-8
# Tue, 18 Aug 2026 01:24:09 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 01:24:09 GMT
ENV PING_ON=1
# Tue, 18 Aug 2026 01:24:09 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home # buildkit
# Tue, 18 Aug 2026 01:24:09 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home # buildkit
# Tue, 18 Aug 2026 01:24:09 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 18 Aug 2026 01:24:09 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Tue, 18 Aug 2026 01:24:09 GMT
ENV JBOSS_HOME=/opt/wildfly
# Tue, 18 Aug 2026 01:24:09 GMT
ENV SILVERPEAS_VERSION=6.3.6
# Tue, 18 Aug 2026 01:24:09 GMT
ENV WILDFLY_VERSION=26.1.1
# Tue, 18 Aug 2026 01:24:09 GMT
LABEL name=Silverpeas 6.3.6 description=Image to install and to run Silverpeas 6.3.6 vendor=Silverpeas version=6.3.6 build=2
# Tue, 18 Aug 2026 01:24:28 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver keys.openpgp.org --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && rm *.zip   && mkdir -p /root/.m2 # buildkit
# Tue, 18 Aug 2026 01:24:28 GMT
COPY src/settings.xml /root/.m2/ # buildkit
# Tue, 18 Aug 2026 01:24:28 GMT
COPY src/silverpeas.gradle /opt/silverpeas/bin/ # buildkit
# Tue, 18 Aug 2026 01:24:28 GMT
WORKDIR /opt/silverpeas/bin
# Tue, 18 Aug 2026 01:24:28 GMT
COPY src/run.sh /opt/ # buildkit
# Tue, 18 Aug 2026 01:24:28 GMT
COPY src/converter.groovy /opt/silverpeas/configuration/silverpeas/ # buildkit
# Tue, 18 Aug 2026 01:25:37 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN sed -i -e "s/SILVERPEAS_VERSION/${SILVERPEAS_VERSION}/g" ${SILVERPEAS_HOME}/bin/silverpeas.gradle   && ./silverpeas construct   && rm ../log/build-*   && touch .install # buildkit
# Tue, 18 Aug 2026 01:25:37 GMT
EXPOSE map[8000/tcp:{} 9990/tcp:{}]
# Tue, 18 Aug 2026 01:25:37 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/properties /opt/silverpeas/xmlcomponents/workflows]
# Tue, 18 Aug 2026 01:25:37 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17be433da18badfdaf3f0772a2dc788f25a8ae3ea7f246d992ba761fbce9f7b2`  
		Last Modified: Tue, 18 Aug 2026 01:28:12 GMT  
		Size: 871.6 MB (871610342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b0c3dac43d4fc139d78cce253c2ef34be5274bacf2e32ccdc7bef3864e425e9`  
		Last Modified: Tue, 18 Aug 2026 01:27:43 GMT  
		Size: 4.0 MB (3994011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:062895099c9a25ff88aab2ec2def8962112551b71164c08bc8723d05567e14c8`  
		Last Modified: Tue, 18 Aug 2026 01:27:44 GMT  
		Size: 7.1 MB (7146623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:771dbffdfed27a0fd02eb41f4ddf4a6269a4423a083fc23b6162357d5aa1ba6b`  
		Last Modified: Tue, 18 Aug 2026 01:27:43 GMT  
		Size: 2.5 MB (2538614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65c4cad760420d8af4556de1ef058ec70d3078589fc7b83b64231d7b5f9dbfb6`  
		Last Modified: Tue, 18 Aug 2026 01:27:45 GMT  
		Size: 236.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e591251a22cb7ae7a75f36bd085a4bb762717f2fb2bb2f52074f8731498b3ed3`  
		Last Modified: Tue, 18 Aug 2026 01:27:45 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5ae92a9c319d8651e6df9cc523e75de900655c1c8078e5b9dea1cb478e01d92`  
		Last Modified: Tue, 18 Aug 2026 01:27:55 GMT  
		Size: 217.8 MB (217843268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44338c20527d7f9d2b33dd07648ad0eb00ba1987100a80dfdc4aa1a547c8496c`  
		Last Modified: Tue, 18 Aug 2026 01:27:46 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:952345c43f964d2ff3e970c4d5ea44f71711cb5fa7ced77f6acef1e1812ed6a4`  
		Last Modified: Tue, 18 Aug 2026 01:27:46 GMT  
		Size: 666.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1e0a3451698ab1654504eb8338c84e681389c77da304924eaf7cc09bc04c941`  
		Last Modified: Tue, 18 Aug 2026 01:27:47 GMT  
		Size: 921.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18895c5d4a05a44317253ac8dcf57607d185911392a7482f043265e4fb82e109`  
		Last Modified: Tue, 18 Aug 2026 01:27:47 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eaad92831c6970b6b02bc76516361b8e0601469be5269ac2d0f12bfe71f5f20`  
		Last Modified: Tue, 18 Aug 2026 01:28:14 GMT  
		Size: 754.6 MB (754600088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `silverpeas:6.3` - unknown; unknown

```console
$ docker pull silverpeas@sha256:e1986d3d6661f41cfcaf59213df47fc3e2a5a469642c0b92a4c520ca989dd081
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 MB (26851876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:872860cd16c6da3badf0d363d35a8709b3bd3dd79fbfdbd4d60e685c6854edfa`

```dockerfile
```

-	Layers:
	-	`sha256:ed2aef258512f0aede23ae3a61485928dde2751442248f47806fcd0abcced9c4`  
		Last Modified: Tue, 18 Aug 2026 01:27:44 GMT  
		Size: 26.8 MB (26810874 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b6bde5916dbf79320c3e464142d773b00524a8862c738bd6dbc4ba7cbd84ef8`  
		Last Modified: Tue, 18 Aug 2026 01:27:43 GMT  
		Size: 41.0 KB (41002 bytes)  
		MIME: application/vnd.in-toto+json

## `silverpeas:6.3.6`

```console
$ docker pull silverpeas@sha256:6d92e3b850f10ff003b6961aa879a7034ef3a28aa1878ad38c76030a48f8eaf0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `silverpeas:6.3.6` - linux; amd64

```console
$ docker pull silverpeas@sha256:54de8f773b52bf08abbf1a7735c2edad2e274f4bee946cae3f6e9cd89038dcdc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.9 GB (1887472668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00ba5ec1e0ba3d8ca8fe27c1233cac4457ae1c87ee579dbf6e99bb3fa0f8038b`
-	Default Command: `["\/opt\/run.sh"]`

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
# Tue, 18 Aug 2026 01:23:42 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Tue, 18 Aug 2026 01:23:42 GMT
ENV TERM=xterm
# Tue, 18 Aug 2026 01:23:42 GMT
RUN apt-get update   && apt-get install -y tzdata   && apt-get install -y     apt-utils     iputils-ping     curl     wget     vim     locales     language-pack-en     language-pack-fr     procps     net-tools     zip     unzip     openjdk-11-jdk     ffmpeg     imagemagick     ghostscript     libreoffice     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f # buildkit
# Tue, 18 Aug 2026 01:23:44 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 *swftools-bin-0.9.2.zip' | sha256sum -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip # buildkit
# Tue, 18 Aug 2026 01:23:46 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 *pdf2json-bin-0.68.zip' | sha256sum -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip # buildkit
# Tue, 18 Aug 2026 01:23:46 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Tue, 18 Aug 2026 01:24:09 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE} # buildkit
# Tue, 18 Aug 2026 01:24:09 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:24:09 GMT
ENV LANGUAGE=en_US.UTF-8
# Tue, 18 Aug 2026 01:24:09 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 01:24:09 GMT
ENV PING_ON=1
# Tue, 18 Aug 2026 01:24:09 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home # buildkit
# Tue, 18 Aug 2026 01:24:09 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home # buildkit
# Tue, 18 Aug 2026 01:24:09 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 18 Aug 2026 01:24:09 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Tue, 18 Aug 2026 01:24:09 GMT
ENV JBOSS_HOME=/opt/wildfly
# Tue, 18 Aug 2026 01:24:09 GMT
ENV SILVERPEAS_VERSION=6.3.6
# Tue, 18 Aug 2026 01:24:09 GMT
ENV WILDFLY_VERSION=26.1.1
# Tue, 18 Aug 2026 01:24:09 GMT
LABEL name=Silverpeas 6.3.6 description=Image to install and to run Silverpeas 6.3.6 vendor=Silverpeas version=6.3.6 build=2
# Tue, 18 Aug 2026 01:24:28 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver keys.openpgp.org --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && rm *.zip   && mkdir -p /root/.m2 # buildkit
# Tue, 18 Aug 2026 01:24:28 GMT
COPY src/settings.xml /root/.m2/ # buildkit
# Tue, 18 Aug 2026 01:24:28 GMT
COPY src/silverpeas.gradle /opt/silverpeas/bin/ # buildkit
# Tue, 18 Aug 2026 01:24:28 GMT
WORKDIR /opt/silverpeas/bin
# Tue, 18 Aug 2026 01:24:28 GMT
COPY src/run.sh /opt/ # buildkit
# Tue, 18 Aug 2026 01:24:28 GMT
COPY src/converter.groovy /opt/silverpeas/configuration/silverpeas/ # buildkit
# Tue, 18 Aug 2026 01:25:37 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN sed -i -e "s/SILVERPEAS_VERSION/${SILVERPEAS_VERSION}/g" ${SILVERPEAS_HOME}/bin/silverpeas.gradle   && ./silverpeas construct   && rm ../log/build-*   && touch .install # buildkit
# Tue, 18 Aug 2026 01:25:37 GMT
EXPOSE map[8000/tcp:{} 9990/tcp:{}]
# Tue, 18 Aug 2026 01:25:37 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/properties /opt/silverpeas/xmlcomponents/workflows]
# Tue, 18 Aug 2026 01:25:37 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17be433da18badfdaf3f0772a2dc788f25a8ae3ea7f246d992ba761fbce9f7b2`  
		Last Modified: Tue, 18 Aug 2026 01:28:12 GMT  
		Size: 871.6 MB (871610342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b0c3dac43d4fc139d78cce253c2ef34be5274bacf2e32ccdc7bef3864e425e9`  
		Last Modified: Tue, 18 Aug 2026 01:27:43 GMT  
		Size: 4.0 MB (3994011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:062895099c9a25ff88aab2ec2def8962112551b71164c08bc8723d05567e14c8`  
		Last Modified: Tue, 18 Aug 2026 01:27:44 GMT  
		Size: 7.1 MB (7146623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:771dbffdfed27a0fd02eb41f4ddf4a6269a4423a083fc23b6162357d5aa1ba6b`  
		Last Modified: Tue, 18 Aug 2026 01:27:43 GMT  
		Size: 2.5 MB (2538614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65c4cad760420d8af4556de1ef058ec70d3078589fc7b83b64231d7b5f9dbfb6`  
		Last Modified: Tue, 18 Aug 2026 01:27:45 GMT  
		Size: 236.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e591251a22cb7ae7a75f36bd085a4bb762717f2fb2bb2f52074f8731498b3ed3`  
		Last Modified: Tue, 18 Aug 2026 01:27:45 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5ae92a9c319d8651e6df9cc523e75de900655c1c8078e5b9dea1cb478e01d92`  
		Last Modified: Tue, 18 Aug 2026 01:27:55 GMT  
		Size: 217.8 MB (217843268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44338c20527d7f9d2b33dd07648ad0eb00ba1987100a80dfdc4aa1a547c8496c`  
		Last Modified: Tue, 18 Aug 2026 01:27:46 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:952345c43f964d2ff3e970c4d5ea44f71711cb5fa7ced77f6acef1e1812ed6a4`  
		Last Modified: Tue, 18 Aug 2026 01:27:46 GMT  
		Size: 666.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1e0a3451698ab1654504eb8338c84e681389c77da304924eaf7cc09bc04c941`  
		Last Modified: Tue, 18 Aug 2026 01:27:47 GMT  
		Size: 921.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18895c5d4a05a44317253ac8dcf57607d185911392a7482f043265e4fb82e109`  
		Last Modified: Tue, 18 Aug 2026 01:27:47 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eaad92831c6970b6b02bc76516361b8e0601469be5269ac2d0f12bfe71f5f20`  
		Last Modified: Tue, 18 Aug 2026 01:28:14 GMT  
		Size: 754.6 MB (754600088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `silverpeas:6.3.6` - unknown; unknown

```console
$ docker pull silverpeas@sha256:e1986d3d6661f41cfcaf59213df47fc3e2a5a469642c0b92a4c520ca989dd081
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 MB (26851876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:872860cd16c6da3badf0d363d35a8709b3bd3dd79fbfdbd4d60e685c6854edfa`

```dockerfile
```

-	Layers:
	-	`sha256:ed2aef258512f0aede23ae3a61485928dde2751442248f47806fcd0abcced9c4`  
		Last Modified: Tue, 18 Aug 2026 01:27:44 GMT  
		Size: 26.8 MB (26810874 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b6bde5916dbf79320c3e464142d773b00524a8862c738bd6dbc4ba7cbd84ef8`  
		Last Modified: Tue, 18 Aug 2026 01:27:43 GMT  
		Size: 41.0 KB (41002 bytes)  
		MIME: application/vnd.in-toto+json

## `silverpeas:6.4`

```console
$ docker pull silverpeas@sha256:6417c1b9241012293b95caff221d2e8bf946ec8956258403d85f54094d23625f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `silverpeas:6.4` - linux; amd64

```console
$ docker pull silverpeas@sha256:98a3fec400227646439e2e57d33e44d7774b15d82eb876180f05fb7ce662213c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 GB (1818509436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eb2a0faa679b77d66ec5a3ec2029caf66e8e83e85c3cb1c9beedb6c830cfe58`
-	Default Command: `["\/opt\/run.sh"]`

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
# Tue, 18 Aug 2026 01:23:01 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Tue, 18 Aug 2026 01:23:01 GMT
ENV TERM=xterm
# Tue, 18 Aug 2026 01:23:01 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends tzdata   && apt-get install -y --no-install-recommends     apt-utils     iputils-ping     curl     wget     vim     locales     language-pack-en     language-pack-fr     procps     net-tools     zip     unzip     openjdk-11-jdk     ffmpeg     imagemagick     ghostscript     libreoffice     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f # buildkit
# Tue, 18 Aug 2026 01:23:04 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 swftools-bin-0.9.2.zip' | sha256sum -c --status -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip # buildkit
# Tue, 18 Aug 2026 01:23:06 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 pdf2json-bin-0.68.zip' | sha256sum -c --status -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip # buildkit
# Tue, 18 Aug 2026 01:23:06 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Tue, 18 Aug 2026 01:23:32 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE} # buildkit
# Tue, 18 Aug 2026 01:23:32 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:23:32 GMT
ENV LANGUAGE=en_US.UTF-8
# Tue, 18 Aug 2026 01:23:32 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 01:23:32 GMT
ENV PING_ON=1
# Tue, 18 Aug 2026 01:23:32 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home # buildkit
# Tue, 18 Aug 2026 01:23:32 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home # buildkit
# Tue, 18 Aug 2026 01:23:32 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 18 Aug 2026 01:23:32 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Tue, 18 Aug 2026 01:23:32 GMT
ENV JBOSS_HOME=/opt/wildfly
# Tue, 18 Aug 2026 01:23:32 GMT
ENV SILVERPEAS_VERSION=6.4.7
# Tue, 18 Aug 2026 01:23:32 GMT
ENV WILDFLY_VERSION=26.1.3
# Tue, 18 Aug 2026 01:23:32 GMT
LABEL name=Silverpeas 6.4.7 description=Image to install and to run Silverpeas 6.4.7 vendor=Silverpeas version=6.4.7 build=1
# Tue, 18 Aug 2026 01:23:56 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver keys.openpgp.org --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && wget -nc https://www.silverpeas.org/files/oak-migrate.zip   && echo '87009e55520e74b5d2a386f4ebc843ee43cd1f25ca5138f342a94a31add3cfbd oak-migrate.zip' | sha256sum -c --status -   && mkdir -p /opt/oak-migration   && unzip oak-migrate.zip -d /opt/oak-migration/   && chmod +x /opt/oak-migration/oak-migrate.sh   && rm *.zip   && mkdir -p /root/.m2 # buildkit
# Tue, 18 Aug 2026 01:23:56 GMT
COPY src/settings.xml /root/.m2/ # buildkit
# Tue, 18 Aug 2026 01:23:56 GMT
COPY src/silverpeas.gradle /opt/silverpeas/bin/ # buildkit
# Tue, 18 Aug 2026 01:23:56 GMT
WORKDIR /opt/silverpeas/bin
# Tue, 18 Aug 2026 01:23:56 GMT
COPY src/run.sh /opt/ # buildkit
# Tue, 18 Aug 2026 01:23:56 GMT
COPY src/converter.groovy /opt/silverpeas/configuration/silverpeas/ # buildkit
# Tue, 18 Aug 2026 01:25:16 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN set -eux;   sed -i -e "s/SILVERPEAS_VERSION/${SILVERPEAS_VERSION}/g" ${SILVERPEAS_HOME}/bin/silverpeas.gradle;   echo "Construct Silverpeas ${SILVERPEAS_VERSION}";   ./silverpeas assemble || (cat ../log/build-* && exit 1);   rm ../log/build-*;   touch .install; # buildkit
# Tue, 18 Aug 2026 01:25:16 GMT
EXPOSE map[8000/tcp:{} 9990/tcp:{}]
# Tue, 18 Aug 2026 01:25:16 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/properties /opt/silverpeas/xmlcomponents/workflows]
# Tue, 18 Aug 2026 01:25:16 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ee785ddee16110d1bbd5cd1e153073d76f7820d6c655fd45c9f3b9ac1d8dc1d`  
		Last Modified: Tue, 18 Aug 2026 01:27:05 GMT  
		Size: 494.8 MB (494803171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0eeae3e2000d4e4c6c9a6dce5e6a1a2c65a7b6866a9296dd4448c90e549b9bf`  
		Last Modified: Tue, 18 Aug 2026 01:26:47 GMT  
		Size: 4.0 MB (3994014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d88783aa98fa2447130fe34ab85cfd31d741f0ddd6cde60efa0bbb7dd2c1c5f6`  
		Last Modified: Tue, 18 Aug 2026 01:26:47 GMT  
		Size: 7.1 MB (7146621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5d02ed482525d0702b9319e1beff1934c6c2f741f54cff53fb0b5fe3c620873`  
		Last Modified: Tue, 18 Aug 2026 01:26:47 GMT  
		Size: 2.5 MB (2538613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef312e0ec15ca55ed1e477aa9c8720c591d4d7315f31188fceecc40877756aea`  
		Last Modified: Tue, 18 Aug 2026 01:26:48 GMT  
		Size: 236.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e12e174d5b7b01194b00832e49bf8279c4f0602dbd23d10fb65a03abd8d919cc`  
		Last Modified: Tue, 18 Aug 2026 01:26:48 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e62d6adcfbdb7480e1dc3eaae5c7ccfa5db246c087f0b1c22cf7b32fea3d0bcd`  
		Last Modified: Tue, 18 Aug 2026 01:27:01 GMT  
		Size: 269.1 MB (269106930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1d6dd7c0fa7d365d6a58a984ee6dff7b7f4eaa0975b18e1cba0c6e4190dc668`  
		Last Modified: Tue, 18 Aug 2026 01:26:49 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31fdaaca9226281145b1f474de8cc3b22c4255402f77952d8235c1d370683baf`  
		Last Modified: Tue, 18 Aug 2026 01:26:50 GMT  
		Size: 663.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:331eec4c6713455e7b068d31ddd3e0985659a7e767b26ecfaeedcfde3bdc904b`  
		Last Modified: Tue, 18 Aug 2026 01:26:51 GMT  
		Size: 1.4 KB (1449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de4471d8b9acfc7040b80f349ed5628040cc83edbc6a041551a28314d19bd5db`  
		Last Modified: Tue, 18 Aug 2026 01:26:51 GMT  
		Size: 390.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1158bdf87f3c72673dbf1bca275220920d876d3fedc16383cd0f3d4e2675fdad`  
		Last Modified: Tue, 18 Aug 2026 01:27:22 GMT  
		Size: 1.0 GB (1011179840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `silverpeas:6.4` - unknown; unknown

```console
$ docker pull silverpeas@sha256:92eba0013588f48ffe91bf18b0e314204afbb7241c9c9c145d44727c9bd57e7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16637460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7d4803b8c04264cfe722091167180fa361f8839b18ac5b54f4977c7ee970b1d`

```dockerfile
```

-	Layers:
	-	`sha256:97442a372420fbada7c4562cbadaa325cb1cc0935ea6d3b5e9c3f881a3ab1c3e`  
		Last Modified: Tue, 18 Aug 2026 01:26:47 GMT  
		Size: 16.6 MB (16594654 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7930e041f30ac0f2d692c4f576f78ea7f3b9102948e6f17f1981c164e73027f`  
		Last Modified: Tue, 18 Aug 2026 01:26:46 GMT  
		Size: 42.8 KB (42806 bytes)  
		MIME: application/vnd.in-toto+json

## `silverpeas:6.4.7`

```console
$ docker pull silverpeas@sha256:6417c1b9241012293b95caff221d2e8bf946ec8956258403d85f54094d23625f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `silverpeas:6.4.7` - linux; amd64

```console
$ docker pull silverpeas@sha256:98a3fec400227646439e2e57d33e44d7774b15d82eb876180f05fb7ce662213c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 GB (1818509436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eb2a0faa679b77d66ec5a3ec2029caf66e8e83e85c3cb1c9beedb6c830cfe58`
-	Default Command: `["\/opt\/run.sh"]`

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
# Tue, 18 Aug 2026 01:23:01 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Tue, 18 Aug 2026 01:23:01 GMT
ENV TERM=xterm
# Tue, 18 Aug 2026 01:23:01 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends tzdata   && apt-get install -y --no-install-recommends     apt-utils     iputils-ping     curl     wget     vim     locales     language-pack-en     language-pack-fr     procps     net-tools     zip     unzip     openjdk-11-jdk     ffmpeg     imagemagick     ghostscript     libreoffice     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f # buildkit
# Tue, 18 Aug 2026 01:23:04 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 swftools-bin-0.9.2.zip' | sha256sum -c --status -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip # buildkit
# Tue, 18 Aug 2026 01:23:06 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 pdf2json-bin-0.68.zip' | sha256sum -c --status -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip # buildkit
# Tue, 18 Aug 2026 01:23:06 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Tue, 18 Aug 2026 01:23:32 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE} # buildkit
# Tue, 18 Aug 2026 01:23:32 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:23:32 GMT
ENV LANGUAGE=en_US.UTF-8
# Tue, 18 Aug 2026 01:23:32 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 01:23:32 GMT
ENV PING_ON=1
# Tue, 18 Aug 2026 01:23:32 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home # buildkit
# Tue, 18 Aug 2026 01:23:32 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home # buildkit
# Tue, 18 Aug 2026 01:23:32 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 18 Aug 2026 01:23:32 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Tue, 18 Aug 2026 01:23:32 GMT
ENV JBOSS_HOME=/opt/wildfly
# Tue, 18 Aug 2026 01:23:32 GMT
ENV SILVERPEAS_VERSION=6.4.7
# Tue, 18 Aug 2026 01:23:32 GMT
ENV WILDFLY_VERSION=26.1.3
# Tue, 18 Aug 2026 01:23:32 GMT
LABEL name=Silverpeas 6.4.7 description=Image to install and to run Silverpeas 6.4.7 vendor=Silverpeas version=6.4.7 build=1
# Tue, 18 Aug 2026 01:23:56 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver keys.openpgp.org --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && wget -nc https://www.silverpeas.org/files/oak-migrate.zip   && echo '87009e55520e74b5d2a386f4ebc843ee43cd1f25ca5138f342a94a31add3cfbd oak-migrate.zip' | sha256sum -c --status -   && mkdir -p /opt/oak-migration   && unzip oak-migrate.zip -d /opt/oak-migration/   && chmod +x /opt/oak-migration/oak-migrate.sh   && rm *.zip   && mkdir -p /root/.m2 # buildkit
# Tue, 18 Aug 2026 01:23:56 GMT
COPY src/settings.xml /root/.m2/ # buildkit
# Tue, 18 Aug 2026 01:23:56 GMT
COPY src/silverpeas.gradle /opt/silverpeas/bin/ # buildkit
# Tue, 18 Aug 2026 01:23:56 GMT
WORKDIR /opt/silverpeas/bin
# Tue, 18 Aug 2026 01:23:56 GMT
COPY src/run.sh /opt/ # buildkit
# Tue, 18 Aug 2026 01:23:56 GMT
COPY src/converter.groovy /opt/silverpeas/configuration/silverpeas/ # buildkit
# Tue, 18 Aug 2026 01:25:16 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN set -eux;   sed -i -e "s/SILVERPEAS_VERSION/${SILVERPEAS_VERSION}/g" ${SILVERPEAS_HOME}/bin/silverpeas.gradle;   echo "Construct Silverpeas ${SILVERPEAS_VERSION}";   ./silverpeas assemble || (cat ../log/build-* && exit 1);   rm ../log/build-*;   touch .install; # buildkit
# Tue, 18 Aug 2026 01:25:16 GMT
EXPOSE map[8000/tcp:{} 9990/tcp:{}]
# Tue, 18 Aug 2026 01:25:16 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/properties /opt/silverpeas/xmlcomponents/workflows]
# Tue, 18 Aug 2026 01:25:16 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ee785ddee16110d1bbd5cd1e153073d76f7820d6c655fd45c9f3b9ac1d8dc1d`  
		Last Modified: Tue, 18 Aug 2026 01:27:05 GMT  
		Size: 494.8 MB (494803171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0eeae3e2000d4e4c6c9a6dce5e6a1a2c65a7b6866a9296dd4448c90e549b9bf`  
		Last Modified: Tue, 18 Aug 2026 01:26:47 GMT  
		Size: 4.0 MB (3994014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d88783aa98fa2447130fe34ab85cfd31d741f0ddd6cde60efa0bbb7dd2c1c5f6`  
		Last Modified: Tue, 18 Aug 2026 01:26:47 GMT  
		Size: 7.1 MB (7146621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5d02ed482525d0702b9319e1beff1934c6c2f741f54cff53fb0b5fe3c620873`  
		Last Modified: Tue, 18 Aug 2026 01:26:47 GMT  
		Size: 2.5 MB (2538613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef312e0ec15ca55ed1e477aa9c8720c591d4d7315f31188fceecc40877756aea`  
		Last Modified: Tue, 18 Aug 2026 01:26:48 GMT  
		Size: 236.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e12e174d5b7b01194b00832e49bf8279c4f0602dbd23d10fb65a03abd8d919cc`  
		Last Modified: Tue, 18 Aug 2026 01:26:48 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e62d6adcfbdb7480e1dc3eaae5c7ccfa5db246c087f0b1c22cf7b32fea3d0bcd`  
		Last Modified: Tue, 18 Aug 2026 01:27:01 GMT  
		Size: 269.1 MB (269106930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1d6dd7c0fa7d365d6a58a984ee6dff7b7f4eaa0975b18e1cba0c6e4190dc668`  
		Last Modified: Tue, 18 Aug 2026 01:26:49 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31fdaaca9226281145b1f474de8cc3b22c4255402f77952d8235c1d370683baf`  
		Last Modified: Tue, 18 Aug 2026 01:26:50 GMT  
		Size: 663.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:331eec4c6713455e7b068d31ddd3e0985659a7e767b26ecfaeedcfde3bdc904b`  
		Last Modified: Tue, 18 Aug 2026 01:26:51 GMT  
		Size: 1.4 KB (1449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de4471d8b9acfc7040b80f349ed5628040cc83edbc6a041551a28314d19bd5db`  
		Last Modified: Tue, 18 Aug 2026 01:26:51 GMT  
		Size: 390.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1158bdf87f3c72673dbf1bca275220920d876d3fedc16383cd0f3d4e2675fdad`  
		Last Modified: Tue, 18 Aug 2026 01:27:22 GMT  
		Size: 1.0 GB (1011179840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `silverpeas:6.4.7` - unknown; unknown

```console
$ docker pull silverpeas@sha256:92eba0013588f48ffe91bf18b0e314204afbb7241c9c9c145d44727c9bd57e7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16637460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7d4803b8c04264cfe722091167180fa361f8839b18ac5b54f4977c7ee970b1d`

```dockerfile
```

-	Layers:
	-	`sha256:97442a372420fbada7c4562cbadaa325cb1cc0935ea6d3b5e9c3f881a3ab1c3e`  
		Last Modified: Tue, 18 Aug 2026 01:26:47 GMT  
		Size: 16.6 MB (16594654 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7930e041f30ac0f2d692c4f576f78ea7f3b9102948e6f17f1981c164e73027f`  
		Last Modified: Tue, 18 Aug 2026 01:26:46 GMT  
		Size: 42.8 KB (42806 bytes)  
		MIME: application/vnd.in-toto+json

## `silverpeas:latest`

```console
$ docker pull silverpeas@sha256:6417c1b9241012293b95caff221d2e8bf946ec8956258403d85f54094d23625f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `silverpeas:latest` - linux; amd64

```console
$ docker pull silverpeas@sha256:98a3fec400227646439e2e57d33e44d7774b15d82eb876180f05fb7ce662213c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 GB (1818509436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eb2a0faa679b77d66ec5a3ec2029caf66e8e83e85c3cb1c9beedb6c830cfe58`
-	Default Command: `["\/opt\/run.sh"]`

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
# Tue, 18 Aug 2026 01:23:01 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Tue, 18 Aug 2026 01:23:01 GMT
ENV TERM=xterm
# Tue, 18 Aug 2026 01:23:01 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends tzdata   && apt-get install -y --no-install-recommends     apt-utils     iputils-ping     curl     wget     vim     locales     language-pack-en     language-pack-fr     procps     net-tools     zip     unzip     openjdk-11-jdk     ffmpeg     imagemagick     ghostscript     libreoffice     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f # buildkit
# Tue, 18 Aug 2026 01:23:04 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 swftools-bin-0.9.2.zip' | sha256sum -c --status -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip # buildkit
# Tue, 18 Aug 2026 01:23:06 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 pdf2json-bin-0.68.zip' | sha256sum -c --status -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip # buildkit
# Tue, 18 Aug 2026 01:23:06 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Tue, 18 Aug 2026 01:23:32 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE} # buildkit
# Tue, 18 Aug 2026 01:23:32 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Aug 2026 01:23:32 GMT
ENV LANGUAGE=en_US.UTF-8
# Tue, 18 Aug 2026 01:23:32 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 01:23:32 GMT
ENV PING_ON=1
# Tue, 18 Aug 2026 01:23:32 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home # buildkit
# Tue, 18 Aug 2026 01:23:32 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home # buildkit
# Tue, 18 Aug 2026 01:23:32 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 18 Aug 2026 01:23:32 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Tue, 18 Aug 2026 01:23:32 GMT
ENV JBOSS_HOME=/opt/wildfly
# Tue, 18 Aug 2026 01:23:32 GMT
ENV SILVERPEAS_VERSION=6.4.7
# Tue, 18 Aug 2026 01:23:32 GMT
ENV WILDFLY_VERSION=26.1.3
# Tue, 18 Aug 2026 01:23:32 GMT
LABEL name=Silverpeas 6.4.7 description=Image to install and to run Silverpeas 6.4.7 vendor=Silverpeas version=6.4.7 build=1
# Tue, 18 Aug 2026 01:23:56 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver keys.openpgp.org --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && wget -nc https://www.silverpeas.org/files/oak-migrate.zip   && echo '87009e55520e74b5d2a386f4ebc843ee43cd1f25ca5138f342a94a31add3cfbd oak-migrate.zip' | sha256sum -c --status -   && mkdir -p /opt/oak-migration   && unzip oak-migrate.zip -d /opt/oak-migration/   && chmod +x /opt/oak-migration/oak-migrate.sh   && rm *.zip   && mkdir -p /root/.m2 # buildkit
# Tue, 18 Aug 2026 01:23:56 GMT
COPY src/settings.xml /root/.m2/ # buildkit
# Tue, 18 Aug 2026 01:23:56 GMT
COPY src/silverpeas.gradle /opt/silverpeas/bin/ # buildkit
# Tue, 18 Aug 2026 01:23:56 GMT
WORKDIR /opt/silverpeas/bin
# Tue, 18 Aug 2026 01:23:56 GMT
COPY src/run.sh /opt/ # buildkit
# Tue, 18 Aug 2026 01:23:56 GMT
COPY src/converter.groovy /opt/silverpeas/configuration/silverpeas/ # buildkit
# Tue, 18 Aug 2026 01:25:16 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN set -eux;   sed -i -e "s/SILVERPEAS_VERSION/${SILVERPEAS_VERSION}/g" ${SILVERPEAS_HOME}/bin/silverpeas.gradle;   echo "Construct Silverpeas ${SILVERPEAS_VERSION}";   ./silverpeas assemble || (cat ../log/build-* && exit 1);   rm ../log/build-*;   touch .install; # buildkit
# Tue, 18 Aug 2026 01:25:16 GMT
EXPOSE map[8000/tcp:{} 9990/tcp:{}]
# Tue, 18 Aug 2026 01:25:16 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/properties /opt/silverpeas/xmlcomponents/workflows]
# Tue, 18 Aug 2026 01:25:16 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ee785ddee16110d1bbd5cd1e153073d76f7820d6c655fd45c9f3b9ac1d8dc1d`  
		Last Modified: Tue, 18 Aug 2026 01:27:05 GMT  
		Size: 494.8 MB (494803171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0eeae3e2000d4e4c6c9a6dce5e6a1a2c65a7b6866a9296dd4448c90e549b9bf`  
		Last Modified: Tue, 18 Aug 2026 01:26:47 GMT  
		Size: 4.0 MB (3994014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d88783aa98fa2447130fe34ab85cfd31d741f0ddd6cde60efa0bbb7dd2c1c5f6`  
		Last Modified: Tue, 18 Aug 2026 01:26:47 GMT  
		Size: 7.1 MB (7146621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5d02ed482525d0702b9319e1beff1934c6c2f741f54cff53fb0b5fe3c620873`  
		Last Modified: Tue, 18 Aug 2026 01:26:47 GMT  
		Size: 2.5 MB (2538613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef312e0ec15ca55ed1e477aa9c8720c591d4d7315f31188fceecc40877756aea`  
		Last Modified: Tue, 18 Aug 2026 01:26:48 GMT  
		Size: 236.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e12e174d5b7b01194b00832e49bf8279c4f0602dbd23d10fb65a03abd8d919cc`  
		Last Modified: Tue, 18 Aug 2026 01:26:48 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e62d6adcfbdb7480e1dc3eaae5c7ccfa5db246c087f0b1c22cf7b32fea3d0bcd`  
		Last Modified: Tue, 18 Aug 2026 01:27:01 GMT  
		Size: 269.1 MB (269106930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1d6dd7c0fa7d365d6a58a984ee6dff7b7f4eaa0975b18e1cba0c6e4190dc668`  
		Last Modified: Tue, 18 Aug 2026 01:26:49 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31fdaaca9226281145b1f474de8cc3b22c4255402f77952d8235c1d370683baf`  
		Last Modified: Tue, 18 Aug 2026 01:26:50 GMT  
		Size: 663.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:331eec4c6713455e7b068d31ddd3e0985659a7e767b26ecfaeedcfde3bdc904b`  
		Last Modified: Tue, 18 Aug 2026 01:26:51 GMT  
		Size: 1.4 KB (1449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de4471d8b9acfc7040b80f349ed5628040cc83edbc6a041551a28314d19bd5db`  
		Last Modified: Tue, 18 Aug 2026 01:26:51 GMT  
		Size: 390.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1158bdf87f3c72673dbf1bca275220920d876d3fedc16383cd0f3d4e2675fdad`  
		Last Modified: Tue, 18 Aug 2026 01:27:22 GMT  
		Size: 1.0 GB (1011179840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `silverpeas:latest` - unknown; unknown

```console
$ docker pull silverpeas@sha256:92eba0013588f48ffe91bf18b0e314204afbb7241c9c9c145d44727c9bd57e7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16637460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7d4803b8c04264cfe722091167180fa361f8839b18ac5b54f4977c7ee970b1d`

```dockerfile
```

-	Layers:
	-	`sha256:97442a372420fbada7c4562cbadaa325cb1cc0935ea6d3b5e9c3f881a3ab1c3e`  
		Last Modified: Tue, 18 Aug 2026 01:26:47 GMT  
		Size: 16.6 MB (16594654 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7930e041f30ac0f2d692c4f576f78ea7f3b9102948e6f17f1981c164e73027f`  
		Last Modified: Tue, 18 Aug 2026 01:26:46 GMT  
		Size: 42.8 KB (42806 bytes)  
		MIME: application/vnd.in-toto+json
