## `mongo:5-focal`

```console
$ docker pull mongo@sha256:63e13a7b6732ed1854390f8f3074214c228510b1b8f34c703fbd86d28823e9f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:5-focal` - linux; amd64

```console
$ docker pull mongo@sha256:ae21ec58a9282480e489ef5a506a6ca55564d8343b9ca69aff3ace34638930b7
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.6 MB (247649257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4318aabd7fa84a82c7a453ef74ff66f10bd5dd22ba4be77488f7824e98821cac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 09 Dec 2022 01:20:21 GMT
ADD file:9d282119af0c42bc823c95b4192a3350cf2cad670622017356dd2e637762e425 in / 
# Fri, 09 Dec 2022 01:20:21 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 02:36:46 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 09 Dec 2022 02:36:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dirmngr 		gnupg 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 02:36:57 GMT
ENV GOSU_VERSION=1.12
# Fri, 09 Dec 2022 02:36:57 GMT
ENV JSYAML_VERSION=3.13.1
# Fri, 09 Dec 2022 02:37:06 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true
# Fri, 09 Dec 2022 02:37:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 09 Dec 2022 02:37:44 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	set -- 'F5679A222C647C87527C2F8CB00A0BD1E2C63C11'; 	for key; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export "$@" > /etc/apt/keyrings/mongodb.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"
# Fri, 09 Dec 2022 02:37:44 GMT
ARG MONGO_PACKAGE=mongodb-org
# Fri, 09 Dec 2022 02:37:44 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 09 Dec 2022 02:37:44 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Fri, 09 Dec 2022 02:37:44 GMT
ENV MONGO_MAJOR=5.0
# Fri, 09 Dec 2022 02:37:45 GMT
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.gpg ] http://$MONGO_REPO/apt/ubuntu focal/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 09 Dec 2022 02:37:45 GMT
ENV MONGO_VERSION=5.0.14
# Fri, 09 Dec 2022 02:38:14 GMT
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 09 Dec 2022 02:38:16 GMT
VOLUME [/data/db /data/configdb]
# Fri, 09 Dec 2022 02:38:16 GMT
ENV HOME=/data/db
# Fri, 09 Dec 2022 02:38:16 GMT
COPY file:82adc06ee9084caf92c64e3fbb536f06b2a724aa0c1f122d17c10c70a5a1b90e in /usr/local/bin/ 
# Fri, 09 Dec 2022 02:38:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Dec 2022 02:38:16 GMT
EXPOSE 27017
# Fri, 09 Dec 2022 02:38:17 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:846c0b181fff0c667d9444f8378e8fcfa13116da8d308bf21673f7e4bea8d580`  
		Last Modified: Thu, 08 Dec 2022 13:18:11 GMT  
		Size: 28.6 MB (28576882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef773e84b43a9957d1af78717d365575c45617e5309f34a2aa8e495069798539`  
		Last Modified: Fri, 09 Dec 2022 02:40:25 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bfad1efb66451e1de01270bfb34ed66ec187ecc32cdb67bdec2fedca0cb7b78`  
		Last Modified: Fri, 09 Dec 2022 02:40:27 GMT  
		Size: 8.3 MB (8347737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e59a6d63c9b4462dbd6841a103e52acfc8ad333bf6058f5c5ed5c529e26104`  
		Last Modified: Fri, 09 Dec 2022 02:40:26 GMT  
		Size: 1.2 MB (1235335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f00ac700e0cec4e1e43e12f9c179f244d0bcd5f384c2c9c5c40b8ae4eab0c8`  
		Last Modified: Fri, 09 Dec 2022 02:40:23 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8600b3631686b32dd2362e926739233ff640ccc1661be6a7edb0f2f3717f2b2f`  
		Last Modified: Fri, 09 Dec 2022 02:41:03 GMT  
		Size: 1.4 KB (1447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ccab583421c4d79f7cdbd266f0a100f124252afa2b93c34249ce13b94a2361`  
		Last Modified: Fri, 09 Dec 2022 02:41:03 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6763329908c691cf198569b451383d2d98548ad2be2ac4bcc6d99e94cc69157b`  
		Last Modified: Fri, 09 Dec 2022 02:41:32 GMT  
		Size: 209.5 MB (209480653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a91bb41d1aaf20166e57f85e27dc7337f8ae22a7a77ff0c15795944e8e15fe84`  
		Last Modified: Fri, 09 Dec 2022 02:41:04 GMT  
		Size: 5.0 KB (4963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:5-focal` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:8ebd78ead9771a20be59de8b77792661657a5fa6b8b1c88ccb54de3d3dea4396
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.1 MB (240064693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3973da92ab2dd2cf2b38a8ba3bf12ed9fed0c61317531557bb36766fb081f581`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 09 Dec 2022 01:46:50 GMT
ADD file:8cba976cb6ea226de769a768ee274e7679d34f923c93392f340680dc6696232e in / 
# Fri, 09 Dec 2022 01:46:50 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 03:32:26 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 09 Dec 2022 03:33:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		dirmngr 		gnupg 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 03:33:02 GMT
ENV GOSU_VERSION=1.12
# Fri, 09 Dec 2022 03:33:02 GMT
ENV JSYAML_VERSION=3.13.1
# Fri, 09 Dec 2022 03:33:10 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true
# Fri, 09 Dec 2022 03:33:11 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 09 Dec 2022 03:33:49 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	set -- 'F5679A222C647C87527C2F8CB00A0BD1E2C63C11'; 	for key; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export "$@" > /etc/apt/keyrings/mongodb.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"
# Fri, 09 Dec 2022 03:33:49 GMT
ARG MONGO_PACKAGE=mongodb-org
# Fri, 09 Dec 2022 03:33:49 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 09 Dec 2022 03:33:49 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Fri, 09 Dec 2022 03:33:50 GMT
ENV MONGO_MAJOR=5.0
# Fri, 09 Dec 2022 03:33:50 GMT
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.gpg ] http://$MONGO_REPO/apt/ubuntu focal/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 09 Dec 2022 03:33:50 GMT
ENV MONGO_VERSION=5.0.14
# Fri, 09 Dec 2022 03:34:08 GMT
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 09 Dec 2022 03:34:12 GMT
VOLUME [/data/db /data/configdb]
# Fri, 09 Dec 2022 03:34:12 GMT
ENV HOME=/data/db
# Fri, 09 Dec 2022 03:34:12 GMT
COPY file:82adc06ee9084caf92c64e3fbb536f06b2a724aa0c1f122d17c10c70a5a1b90e in /usr/local/bin/ 
# Fri, 09 Dec 2022 03:34:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Dec 2022 03:34:12 GMT
EXPOSE 27017
# Fri, 09 Dec 2022 03:34:12 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:f04b4bbe15805316c8fda79beedd3b77e6b1ffcd0acf81226c3089e63f6bffeb`  
		Last Modified: Thu, 08 Dec 2022 15:28:02 GMT  
		Size: 27.2 MB (27193168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83fa6fcd8473e6fa6433f55142d9c974f4567154eb0a71e8d1e87798291f30b3`  
		Last Modified: Fri, 09 Dec 2022 03:36:34 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:446df0a3bab48e1d13c800934f85a49fd3699cbcfa499e48832a0ce9952ebe88`  
		Last Modified: Fri, 09 Dec 2022 03:36:35 GMT  
		Size: 8.2 MB (8176933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:103570790f4fc06adbaceee688035e7165ead154becbe7a6dc15ec6c1c33f590`  
		Last Modified: Fri, 09 Dec 2022 03:36:34 GMT  
		Size: 1.2 MB (1170741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eecf974f5e71402b0c615f04b25c9e20e6d86259d2e95df9000a30c8061c12de`  
		Last Modified: Fri, 09 Dec 2022 03:36:32 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a72d623cba3f4edef8c47f3505486d58c33d1d9856c3f9750e6192c097d4c115`  
		Last Modified: Fri, 09 Dec 2022 03:37:05 GMT  
		Size: 1.4 KB (1445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98a680eaf012299a5922cd6632af5fb2c433965482a1bab14697c1b4b15323b9`  
		Last Modified: Fri, 09 Dec 2022 03:37:05 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a77e03c55d59ab3878268138dd2a505e961278262ac4327b69bebd37571d227`  
		Last Modified: Fri, 09 Dec 2022 03:37:26 GMT  
		Size: 203.5 MB (203515202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b8166df82a6146eedc91586b65cae96245133a10bc0cf600c72eca5a122dd98`  
		Last Modified: Fri, 09 Dec 2022 03:37:05 GMT  
		Size: 5.0 KB (4960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
