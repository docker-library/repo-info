<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `silverpeas`

-	[`silverpeas:6.3`](#silverpeas63)
-	[`silverpeas:6.3.6`](#silverpeas636)
-	[`silverpeas:6.4.8`](#silverpeas648)
-	[`silverpeas:latest`](#silverpeaslatest)

## `silverpeas:6.3`

```console
$ docker pull silverpeas@sha256:b0679b7636421d7b023002f77235722c5e9389d735864ec59f2230c4e98dda7b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `silverpeas:6.3` - linux; amd64

```console
$ docker pull silverpeas@sha256:8df282e1b23caa770ca5d209655b2b4236e83da547c34560d7565526b39c14b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.9 GB (1887914840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fae8ed8b76a6572b18cf53bbb9f57fdce691de51aa4f2f2f34b0a69ce390de82`
-	Default Command: `["\/opt\/run.sh"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:43:48 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Sat, 17 Oct 2026 00:43:48 GMT
ENV TERM=xterm
# Sat, 17 Oct 2026 00:43:48 GMT
RUN apt-get update   && apt-get install -y tzdata   && apt-get install -y     apt-utils     iputils-ping     curl     wget     vim     locales     language-pack-en     language-pack-fr     procps     net-tools     zip     unzip     openjdk-11-jdk     ffmpeg     imagemagick     ghostscript     libreoffice     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f # buildkit
# Sat, 17 Oct 2026 00:43:51 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 *swftools-bin-0.9.2.zip' | sha256sum -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip # buildkit
# Sat, 17 Oct 2026 00:43:53 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 *pdf2json-bin-0.68.zip' | sha256sum -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip # buildkit
# Sat, 17 Oct 2026 00:43:53 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Sat, 17 Oct 2026 00:44:18 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE} # buildkit
# Sat, 17 Oct 2026 00:44:18 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 00:44:18 GMT
ENV LANGUAGE=en_US.UTF-8
# Sat, 17 Oct 2026 00:44:18 GMT
ENV LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:44:18 GMT
ENV PING_ON=1
# Sat, 17 Oct 2026 00:44:18 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home # buildkit
# Sat, 17 Oct 2026 00:44:18 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home # buildkit
# Sat, 17 Oct 2026 00:44:18 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 17 Oct 2026 00:44:18 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Sat, 17 Oct 2026 00:44:18 GMT
ENV JBOSS_HOME=/opt/wildfly
# Sat, 17 Oct 2026 00:44:18 GMT
ENV SILVERPEAS_VERSION=6.3.6
# Sat, 17 Oct 2026 00:44:18 GMT
ENV WILDFLY_VERSION=26.1.1
# Sat, 17 Oct 2026 00:44:18 GMT
LABEL name=Silverpeas 6.3.6 description=Image to install and to run Silverpeas 6.3.6 vendor=Silverpeas version=6.3.6 build=2
# Sat, 17 Oct 2026 00:44:39 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver keys.openpgp.org --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && rm *.zip   && mkdir -p /root/.m2 # buildkit
# Sat, 17 Oct 2026 00:44:39 GMT
COPY src/settings.xml /root/.m2/ # buildkit
# Sat, 17 Oct 2026 00:44:39 GMT
COPY src/silverpeas.gradle /opt/silverpeas/bin/ # buildkit
# Sat, 17 Oct 2026 00:44:39 GMT
WORKDIR /opt/silverpeas/bin
# Sat, 17 Oct 2026 00:44:39 GMT
COPY src/run.sh /opt/ # buildkit
# Sat, 17 Oct 2026 00:44:39 GMT
COPY src/converter.groovy /opt/silverpeas/configuration/silverpeas/ # buildkit
# Sat, 17 Oct 2026 00:45:51 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN sed -i -e "s/SILVERPEAS_VERSION/${SILVERPEAS_VERSION}/g" ${SILVERPEAS_HOME}/bin/silverpeas.gradle   && ./silverpeas construct   && rm ../log/build-*   && touch .install # buildkit
# Sat, 17 Oct 2026 00:45:51 GMT
EXPOSE map[8000/tcp:{} 9990/tcp:{}]
# Sat, 17 Oct 2026 00:45:51 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/properties /opt/silverpeas/xmlcomponents/workflows]
# Sat, 17 Oct 2026 00:45:51 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb77b4a0177b41faf9b96f81205ce29482616d452bfe2fae711ee480763340a7`  
		Last Modified: Sat, 17 Oct 2026 00:48:35 GMT  
		Size: 872.0 MB (872032021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1826d23536cda9240ff1739c65d15aeaecf1247c388c39b84aabcf60677dc03`  
		Last Modified: Sat, 17 Oct 2026 00:48:01 GMT  
		Size: 4.0 MB (3994006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a92cd3cccd5a34808854ea5d29eca05c540d420180b21751ed671a8020f8d9e`  
		Last Modified: Sat, 17 Oct 2026 00:48:01 GMT  
		Size: 7.1 MB (7146612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c90b0b31b94eb6dca6575184ca9d4d696fc4cf40c02169a8b4f00bd3c946c6a0`  
		Last Modified: Sat, 17 Oct 2026 00:48:01 GMT  
		Size: 2.5 MB (2538622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2929b360776a0c2cc4826be7f52ef9aaae7a1c08ebb854379097c38633b5ae1`  
		Last Modified: Sat, 17 Oct 2026 00:48:02 GMT  
		Size: 236.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a5dd17c4c44688a9502c82920c5b6e05cf3f42bcea38a2d720fbbcb0c63f2c3`  
		Last Modified: Sat, 17 Oct 2026 00:48:03 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbbd49a126e40c8907dda416422c3744bec1b9896fcabc63bce6f9adb4f0b953`  
		Last Modified: Sat, 17 Oct 2026 00:48:14 GMT  
		Size: 217.8 MB (217843311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3339ceaaca9161997001c3602b744e0c672b7fb6d3cdcafe8666a789a797097b`  
		Last Modified: Sat, 17 Oct 2026 00:48:03 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c44b2bd9e3c375165d77b0d87ea20c98d6d3e1fe848a2af4dbd536dad0af3574`  
		Last Modified: Sat, 17 Oct 2026 00:48:04 GMT  
		Size: 665.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e894c64cadf37731749e56e4355e8b28348535a01cfda40595190dc9d191f248`  
		Last Modified: Sat, 17 Oct 2026 00:48:05 GMT  
		Size: 922.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2352691daf0c56a39b3fc724b2fcee08c95607375f93bf43c612704d0e71dd9d`  
		Last Modified: Sat, 17 Oct 2026 00:48:05 GMT  
		Size: 385.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab19243e8f4c3ed4f6d90815c5ba0abb5f115ff4d7c718e2546e596514dcd350`  
		Last Modified: Sat, 17 Oct 2026 00:48:36 GMT  
		Size: 754.6 MB (754605017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `silverpeas:6.3` - unknown; unknown

```console
$ docker pull silverpeas@sha256:1613071c59ba9cde78c4a5560b158bc61bbea2857e32f4fe331506e26927fdc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 MB (26852774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c6b61c8777b0a5f0d046c1cd1ef4325dead44bfb6dd92bfc074dad437f7bf3e`

```dockerfile
```

-	Layers:
	-	`sha256:9aa143862699ff795865c8099a6bb00c9cecc678b61c95cdc546f2d6de601af1`  
		Last Modified: Sat, 17 Oct 2026 00:48:02 GMT  
		Size: 26.8 MB (26811772 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6a98caa3f6652b45d7c8416fd625bb47b7c6b091221040a12f67ca1fb468e9e`  
		Last Modified: Sat, 17 Oct 2026 00:48:00 GMT  
		Size: 41.0 KB (41002 bytes)  
		MIME: application/vnd.in-toto+json

## `silverpeas:6.3.6`

```console
$ docker pull silverpeas@sha256:b0679b7636421d7b023002f77235722c5e9389d735864ec59f2230c4e98dda7b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `silverpeas:6.3.6` - linux; amd64

```console
$ docker pull silverpeas@sha256:8df282e1b23caa770ca5d209655b2b4236e83da547c34560d7565526b39c14b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.9 GB (1887914840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fae8ed8b76a6572b18cf53bbb9f57fdce691de51aa4f2f2f34b0a69ce390de82`
-	Default Command: `["\/opt\/run.sh"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:43:48 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Sat, 17 Oct 2026 00:43:48 GMT
ENV TERM=xterm
# Sat, 17 Oct 2026 00:43:48 GMT
RUN apt-get update   && apt-get install -y tzdata   && apt-get install -y     apt-utils     iputils-ping     curl     wget     vim     locales     language-pack-en     language-pack-fr     procps     net-tools     zip     unzip     openjdk-11-jdk     ffmpeg     imagemagick     ghostscript     libreoffice     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f # buildkit
# Sat, 17 Oct 2026 00:43:51 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 *swftools-bin-0.9.2.zip' | sha256sum -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip # buildkit
# Sat, 17 Oct 2026 00:43:53 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 *pdf2json-bin-0.68.zip' | sha256sum -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip # buildkit
# Sat, 17 Oct 2026 00:43:53 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Sat, 17 Oct 2026 00:44:18 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE} # buildkit
# Sat, 17 Oct 2026 00:44:18 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 00:44:18 GMT
ENV LANGUAGE=en_US.UTF-8
# Sat, 17 Oct 2026 00:44:18 GMT
ENV LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:44:18 GMT
ENV PING_ON=1
# Sat, 17 Oct 2026 00:44:18 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home # buildkit
# Sat, 17 Oct 2026 00:44:18 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home # buildkit
# Sat, 17 Oct 2026 00:44:18 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 17 Oct 2026 00:44:18 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Sat, 17 Oct 2026 00:44:18 GMT
ENV JBOSS_HOME=/opt/wildfly
# Sat, 17 Oct 2026 00:44:18 GMT
ENV SILVERPEAS_VERSION=6.3.6
# Sat, 17 Oct 2026 00:44:18 GMT
ENV WILDFLY_VERSION=26.1.1
# Sat, 17 Oct 2026 00:44:18 GMT
LABEL name=Silverpeas 6.3.6 description=Image to install and to run Silverpeas 6.3.6 vendor=Silverpeas version=6.3.6 build=2
# Sat, 17 Oct 2026 00:44:39 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver keys.openpgp.org --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && rm *.zip   && mkdir -p /root/.m2 # buildkit
# Sat, 17 Oct 2026 00:44:39 GMT
COPY src/settings.xml /root/.m2/ # buildkit
# Sat, 17 Oct 2026 00:44:39 GMT
COPY src/silverpeas.gradle /opt/silverpeas/bin/ # buildkit
# Sat, 17 Oct 2026 00:44:39 GMT
WORKDIR /opt/silverpeas/bin
# Sat, 17 Oct 2026 00:44:39 GMT
COPY src/run.sh /opt/ # buildkit
# Sat, 17 Oct 2026 00:44:39 GMT
COPY src/converter.groovy /opt/silverpeas/configuration/silverpeas/ # buildkit
# Sat, 17 Oct 2026 00:45:51 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN sed -i -e "s/SILVERPEAS_VERSION/${SILVERPEAS_VERSION}/g" ${SILVERPEAS_HOME}/bin/silverpeas.gradle   && ./silverpeas construct   && rm ../log/build-*   && touch .install # buildkit
# Sat, 17 Oct 2026 00:45:51 GMT
EXPOSE map[8000/tcp:{} 9990/tcp:{}]
# Sat, 17 Oct 2026 00:45:51 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/properties /opt/silverpeas/xmlcomponents/workflows]
# Sat, 17 Oct 2026 00:45:51 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb77b4a0177b41faf9b96f81205ce29482616d452bfe2fae711ee480763340a7`  
		Last Modified: Sat, 17 Oct 2026 00:48:35 GMT  
		Size: 872.0 MB (872032021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1826d23536cda9240ff1739c65d15aeaecf1247c388c39b84aabcf60677dc03`  
		Last Modified: Sat, 17 Oct 2026 00:48:01 GMT  
		Size: 4.0 MB (3994006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a92cd3cccd5a34808854ea5d29eca05c540d420180b21751ed671a8020f8d9e`  
		Last Modified: Sat, 17 Oct 2026 00:48:01 GMT  
		Size: 7.1 MB (7146612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c90b0b31b94eb6dca6575184ca9d4d696fc4cf40c02169a8b4f00bd3c946c6a0`  
		Last Modified: Sat, 17 Oct 2026 00:48:01 GMT  
		Size: 2.5 MB (2538622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2929b360776a0c2cc4826be7f52ef9aaae7a1c08ebb854379097c38633b5ae1`  
		Last Modified: Sat, 17 Oct 2026 00:48:02 GMT  
		Size: 236.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a5dd17c4c44688a9502c82920c5b6e05cf3f42bcea38a2d720fbbcb0c63f2c3`  
		Last Modified: Sat, 17 Oct 2026 00:48:03 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbbd49a126e40c8907dda416422c3744bec1b9896fcabc63bce6f9adb4f0b953`  
		Last Modified: Sat, 17 Oct 2026 00:48:14 GMT  
		Size: 217.8 MB (217843311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3339ceaaca9161997001c3602b744e0c672b7fb6d3cdcafe8666a789a797097b`  
		Last Modified: Sat, 17 Oct 2026 00:48:03 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c44b2bd9e3c375165d77b0d87ea20c98d6d3e1fe848a2af4dbd536dad0af3574`  
		Last Modified: Sat, 17 Oct 2026 00:48:04 GMT  
		Size: 665.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e894c64cadf37731749e56e4355e8b28348535a01cfda40595190dc9d191f248`  
		Last Modified: Sat, 17 Oct 2026 00:48:05 GMT  
		Size: 922.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2352691daf0c56a39b3fc724b2fcee08c95607375f93bf43c612704d0e71dd9d`  
		Last Modified: Sat, 17 Oct 2026 00:48:05 GMT  
		Size: 385.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab19243e8f4c3ed4f6d90815c5ba0abb5f115ff4d7c718e2546e596514dcd350`  
		Last Modified: Sat, 17 Oct 2026 00:48:36 GMT  
		Size: 754.6 MB (754605017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `silverpeas:6.3.6` - unknown; unknown

```console
$ docker pull silverpeas@sha256:1613071c59ba9cde78c4a5560b158bc61bbea2857e32f4fe331506e26927fdc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 MB (26852774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c6b61c8777b0a5f0d046c1cd1ef4325dead44bfb6dd92bfc074dad437f7bf3e`

```dockerfile
```

-	Layers:
	-	`sha256:9aa143862699ff795865c8099a6bb00c9cecc678b61c95cdc546f2d6de601af1`  
		Last Modified: Sat, 17 Oct 2026 00:48:02 GMT  
		Size: 26.8 MB (26811772 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6a98caa3f6652b45d7c8416fd625bb47b7c6b091221040a12f67ca1fb468e9e`  
		Last Modified: Sat, 17 Oct 2026 00:48:00 GMT  
		Size: 41.0 KB (41002 bytes)  
		MIME: application/vnd.in-toto+json

## `silverpeas:6.4.8`

```console
$ docker pull silverpeas@sha256:a50a74311b6a26a44c458967b7a528e2abcaad0d2a0ae1b01ec1164eba5d87c9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `silverpeas:6.4.8` - linux; amd64

```console
$ docker pull silverpeas@sha256:5130ad6e74e75957311805590f1ceb070e57b4063687b70b9b02d322f3ffee09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 GB (1818639446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cf60772da03eff605251133e524fdd076126729f5823014e952bbe1a1b68d5e`
-	Default Command: `["\/opt\/run.sh"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:42:31 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Sat, 17 Oct 2026 00:42:31 GMT
ENV TERM=xterm
# Sat, 17 Oct 2026 00:42:31 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends tzdata   && apt-get install -y --no-install-recommends     apt-utils     iputils-ping     curl     wget     vim     locales     language-pack-en     language-pack-fr     procps     net-tools     zip     unzip     openjdk-11-jdk     ffmpeg     imagemagick     ghostscript     libreoffice     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f # buildkit
# Sat, 17 Oct 2026 00:42:33 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 swftools-bin-0.9.2.zip' | sha256sum -c --status -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip # buildkit
# Sat, 17 Oct 2026 00:42:36 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 pdf2json-bin-0.68.zip' | sha256sum -c --status -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip # buildkit
# Sat, 17 Oct 2026 00:42:36 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Sat, 17 Oct 2026 00:42:59 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE} # buildkit
# Sat, 17 Oct 2026 00:42:59 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 00:42:59 GMT
ENV LANGUAGE=en_US.UTF-8
# Sat, 17 Oct 2026 00:42:59 GMT
ENV LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:42:59 GMT
ENV PING_ON=1
# Sat, 17 Oct 2026 00:42:59 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home # buildkit
# Sat, 17 Oct 2026 00:42:59 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home # buildkit
# Sat, 17 Oct 2026 00:42:59 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 17 Oct 2026 00:42:59 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Sat, 17 Oct 2026 00:42:59 GMT
ENV JBOSS_HOME=/opt/wildfly
# Sat, 17 Oct 2026 00:42:59 GMT
ENV SILVERPEAS_VERSION=6.4.8
# Sat, 17 Oct 2026 00:42:59 GMT
ENV WILDFLY_VERSION=26.1.3
# Sat, 17 Oct 2026 00:42:59 GMT
LABEL name=Silverpeas 6.4.8 description=Image to install and to run Silverpeas 6.4.8 vendor=Silverpeas version=6.4.8 build=1
# Sat, 17 Oct 2026 00:43:24 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver keys.openpgp.org --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && wget -nc https://www.silverpeas.org/files/oak-migrate.zip   && echo '87009e55520e74b5d2a386f4ebc843ee43cd1f25ca5138f342a94a31add3cfbd oak-migrate.zip' | sha256sum -c --status -   && mkdir -p /opt/oak-migration   && unzip oak-migrate.zip -d /opt/oak-migration/   && chmod +x /opt/oak-migration/oak-migrate.sh   && rm *.zip   && mkdir -p /root/.m2 # buildkit
# Sat, 17 Oct 2026 00:43:24 GMT
COPY src/settings.xml /root/.m2/ # buildkit
# Sat, 17 Oct 2026 00:43:24 GMT
COPY src/silverpeas.gradle /opt/silverpeas/bin/ # buildkit
# Sat, 17 Oct 2026 00:43:24 GMT
WORKDIR /opt/silverpeas/bin
# Sat, 17 Oct 2026 00:43:24 GMT
COPY src/run.sh /opt/ # buildkit
# Sat, 17 Oct 2026 00:43:24 GMT
COPY src/converter.groovy /opt/silverpeas/configuration/silverpeas/ # buildkit
# Sat, 17 Oct 2026 00:44:45 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN set -eux;   sed -i -e "s/SILVERPEAS_VERSION/${SILVERPEAS_VERSION}/g" ${SILVERPEAS_HOME}/bin/silverpeas.gradle;   echo "Construct Silverpeas ${SILVERPEAS_VERSION}";   ./silverpeas assemble || (cat ../log/build-* && exit 1);   rm ../log/build-*;   touch .install; # buildkit
# Sat, 17 Oct 2026 00:44:45 GMT
EXPOSE map[8000/tcp:{} 9990/tcp:{}]
# Sat, 17 Oct 2026 00:44:45 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/properties /opt/silverpeas/xmlcomponents/workflows]
# Sat, 17 Oct 2026 00:44:45 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c04c50ad2154e200c5b50eed473e85c5071839d967c9c0e5de02564383642ccb`  
		Last Modified: Sat, 17 Oct 2026 00:46:32 GMT  
		Size: 494.9 MB (494867718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0484a0c0d559411d5b7e687358465bc5b7a4994b3bb290cc80a7f71ebfd14cb8`  
		Last Modified: Sat, 17 Oct 2026 00:46:14 GMT  
		Size: 4.0 MB (3994006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84f3aa932f881b5d486178c07f5026379c0654fe4e35b143fb7fa56694c946db`  
		Last Modified: Sat, 17 Oct 2026 00:46:14 GMT  
		Size: 7.1 MB (7146610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6394cd14a03aa145d85ee9cd295f5e4ebcba8c64b1e2db8eb8bb85edfc30934`  
		Last Modified: Sat, 17 Oct 2026 00:46:14 GMT  
		Size: 2.5 MB (2538614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49540e2b67d114305f91e9249e753dfaa399172f34904aa82c94143bf12ef9ce`  
		Last Modified: Sat, 17 Oct 2026 00:46:15 GMT  
		Size: 236.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37a90f97a72affb4dd7dbb5b94ad65d622ec169ec810c82de0859ea48a126871`  
		Last Modified: Sat, 17 Oct 2026 00:46:15 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5017b2420b7e18b0c4e969a541fbed458ef3827a81baf0108df55b2e769de0c1`  
		Last Modified: Sat, 17 Oct 2026 00:46:28 GMT  
		Size: 269.1 MB (269106940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb3b7c721ab000d382a398884abcc60b80dff5c4837224285d1d3c720a4efdb8`  
		Last Modified: Sat, 17 Oct 2026 00:46:16 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c916d0d368fd09d9529d56573bbc4121572f2403578d4c207c497bd0f910fba`  
		Last Modified: Sat, 17 Oct 2026 00:46:17 GMT  
		Size: 661.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26767980dc3b4ca3cb40274c8a35a3d57d9fb28c104590562ca9b71e6a6c856c`  
		Last Modified: Sat, 17 Oct 2026 00:46:18 GMT  
		Size: 1.4 KB (1445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5278a400400a2f0b08cd9ee39b7f204f8c5825054365143f1b6cb85747c6ce9`  
		Last Modified: Sat, 17 Oct 2026 00:46:18 GMT  
		Size: 384.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eae14f40a72bb1b962cdc542fe32d65a4ca6d54b4f34004a7e3ea033201765df`  
		Last Modified: Sat, 17 Oct 2026 00:46:45 GMT  
		Size: 1.0 GB (1011229789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `silverpeas:6.4.8` - unknown; unknown

```console
$ docker pull silverpeas@sha256:d0477a16fcadf5e87a559c01e89241c32fb916a85990490bf50afb5b6dfa2bbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16637028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f82c5570cc3419df424d5a6f37c0124f8674aee2ce662fe656ef022c31dff6ed`

```dockerfile
```

-	Layers:
	-	`sha256:82bff36c6df2bb97d301ed37093a2a68599b5d444a020de22907b6f487229d9c`  
		Last Modified: Sat, 17 Oct 2026 00:46:14 GMT  
		Size: 16.6 MB (16594522 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3470c6f6e1126c0dd6ddcc3433173f0e8de8e11d34c3e0c837eaae39a460f06`  
		Last Modified: Sat, 17 Oct 2026 00:46:13 GMT  
		Size: 42.5 KB (42506 bytes)  
		MIME: application/vnd.in-toto+json

## `silverpeas:latest`

```console
$ docker pull silverpeas@sha256:a50a74311b6a26a44c458967b7a528e2abcaad0d2a0ae1b01ec1164eba5d87c9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `silverpeas:latest` - linux; amd64

```console
$ docker pull silverpeas@sha256:5130ad6e74e75957311805590f1ceb070e57b4063687b70b9b02d322f3ffee09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 GB (1818639446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cf60772da03eff605251133e524fdd076126729f5823014e952bbe1a1b68d5e`
-	Default Command: `["\/opt\/run.sh"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:42:31 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Sat, 17 Oct 2026 00:42:31 GMT
ENV TERM=xterm
# Sat, 17 Oct 2026 00:42:31 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends tzdata   && apt-get install -y --no-install-recommends     apt-utils     iputils-ping     curl     wget     vim     locales     language-pack-en     language-pack-fr     procps     net-tools     zip     unzip     openjdk-11-jdk     ffmpeg     imagemagick     ghostscript     libreoffice     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f # buildkit
# Sat, 17 Oct 2026 00:42:33 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 swftools-bin-0.9.2.zip' | sha256sum -c --status -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip # buildkit
# Sat, 17 Oct 2026 00:42:36 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 pdf2json-bin-0.68.zip' | sha256sum -c --status -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip # buildkit
# Sat, 17 Oct 2026 00:42:36 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Sat, 17 Oct 2026 00:42:59 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE} # buildkit
# Sat, 17 Oct 2026 00:42:59 GMT
ENV LANG=en_US.UTF-8
# Sat, 17 Oct 2026 00:42:59 GMT
ENV LANGUAGE=en_US.UTF-8
# Sat, 17 Oct 2026 00:42:59 GMT
ENV LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:42:59 GMT
ENV PING_ON=1
# Sat, 17 Oct 2026 00:42:59 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home # buildkit
# Sat, 17 Oct 2026 00:42:59 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home # buildkit
# Sat, 17 Oct 2026 00:42:59 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 17 Oct 2026 00:42:59 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Sat, 17 Oct 2026 00:42:59 GMT
ENV JBOSS_HOME=/opt/wildfly
# Sat, 17 Oct 2026 00:42:59 GMT
ENV SILVERPEAS_VERSION=6.4.8
# Sat, 17 Oct 2026 00:42:59 GMT
ENV WILDFLY_VERSION=26.1.3
# Sat, 17 Oct 2026 00:42:59 GMT
LABEL name=Silverpeas 6.4.8 description=Image to install and to run Silverpeas 6.4.8 vendor=Silverpeas version=6.4.8 build=1
# Sat, 17 Oct 2026 00:43:24 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver keys.openpgp.org --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && wget -nc https://www.silverpeas.org/files/oak-migrate.zip   && echo '87009e55520e74b5d2a386f4ebc843ee43cd1f25ca5138f342a94a31add3cfbd oak-migrate.zip' | sha256sum -c --status -   && mkdir -p /opt/oak-migration   && unzip oak-migrate.zip -d /opt/oak-migration/   && chmod +x /opt/oak-migration/oak-migrate.sh   && rm *.zip   && mkdir -p /root/.m2 # buildkit
# Sat, 17 Oct 2026 00:43:24 GMT
COPY src/settings.xml /root/.m2/ # buildkit
# Sat, 17 Oct 2026 00:43:24 GMT
COPY src/silverpeas.gradle /opt/silverpeas/bin/ # buildkit
# Sat, 17 Oct 2026 00:43:24 GMT
WORKDIR /opt/silverpeas/bin
# Sat, 17 Oct 2026 00:43:24 GMT
COPY src/run.sh /opt/ # buildkit
# Sat, 17 Oct 2026 00:43:24 GMT
COPY src/converter.groovy /opt/silverpeas/configuration/silverpeas/ # buildkit
# Sat, 17 Oct 2026 00:44:45 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN set -eux;   sed -i -e "s/SILVERPEAS_VERSION/${SILVERPEAS_VERSION}/g" ${SILVERPEAS_HOME}/bin/silverpeas.gradle;   echo "Construct Silverpeas ${SILVERPEAS_VERSION}";   ./silverpeas assemble || (cat ../log/build-* && exit 1);   rm ../log/build-*;   touch .install; # buildkit
# Sat, 17 Oct 2026 00:44:45 GMT
EXPOSE map[8000/tcp:{} 9990/tcp:{}]
# Sat, 17 Oct 2026 00:44:45 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/properties /opt/silverpeas/xmlcomponents/workflows]
# Sat, 17 Oct 2026 00:44:45 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c04c50ad2154e200c5b50eed473e85c5071839d967c9c0e5de02564383642ccb`  
		Last Modified: Sat, 17 Oct 2026 00:46:32 GMT  
		Size: 494.9 MB (494867718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0484a0c0d559411d5b7e687358465bc5b7a4994b3bb290cc80a7f71ebfd14cb8`  
		Last Modified: Sat, 17 Oct 2026 00:46:14 GMT  
		Size: 4.0 MB (3994006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84f3aa932f881b5d486178c07f5026379c0654fe4e35b143fb7fa56694c946db`  
		Last Modified: Sat, 17 Oct 2026 00:46:14 GMT  
		Size: 7.1 MB (7146610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6394cd14a03aa145d85ee9cd295f5e4ebcba8c64b1e2db8eb8bb85edfc30934`  
		Last Modified: Sat, 17 Oct 2026 00:46:14 GMT  
		Size: 2.5 MB (2538614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49540e2b67d114305f91e9249e753dfaa399172f34904aa82c94143bf12ef9ce`  
		Last Modified: Sat, 17 Oct 2026 00:46:15 GMT  
		Size: 236.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37a90f97a72affb4dd7dbb5b94ad65d622ec169ec810c82de0859ea48a126871`  
		Last Modified: Sat, 17 Oct 2026 00:46:15 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5017b2420b7e18b0c4e969a541fbed458ef3827a81baf0108df55b2e769de0c1`  
		Last Modified: Sat, 17 Oct 2026 00:46:28 GMT  
		Size: 269.1 MB (269106940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb3b7c721ab000d382a398884abcc60b80dff5c4837224285d1d3c720a4efdb8`  
		Last Modified: Sat, 17 Oct 2026 00:46:16 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c916d0d368fd09d9529d56573bbc4121572f2403578d4c207c497bd0f910fba`  
		Last Modified: Sat, 17 Oct 2026 00:46:17 GMT  
		Size: 661.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26767980dc3b4ca3cb40274c8a35a3d57d9fb28c104590562ca9b71e6a6c856c`  
		Last Modified: Sat, 17 Oct 2026 00:46:18 GMT  
		Size: 1.4 KB (1445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5278a400400a2f0b08cd9ee39b7f204f8c5825054365143f1b6cb85747c6ce9`  
		Last Modified: Sat, 17 Oct 2026 00:46:18 GMT  
		Size: 384.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eae14f40a72bb1b962cdc542fe32d65a4ca6d54b4f34004a7e3ea033201765df`  
		Last Modified: Sat, 17 Oct 2026 00:46:45 GMT  
		Size: 1.0 GB (1011229789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `silverpeas:latest` - unknown; unknown

```console
$ docker pull silverpeas@sha256:d0477a16fcadf5e87a559c01e89241c32fb916a85990490bf50afb5b6dfa2bbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16637028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f82c5570cc3419df424d5a6f37c0124f8674aee2ce662fe656ef022c31dff6ed`

```dockerfile
```

-	Layers:
	-	`sha256:82bff36c6df2bb97d301ed37093a2a68599b5d444a020de22907b6f487229d9c`  
		Last Modified: Sat, 17 Oct 2026 00:46:14 GMT  
		Size: 16.6 MB (16594522 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3470c6f6e1126c0dd6ddcc3433173f0e8de8e11d34c3e0c837eaae39a460f06`  
		Last Modified: Sat, 17 Oct 2026 00:46:13 GMT  
		Size: 42.5 KB (42506 bytes)  
		MIME: application/vnd.in-toto+json
