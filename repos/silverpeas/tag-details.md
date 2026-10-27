<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `silverpeas`

-	[`silverpeas:6.3`](#silverpeas63)
-	[`silverpeas:6.3.6`](#silverpeas636)
-	[`silverpeas:6.4.8`](#silverpeas648)
-	[`silverpeas:latest`](#silverpeaslatest)

## `silverpeas:6.3`

```console
$ docker pull silverpeas@sha256:7e6144d87794a3c2d9eafcaa9f8350ae64609edc86257ac188c9760a028ab11b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `silverpeas:6.3` - linux; amd64

```console
$ docker pull silverpeas@sha256:1ff413dfcf9d7445e882f69c1cc092aa70fcfd1c8cfa698f979b735a32ad4edf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.9 GB (1887536261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00f1ce0b217ab40f4a1d4cf3ac2507b9f06c422e4b121cf13b191bb0fb28d3f3`
-	Default Command: `["\/opt\/run.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:43:14 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Mon, 26 Oct 2026 23:43:14 GMT
ENV TERM=xterm
# Mon, 26 Oct 2026 23:43:14 GMT
RUN apt-get update   && apt-get install -y tzdata   && apt-get install -y     apt-utils     iputils-ping     curl     wget     vim     locales     language-pack-en     language-pack-fr     procps     net-tools     zip     unzip     openjdk-11-jdk     ffmpeg     imagemagick     ghostscript     libreoffice     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f # buildkit
# Mon, 26 Oct 2026 23:43:17 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 *swftools-bin-0.9.2.zip' | sha256sum -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip # buildkit
# Mon, 26 Oct 2026 23:43:19 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 *pdf2json-bin-0.68.zip' | sha256sum -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip # buildkit
# Mon, 26 Oct 2026 23:43:19 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Mon, 26 Oct 2026 23:43:42 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE} # buildkit
# Mon, 26 Oct 2026 23:43:42 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:43:42 GMT
ENV LANGUAGE=en_US.UTF-8
# Mon, 26 Oct 2026 23:43:42 GMT
ENV LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:43:42 GMT
ENV PING_ON=1
# Mon, 26 Oct 2026 23:43:42 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home # buildkit
# Mon, 26 Oct 2026 23:43:42 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home # buildkit
# Mon, 26 Oct 2026 23:43:42 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 26 Oct 2026 23:43:42 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Mon, 26 Oct 2026 23:43:42 GMT
ENV JBOSS_HOME=/opt/wildfly
# Mon, 26 Oct 2026 23:43:42 GMT
ENV SILVERPEAS_VERSION=6.3.6
# Mon, 26 Oct 2026 23:43:42 GMT
ENV WILDFLY_VERSION=26.1.1
# Mon, 26 Oct 2026 23:43:42 GMT
LABEL name=Silverpeas 6.3.6 description=Image to install and to run Silverpeas 6.3.6 vendor=Silverpeas version=6.3.6 build=2
# Mon, 26 Oct 2026 23:44:01 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver keys.openpgp.org --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && rm *.zip   && mkdir -p /root/.m2 # buildkit
# Mon, 26 Oct 2026 23:44:01 GMT
COPY src/settings.xml /root/.m2/ # buildkit
# Mon, 26 Oct 2026 23:44:01 GMT
COPY src/silverpeas.gradle /opt/silverpeas/bin/ # buildkit
# Mon, 26 Oct 2026 23:44:01 GMT
WORKDIR /opt/silverpeas/bin
# Mon, 26 Oct 2026 23:44:01 GMT
COPY src/run.sh /opt/ # buildkit
# Mon, 26 Oct 2026 23:44:02 GMT
COPY src/converter.groovy /opt/silverpeas/configuration/silverpeas/ # buildkit
# Mon, 26 Oct 2026 23:45:11 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN sed -i -e "s/SILVERPEAS_VERSION/${SILVERPEAS_VERSION}/g" ${SILVERPEAS_HOME}/bin/silverpeas.gradle   && ./silverpeas construct   && rm ../log/build-*   && touch .install # buildkit
# Mon, 26 Oct 2026 23:45:11 GMT
EXPOSE map[8000/tcp:{} 9990/tcp:{}]
# Mon, 26 Oct 2026 23:45:11 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/properties /opt/silverpeas/xmlcomponents/workflows]
# Mon, 26 Oct 2026 23:45:11 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1991c324ee5b77cafed377a851b8c55b282a541f1ad263d71453084f3d87028d`  
		Last Modified: Mon, 26 Oct 2026 23:47:49 GMT  
		Size: 871.7 MB (871653294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:988d68bd946656b9f85f024c8a5e0146ec6d504bf25d218c825ad07f570fd803`  
		Last Modified: Mon, 26 Oct 2026 23:47:18 GMT  
		Size: 4.0 MB (3994012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8003758206bf6bed13dfba1711fdf99dc9ec7eed7cc6145bff1180d76b8435fb`  
		Last Modified: Mon, 26 Oct 2026 23:47:18 GMT  
		Size: 7.1 MB (7146622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee50c9eaa5faa5a59080a52abb6df3c0d2fb5a11d1572a690315770756dcc72c`  
		Last Modified: Mon, 26 Oct 2026 23:47:18 GMT  
		Size: 2.5 MB (2538617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7d6d0e35874d9ee6063527ad2583d432ff844ecc712fd7a5f8a059f5e598c13`  
		Last Modified: Mon, 26 Oct 2026 23:47:19 GMT  
		Size: 234.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:861eb203d06a2fefc2c3671dc4e15865ab1ac08d0284b2e79b33c7887e0055a2`  
		Last Modified: Mon, 26 Oct 2026 23:47:19 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4979220632eeaa9f46b87575af65df798bf4a1df5bb3ee0c75efb4345c5cae9b`  
		Last Modified: Mon, 26 Oct 2026 23:47:28 GMT  
		Size: 217.8 MB (217843281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9229222978e3fb22b81b731d0ca8d6efa7512c9219f5a622d84d0422a82bd5b3`  
		Last Modified: Mon, 26 Oct 2026 23:47:20 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79a4bbfa0de1a26f508bfbee36146355de41f6f9e777795a25da1fc3420b6889`  
		Last Modified: Mon, 26 Oct 2026 23:47:21 GMT  
		Size: 662.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19457ad78a451ac1dcddaf06b59fc2cbbe1fb8bc5b1f250aae8ac14e9975cc7d`  
		Last Modified: Mon, 26 Oct 2026 23:47:22 GMT  
		Size: 922.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98ac3ac5ca8789944ed61efc6739ff524ee7188e4f7450eba8dcbba387c48b21`  
		Last Modified: Mon, 26 Oct 2026 23:47:22 GMT  
		Size: 387.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cb5a4748571431904eb0ab30eac98b184539b8f8f20515d9e5bcc4e5820efb8`  
		Last Modified: Mon, 26 Oct 2026 23:47:51 GMT  
		Size: 754.6 MB (754605176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `silverpeas:6.3` - unknown; unknown

```console
$ docker pull silverpeas@sha256:1b6aef241ff0dacc61c930a6351086a68e23ef15535fd1d1018662f3084c798b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 MB (26851547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1e89bd8782baea1f583a3642176a79047a55e6b25aabae8816a8f7d396fc424`

```dockerfile
```

-	Layers:
	-	`sha256:9e7061a8b1ba72d05b737d36be173ef26e71f783a28ddbb29bb4c3f242967bc0`  
		Last Modified: Mon, 26 Oct 2026 23:47:19 GMT  
		Size: 26.8 MB (26810545 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0e8d372e980d44ff82d84561ded109b49cbd0da9be5727af0865767c38a4060e`  
		Last Modified: Mon, 26 Oct 2026 23:47:18 GMT  
		Size: 41.0 KB (41002 bytes)  
		MIME: application/vnd.in-toto+json

## `silverpeas:6.3.6`

```console
$ docker pull silverpeas@sha256:7e6144d87794a3c2d9eafcaa9f8350ae64609edc86257ac188c9760a028ab11b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `silverpeas:6.3.6` - linux; amd64

```console
$ docker pull silverpeas@sha256:1ff413dfcf9d7445e882f69c1cc092aa70fcfd1c8cfa698f979b735a32ad4edf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.9 GB (1887536261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00f1ce0b217ab40f4a1d4cf3ac2507b9f06c422e4b121cf13b191bb0fb28d3f3`
-	Default Command: `["\/opt\/run.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:43:14 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Mon, 26 Oct 2026 23:43:14 GMT
ENV TERM=xterm
# Mon, 26 Oct 2026 23:43:14 GMT
RUN apt-get update   && apt-get install -y tzdata   && apt-get install -y     apt-utils     iputils-ping     curl     wget     vim     locales     language-pack-en     language-pack-fr     procps     net-tools     zip     unzip     openjdk-11-jdk     ffmpeg     imagemagick     ghostscript     libreoffice     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f # buildkit
# Mon, 26 Oct 2026 23:43:17 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 *swftools-bin-0.9.2.zip' | sha256sum -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip # buildkit
# Mon, 26 Oct 2026 23:43:19 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 *pdf2json-bin-0.68.zip' | sha256sum -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip # buildkit
# Mon, 26 Oct 2026 23:43:19 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Mon, 26 Oct 2026 23:43:42 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE} # buildkit
# Mon, 26 Oct 2026 23:43:42 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:43:42 GMT
ENV LANGUAGE=en_US.UTF-8
# Mon, 26 Oct 2026 23:43:42 GMT
ENV LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:43:42 GMT
ENV PING_ON=1
# Mon, 26 Oct 2026 23:43:42 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home # buildkit
# Mon, 26 Oct 2026 23:43:42 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home # buildkit
# Mon, 26 Oct 2026 23:43:42 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 26 Oct 2026 23:43:42 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Mon, 26 Oct 2026 23:43:42 GMT
ENV JBOSS_HOME=/opt/wildfly
# Mon, 26 Oct 2026 23:43:42 GMT
ENV SILVERPEAS_VERSION=6.3.6
# Mon, 26 Oct 2026 23:43:42 GMT
ENV WILDFLY_VERSION=26.1.1
# Mon, 26 Oct 2026 23:43:42 GMT
LABEL name=Silverpeas 6.3.6 description=Image to install and to run Silverpeas 6.3.6 vendor=Silverpeas version=6.3.6 build=2
# Mon, 26 Oct 2026 23:44:01 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver keys.openpgp.org --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && rm *.zip   && mkdir -p /root/.m2 # buildkit
# Mon, 26 Oct 2026 23:44:01 GMT
COPY src/settings.xml /root/.m2/ # buildkit
# Mon, 26 Oct 2026 23:44:01 GMT
COPY src/silverpeas.gradle /opt/silverpeas/bin/ # buildkit
# Mon, 26 Oct 2026 23:44:01 GMT
WORKDIR /opt/silverpeas/bin
# Mon, 26 Oct 2026 23:44:01 GMT
COPY src/run.sh /opt/ # buildkit
# Mon, 26 Oct 2026 23:44:02 GMT
COPY src/converter.groovy /opt/silverpeas/configuration/silverpeas/ # buildkit
# Mon, 26 Oct 2026 23:45:11 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN sed -i -e "s/SILVERPEAS_VERSION/${SILVERPEAS_VERSION}/g" ${SILVERPEAS_HOME}/bin/silverpeas.gradle   && ./silverpeas construct   && rm ../log/build-*   && touch .install # buildkit
# Mon, 26 Oct 2026 23:45:11 GMT
EXPOSE map[8000/tcp:{} 9990/tcp:{}]
# Mon, 26 Oct 2026 23:45:11 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/properties /opt/silverpeas/xmlcomponents/workflows]
# Mon, 26 Oct 2026 23:45:11 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1991c324ee5b77cafed377a851b8c55b282a541f1ad263d71453084f3d87028d`  
		Last Modified: Mon, 26 Oct 2026 23:47:49 GMT  
		Size: 871.7 MB (871653294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:988d68bd946656b9f85f024c8a5e0146ec6d504bf25d218c825ad07f570fd803`  
		Last Modified: Mon, 26 Oct 2026 23:47:18 GMT  
		Size: 4.0 MB (3994012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8003758206bf6bed13dfba1711fdf99dc9ec7eed7cc6145bff1180d76b8435fb`  
		Last Modified: Mon, 26 Oct 2026 23:47:18 GMT  
		Size: 7.1 MB (7146622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee50c9eaa5faa5a59080a52abb6df3c0d2fb5a11d1572a690315770756dcc72c`  
		Last Modified: Mon, 26 Oct 2026 23:47:18 GMT  
		Size: 2.5 MB (2538617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7d6d0e35874d9ee6063527ad2583d432ff844ecc712fd7a5f8a059f5e598c13`  
		Last Modified: Mon, 26 Oct 2026 23:47:19 GMT  
		Size: 234.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:861eb203d06a2fefc2c3671dc4e15865ab1ac08d0284b2e79b33c7887e0055a2`  
		Last Modified: Mon, 26 Oct 2026 23:47:19 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4979220632eeaa9f46b87575af65df798bf4a1df5bb3ee0c75efb4345c5cae9b`  
		Last Modified: Mon, 26 Oct 2026 23:47:28 GMT  
		Size: 217.8 MB (217843281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9229222978e3fb22b81b731d0ca8d6efa7512c9219f5a622d84d0422a82bd5b3`  
		Last Modified: Mon, 26 Oct 2026 23:47:20 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79a4bbfa0de1a26f508bfbee36146355de41f6f9e777795a25da1fc3420b6889`  
		Last Modified: Mon, 26 Oct 2026 23:47:21 GMT  
		Size: 662.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19457ad78a451ac1dcddaf06b59fc2cbbe1fb8bc5b1f250aae8ac14e9975cc7d`  
		Last Modified: Mon, 26 Oct 2026 23:47:22 GMT  
		Size: 922.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98ac3ac5ca8789944ed61efc6739ff524ee7188e4f7450eba8dcbba387c48b21`  
		Last Modified: Mon, 26 Oct 2026 23:47:22 GMT  
		Size: 387.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cb5a4748571431904eb0ab30eac98b184539b8f8f20515d9e5bcc4e5820efb8`  
		Last Modified: Mon, 26 Oct 2026 23:47:51 GMT  
		Size: 754.6 MB (754605176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `silverpeas:6.3.6` - unknown; unknown

```console
$ docker pull silverpeas@sha256:1b6aef241ff0dacc61c930a6351086a68e23ef15535fd1d1018662f3084c798b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 MB (26851547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1e89bd8782baea1f583a3642176a79047a55e6b25aabae8816a8f7d396fc424`

```dockerfile
```

-	Layers:
	-	`sha256:9e7061a8b1ba72d05b737d36be173ef26e71f783a28ddbb29bb4c3f242967bc0`  
		Last Modified: Mon, 26 Oct 2026 23:47:19 GMT  
		Size: 26.8 MB (26810545 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0e8d372e980d44ff82d84561ded109b49cbd0da9be5727af0865767c38a4060e`  
		Last Modified: Mon, 26 Oct 2026 23:47:18 GMT  
		Size: 41.0 KB (41002 bytes)  
		MIME: application/vnd.in-toto+json

## `silverpeas:6.4.8`

```console
$ docker pull silverpeas@sha256:dce777855ffb7267345b10b50ffee3579bd4454fc015e9e1aaaa8d344c325dc6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `silverpeas:6.4.8` - linux; amd64

```console
$ docker pull silverpeas@sha256:ce5a268361fe7ee1dab0cf3f5cfaea214eb8e67ff08635961a5f7c27ad03c2dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 GB (1818635452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9faeb4e6939a95774f5c4d1412ee4c255fde959b47ca02fdba53383a06aa080`
-	Default Command: `["\/opt\/run.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:42:15 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Mon, 26 Oct 2026 23:42:15 GMT
ENV TERM=xterm
# Mon, 26 Oct 2026 23:42:15 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends tzdata   && apt-get install -y --no-install-recommends     apt-utils     iputils-ping     curl     wget     vim     locales     language-pack-en     language-pack-fr     procps     net-tools     zip     unzip     openjdk-11-jdk     ffmpeg     imagemagick     ghostscript     libreoffice     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f # buildkit
# Mon, 26 Oct 2026 23:42:17 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 swftools-bin-0.9.2.zip' | sha256sum -c --status -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip # buildkit
# Mon, 26 Oct 2026 23:42:19 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 pdf2json-bin-0.68.zip' | sha256sum -c --status -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip # buildkit
# Mon, 26 Oct 2026 23:42:19 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Mon, 26 Oct 2026 23:42:40 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE} # buildkit
# Mon, 26 Oct 2026 23:42:40 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:42:40 GMT
ENV LANGUAGE=en_US.UTF-8
# Mon, 26 Oct 2026 23:42:40 GMT
ENV LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:42:40 GMT
ENV PING_ON=1
# Mon, 26 Oct 2026 23:42:40 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home # buildkit
# Mon, 26 Oct 2026 23:42:41 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home # buildkit
# Mon, 26 Oct 2026 23:42:41 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 26 Oct 2026 23:42:41 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Mon, 26 Oct 2026 23:42:41 GMT
ENV JBOSS_HOME=/opt/wildfly
# Mon, 26 Oct 2026 23:42:41 GMT
ENV SILVERPEAS_VERSION=6.4.8
# Mon, 26 Oct 2026 23:42:41 GMT
ENV WILDFLY_VERSION=26.1.3
# Mon, 26 Oct 2026 23:42:41 GMT
LABEL name=Silverpeas 6.4.8 description=Image to install and to run Silverpeas 6.4.8 vendor=Silverpeas version=6.4.8 build=1
# Mon, 26 Oct 2026 23:43:03 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver keys.openpgp.org --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && wget -nc https://www.silverpeas.org/files/oak-migrate.zip   && echo '87009e55520e74b5d2a386f4ebc843ee43cd1f25ca5138f342a94a31add3cfbd oak-migrate.zip' | sha256sum -c --status -   && mkdir -p /opt/oak-migration   && unzip oak-migrate.zip -d /opt/oak-migration/   && chmod +x /opt/oak-migration/oak-migrate.sh   && rm *.zip   && mkdir -p /root/.m2 # buildkit
# Mon, 26 Oct 2026 23:43:03 GMT
COPY src/settings.xml /root/.m2/ # buildkit
# Mon, 26 Oct 2026 23:43:03 GMT
COPY src/silverpeas.gradle /opt/silverpeas/bin/ # buildkit
# Mon, 26 Oct 2026 23:43:03 GMT
WORKDIR /opt/silverpeas/bin
# Mon, 26 Oct 2026 23:43:03 GMT
COPY src/run.sh /opt/ # buildkit
# Mon, 26 Oct 2026 23:43:03 GMT
COPY src/converter.groovy /opt/silverpeas/configuration/silverpeas/ # buildkit
# Mon, 26 Oct 2026 23:44:20 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN set -eux;   sed -i -e "s/SILVERPEAS_VERSION/${SILVERPEAS_VERSION}/g" ${SILVERPEAS_HOME}/bin/silverpeas.gradle;   echo "Construct Silverpeas ${SILVERPEAS_VERSION}";   ./silverpeas assemble || (cat ../log/build-* && exit 1);   rm ../log/build-*;   touch .install; # buildkit
# Mon, 26 Oct 2026 23:44:20 GMT
EXPOSE map[8000/tcp:{} 9990/tcp:{}]
# Mon, 26 Oct 2026 23:44:20 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/properties /opt/silverpeas/xmlcomponents/workflows]
# Mon, 26 Oct 2026 23:44:20 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c62eb0e1fbd13578cb7bb4f7ce2b597ce53f88b40dd7f6ea24850be0311b5741`  
		Last Modified: Mon, 26 Oct 2026 23:45:59 GMT  
		Size: 494.9 MB (494862507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:644c23e205d466409c3b92f0dc73da3ccd56cc3a19c03e1854ad8141b7703b40`  
		Last Modified: Mon, 26 Oct 2026 23:45:44 GMT  
		Size: 4.0 MB (3994011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:725fad6ffb1473e663598a063c8cabf0e67b0a61aa1da2987a6a09d8d6832ec2`  
		Last Modified: Mon, 26 Oct 2026 23:45:44 GMT  
		Size: 7.1 MB (7146620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c077787319392a508d869e8f81fed2b5ac6eebdf5c338d00e9ffa37d904fc35`  
		Last Modified: Mon, 26 Oct 2026 23:45:44 GMT  
		Size: 2.5 MB (2538622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ed371c3102e8dcdfe8a969a986bb027a0dc66bf8b98dd2e98798de5d54bd58b`  
		Last Modified: Mon, 26 Oct 2026 23:45:45 GMT  
		Size: 234.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:535fb3a3ff699af6c7072bb874cb8ab781041400a85c3413cfa5d7113c9da156`  
		Last Modified: Mon, 26 Oct 2026 23:45:45 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ca27a16650c124b6ded7cea346b9d28ed113c0047788232d9957f989118fb61`  
		Last Modified: Mon, 26 Oct 2026 23:45:55 GMT  
		Size: 269.1 MB (269106957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e79a10399d2817792b22d747abe44df07c9991787d8f94c9d58c8cb85b548863`  
		Last Modified: Mon, 26 Oct 2026 23:45:46 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f5ea4dd619fe5c340eed0d571efb57cdff6a149df794a768765df09b6644ea7`  
		Last Modified: Mon, 26 Oct 2026 23:45:46 GMT  
		Size: 663.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76a5eb1158c52a407046293f6c96f6f2fcfef2c5aaedd388e436f07d331ace28`  
		Last Modified: Mon, 26 Oct 2026 23:45:48 GMT  
		Size: 1.4 KB (1448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f8655435826d604644059eac44e56ed8a90ae24f098ab5b912ee2212283b58d`  
		Last Modified: Mon, 26 Oct 2026 23:45:48 GMT  
		Size: 385.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aea07fae7131799ba814cba30b005c215e3d96117dbbddbc8343758902873938`  
		Last Modified: Mon, 26 Oct 2026 23:46:10 GMT  
		Size: 1.0 GB (1011230950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `silverpeas:6.4.8` - unknown; unknown

```console
$ docker pull silverpeas@sha256:cc0b9ad701d80c71cd4492a322215be3ac5bf3604053d80959bc0a76212e537a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16635882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f85704fadb83643cd01888f888a69a1bad9697f0e4199803153931eac41ed9c`

```dockerfile
```

-	Layers:
	-	`sha256:fc3d62db901d2a7bf8726d5e2770e77495d3c924c4589e290651f64750bb7930`  
		Last Modified: Mon, 26 Oct 2026 23:45:44 GMT  
		Size: 16.6 MB (16593376 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2acc85c9b9fb9c8aae3ca86ef2ba2536fcd24b6941dea49e71f8fb073849a94a`  
		Last Modified: Mon, 26 Oct 2026 23:45:43 GMT  
		Size: 42.5 KB (42506 bytes)  
		MIME: application/vnd.in-toto+json

## `silverpeas:latest`

```console
$ docker pull silverpeas@sha256:dce777855ffb7267345b10b50ffee3579bd4454fc015e9e1aaaa8d344c325dc6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `silverpeas:latest` - linux; amd64

```console
$ docker pull silverpeas@sha256:ce5a268361fe7ee1dab0cf3f5cfaea214eb8e67ff08635961a5f7c27ad03c2dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 GB (1818635452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9faeb4e6939a95774f5c4d1412ee4c255fde959b47ca02fdba53383a06aa080`
-	Default Command: `["\/opt\/run.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:42:15 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Mon, 26 Oct 2026 23:42:15 GMT
ENV TERM=xterm
# Mon, 26 Oct 2026 23:42:15 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends tzdata   && apt-get install -y --no-install-recommends     apt-utils     iputils-ping     curl     wget     vim     locales     language-pack-en     language-pack-fr     procps     net-tools     zip     unzip     openjdk-11-jdk     ffmpeg     imagemagick     ghostscript     libreoffice     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f # buildkit
# Mon, 26 Oct 2026 23:42:17 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 swftools-bin-0.9.2.zip' | sha256sum -c --status -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip # buildkit
# Mon, 26 Oct 2026 23:42:19 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 pdf2json-bin-0.68.zip' | sha256sum -c --status -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip # buildkit
# Mon, 26 Oct 2026 23:42:19 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Mon, 26 Oct 2026 23:42:40 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE} # buildkit
# Mon, 26 Oct 2026 23:42:40 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Oct 2026 23:42:40 GMT
ENV LANGUAGE=en_US.UTF-8
# Mon, 26 Oct 2026 23:42:40 GMT
ENV LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:42:40 GMT
ENV PING_ON=1
# Mon, 26 Oct 2026 23:42:40 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home # buildkit
# Mon, 26 Oct 2026 23:42:41 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home # buildkit
# Mon, 26 Oct 2026 23:42:41 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 26 Oct 2026 23:42:41 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Mon, 26 Oct 2026 23:42:41 GMT
ENV JBOSS_HOME=/opt/wildfly
# Mon, 26 Oct 2026 23:42:41 GMT
ENV SILVERPEAS_VERSION=6.4.8
# Mon, 26 Oct 2026 23:42:41 GMT
ENV WILDFLY_VERSION=26.1.3
# Mon, 26 Oct 2026 23:42:41 GMT
LABEL name=Silverpeas 6.4.8 description=Image to install and to run Silverpeas 6.4.8 vendor=Silverpeas version=6.4.8 build=1
# Mon, 26 Oct 2026 23:43:03 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver keys.openpgp.org --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && wget -nc https://www.silverpeas.org/files/oak-migrate.zip   && echo '87009e55520e74b5d2a386f4ebc843ee43cd1f25ca5138f342a94a31add3cfbd oak-migrate.zip' | sha256sum -c --status -   && mkdir -p /opt/oak-migration   && unzip oak-migrate.zip -d /opt/oak-migration/   && chmod +x /opt/oak-migration/oak-migrate.sh   && rm *.zip   && mkdir -p /root/.m2 # buildkit
# Mon, 26 Oct 2026 23:43:03 GMT
COPY src/settings.xml /root/.m2/ # buildkit
# Mon, 26 Oct 2026 23:43:03 GMT
COPY src/silverpeas.gradle /opt/silverpeas/bin/ # buildkit
# Mon, 26 Oct 2026 23:43:03 GMT
WORKDIR /opt/silverpeas/bin
# Mon, 26 Oct 2026 23:43:03 GMT
COPY src/run.sh /opt/ # buildkit
# Mon, 26 Oct 2026 23:43:03 GMT
COPY src/converter.groovy /opt/silverpeas/configuration/silverpeas/ # buildkit
# Mon, 26 Oct 2026 23:44:20 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN set -eux;   sed -i -e "s/SILVERPEAS_VERSION/${SILVERPEAS_VERSION}/g" ${SILVERPEAS_HOME}/bin/silverpeas.gradle;   echo "Construct Silverpeas ${SILVERPEAS_VERSION}";   ./silverpeas assemble || (cat ../log/build-* && exit 1);   rm ../log/build-*;   touch .install; # buildkit
# Mon, 26 Oct 2026 23:44:20 GMT
EXPOSE map[8000/tcp:{} 9990/tcp:{}]
# Mon, 26 Oct 2026 23:44:20 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/properties /opt/silverpeas/xmlcomponents/workflows]
# Mon, 26 Oct 2026 23:44:20 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c62eb0e1fbd13578cb7bb4f7ce2b597ce53f88b40dd7f6ea24850be0311b5741`  
		Last Modified: Mon, 26 Oct 2026 23:45:59 GMT  
		Size: 494.9 MB (494862507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:644c23e205d466409c3b92f0dc73da3ccd56cc3a19c03e1854ad8141b7703b40`  
		Last Modified: Mon, 26 Oct 2026 23:45:44 GMT  
		Size: 4.0 MB (3994011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:725fad6ffb1473e663598a063c8cabf0e67b0a61aa1da2987a6a09d8d6832ec2`  
		Last Modified: Mon, 26 Oct 2026 23:45:44 GMT  
		Size: 7.1 MB (7146620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c077787319392a508d869e8f81fed2b5ac6eebdf5c338d00e9ffa37d904fc35`  
		Last Modified: Mon, 26 Oct 2026 23:45:44 GMT  
		Size: 2.5 MB (2538622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ed371c3102e8dcdfe8a969a986bb027a0dc66bf8b98dd2e98798de5d54bd58b`  
		Last Modified: Mon, 26 Oct 2026 23:45:45 GMT  
		Size: 234.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:535fb3a3ff699af6c7072bb874cb8ab781041400a85c3413cfa5d7113c9da156`  
		Last Modified: Mon, 26 Oct 2026 23:45:45 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ca27a16650c124b6ded7cea346b9d28ed113c0047788232d9957f989118fb61`  
		Last Modified: Mon, 26 Oct 2026 23:45:55 GMT  
		Size: 269.1 MB (269106957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e79a10399d2817792b22d747abe44df07c9991787d8f94c9d58c8cb85b548863`  
		Last Modified: Mon, 26 Oct 2026 23:45:46 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f5ea4dd619fe5c340eed0d571efb57cdff6a149df794a768765df09b6644ea7`  
		Last Modified: Mon, 26 Oct 2026 23:45:46 GMT  
		Size: 663.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76a5eb1158c52a407046293f6c96f6f2fcfef2c5aaedd388e436f07d331ace28`  
		Last Modified: Mon, 26 Oct 2026 23:45:48 GMT  
		Size: 1.4 KB (1448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f8655435826d604644059eac44e56ed8a90ae24f098ab5b912ee2212283b58d`  
		Last Modified: Mon, 26 Oct 2026 23:45:48 GMT  
		Size: 385.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aea07fae7131799ba814cba30b005c215e3d96117dbbddbc8343758902873938`  
		Last Modified: Mon, 26 Oct 2026 23:46:10 GMT  
		Size: 1.0 GB (1011230950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `silverpeas:latest` - unknown; unknown

```console
$ docker pull silverpeas@sha256:cc0b9ad701d80c71cd4492a322215be3ac5bf3604053d80959bc0a76212e537a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16635882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f85704fadb83643cd01888f888a69a1bad9697f0e4199803153931eac41ed9c`

```dockerfile
```

-	Layers:
	-	`sha256:fc3d62db901d2a7bf8726d5e2770e77495d3c924c4589e290651f64750bb7930`  
		Last Modified: Mon, 26 Oct 2026 23:45:44 GMT  
		Size: 16.6 MB (16593376 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2acc85c9b9fb9c8aae3ca86ef2ba2536fcd24b6941dea49e71f8fb073849a94a`  
		Last Modified: Mon, 26 Oct 2026 23:45:43 GMT  
		Size: 42.5 KB (42506 bytes)  
		MIME: application/vnd.in-toto+json
