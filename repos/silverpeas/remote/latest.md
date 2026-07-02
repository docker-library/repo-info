## `silverpeas:latest`

```console
$ docker pull silverpeas@sha256:2b31250b4889eabe6ed7491bca8b8d221863fd069b75899e6cf9f8acf129ac86
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `silverpeas:latest` - linux; amd64

```console
$ docker pull silverpeas@sha256:546add718e34d9dbe865ccfa92bc975f7ea4b80d474f30e0a944b262dfcab4f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 GB (1818180447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1612e437fbbb7edbe940d54c7c17a0ae8e579cf3b1f54deceb992a7b75c1d3f0`
-	Default Command: `["\/opt\/run.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:40:05 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Thu, 02 Jul 2026 02:40:05 GMT
ENV TERM=xterm
# Thu, 02 Jul 2026 02:40:05 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends tzdata   && apt-get install -y --no-install-recommends     apt-utils     iputils-ping     curl     wget     vim     locales     language-pack-en     language-pack-fr     procps     net-tools     zip     unzip     openjdk-11-jdk     ffmpeg     imagemagick     ghostscript     libreoffice     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f # buildkit
# Thu, 02 Jul 2026 02:40:22 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 swftools-bin-0.9.2.zip' | sha256sum -c --status -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip # buildkit
# Thu, 02 Jul 2026 02:40:25 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 pdf2json-bin-0.68.zip' | sha256sum -c --status -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip # buildkit
# Thu, 02 Jul 2026 02:40:25 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Thu, 02 Jul 2026 02:40:51 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE} # buildkit
# Thu, 02 Jul 2026 02:40:51 GMT
ENV LANG=en_US.UTF-8
# Thu, 02 Jul 2026 02:40:51 GMT
ENV LANGUAGE=en_US.UTF-8
# Thu, 02 Jul 2026 02:40:51 GMT
ENV LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:40:51 GMT
ENV PING_ON=1
# Thu, 02 Jul 2026 02:40:51 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home # buildkit
# Thu, 02 Jul 2026 02:40:51 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home # buildkit
# Thu, 02 Jul 2026 02:40:51 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 02 Jul 2026 02:40:51 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Thu, 02 Jul 2026 02:40:51 GMT
ENV JBOSS_HOME=/opt/wildfly
# Thu, 02 Jul 2026 02:40:51 GMT
ENV SILVERPEAS_VERSION=6.4.6
# Thu, 02 Jul 2026 02:40:51 GMT
ENV WILDFLY_VERSION=26.1.3
# Thu, 02 Jul 2026 02:40:51 GMT
LABEL name=Silverpeas 6.4.6 description=Image to install and to run Silverpeas 6.4.6 vendor=Silverpeas version=6.4.6 build=1
# Thu, 02 Jul 2026 02:41:16 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver keys.openpgp.org --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && wget -nc https://www.silverpeas.org/files/oak-migrate.zip   && echo '87009e55520e74b5d2a386f4ebc843ee43cd1f25ca5138f342a94a31add3cfbd oak-migrate.zip' | sha256sum -c --status -   && mkdir -p /opt/oak-migration   && unzip oak-migrate.zip -d /opt/oak-migration/   && chmod +x /opt/oak-migration/oak-migrate.sh   && rm *.zip   && mkdir -p /root/.m2 # buildkit
# Thu, 02 Jul 2026 02:41:16 GMT
COPY src/settings.xml /root/.m2/ # buildkit
# Thu, 02 Jul 2026 02:41:16 GMT
COPY src/silverpeas.gradle /opt/silverpeas/bin/ # buildkit
# Thu, 02 Jul 2026 02:41:16 GMT
WORKDIR /opt/silverpeas/bin
# Thu, 02 Jul 2026 02:41:16 GMT
COPY src/run.sh /opt/ # buildkit
# Thu, 02 Jul 2026 02:41:16 GMT
COPY src/converter.groovy /opt/silverpeas/configuration/silverpeas/ # buildkit
# Thu, 02 Jul 2026 02:42:38 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN set -eux;   sed -i -e "s/SILVERPEAS_VERSION/${SILVERPEAS_VERSION}/g" ${SILVERPEAS_HOME}/bin/silverpeas.gradle;   echo "Construct Silverpeas ${SILVERPEAS_VERSION}";   ./silverpeas assemble || (cat ../log/build-* && exit 1);   rm ../log/build-*;   touch .install; # buildkit
# Thu, 02 Jul 2026 02:42:38 GMT
EXPOSE map[8000/tcp:{} 9990/tcp:{}]
# Thu, 02 Jul 2026 02:42:38 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/properties /opt/silverpeas/xmlcomponents/workflows]
# Thu, 02 Jul 2026 02:42:38 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f627e446df08968c116db13640956a0c46f91103c1e7e69f4c97eacdc2f15648`  
		Last Modified: Thu, 02 Jul 2026 02:44:33 GMT  
		Size: 494.8 MB (494788003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a9327b422226a818074a792f0a63a6c32e3e716f4513f56816830a26cf8d870`  
		Last Modified: Thu, 02 Jul 2026 02:44:11 GMT  
		Size: 4.0 MB (3994008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:353febeb2045fb0992072848eebeb36258e7da700234b66a56e8258a06674762`  
		Last Modified: Thu, 02 Jul 2026 02:44:11 GMT  
		Size: 7.1 MB (7146622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be6f768376d3520e25b514f77d7b690c7a6bdf576251982075b742232d33a791`  
		Last Modified: Thu, 02 Jul 2026 02:44:10 GMT  
		Size: 2.5 MB (2538616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fa7979220d46cdae1d1d588134c714a6bc12f2966669ca689e79c02c24bcddf`  
		Last Modified: Thu, 02 Jul 2026 02:44:12 GMT  
		Size: 235.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c1ce70f5e5949b6f2e8f713a79d5d98e7e08ec3b63b30af7e3545f50dc6a800`  
		Last Modified: Thu, 02 Jul 2026 02:44:12 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f09b2f59db7da5a499a3d193038945428768c9ea5dbbcd462b10b429e0d0ad51`  
		Last Modified: Thu, 02 Jul 2026 02:44:28 GMT  
		Size: 269.1 MB (269106284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aa61d92b0ccb032729edb0aa0528c7f0cada453ea081ee27e78c6c54d1cf69a`  
		Last Modified: Thu, 02 Jul 2026 02:44:14 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c332096f1a8d3c7335b6d27d0dad5a2c177c43738e88fb753b57c4eadadc07e`  
		Last Modified: Thu, 02 Jul 2026 02:44:14 GMT  
		Size: 662.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2038942eb901b6bd70ff6005c86ee2e60a322b0f08512e82e7ba1a29e018e7e`  
		Last Modified: Thu, 02 Jul 2026 02:44:15 GMT  
		Size: 1.4 KB (1448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:204992cdfeec0bbc85e0fcee7b2ddf23a67c99bb2f36c28d4379eb8c36bde29b`  
		Last Modified: Thu, 02 Jul 2026 02:44:15 GMT  
		Size: 385.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fa9078883e148dabefdfbce7c8a1ef39b08244010e48e6cd9f81853a6896170`  
		Last Modified: Thu, 02 Jul 2026 02:44:49 GMT  
		Size: 1.0 GB (1010864736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `silverpeas:latest` - unknown; unknown

```console
$ docker pull silverpeas@sha256:744789c4f78df9550cbf0bc3f6c5aa09e3d0fbefc9adf91c624ba311c055587b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16632076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6d935643412b82e0f4740f805f70fc9c81bd24a99d55b8142db8b5f8b78605f`

```dockerfile
```

-	Layers:
	-	`sha256:b51bc1be22c8d9e145eb2503b274ad772f5bd034833e96923f203cd411e17a63`  
		Last Modified: Thu, 02 Jul 2026 02:44:11 GMT  
		Size: 16.6 MB (16589570 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f84fcddf09adabbff0ed4fa7f941599af43ad6c399da0e54e4a732a0d9c82cb6`  
		Last Modified: Thu, 02 Jul 2026 02:44:10 GMT  
		Size: 42.5 KB (42506 bytes)  
		MIME: application/vnd.in-toto+json
