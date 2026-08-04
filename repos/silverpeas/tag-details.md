<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `silverpeas`

-	[`silverpeas:6.3`](#silverpeas63)
-	[`silverpeas:6.3.6`](#silverpeas636)
-	[`silverpeas:6.4`](#silverpeas64)
-	[`silverpeas:6.4.7`](#silverpeas647)
-	[`silverpeas:latest`](#silverpeaslatest)

## `silverpeas:6.3`

```console
$ docker pull silverpeas@sha256:5f384183323b55617d368c6e61b58cabfcfd3f24cba7e2a85f057f9a3766e80e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `silverpeas:6.3` - linux; amd64

```console
$ docker pull silverpeas@sha256:9e9c8759ac0cd264e247fe09f35cdd5179ea6e8167e2bb46f863d7aa790e1d36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.9 GB (1887474442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28ee349f594cdc0309d095dfc42eb2d5cf93c33cd95d9242b14622cb9fcd9e47`
-	Default Command: `["\/opt\/run.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:54:22 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Tue, 04 Aug 2026 01:54:22 GMT
ENV TERM=xterm
# Tue, 04 Aug 2026 01:54:22 GMT
RUN apt-get update   && apt-get install -y tzdata   && apt-get install -y     apt-utils     iputils-ping     curl     wget     vim     locales     language-pack-en     language-pack-fr     procps     net-tools     zip     unzip     openjdk-11-jdk     ffmpeg     imagemagick     ghostscript     libreoffice     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f # buildkit
# Tue, 04 Aug 2026 01:54:24 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 *swftools-bin-0.9.2.zip' | sha256sum -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip # buildkit
# Tue, 04 Aug 2026 01:54:27 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 *pdf2json-bin-0.68.zip' | sha256sum -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip # buildkit
# Tue, 04 Aug 2026 01:54:27 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Tue, 04 Aug 2026 01:54:49 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE} # buildkit
# Tue, 04 Aug 2026 01:54:49 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:54:49 GMT
ENV LANGUAGE=en_US.UTF-8
# Tue, 04 Aug 2026 01:54:49 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:54:49 GMT
ENV PING_ON=1
# Tue, 04 Aug 2026 01:54:49 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home # buildkit
# Tue, 04 Aug 2026 01:54:49 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home # buildkit
# Tue, 04 Aug 2026 01:54:49 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 04 Aug 2026 01:54:49 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Tue, 04 Aug 2026 01:54:49 GMT
ENV JBOSS_HOME=/opt/wildfly
# Tue, 04 Aug 2026 01:54:49 GMT
ENV SILVERPEAS_VERSION=6.3.6
# Tue, 04 Aug 2026 01:54:49 GMT
ENV WILDFLY_VERSION=26.1.1
# Tue, 04 Aug 2026 01:54:49 GMT
LABEL name=Silverpeas 6.3.6 description=Image to install and to run Silverpeas 6.3.6 vendor=Silverpeas version=6.3.6 build=2
# Tue, 04 Aug 2026 01:55:09 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver keys.openpgp.org --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && rm *.zip   && mkdir -p /root/.m2 # buildkit
# Tue, 04 Aug 2026 01:55:09 GMT
COPY src/settings.xml /root/.m2/ # buildkit
# Tue, 04 Aug 2026 01:55:09 GMT
COPY src/silverpeas.gradle /opt/silverpeas/bin/ # buildkit
# Tue, 04 Aug 2026 01:55:09 GMT
WORKDIR /opt/silverpeas/bin
# Tue, 04 Aug 2026 01:55:09 GMT
COPY src/run.sh /opt/ # buildkit
# Tue, 04 Aug 2026 01:55:09 GMT
COPY src/converter.groovy /opt/silverpeas/configuration/silverpeas/ # buildkit
# Tue, 04 Aug 2026 01:56:19 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN sed -i -e "s/SILVERPEAS_VERSION/${SILVERPEAS_VERSION}/g" ${SILVERPEAS_HOME}/bin/silverpeas.gradle   && ./silverpeas construct   && rm ../log/build-*   && touch .install # buildkit
# Tue, 04 Aug 2026 01:56:19 GMT
EXPOSE map[8000/tcp:{} 9990/tcp:{}]
# Tue, 04 Aug 2026 01:56:19 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/properties /opt/silverpeas/xmlcomponents/workflows]
# Tue, 04 Aug 2026 01:56:19 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6911be1cb72d5be0ca29d27db4ee082a59b49d4999d097e12cfb5498161e7b3`  
		Last Modified: Tue, 04 Aug 2026 01:58:53 GMT  
		Size: 871.6 MB (871606165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35beac8cfe37b9370b19dad4d3599ec2c88d95e7826c4884fec3a24d7b81a9e5`  
		Last Modified: Tue, 04 Aug 2026 01:58:25 GMT  
		Size: 4.0 MB (3994015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e65be2bbe4043b7c199ed6dee86d22bd3834e9e3aa394bed2d8282cfbf16847c`  
		Last Modified: Tue, 04 Aug 2026 01:58:24 GMT  
		Size: 7.1 MB (7146627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c517ad50131a0c9ef7d2bbe1ac2f6e3424c90a3f63c4b0edd684c75aef133b02`  
		Last Modified: Tue, 04 Aug 2026 01:58:24 GMT  
		Size: 2.5 MB (2538616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c15b940c2908788df10b12ff58a820563f4ec8ed39f2ba0f1bfe1b1640046798`  
		Last Modified: Tue, 04 Aug 2026 01:58:26 GMT  
		Size: 234.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5a1da7b6670fdf28e8387e3427252c4f97cd78601cf01f232c75dd1f4898ede`  
		Last Modified: Tue, 04 Aug 2026 01:58:26 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5166ce6bfd0f063ffe96ebd1c75271218effbd914e9a6874ced0007c38409955`  
		Last Modified: Tue, 04 Aug 2026 01:58:34 GMT  
		Size: 217.8 MB (217843286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e6ed58e3795293e68bfce61cbc9625dba80eb3b100e2e289ac49a94bf22a781`  
		Last Modified: Tue, 04 Aug 2026 01:58:27 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4904add16b74063167764426f5f287db45734e0fd2e9744ef854eee6568c5519`  
		Last Modified: Tue, 04 Aug 2026 01:58:27 GMT  
		Size: 665.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ede6bfd7bb9127a94a569371dbe5c897d191196fa61c6c6b8194dc3911359d76`  
		Last Modified: Tue, 04 Aug 2026 01:58:28 GMT  
		Size: 923.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28380865c0654961021876046c61876930112058a20ed87748d3b0e3026cc51a`  
		Last Modified: Tue, 04 Aug 2026 01:58:29 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f0295d28a700cec457e9c814d8ae57a2fa77ee7c6611155fa36d0a659412002`  
		Last Modified: Tue, 04 Aug 2026 01:58:54 GMT  
		Size: 754.6 MB (754606437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `silverpeas:6.3` - unknown; unknown

```console
$ docker pull silverpeas@sha256:b4f3e5fa6a87bd7de4e7b77a686a3c67e8ea99f615067aa79efb72000c30bfcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 MB (26851876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3cc137a1570cf6bce6c195ca3ac6397dc102b7e3f9a31a49e9195592fcaa6e1`

```dockerfile
```

-	Layers:
	-	`sha256:4f0357c8d35f34fb4a1ce47e5c4f87b2dfc4feb0302754088ccdf4ab3553fdb8`  
		Last Modified: Tue, 04 Aug 2026 01:58:25 GMT  
		Size: 26.8 MB (26810874 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:25cee2bdbbc0de19b2cbc8830d2e30d1b4525d98f367dbee05c35e2f68406b70`  
		Last Modified: Tue, 04 Aug 2026 01:58:24 GMT  
		Size: 41.0 KB (41002 bytes)  
		MIME: application/vnd.in-toto+json

## `silverpeas:6.3.6`

```console
$ docker pull silverpeas@sha256:5f384183323b55617d368c6e61b58cabfcfd3f24cba7e2a85f057f9a3766e80e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `silverpeas:6.3.6` - linux; amd64

```console
$ docker pull silverpeas@sha256:9e9c8759ac0cd264e247fe09f35cdd5179ea6e8167e2bb46f863d7aa790e1d36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.9 GB (1887474442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28ee349f594cdc0309d095dfc42eb2d5cf93c33cd95d9242b14622cb9fcd9e47`
-	Default Command: `["\/opt\/run.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:54:22 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Tue, 04 Aug 2026 01:54:22 GMT
ENV TERM=xterm
# Tue, 04 Aug 2026 01:54:22 GMT
RUN apt-get update   && apt-get install -y tzdata   && apt-get install -y     apt-utils     iputils-ping     curl     wget     vim     locales     language-pack-en     language-pack-fr     procps     net-tools     zip     unzip     openjdk-11-jdk     ffmpeg     imagemagick     ghostscript     libreoffice     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f # buildkit
# Tue, 04 Aug 2026 01:54:24 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 *swftools-bin-0.9.2.zip' | sha256sum -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip # buildkit
# Tue, 04 Aug 2026 01:54:27 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 *pdf2json-bin-0.68.zip' | sha256sum -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip # buildkit
# Tue, 04 Aug 2026 01:54:27 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Tue, 04 Aug 2026 01:54:49 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE} # buildkit
# Tue, 04 Aug 2026 01:54:49 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:54:49 GMT
ENV LANGUAGE=en_US.UTF-8
# Tue, 04 Aug 2026 01:54:49 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:54:49 GMT
ENV PING_ON=1
# Tue, 04 Aug 2026 01:54:49 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home # buildkit
# Tue, 04 Aug 2026 01:54:49 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home # buildkit
# Tue, 04 Aug 2026 01:54:49 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 04 Aug 2026 01:54:49 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Tue, 04 Aug 2026 01:54:49 GMT
ENV JBOSS_HOME=/opt/wildfly
# Tue, 04 Aug 2026 01:54:49 GMT
ENV SILVERPEAS_VERSION=6.3.6
# Tue, 04 Aug 2026 01:54:49 GMT
ENV WILDFLY_VERSION=26.1.1
# Tue, 04 Aug 2026 01:54:49 GMT
LABEL name=Silverpeas 6.3.6 description=Image to install and to run Silverpeas 6.3.6 vendor=Silverpeas version=6.3.6 build=2
# Tue, 04 Aug 2026 01:55:09 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver keys.openpgp.org --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && rm *.zip   && mkdir -p /root/.m2 # buildkit
# Tue, 04 Aug 2026 01:55:09 GMT
COPY src/settings.xml /root/.m2/ # buildkit
# Tue, 04 Aug 2026 01:55:09 GMT
COPY src/silverpeas.gradle /opt/silverpeas/bin/ # buildkit
# Tue, 04 Aug 2026 01:55:09 GMT
WORKDIR /opt/silverpeas/bin
# Tue, 04 Aug 2026 01:55:09 GMT
COPY src/run.sh /opt/ # buildkit
# Tue, 04 Aug 2026 01:55:09 GMT
COPY src/converter.groovy /opt/silverpeas/configuration/silverpeas/ # buildkit
# Tue, 04 Aug 2026 01:56:19 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN sed -i -e "s/SILVERPEAS_VERSION/${SILVERPEAS_VERSION}/g" ${SILVERPEAS_HOME}/bin/silverpeas.gradle   && ./silverpeas construct   && rm ../log/build-*   && touch .install # buildkit
# Tue, 04 Aug 2026 01:56:19 GMT
EXPOSE map[8000/tcp:{} 9990/tcp:{}]
# Tue, 04 Aug 2026 01:56:19 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/properties /opt/silverpeas/xmlcomponents/workflows]
# Tue, 04 Aug 2026 01:56:19 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6911be1cb72d5be0ca29d27db4ee082a59b49d4999d097e12cfb5498161e7b3`  
		Last Modified: Tue, 04 Aug 2026 01:58:53 GMT  
		Size: 871.6 MB (871606165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35beac8cfe37b9370b19dad4d3599ec2c88d95e7826c4884fec3a24d7b81a9e5`  
		Last Modified: Tue, 04 Aug 2026 01:58:25 GMT  
		Size: 4.0 MB (3994015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e65be2bbe4043b7c199ed6dee86d22bd3834e9e3aa394bed2d8282cfbf16847c`  
		Last Modified: Tue, 04 Aug 2026 01:58:24 GMT  
		Size: 7.1 MB (7146627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c517ad50131a0c9ef7d2bbe1ac2f6e3424c90a3f63c4b0edd684c75aef133b02`  
		Last Modified: Tue, 04 Aug 2026 01:58:24 GMT  
		Size: 2.5 MB (2538616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c15b940c2908788df10b12ff58a820563f4ec8ed39f2ba0f1bfe1b1640046798`  
		Last Modified: Tue, 04 Aug 2026 01:58:26 GMT  
		Size: 234.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5a1da7b6670fdf28e8387e3427252c4f97cd78601cf01f232c75dd1f4898ede`  
		Last Modified: Tue, 04 Aug 2026 01:58:26 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5166ce6bfd0f063ffe96ebd1c75271218effbd914e9a6874ced0007c38409955`  
		Last Modified: Tue, 04 Aug 2026 01:58:34 GMT  
		Size: 217.8 MB (217843286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e6ed58e3795293e68bfce61cbc9625dba80eb3b100e2e289ac49a94bf22a781`  
		Last Modified: Tue, 04 Aug 2026 01:58:27 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4904add16b74063167764426f5f287db45734e0fd2e9744ef854eee6568c5519`  
		Last Modified: Tue, 04 Aug 2026 01:58:27 GMT  
		Size: 665.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ede6bfd7bb9127a94a569371dbe5c897d191196fa61c6c6b8194dc3911359d76`  
		Last Modified: Tue, 04 Aug 2026 01:58:28 GMT  
		Size: 923.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28380865c0654961021876046c61876930112058a20ed87748d3b0e3026cc51a`  
		Last Modified: Tue, 04 Aug 2026 01:58:29 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f0295d28a700cec457e9c814d8ae57a2fa77ee7c6611155fa36d0a659412002`  
		Last Modified: Tue, 04 Aug 2026 01:58:54 GMT  
		Size: 754.6 MB (754606437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `silverpeas:6.3.6` - unknown; unknown

```console
$ docker pull silverpeas@sha256:b4f3e5fa6a87bd7de4e7b77a686a3c67e8ea99f615067aa79efb72000c30bfcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 MB (26851876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3cc137a1570cf6bce6c195ca3ac6397dc102b7e3f9a31a49e9195592fcaa6e1`

```dockerfile
```

-	Layers:
	-	`sha256:4f0357c8d35f34fb4a1ce47e5c4f87b2dfc4feb0302754088ccdf4ab3553fdb8`  
		Last Modified: Tue, 04 Aug 2026 01:58:25 GMT  
		Size: 26.8 MB (26810874 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:25cee2bdbbc0de19b2cbc8830d2e30d1b4525d98f367dbee05c35e2f68406b70`  
		Last Modified: Tue, 04 Aug 2026 01:58:24 GMT  
		Size: 41.0 KB (41002 bytes)  
		MIME: application/vnd.in-toto+json

## `silverpeas:6.4`

```console
$ docker pull silverpeas@sha256:2bd7a97e6a5b5b83e857c54981e2f783b8f0a0ed3d17d283b5acc37d2d92f1f8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `silverpeas:6.4` - linux; amd64

```console
$ docker pull silverpeas@sha256:5afc3cc0e9c6173c4773f4dda0aae1d1e62b57ba09337e5265c8fc234e736540
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 GB (1818509015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2537edfdc45ddfc8d5862cb08ec91cf62e177ea212d4e8f5c8b81de9bdfdbebb`
-	Default Command: `["\/opt\/run.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:52:24 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Tue, 04 Aug 2026 01:52:24 GMT
ENV TERM=xterm
# Tue, 04 Aug 2026 01:52:24 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends tzdata   && apt-get install -y --no-install-recommends     apt-utils     iputils-ping     curl     wget     vim     locales     language-pack-en     language-pack-fr     procps     net-tools     zip     unzip     openjdk-11-jdk     ffmpeg     imagemagick     ghostscript     libreoffice     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f # buildkit
# Tue, 04 Aug 2026 01:52:27 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 swftools-bin-0.9.2.zip' | sha256sum -c --status -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip # buildkit
# Tue, 04 Aug 2026 01:52:29 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 pdf2json-bin-0.68.zip' | sha256sum -c --status -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip # buildkit
# Tue, 04 Aug 2026 01:52:29 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Tue, 04 Aug 2026 01:52:51 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE} # buildkit
# Tue, 04 Aug 2026 01:52:51 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:52:51 GMT
ENV LANGUAGE=en_US.UTF-8
# Tue, 04 Aug 2026 01:52:51 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:52:51 GMT
ENV PING_ON=1
# Tue, 04 Aug 2026 01:52:51 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home # buildkit
# Tue, 04 Aug 2026 01:52:52 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home # buildkit
# Tue, 04 Aug 2026 01:52:52 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 04 Aug 2026 01:52:52 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Tue, 04 Aug 2026 01:52:52 GMT
ENV JBOSS_HOME=/opt/wildfly
# Tue, 04 Aug 2026 01:52:52 GMT
ENV SILVERPEAS_VERSION=6.4.7
# Tue, 04 Aug 2026 01:52:52 GMT
ENV WILDFLY_VERSION=26.1.3
# Tue, 04 Aug 2026 01:52:52 GMT
LABEL name=Silverpeas 6.4.7 description=Image to install and to run Silverpeas 6.4.7 vendor=Silverpeas version=6.4.7 build=1
# Tue, 04 Aug 2026 01:53:16 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver keys.openpgp.org --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && wget -nc https://www.silverpeas.org/files/oak-migrate.zip   && echo '87009e55520e74b5d2a386f4ebc843ee43cd1f25ca5138f342a94a31add3cfbd oak-migrate.zip' | sha256sum -c --status -   && mkdir -p /opt/oak-migration   && unzip oak-migrate.zip -d /opt/oak-migration/   && chmod +x /opt/oak-migration/oak-migrate.sh   && rm *.zip   && mkdir -p /root/.m2 # buildkit
# Tue, 04 Aug 2026 01:53:16 GMT
COPY src/settings.xml /root/.m2/ # buildkit
# Tue, 04 Aug 2026 01:53:16 GMT
COPY src/silverpeas.gradle /opt/silverpeas/bin/ # buildkit
# Tue, 04 Aug 2026 01:53:16 GMT
WORKDIR /opt/silverpeas/bin
# Tue, 04 Aug 2026 01:53:16 GMT
COPY src/run.sh /opt/ # buildkit
# Tue, 04 Aug 2026 01:53:16 GMT
COPY src/converter.groovy /opt/silverpeas/configuration/silverpeas/ # buildkit
# Tue, 04 Aug 2026 01:54:35 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN set -eux;   sed -i -e "s/SILVERPEAS_VERSION/${SILVERPEAS_VERSION}/g" ${SILVERPEAS_HOME}/bin/silverpeas.gradle;   echo "Construct Silverpeas ${SILVERPEAS_VERSION}";   ./silverpeas assemble || (cat ../log/build-* && exit 1);   rm ../log/build-*;   touch .install; # buildkit
# Tue, 04 Aug 2026 01:54:35 GMT
EXPOSE map[8000/tcp:{} 9990/tcp:{}]
# Tue, 04 Aug 2026 01:54:35 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/properties /opt/silverpeas/xmlcomponents/workflows]
# Tue, 04 Aug 2026 01:54:35 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dc330d58b30eea10bedd017621a9cf647fc83fa46ab2d6ec51c52c5a013ffea`  
		Last Modified: Tue, 04 Aug 2026 01:56:17 GMT  
		Size: 494.8 MB (494803611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:944cbf422aca58601b347e687f6705a0ebf02b06ff269e23cf70c484ec17bbd6`  
		Last Modified: Tue, 04 Aug 2026 01:56:00 GMT  
		Size: 4.0 MB (3994010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d14264795bde2cdfba86bdc7d7779635d82db6bf4c741cca7cc284d133b99d17`  
		Last Modified: Tue, 04 Aug 2026 01:56:01 GMT  
		Size: 7.1 MB (7146624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0adf5caa4d210ba1ce4f6909ef0e80606a23705ecd546312f19dc086abaa0664`  
		Last Modified: Tue, 04 Aug 2026 01:56:00 GMT  
		Size: 2.5 MB (2538612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ece9ca4a4b2bc7d9cfd58e7d4dccf804f53065982056308a0369938e4c32d54`  
		Last Modified: Tue, 04 Aug 2026 01:56:02 GMT  
		Size: 234.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:491fef482ba9619fecf6a2f10f63defb35c72652c4e9ebba2d41d640ffc6cff1`  
		Last Modified: Tue, 04 Aug 2026 01:56:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:999a5ec1bb89941102c0d596a7fd07aebff15b09dad8a558715d5fb392d1eecb`  
		Last Modified: Tue, 04 Aug 2026 01:56:13 GMT  
		Size: 269.1 MB (269106956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84f00cda452503318141c468beb6a5914f58b9b5da2029d7aee229ed511e2870`  
		Last Modified: Tue, 04 Aug 2026 01:56:03 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3be65bcb01564d5f5ea5c302b87aef0fdb0395c4111e62f09dc7076426a67246`  
		Last Modified: Tue, 04 Aug 2026 01:56:03 GMT  
		Size: 663.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35cab7640a2e5c06a8c412b7d2d9180b08aca976d6927a68f24363ae7120abae`  
		Last Modified: Tue, 04 Aug 2026 01:56:04 GMT  
		Size: 1.4 KB (1448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7f5de077b056e3e1e994666203e552ca67cce4025af7469e62406fa972bc0f1`  
		Last Modified: Tue, 04 Aug 2026 01:56:04 GMT  
		Size: 390.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd83a6ddeae57a444b841e3d9a7c19ba3dd0adfc9851698768a7dca5bf739eb2`  
		Last Modified: Tue, 04 Aug 2026 01:56:29 GMT  
		Size: 1.0 GB (1011179383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `silverpeas:6.4` - unknown; unknown

```console
$ docker pull silverpeas@sha256:90d37ecc87d5ad43aff5bc09e256393ab98e82f4844bccbbf167b2698c08d210
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16637460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b96cd8f64d8d5f268da28f05a2e1032ea8e2f83768123a67e31f64179b209f1c`

```dockerfile
```

-	Layers:
	-	`sha256:f34d162e5cdffce44e9d2e541c14ccec2270987c2cde829dd67d68011c5303d5`  
		Last Modified: Tue, 04 Aug 2026 01:56:01 GMT  
		Size: 16.6 MB (16594654 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:760e854eacc040fe81bab2391f71fc7716b49557dd2dbd1d755c09f146222a22`  
		Last Modified: Tue, 04 Aug 2026 01:56:00 GMT  
		Size: 42.8 KB (42806 bytes)  
		MIME: application/vnd.in-toto+json

## `silverpeas:6.4.7`

```console
$ docker pull silverpeas@sha256:2bd7a97e6a5b5b83e857c54981e2f783b8f0a0ed3d17d283b5acc37d2d92f1f8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `silverpeas:6.4.7` - linux; amd64

```console
$ docker pull silverpeas@sha256:5afc3cc0e9c6173c4773f4dda0aae1d1e62b57ba09337e5265c8fc234e736540
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 GB (1818509015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2537edfdc45ddfc8d5862cb08ec91cf62e177ea212d4e8f5c8b81de9bdfdbebb`
-	Default Command: `["\/opt\/run.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:52:24 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Tue, 04 Aug 2026 01:52:24 GMT
ENV TERM=xterm
# Tue, 04 Aug 2026 01:52:24 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends tzdata   && apt-get install -y --no-install-recommends     apt-utils     iputils-ping     curl     wget     vim     locales     language-pack-en     language-pack-fr     procps     net-tools     zip     unzip     openjdk-11-jdk     ffmpeg     imagemagick     ghostscript     libreoffice     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f # buildkit
# Tue, 04 Aug 2026 01:52:27 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 swftools-bin-0.9.2.zip' | sha256sum -c --status -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip # buildkit
# Tue, 04 Aug 2026 01:52:29 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 pdf2json-bin-0.68.zip' | sha256sum -c --status -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip # buildkit
# Tue, 04 Aug 2026 01:52:29 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Tue, 04 Aug 2026 01:52:51 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE} # buildkit
# Tue, 04 Aug 2026 01:52:51 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:52:51 GMT
ENV LANGUAGE=en_US.UTF-8
# Tue, 04 Aug 2026 01:52:51 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:52:51 GMT
ENV PING_ON=1
# Tue, 04 Aug 2026 01:52:51 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home # buildkit
# Tue, 04 Aug 2026 01:52:52 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home # buildkit
# Tue, 04 Aug 2026 01:52:52 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 04 Aug 2026 01:52:52 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Tue, 04 Aug 2026 01:52:52 GMT
ENV JBOSS_HOME=/opt/wildfly
# Tue, 04 Aug 2026 01:52:52 GMT
ENV SILVERPEAS_VERSION=6.4.7
# Tue, 04 Aug 2026 01:52:52 GMT
ENV WILDFLY_VERSION=26.1.3
# Tue, 04 Aug 2026 01:52:52 GMT
LABEL name=Silverpeas 6.4.7 description=Image to install and to run Silverpeas 6.4.7 vendor=Silverpeas version=6.4.7 build=1
# Tue, 04 Aug 2026 01:53:16 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver keys.openpgp.org --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && wget -nc https://www.silverpeas.org/files/oak-migrate.zip   && echo '87009e55520e74b5d2a386f4ebc843ee43cd1f25ca5138f342a94a31add3cfbd oak-migrate.zip' | sha256sum -c --status -   && mkdir -p /opt/oak-migration   && unzip oak-migrate.zip -d /opt/oak-migration/   && chmod +x /opt/oak-migration/oak-migrate.sh   && rm *.zip   && mkdir -p /root/.m2 # buildkit
# Tue, 04 Aug 2026 01:53:16 GMT
COPY src/settings.xml /root/.m2/ # buildkit
# Tue, 04 Aug 2026 01:53:16 GMT
COPY src/silverpeas.gradle /opt/silverpeas/bin/ # buildkit
# Tue, 04 Aug 2026 01:53:16 GMT
WORKDIR /opt/silverpeas/bin
# Tue, 04 Aug 2026 01:53:16 GMT
COPY src/run.sh /opt/ # buildkit
# Tue, 04 Aug 2026 01:53:16 GMT
COPY src/converter.groovy /opt/silverpeas/configuration/silverpeas/ # buildkit
# Tue, 04 Aug 2026 01:54:35 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN set -eux;   sed -i -e "s/SILVERPEAS_VERSION/${SILVERPEAS_VERSION}/g" ${SILVERPEAS_HOME}/bin/silverpeas.gradle;   echo "Construct Silverpeas ${SILVERPEAS_VERSION}";   ./silverpeas assemble || (cat ../log/build-* && exit 1);   rm ../log/build-*;   touch .install; # buildkit
# Tue, 04 Aug 2026 01:54:35 GMT
EXPOSE map[8000/tcp:{} 9990/tcp:{}]
# Tue, 04 Aug 2026 01:54:35 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/properties /opt/silverpeas/xmlcomponents/workflows]
# Tue, 04 Aug 2026 01:54:35 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dc330d58b30eea10bedd017621a9cf647fc83fa46ab2d6ec51c52c5a013ffea`  
		Last Modified: Tue, 04 Aug 2026 01:56:17 GMT  
		Size: 494.8 MB (494803611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:944cbf422aca58601b347e687f6705a0ebf02b06ff269e23cf70c484ec17bbd6`  
		Last Modified: Tue, 04 Aug 2026 01:56:00 GMT  
		Size: 4.0 MB (3994010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d14264795bde2cdfba86bdc7d7779635d82db6bf4c741cca7cc284d133b99d17`  
		Last Modified: Tue, 04 Aug 2026 01:56:01 GMT  
		Size: 7.1 MB (7146624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0adf5caa4d210ba1ce4f6909ef0e80606a23705ecd546312f19dc086abaa0664`  
		Last Modified: Tue, 04 Aug 2026 01:56:00 GMT  
		Size: 2.5 MB (2538612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ece9ca4a4b2bc7d9cfd58e7d4dccf804f53065982056308a0369938e4c32d54`  
		Last Modified: Tue, 04 Aug 2026 01:56:02 GMT  
		Size: 234.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:491fef482ba9619fecf6a2f10f63defb35c72652c4e9ebba2d41d640ffc6cff1`  
		Last Modified: Tue, 04 Aug 2026 01:56:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:999a5ec1bb89941102c0d596a7fd07aebff15b09dad8a558715d5fb392d1eecb`  
		Last Modified: Tue, 04 Aug 2026 01:56:13 GMT  
		Size: 269.1 MB (269106956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84f00cda452503318141c468beb6a5914f58b9b5da2029d7aee229ed511e2870`  
		Last Modified: Tue, 04 Aug 2026 01:56:03 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3be65bcb01564d5f5ea5c302b87aef0fdb0395c4111e62f09dc7076426a67246`  
		Last Modified: Tue, 04 Aug 2026 01:56:03 GMT  
		Size: 663.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35cab7640a2e5c06a8c412b7d2d9180b08aca976d6927a68f24363ae7120abae`  
		Last Modified: Tue, 04 Aug 2026 01:56:04 GMT  
		Size: 1.4 KB (1448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7f5de077b056e3e1e994666203e552ca67cce4025af7469e62406fa972bc0f1`  
		Last Modified: Tue, 04 Aug 2026 01:56:04 GMT  
		Size: 390.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd83a6ddeae57a444b841e3d9a7c19ba3dd0adfc9851698768a7dca5bf739eb2`  
		Last Modified: Tue, 04 Aug 2026 01:56:29 GMT  
		Size: 1.0 GB (1011179383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `silverpeas:6.4.7` - unknown; unknown

```console
$ docker pull silverpeas@sha256:90d37ecc87d5ad43aff5bc09e256393ab98e82f4844bccbbf167b2698c08d210
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16637460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b96cd8f64d8d5f268da28f05a2e1032ea8e2f83768123a67e31f64179b209f1c`

```dockerfile
```

-	Layers:
	-	`sha256:f34d162e5cdffce44e9d2e541c14ccec2270987c2cde829dd67d68011c5303d5`  
		Last Modified: Tue, 04 Aug 2026 01:56:01 GMT  
		Size: 16.6 MB (16594654 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:760e854eacc040fe81bab2391f71fc7716b49557dd2dbd1d755c09f146222a22`  
		Last Modified: Tue, 04 Aug 2026 01:56:00 GMT  
		Size: 42.8 KB (42806 bytes)  
		MIME: application/vnd.in-toto+json

## `silverpeas:latest`

```console
$ docker pull silverpeas@sha256:2bd7a97e6a5b5b83e857c54981e2f783b8f0a0ed3d17d283b5acc37d2d92f1f8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `silverpeas:latest` - linux; amd64

```console
$ docker pull silverpeas@sha256:5afc3cc0e9c6173c4773f4dda0aae1d1e62b57ba09337e5265c8fc234e736540
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 GB (1818509015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2537edfdc45ddfc8d5862cb08ec91cf62e177ea212d4e8f5c8b81de9bdfdbebb`
-	Default Command: `["\/opt\/run.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:52:24 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Tue, 04 Aug 2026 01:52:24 GMT
ENV TERM=xterm
# Tue, 04 Aug 2026 01:52:24 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends tzdata   && apt-get install -y --no-install-recommends     apt-utils     iputils-ping     curl     wget     vim     locales     language-pack-en     language-pack-fr     procps     net-tools     zip     unzip     openjdk-11-jdk     ffmpeg     imagemagick     ghostscript     libreoffice     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f # buildkit
# Tue, 04 Aug 2026 01:52:27 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 swftools-bin-0.9.2.zip' | sha256sum -c --status -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip # buildkit
# Tue, 04 Aug 2026 01:52:29 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 pdf2json-bin-0.68.zip' | sha256sum -c --status -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip # buildkit
# Tue, 04 Aug 2026 01:52:29 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Tue, 04 Aug 2026 01:52:51 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE} # buildkit
# Tue, 04 Aug 2026 01:52:51 GMT
ENV LANG=en_US.UTF-8
# Tue, 04 Aug 2026 01:52:51 GMT
ENV LANGUAGE=en_US.UTF-8
# Tue, 04 Aug 2026 01:52:51 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:52:51 GMT
ENV PING_ON=1
# Tue, 04 Aug 2026 01:52:51 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home # buildkit
# Tue, 04 Aug 2026 01:52:52 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home # buildkit
# Tue, 04 Aug 2026 01:52:52 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 04 Aug 2026 01:52:52 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Tue, 04 Aug 2026 01:52:52 GMT
ENV JBOSS_HOME=/opt/wildfly
# Tue, 04 Aug 2026 01:52:52 GMT
ENV SILVERPEAS_VERSION=6.4.7
# Tue, 04 Aug 2026 01:52:52 GMT
ENV WILDFLY_VERSION=26.1.3
# Tue, 04 Aug 2026 01:52:52 GMT
LABEL name=Silverpeas 6.4.7 description=Image to install and to run Silverpeas 6.4.7 vendor=Silverpeas version=6.4.7 build=1
# Tue, 04 Aug 2026 01:53:16 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver keys.openpgp.org --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && wget -nc https://www.silverpeas.org/files/oak-migrate.zip   && echo '87009e55520e74b5d2a386f4ebc843ee43cd1f25ca5138f342a94a31add3cfbd oak-migrate.zip' | sha256sum -c --status -   && mkdir -p /opt/oak-migration   && unzip oak-migrate.zip -d /opt/oak-migration/   && chmod +x /opt/oak-migration/oak-migrate.sh   && rm *.zip   && mkdir -p /root/.m2 # buildkit
# Tue, 04 Aug 2026 01:53:16 GMT
COPY src/settings.xml /root/.m2/ # buildkit
# Tue, 04 Aug 2026 01:53:16 GMT
COPY src/silverpeas.gradle /opt/silverpeas/bin/ # buildkit
# Tue, 04 Aug 2026 01:53:16 GMT
WORKDIR /opt/silverpeas/bin
# Tue, 04 Aug 2026 01:53:16 GMT
COPY src/run.sh /opt/ # buildkit
# Tue, 04 Aug 2026 01:53:16 GMT
COPY src/converter.groovy /opt/silverpeas/configuration/silverpeas/ # buildkit
# Tue, 04 Aug 2026 01:54:35 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN set -eux;   sed -i -e "s/SILVERPEAS_VERSION/${SILVERPEAS_VERSION}/g" ${SILVERPEAS_HOME}/bin/silverpeas.gradle;   echo "Construct Silverpeas ${SILVERPEAS_VERSION}";   ./silverpeas assemble || (cat ../log/build-* && exit 1);   rm ../log/build-*;   touch .install; # buildkit
# Tue, 04 Aug 2026 01:54:35 GMT
EXPOSE map[8000/tcp:{} 9990/tcp:{}]
# Tue, 04 Aug 2026 01:54:35 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/properties /opt/silverpeas/xmlcomponents/workflows]
# Tue, 04 Aug 2026 01:54:35 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dc330d58b30eea10bedd017621a9cf647fc83fa46ab2d6ec51c52c5a013ffea`  
		Last Modified: Tue, 04 Aug 2026 01:56:17 GMT  
		Size: 494.8 MB (494803611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:944cbf422aca58601b347e687f6705a0ebf02b06ff269e23cf70c484ec17bbd6`  
		Last Modified: Tue, 04 Aug 2026 01:56:00 GMT  
		Size: 4.0 MB (3994010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d14264795bde2cdfba86bdc7d7779635d82db6bf4c741cca7cc284d133b99d17`  
		Last Modified: Tue, 04 Aug 2026 01:56:01 GMT  
		Size: 7.1 MB (7146624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0adf5caa4d210ba1ce4f6909ef0e80606a23705ecd546312f19dc086abaa0664`  
		Last Modified: Tue, 04 Aug 2026 01:56:00 GMT  
		Size: 2.5 MB (2538612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ece9ca4a4b2bc7d9cfd58e7d4dccf804f53065982056308a0369938e4c32d54`  
		Last Modified: Tue, 04 Aug 2026 01:56:02 GMT  
		Size: 234.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:491fef482ba9619fecf6a2f10f63defb35c72652c4e9ebba2d41d640ffc6cff1`  
		Last Modified: Tue, 04 Aug 2026 01:56:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:999a5ec1bb89941102c0d596a7fd07aebff15b09dad8a558715d5fb392d1eecb`  
		Last Modified: Tue, 04 Aug 2026 01:56:13 GMT  
		Size: 269.1 MB (269106956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84f00cda452503318141c468beb6a5914f58b9b5da2029d7aee229ed511e2870`  
		Last Modified: Tue, 04 Aug 2026 01:56:03 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3be65bcb01564d5f5ea5c302b87aef0fdb0395c4111e62f09dc7076426a67246`  
		Last Modified: Tue, 04 Aug 2026 01:56:03 GMT  
		Size: 663.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35cab7640a2e5c06a8c412b7d2d9180b08aca976d6927a68f24363ae7120abae`  
		Last Modified: Tue, 04 Aug 2026 01:56:04 GMT  
		Size: 1.4 KB (1448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7f5de077b056e3e1e994666203e552ca67cce4025af7469e62406fa972bc0f1`  
		Last Modified: Tue, 04 Aug 2026 01:56:04 GMT  
		Size: 390.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd83a6ddeae57a444b841e3d9a7c19ba3dd0adfc9851698768a7dca5bf739eb2`  
		Last Modified: Tue, 04 Aug 2026 01:56:29 GMT  
		Size: 1.0 GB (1011179383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `silverpeas:latest` - unknown; unknown

```console
$ docker pull silverpeas@sha256:90d37ecc87d5ad43aff5bc09e256393ab98e82f4844bccbbf167b2698c08d210
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16637460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b96cd8f64d8d5f268da28f05a2e1032ea8e2f83768123a67e31f64179b209f1c`

```dockerfile
```

-	Layers:
	-	`sha256:f34d162e5cdffce44e9d2e541c14ccec2270987c2cde829dd67d68011c5303d5`  
		Last Modified: Tue, 04 Aug 2026 01:56:01 GMT  
		Size: 16.6 MB (16594654 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:760e854eacc040fe81bab2391f71fc7716b49557dd2dbd1d755c09f146222a22`  
		Last Modified: Tue, 04 Aug 2026 01:56:00 GMT  
		Size: 42.8 KB (42806 bytes)  
		MIME: application/vnd.in-toto+json
