## `silverpeas:latest`

```console
$ docker pull silverpeas@sha256:e543395ac18b3e2097f60220cc184091d0d3f945ff49f1ae7c5711ad838efeb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `silverpeas:latest` - linux; amd64

```console
$ docker pull silverpeas@sha256:66b8aea5461e6bd86c50964413015ebfc11bf216c71252565ace5b09c176ef4a
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.9 GB (1928446440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:367f6a18925ddfe8b851b47b1b781038cdde2c58d826298f5519b4b30aacd2a0`
-	Default Command: `["\/opt\/run.sh"]`

```dockerfile
# Fri, 09 Dec 2022 01:20:21 GMT
ADD file:9d282119af0c42bc823c95b4192a3350cf2cad670622017356dd2e637762e425 in / 
# Fri, 09 Dec 2022 01:20:21 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 04:25:59 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Fri, 09 Dec 2022 04:26:00 GMT
ENV TERM=xterm
# Fri, 09 Dec 2022 04:33:14 GMT
RUN apt-get update   && apt-get install -y tzdata   && apt-get install -y     apt-utils     iputils-ping     curl     wget     vim     locales     language-pack-en     language-pack-fr     procps     net-tools     zip     unzip     openjdk-11-jdk     ffmpeg     imagemagick     ghostscript     libreoffice     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f
# Fri, 09 Dec 2022 04:33:26 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 *swftools-bin-0.9.2.zip' | sha256sum -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip
# Fri, 09 Dec 2022 04:33:29 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 *pdf2json-bin-0.68.zip' | sha256sum -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip
# Fri, 09 Dec 2022 04:33:30 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Fri, 09 Dec 2022 04:34:09 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE}
# Fri, 09 Dec 2022 04:34:09 GMT
ENV LANG=en_US.UTF-8
# Fri, 09 Dec 2022 04:34:09 GMT
ENV LANGUAGE=en_US.UTF-8
# Fri, 09 Dec 2022 04:34:09 GMT
ENV LC_ALL=en_US.UTF-8
# Fri, 09 Dec 2022 04:34:10 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 09 Dec 2022 04:34:10 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 09 Dec 2022 04:34:10 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 09 Dec 2022 04:34:10 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Fri, 09 Dec 2022 04:34:10 GMT
ENV JBOSS_HOME=/opt/wildfly
# Fri, 09 Dec 2022 04:34:11 GMT
ENV SILVERPEAS_VERSION=6.3
# Fri, 09 Dec 2022 04:34:11 GMT
ENV WILDFLY_VERSION=26.1.1
# Fri, 09 Dec 2022 04:34:11 GMT
LABEL name=Silverpeas 6.3 description=Image to install and to run Silverpeas 6.3 vendor=Silverpeas version=6.3 build=1
# Fri, 09 Dec 2022 04:35:12 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver keys.openpgp.org --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && rm *.zip   && mkdir -p /root/.m2
# Fri, 09 Dec 2022 04:35:13 GMT
COPY file:4d0e637a3e1ce0b8143795fd5df1997a7ee18fba27382849ed23e9ecb8142009 in /root/.m2/ 
# Fri, 09 Dec 2022 04:35:13 GMT
COPY file:473bf75b335a39b6b4b39c64cd151bd8ed3d3e33da73b8124e537a5db1fad3d6 in /opt/silverpeas/bin/ 
# Fri, 09 Dec 2022 04:35:13 GMT
WORKDIR /opt/silverpeas/bin
# Fri, 09 Dec 2022 04:35:13 GMT
COPY file:b54156953ecf6c3259f3b3d2885a784847c0996fd145c0f7ccef25182725511f in /opt/ 
# Fri, 09 Dec 2022 04:35:13 GMT
COPY file:b5a807d0a061fd9e87c6acfc7080c110a5f3c030251fe9a4c995cec7603e12d2 in /opt/silverpeas/configuration/silverpeas/ 
# Fri, 09 Dec 2022 04:37:41 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN sed -i -e "s/SILVERPEAS_VERSION/${SILVERPEAS_VERSION}/g" ${SILVERPEAS_HOME}/bin/silverpeas.gradle   && ./silverpeas construct   && rm ../log/build-*   && touch .install
# Fri, 09 Dec 2022 04:37:44 GMT
EXPOSE 8000 9990
# Fri, 09 Dec 2022 04:37:44 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/properties /opt/silverpeas/xmlcomponents/workflows]
# Fri, 09 Dec 2022 04:37:44 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:846c0b181fff0c667d9444f8378e8fcfa13116da8d308bf21673f7e4bea8d580`  
		Last Modified: Thu, 08 Dec 2022 13:18:11 GMT  
		Size: 28.6 MB (28576882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d91314174946b9dc337717878aa1580844eb05f7b67d6e1ab5fae5cd485599`  
		Last Modified: Fri, 09 Dec 2022 04:42:44 GMT  
		Size: 911.1 MB (911132285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e2dbafc747a661face05bb763d6f77e8e7068dbef89582030766014d81357a`  
		Last Modified: Fri, 09 Dec 2022 04:41:12 GMT  
		Size: 4.0 MB (3994085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:615b4e0d3fb7d09c5216bc3289726a17a6a05dba70d969d274b7c7669337be97`  
		Last Modified: Fri, 09 Dec 2022 04:41:13 GMT  
		Size: 7.1 MB (7146651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0f130faff6d2dd956bd45f7305678d178bd88a453cfc4beb3b8874dd79b471`  
		Last Modified: Fri, 09 Dec 2022 04:41:10 GMT  
		Size: 2.5 MB (2534366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab2331c48bc066db414005b1836dcbe1bcfb8547de33e5be27e8233eb5353292`  
		Last Modified: Fri, 09 Dec 2022 04:41:09 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81add0a4e5373a7d78548810c2a38c5509b681b469538b841a8d3a8410b36116`  
		Last Modified: Fri, 09 Dec 2022 04:41:10 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecaea0af5f125d4bca67dc6003cdad343e58c1acab9942ddc3f9abc42a08be15`  
		Last Modified: Fri, 09 Dec 2022 04:41:22 GMT  
		Size: 217.8 MB (217842839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76bb01e3acdfaf7f59a26ea01483d05e266a1bbe80bae2de2564448eb479f602`  
		Last Modified: Fri, 09 Dec 2022 04:41:08 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:803d73587a2a08804692b7d4a2a93bf196986bc3aa55ba5635f823e2eec89124`  
		Last Modified: Fri, 09 Dec 2022 04:41:08 GMT  
		Size: 665.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02ef920db4b8b462d0302674b29b1067cbf256c141e33b57e274e0305d071017`  
		Last Modified: Fri, 09 Dec 2022 04:41:08 GMT  
		Size: 877.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ba596dd1200195ab5f9d4dad2ac216cdfcb2730bf505f559fa6706a748b8a2`  
		Last Modified: Fri, 09 Dec 2022 04:41:08 GMT  
		Size: 385.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeda1e8ae1fcc78822273a0eeb424b365a56318184d030faeae5555e98a212ae`  
		Last Modified: Fri, 09 Dec 2022 04:41:46 GMT  
		Size: 757.2 MB (757216624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
