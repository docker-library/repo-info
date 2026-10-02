<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `silverpeas`

-	[`silverpeas:6.3`](#silverpeas63)
-	[`silverpeas:6.3.6`](#silverpeas636)
-	[`silverpeas:6.4.8`](#silverpeas648)
-	[`silverpeas:latest`](#silverpeaslatest)

## `silverpeas:6.3`

```console
$ docker pull silverpeas@sha256:1c84b416caa85d6c4c5625f4a86df8e4a3934e411e882c36fdd6187324106237
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `silverpeas:6.3` - linux; amd64

```console
$ docker pull silverpeas@sha256:998f2fe2c4dccca5ee061ee3d07ce9d1313e2df569bc18c999bf1653bd69d28a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.9 GB (1887539114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:846bbea5f82adc813b58380140e714c4302335dfb1e13d37ac6df30d5b757d81`
-	Default Command: `["\/opt\/run.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:42:12 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Fri, 02 Oct 2026 01:42:12 GMT
ENV TERM=xterm
# Fri, 02 Oct 2026 01:42:12 GMT
RUN apt-get update   && apt-get install -y tzdata   && apt-get install -y     apt-utils     iputils-ping     curl     wget     vim     locales     language-pack-en     language-pack-fr     procps     net-tools     zip     unzip     openjdk-11-jdk     ffmpeg     imagemagick     ghostscript     libreoffice     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f # buildkit
# Fri, 02 Oct 2026 01:42:14 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 *swftools-bin-0.9.2.zip' | sha256sum -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip # buildkit
# Fri, 02 Oct 2026 01:42:16 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 *pdf2json-bin-0.68.zip' | sha256sum -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip # buildkit
# Fri, 02 Oct 2026 01:42:16 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Fri, 02 Oct 2026 01:42:37 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE} # buildkit
# Fri, 02 Oct 2026 01:42:37 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 01:42:37 GMT
ENV LANGUAGE=en_US.UTF-8
# Fri, 02 Oct 2026 01:42:37 GMT
ENV LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:42:37 GMT
ENV PING_ON=1
# Fri, 02 Oct 2026 01:42:38 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home # buildkit
# Fri, 02 Oct 2026 01:42:38 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home # buildkit
# Fri, 02 Oct 2026 01:42:38 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 02 Oct 2026 01:42:38 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Fri, 02 Oct 2026 01:42:38 GMT
ENV JBOSS_HOME=/opt/wildfly
# Fri, 02 Oct 2026 01:42:38 GMT
ENV SILVERPEAS_VERSION=6.3.6
# Fri, 02 Oct 2026 01:42:38 GMT
ENV WILDFLY_VERSION=26.1.1
# Fri, 02 Oct 2026 01:42:38 GMT
LABEL name=Silverpeas 6.3.6 description=Image to install and to run Silverpeas 6.3.6 vendor=Silverpeas version=6.3.6 build=2
# Fri, 02 Oct 2026 01:42:56 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver keys.openpgp.org --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && rm *.zip   && mkdir -p /root/.m2 # buildkit
# Fri, 02 Oct 2026 01:42:56 GMT
COPY src/settings.xml /root/.m2/ # buildkit
# Fri, 02 Oct 2026 01:42:56 GMT
COPY src/silverpeas.gradle /opt/silverpeas/bin/ # buildkit
# Fri, 02 Oct 2026 01:42:56 GMT
WORKDIR /opt/silverpeas/bin
# Fri, 02 Oct 2026 01:42:56 GMT
COPY src/run.sh /opt/ # buildkit
# Fri, 02 Oct 2026 01:42:56 GMT
COPY src/converter.groovy /opt/silverpeas/configuration/silverpeas/ # buildkit
# Fri, 02 Oct 2026 01:44:04 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN sed -i -e "s/SILVERPEAS_VERSION/${SILVERPEAS_VERSION}/g" ${SILVERPEAS_HOME}/bin/silverpeas.gradle   && ./silverpeas construct   && rm ../log/build-*   && touch .install # buildkit
# Fri, 02 Oct 2026 01:44:04 GMT
EXPOSE map[8000/tcp:{} 9990/tcp:{}]
# Fri, 02 Oct 2026 01:44:04 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/properties /opt/silverpeas/xmlcomponents/workflows]
# Fri, 02 Oct 2026 01:44:04 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e55ea2ce51f7f4f045fab27c1f00d571f87c7513f17f8d555ea2bb5879b0562`  
		Last Modified: Fri, 02 Oct 2026 01:46:36 GMT  
		Size: 871.7 MB (871658359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:410d60a79102c6ca73725d91eb8232b38b6627640874fa2d01e882f72238365a`  
		Last Modified: Fri, 02 Oct 2026 01:45:57 GMT  
		Size: 4.0 MB (3994009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:327b8376285dafb25af15f08180f5ded6e76e4b9118480b7d2ca0fa778c02369`  
		Last Modified: Fri, 02 Oct 2026 01:45:58 GMT  
		Size: 7.1 MB (7146629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ff8e09037c23bbe4926b16b1f24df4fec65488c41d6c951613d1a862b31fabe`  
		Last Modified: Fri, 02 Oct 2026 01:45:58 GMT  
		Size: 2.5 MB (2538612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30bf92b1285d2c19e54e13cc291a3474955043013e0bf977f416970ae258067d`  
		Last Modified: Fri, 02 Oct 2026 01:45:59 GMT  
		Size: 234.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2cb713208362e2c7475ccfc378399f761b08e7bc6dd7633479e386102a2f61e`  
		Last Modified: Fri, 02 Oct 2026 01:45:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ac998088476d322bec6f4d64248b5fcfb1455aaa8135f1bb42719c8456844e0`  
		Last Modified: Fri, 02 Oct 2026 01:46:09 GMT  
		Size: 217.8 MB (217843270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8841d7aa6ba04531fe6396c5da0c599ed07f28557e82fda78fef1e559c1163e5`  
		Last Modified: Fri, 02 Oct 2026 01:46:00 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cece4b92fb5ebba45a703767341f07ea6d5636d06a142ba5cb6df78b3004c214`  
		Last Modified: Fri, 02 Oct 2026 01:46:00 GMT  
		Size: 665.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03e76a7acc8295c53b444aac8c8c651ecc2d6dc2311b505633ef657b278b5e2a`  
		Last Modified: Fri, 02 Oct 2026 01:46:01 GMT  
		Size: 921.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c9402573ec2665aa526d6540e63f8d976a8670c86611bcf46193c0864a5084a`  
		Last Modified: Fri, 02 Oct 2026 01:46:02 GMT  
		Size: 385.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef70527b718b77665e116ba891b98ac2c649ad9224a59796ba4c21e9eb071436`  
		Last Modified: Fri, 02 Oct 2026 01:46:37 GMT  
		Size: 754.6 MB (754603836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `silverpeas:6.3` - unknown; unknown

```console
$ docker pull silverpeas@sha256:34a82e0417257f5b75497a1a1fe3b9bb8cc20ac00a56124c6fba8e145f54386b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 MB (26854046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b20743c265ba6faef9db12481a27bce22ead276689b26f30bbea9d83f154e700`

```dockerfile
```

-	Layers:
	-	`sha256:aadf2ef37a3afc97ff6bc0ba72179e80d4c128239b5bf39d75295f4c5b32d4d4`  
		Last Modified: Fri, 02 Oct 2026 01:45:59 GMT  
		Size: 26.8 MB (26813044 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65dae200f2a748621c413b666c0bb73d908a392ea7103ee8efe0284ad69b6797`  
		Last Modified: Fri, 02 Oct 2026 01:45:57 GMT  
		Size: 41.0 KB (41002 bytes)  
		MIME: application/vnd.in-toto+json

## `silverpeas:6.3.6`

```console
$ docker pull silverpeas@sha256:1c84b416caa85d6c4c5625f4a86df8e4a3934e411e882c36fdd6187324106237
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `silverpeas:6.3.6` - linux; amd64

```console
$ docker pull silverpeas@sha256:998f2fe2c4dccca5ee061ee3d07ce9d1313e2df569bc18c999bf1653bd69d28a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.9 GB (1887539114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:846bbea5f82adc813b58380140e714c4302335dfb1e13d37ac6df30d5b757d81`
-	Default Command: `["\/opt\/run.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:42:12 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Fri, 02 Oct 2026 01:42:12 GMT
ENV TERM=xterm
# Fri, 02 Oct 2026 01:42:12 GMT
RUN apt-get update   && apt-get install -y tzdata   && apt-get install -y     apt-utils     iputils-ping     curl     wget     vim     locales     language-pack-en     language-pack-fr     procps     net-tools     zip     unzip     openjdk-11-jdk     ffmpeg     imagemagick     ghostscript     libreoffice     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f # buildkit
# Fri, 02 Oct 2026 01:42:14 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 *swftools-bin-0.9.2.zip' | sha256sum -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip # buildkit
# Fri, 02 Oct 2026 01:42:16 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 *pdf2json-bin-0.68.zip' | sha256sum -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip # buildkit
# Fri, 02 Oct 2026 01:42:16 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Fri, 02 Oct 2026 01:42:37 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE} # buildkit
# Fri, 02 Oct 2026 01:42:37 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 01:42:37 GMT
ENV LANGUAGE=en_US.UTF-8
# Fri, 02 Oct 2026 01:42:37 GMT
ENV LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:42:37 GMT
ENV PING_ON=1
# Fri, 02 Oct 2026 01:42:38 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home # buildkit
# Fri, 02 Oct 2026 01:42:38 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home # buildkit
# Fri, 02 Oct 2026 01:42:38 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 02 Oct 2026 01:42:38 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Fri, 02 Oct 2026 01:42:38 GMT
ENV JBOSS_HOME=/opt/wildfly
# Fri, 02 Oct 2026 01:42:38 GMT
ENV SILVERPEAS_VERSION=6.3.6
# Fri, 02 Oct 2026 01:42:38 GMT
ENV WILDFLY_VERSION=26.1.1
# Fri, 02 Oct 2026 01:42:38 GMT
LABEL name=Silverpeas 6.3.6 description=Image to install and to run Silverpeas 6.3.6 vendor=Silverpeas version=6.3.6 build=2
# Fri, 02 Oct 2026 01:42:56 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver keys.openpgp.org --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && rm *.zip   && mkdir -p /root/.m2 # buildkit
# Fri, 02 Oct 2026 01:42:56 GMT
COPY src/settings.xml /root/.m2/ # buildkit
# Fri, 02 Oct 2026 01:42:56 GMT
COPY src/silverpeas.gradle /opt/silverpeas/bin/ # buildkit
# Fri, 02 Oct 2026 01:42:56 GMT
WORKDIR /opt/silverpeas/bin
# Fri, 02 Oct 2026 01:42:56 GMT
COPY src/run.sh /opt/ # buildkit
# Fri, 02 Oct 2026 01:42:56 GMT
COPY src/converter.groovy /opt/silverpeas/configuration/silverpeas/ # buildkit
# Fri, 02 Oct 2026 01:44:04 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN sed -i -e "s/SILVERPEAS_VERSION/${SILVERPEAS_VERSION}/g" ${SILVERPEAS_HOME}/bin/silverpeas.gradle   && ./silverpeas construct   && rm ../log/build-*   && touch .install # buildkit
# Fri, 02 Oct 2026 01:44:04 GMT
EXPOSE map[8000/tcp:{} 9990/tcp:{}]
# Fri, 02 Oct 2026 01:44:04 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/properties /opt/silverpeas/xmlcomponents/workflows]
# Fri, 02 Oct 2026 01:44:04 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e55ea2ce51f7f4f045fab27c1f00d571f87c7513f17f8d555ea2bb5879b0562`  
		Last Modified: Fri, 02 Oct 2026 01:46:36 GMT  
		Size: 871.7 MB (871658359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:410d60a79102c6ca73725d91eb8232b38b6627640874fa2d01e882f72238365a`  
		Last Modified: Fri, 02 Oct 2026 01:45:57 GMT  
		Size: 4.0 MB (3994009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:327b8376285dafb25af15f08180f5ded6e76e4b9118480b7d2ca0fa778c02369`  
		Last Modified: Fri, 02 Oct 2026 01:45:58 GMT  
		Size: 7.1 MB (7146629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ff8e09037c23bbe4926b16b1f24df4fec65488c41d6c951613d1a862b31fabe`  
		Last Modified: Fri, 02 Oct 2026 01:45:58 GMT  
		Size: 2.5 MB (2538612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30bf92b1285d2c19e54e13cc291a3474955043013e0bf977f416970ae258067d`  
		Last Modified: Fri, 02 Oct 2026 01:45:59 GMT  
		Size: 234.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2cb713208362e2c7475ccfc378399f761b08e7bc6dd7633479e386102a2f61e`  
		Last Modified: Fri, 02 Oct 2026 01:45:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ac998088476d322bec6f4d64248b5fcfb1455aaa8135f1bb42719c8456844e0`  
		Last Modified: Fri, 02 Oct 2026 01:46:09 GMT  
		Size: 217.8 MB (217843270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8841d7aa6ba04531fe6396c5da0c599ed07f28557e82fda78fef1e559c1163e5`  
		Last Modified: Fri, 02 Oct 2026 01:46:00 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cece4b92fb5ebba45a703767341f07ea6d5636d06a142ba5cb6df78b3004c214`  
		Last Modified: Fri, 02 Oct 2026 01:46:00 GMT  
		Size: 665.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03e76a7acc8295c53b444aac8c8c651ecc2d6dc2311b505633ef657b278b5e2a`  
		Last Modified: Fri, 02 Oct 2026 01:46:01 GMT  
		Size: 921.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c9402573ec2665aa526d6540e63f8d976a8670c86611bcf46193c0864a5084a`  
		Last Modified: Fri, 02 Oct 2026 01:46:02 GMT  
		Size: 385.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef70527b718b77665e116ba891b98ac2c649ad9224a59796ba4c21e9eb071436`  
		Last Modified: Fri, 02 Oct 2026 01:46:37 GMT  
		Size: 754.6 MB (754603836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `silverpeas:6.3.6` - unknown; unknown

```console
$ docker pull silverpeas@sha256:34a82e0417257f5b75497a1a1fe3b9bb8cc20ac00a56124c6fba8e145f54386b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 MB (26854046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b20743c265ba6faef9db12481a27bce22ead276689b26f30bbea9d83f154e700`

```dockerfile
```

-	Layers:
	-	`sha256:aadf2ef37a3afc97ff6bc0ba72179e80d4c128239b5bf39d75295f4c5b32d4d4`  
		Last Modified: Fri, 02 Oct 2026 01:45:59 GMT  
		Size: 26.8 MB (26813044 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65dae200f2a748621c413b666c0bb73d908a392ea7103ee8efe0284ad69b6797`  
		Last Modified: Fri, 02 Oct 2026 01:45:57 GMT  
		Size: 41.0 KB (41002 bytes)  
		MIME: application/vnd.in-toto+json

## `silverpeas:6.4.8`

**does not exist** (yet?)

## `silverpeas:latest`

```console
$ docker pull silverpeas@sha256:f62318efa7f9f185a7115b18229dccb282f7576eb0d47db2633e49f8f5f4c57a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `silverpeas:latest` - linux; amd64

```console
$ docker pull silverpeas@sha256:1fb76e903a15daf0670c3a41bc18aa324ef3521f02b99153fc8a52473a49b6d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 GB (1818581862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12eadc1b222867d148159c34972911498d28ae63513706d2d705bdf1c56d7bc7`
-	Default Command: `["\/opt\/run.sh"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:41:27 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Fri, 02 Oct 2026 01:41:27 GMT
ENV TERM=xterm
# Fri, 02 Oct 2026 01:41:27 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends tzdata   && apt-get install -y --no-install-recommends     apt-utils     iputils-ping     curl     wget     vim     locales     language-pack-en     language-pack-fr     procps     net-tools     zip     unzip     openjdk-11-jdk     ffmpeg     imagemagick     ghostscript     libreoffice     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f # buildkit
# Fri, 02 Oct 2026 01:41:29 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 swftools-bin-0.9.2.zip' | sha256sum -c --status -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip # buildkit
# Fri, 02 Oct 2026 01:41:32 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 pdf2json-bin-0.68.zip' | sha256sum -c --status -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip # buildkit
# Fri, 02 Oct 2026 01:41:32 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Fri, 02 Oct 2026 01:41:54 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE} # buildkit
# Fri, 02 Oct 2026 01:41:54 GMT
ENV LANG=en_US.UTF-8
# Fri, 02 Oct 2026 01:41:54 GMT
ENV LANGUAGE=en_US.UTF-8
# Fri, 02 Oct 2026 01:41:54 GMT
ENV LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:41:54 GMT
ENV PING_ON=1
# Fri, 02 Oct 2026 01:41:54 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home # buildkit
# Fri, 02 Oct 2026 01:41:55 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home # buildkit
# Fri, 02 Oct 2026 01:41:55 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 02 Oct 2026 01:41:55 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Fri, 02 Oct 2026 01:41:55 GMT
ENV JBOSS_HOME=/opt/wildfly
# Fri, 02 Oct 2026 01:41:55 GMT
ENV SILVERPEAS_VERSION=6.4.7
# Fri, 02 Oct 2026 01:41:55 GMT
ENV WILDFLY_VERSION=26.1.3
# Fri, 02 Oct 2026 01:41:55 GMT
LABEL name=Silverpeas 6.4.7 description=Image to install and to run Silverpeas 6.4.7 vendor=Silverpeas version=6.4.7 build=1
# Fri, 02 Oct 2026 01:42:19 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver keys.openpgp.org --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && wget -nc https://www.silverpeas.org/files/oak-migrate.zip   && echo '87009e55520e74b5d2a386f4ebc843ee43cd1f25ca5138f342a94a31add3cfbd oak-migrate.zip' | sha256sum -c --status -   && mkdir -p /opt/oak-migration   && unzip oak-migrate.zip -d /opt/oak-migration/   && chmod +x /opt/oak-migration/oak-migrate.sh   && rm *.zip   && mkdir -p /root/.m2 # buildkit
# Fri, 02 Oct 2026 01:42:19 GMT
COPY src/settings.xml /root/.m2/ # buildkit
# Fri, 02 Oct 2026 01:42:19 GMT
COPY src/silverpeas.gradle /opt/silverpeas/bin/ # buildkit
# Fri, 02 Oct 2026 01:42:19 GMT
WORKDIR /opt/silverpeas/bin
# Fri, 02 Oct 2026 01:42:19 GMT
COPY src/run.sh /opt/ # buildkit
# Fri, 02 Oct 2026 01:42:19 GMT
COPY src/converter.groovy /opt/silverpeas/configuration/silverpeas/ # buildkit
# Fri, 02 Oct 2026 01:43:40 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN set -eux;   sed -i -e "s/SILVERPEAS_VERSION/${SILVERPEAS_VERSION}/g" ${SILVERPEAS_HOME}/bin/silverpeas.gradle;   echo "Construct Silverpeas ${SILVERPEAS_VERSION}";   ./silverpeas assemble || (cat ../log/build-* && exit 1);   rm ../log/build-*;   touch .install; # buildkit
# Fri, 02 Oct 2026 01:43:40 GMT
EXPOSE map[8000/tcp:{} 9990/tcp:{}]
# Fri, 02 Oct 2026 01:43:40 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/properties /opt/silverpeas/xmlcomponents/workflows]
# Fri, 02 Oct 2026 01:43:40 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:735a4663f3f021d8e3d864e96558179c1aa1e433d1109fded6458bc10833407b`  
		Last Modified: Fri, 02 Oct 2026 01:45:29 GMT  
		Size: 494.9 MB (494862288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b43d5c16fb992e89b01f6df9167b643b5ff4f14b4923fc49cf4e80a638af4ca`  
		Last Modified: Fri, 02 Oct 2026 01:45:09 GMT  
		Size: 4.0 MB (3994014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab6b08a9eff97ae7b331bfc938843074e0149b1e87c54e517cb4aa72c3b5d8dd`  
		Last Modified: Fri, 02 Oct 2026 01:45:09 GMT  
		Size: 7.1 MB (7146626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b9cb371331c107fd5fde10353e81046a30aeb7c1e0bb4f3cd06b45e398ac7f4`  
		Last Modified: Fri, 02 Oct 2026 01:45:09 GMT  
		Size: 2.5 MB (2538614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fee0df555d3fcb2f5cf989262dd90e2308f682694f8ee66352ceb2f5798429df`  
		Last Modified: Fri, 02 Oct 2026 01:45:10 GMT  
		Size: 235.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66e0ce1e64e0d08aedda3aa730647b4167aec1263d754ddbab1c9ba195b44ac4`  
		Last Modified: Fri, 02 Oct 2026 01:45:10 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55e53520244e73cf211beb2eb5e1b7a5170790285415e3a8133ab6cbd69b3e5c`  
		Last Modified: Fri, 02 Oct 2026 01:45:24 GMT  
		Size: 269.1 MB (269106985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7e6147b85d66571859815efd2cb87f8826e27bf43320653fc9dc6e6e8079dc3`  
		Last Modified: Fri, 02 Oct 2026 01:45:12 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17d318873d0bf65822dbb0b0c2dc6fa1406e0dd75242e108995063f17266ad4e`  
		Last Modified: Fri, 02 Oct 2026 01:45:12 GMT  
		Size: 663.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfee4ae361915d0aba1c3cbd6ed4c00f69751b907c942cdb602a448dc3b8155d`  
		Last Modified: Fri, 02 Oct 2026 01:45:13 GMT  
		Size: 1.4 KB (1447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a1975c0acdd3442fd0db97e4bf660deafc8655ef30c1158d9e06132a6ec7a58`  
		Last Modified: Fri, 02 Oct 2026 01:45:13 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f837a1840e7402d021f7506b4f84b777efa22db1eedfcdaf3e546cd0430b578c`  
		Last Modified: Fri, 02 Oct 2026 01:45:42 GMT  
		Size: 1.0 GB (1011178406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `silverpeas:latest` - unknown; unknown

```console
$ docker pull silverpeas@sha256:d65f4a90753b5d56cf156c97fcf989bff94f3270df6d736c2fa1bcfb78d65fc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16639514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e019ce7bf224713d769d879b3085761004a00920258aab8709cb96594758e2a`

```dockerfile
```

-	Layers:
	-	`sha256:0a9f414855121f3488547a22609c48a9ea1eaf7e16291669748af3e927297542`  
		Last Modified: Fri, 02 Oct 2026 01:45:10 GMT  
		Size: 16.6 MB (16596708 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4a829fd1070a11e7c0a1a3a4bf8c7669e2a9ccf5837da73e081e6ce88d8e74e`  
		Last Modified: Fri, 02 Oct 2026 01:45:08 GMT  
		Size: 42.8 KB (42806 bytes)  
		MIME: application/vnd.in-toto+json
