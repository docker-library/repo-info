## `silverpeas:latest`

```console
$ docker pull silverpeas@sha256:84e0bdd4e59812477719da1fa16ad77ffb774a1c942eb7ca7697db08767639b7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `silverpeas:latest` - linux; amd64

```console
$ docker pull silverpeas@sha256:e6977faa80cc0c6cc095a21a8175ab2a64a247953b21d5b9649a67bbf5f0201c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 GB (1819144745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c03ee8cc45da13bff8f8992577d0c86993c95a7d910715d8cd323339144afcc8`
-	Default Command: `["\/opt\/run.sh"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:46:41 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Wed, 11 Nov 2026 23:46:41 GMT
ENV TERM=xterm
# Wed, 11 Nov 2026 23:46:41 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends tzdata   && apt-get install -y --no-install-recommends     apt-utils     iputils-ping     curl     wget     vim     locales     language-pack-en     language-pack-fr     procps     net-tools     zip     unzip     openjdk-11-jdk     ffmpeg     imagemagick     ghostscript     libreoffice     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f # buildkit
# Wed, 11 Nov 2026 23:46:44 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 swftools-bin-0.9.2.zip' | sha256sum -c --status -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip # buildkit
# Wed, 11 Nov 2026 23:46:46 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 pdf2json-bin-0.68.zip' | sha256sum -c --status -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip # buildkit
# Wed, 11 Nov 2026 23:46:46 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Wed, 11 Nov 2026 23:47:09 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE} # buildkit
# Wed, 11 Nov 2026 23:47:09 GMT
ENV LANG=en_US.UTF-8
# Wed, 11 Nov 2026 23:47:09 GMT
ENV LANGUAGE=en_US.UTF-8
# Wed, 11 Nov 2026 23:47:09 GMT
ENV LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:47:09 GMT
ENV PING_ON=1
# Wed, 11 Nov 2026 23:47:09 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home # buildkit
# Wed, 11 Nov 2026 23:47:10 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home # buildkit
# Wed, 11 Nov 2026 23:47:10 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 11 Nov 2026 23:47:10 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Wed, 11 Nov 2026 23:47:10 GMT
ENV JBOSS_HOME=/opt/wildfly
# Wed, 11 Nov 2026 23:47:10 GMT
ENV SILVERPEAS_VERSION=6.4.8
# Wed, 11 Nov 2026 23:47:10 GMT
ENV WILDFLY_VERSION=26.1.3
# Wed, 11 Nov 2026 23:47:10 GMT
LABEL name=Silverpeas 6.4.8 description=Image to install and to run Silverpeas 6.4.8 vendor=Silverpeas version=6.4.8 build=1
# Wed, 11 Nov 2026 23:47:33 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver keys.openpgp.org --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && wget -nc https://www.silverpeas.org/files/oak-migrate.zip   && echo '87009e55520e74b5d2a386f4ebc843ee43cd1f25ca5138f342a94a31add3cfbd oak-migrate.zip' | sha256sum -c --status -   && mkdir -p /opt/oak-migration   && unzip oak-migrate.zip -d /opt/oak-migration/   && chmod +x /opt/oak-migration/oak-migrate.sh   && rm *.zip   && mkdir -p /root/.m2 # buildkit
# Wed, 11 Nov 2026 23:47:33 GMT
COPY src/settings.xml /root/.m2/ # buildkit
# Wed, 11 Nov 2026 23:47:33 GMT
COPY src/silverpeas.gradle /opt/silverpeas/bin/ # buildkit
# Wed, 11 Nov 2026 23:47:33 GMT
WORKDIR /opt/silverpeas/bin
# Wed, 11 Nov 2026 23:47:33 GMT
COPY src/run.sh /opt/ # buildkit
# Wed, 11 Nov 2026 23:47:33 GMT
COPY src/converter.groovy /opt/silverpeas/configuration/silverpeas/ # buildkit
# Wed, 11 Nov 2026 23:48:59 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN set -eux;   sed -i -e "s/SILVERPEAS_VERSION/${SILVERPEAS_VERSION}/g" ${SILVERPEAS_HOME}/bin/silverpeas.gradle;   echo "Construct Silverpeas ${SILVERPEAS_VERSION}";   ./silverpeas assemble || (cat ../log/build-* && exit 1);   rm ../log/build-*;   touch .install; # buildkit
# Wed, 11 Nov 2026 23:48:59 GMT
EXPOSE map[8000/tcp:{} 9990/tcp:{}]
# Wed, 11 Nov 2026 23:48:59 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/properties /opt/silverpeas/xmlcomponents/workflows]
# Wed, 11 Nov 2026 23:48:59 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7db493149888709e0c6b513f35808b2a090b729a2963d11021ebc780038b968`  
		Last Modified: Wed, 11 Nov 2026 23:51:08 GMT  
		Size: 495.1 MB (495053096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96b8a43f2d2af3af98a88e47d44c4f342a85bb724c47fa5e7e88c625b944b670`  
		Last Modified: Wed, 11 Nov 2026 23:50:27 GMT  
		Size: 4.0 MB (3994014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66f52bb76b390aa8fb6d1acb7022ba9c2f89552aed93fc42e4098f4950bf5a27`  
		Last Modified: Wed, 11 Nov 2026 23:50:27 GMT  
		Size: 7.1 MB (7146618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3f8301f92d693f12333925dec8eea0c57c5c3f20c1dcacfeb2a1c2981ef844d`  
		Last Modified: Wed, 11 Nov 2026 23:50:26 GMT  
		Size: 2.5 MB (2538618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51a4672f9533a3826c9034aa5b3b284ae3c2ad1e8e7f88534bf0c98ea00dba29`  
		Last Modified: Wed, 11 Nov 2026 23:50:28 GMT  
		Size: 234.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fa604e040bd52fb7fec30582b437803fde7c3340c517c313fbffece84e5f27a`  
		Last Modified: Wed, 11 Nov 2026 23:50:28 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ced1bdcbb72bbdd07933eb48cfa00525ba4f3751a84b75dd37e5ff5398d41570`  
		Last Modified: Wed, 11 Nov 2026 23:50:52 GMT  
		Size: 269.1 MB (269106990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3f22cb1564e5a9739ced4af0e48750d06b6698aad276213ae98c05f32ff5142`  
		Last Modified: Wed, 11 Nov 2026 23:50:29 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fde6e071f2b35f36de51fca7bf0ad3dcec82b92a9c49ddde29791e7dcf4ff31c`  
		Last Modified: Wed, 11 Nov 2026 23:50:29 GMT  
		Size: 665.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bf42901b0e819b3282583421314ed5bf4c6ba0bbfe3ca72e8c907a50d238d81`  
		Last Modified: Wed, 11 Nov 2026 23:50:31 GMT  
		Size: 1.4 KB (1449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce7a334e3f48bc792bb83a70125ef878c2e04cad5074ceeb239c37b4ffed2693`  
		Last Modified: Wed, 11 Nov 2026 23:50:31 GMT  
		Size: 387.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7bb05e82c0837a0905dc32494bb38e50add15f41174e2ff51f0fd3be0905d73`  
		Last Modified: Wed, 11 Nov 2026 23:51:23 GMT  
		Size: 1.0 GB (1011232574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `silverpeas:latest` - unknown; unknown

```console
$ docker pull silverpeas@sha256:198aa68f3afbf8342d2f0dc1d3b6ee9b83fedc587be3e09c7708ded522cfe06b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16637820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92b5c04db630b1fa5f81c3f5d408277d4ab3811a818092630c976faef12f7268`

```dockerfile
```

-	Layers:
	-	`sha256:6402d492649d40601c147f3b8cd711dd1cf444a2df13d8e9d4f2cb1a435c747f`  
		Last Modified: Wed, 11 Nov 2026 23:50:27 GMT  
		Size: 16.6 MB (16595314 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c4ab37caf8d1e7bce35aead0eb05a160034173b631ae7f538f9dbf3d730165a7`  
		Last Modified: Wed, 11 Nov 2026 23:50:26 GMT  
		Size: 42.5 KB (42506 bytes)  
		MIME: application/vnd.in-toto+json
