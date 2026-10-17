## `mongo:9-resolute`

```console
$ docker pull mongo@sha256:b12d8bb894a6489876ec382111184d53420df8fede558b90d644ee1ff28a5ebe
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mongo:9-resolute` - linux; amd64

```console
$ docker pull mongo@sha256:b609cdfba3a865331378cc4158bc52522a3bf176d59a7ff2c43fab52f5d9d5cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **385.2 MB (385237437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe6dd87698f3b344925407cfc3a6b26dee20265c7a41288620c1aeb1e74ad117`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 06 Oct 2026 21:25:29 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.9621.tar --tag 26.04
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-06T21:25:30.040262+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-06T21:25:30.040262+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.control_data.9621.tar
# Sat, 17 Oct 2026 00:31:55 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Sat, 17 Oct 2026 00:32:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:32:20 GMT
ENV GOSU_VERSION=1.19
# Sat, 17 Oct 2026 00:32:20 GMT
ENV JSYAML_VERSION=3.13.1
# Sat, 17 Oct 2026 00:32:20 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Sat, 17 Oct 2026 00:32:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-9.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor 'B3B42B6C39E5CDDEC0A27E3CF366D55B602E502D' 'CC524D92D4374A7FDD702AC3849AF88AAC5C6694' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 17 Oct 2026 00:32:20 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 17 Oct 2026 00:32:20 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 17 Oct 2026 00:32:20 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 17 Oct 2026 00:32:20 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 17 Oct 2026 00:32:20 GMT
ENV MONGO_MAJOR=9.0
# Sat, 17 Oct 2026 00:32:20 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu resolute/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Sat, 17 Oct 2026 00:32:20 GMT
ENV MONGO_VERSION=9.0.4
# Sat, 17 Oct 2026 00:32:45 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Sat, 17 Oct 2026 00:32:45 GMT
VOLUME [/data/db /data/configdb]
# Sat, 17 Oct 2026 00:32:45 GMT
ENV HOME=/data/db
# Sat, 17 Oct 2026 00:32:45 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Sat, 17 Oct 2026 00:32:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 17 Oct 2026 00:32:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Oct 2026 00:32:45 GMT
EXPOSE map[27017/tcp:{}]
# Sat, 17 Oct 2026 00:32:45 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:435bf5c20694c99dd5a9877e58e24b26a2207fcf8c692a3c3ce3c867770a5b41`  
		Last Modified: Wed, 07 Oct 2026 20:45:12 GMT  
		Size: 42.1 MB (42149117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9d511d19a19ebdeda520e0752f184d457905c7a310df5b748d133a51274ecd4`  
		Last Modified: Wed, 07 Oct 2026 20:45:15 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9db81eeecfb418ae9ad640f9ec6595237e0d45478ec6ddd3ff6f9f968722ef2d`  
		Last Modified: Sat, 17 Oct 2026 00:33:30 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ae9586256c24be5d6f442f981a7e73f8fa72ad4e8e95f6cc4ceb0d0e3f8f59c`  
		Last Modified: Sat, 17 Oct 2026 00:33:31 GMT  
		Size: 1.5 MB (1541389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35a0f6a0a7257d34ebb3a7c6710d54105f982d45f66c9c74b25e4086dfb5bf5c`  
		Last Modified: Sat, 17 Oct 2026 00:33:31 GMT  
		Size: 938.4 KB (938410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e98149e3f6d770b14370d29cef81d959a0595a64afe3325ccb882d577f6a2ffc`  
		Last Modified: Sat, 17 Oct 2026 00:33:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87e1c0d009402aa88f0b75f5d51b791bacf2ad9a8433484dc862e1a50be249fc`  
		Last Modified: Sat, 17 Oct 2026 00:33:32 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:438d4ef4a55ced5fec6215d2921b164328c917e96c32c01c31f130b086d09166`  
		Last Modified: Sat, 17 Oct 2026 00:33:39 GMT  
		Size: 340.6 MB (340601526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f12ee8b356b114c87831b41c45345fff54768940c6811604430cac5eddad091a`  
		Last Modified: Sat, 17 Oct 2026 00:33:32 GMT  
		Size: 5.0 KB (5008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:9-resolute` - unknown; unknown

```console
$ docker pull mongo@sha256:26d0fab80954130b15a1e8f708f8a33c1ba333d75c208431882990345a0e3cd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4533111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccf3de193f371aa0b5331d34fe1e8dbc4932e774490592219f22e9333de76596`

```dockerfile
```

-	Layers:
	-	`sha256:b28256bd960217d8056b4ab60807db58d08f524e14ac1c9b1a49fad039f4a859`  
		Last Modified: Sat, 17 Oct 2026 00:33:31 GMT  
		Size: 4.5 MB (4503008 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2dd4d47871cb6a1115b0c24a2e125c92764dedcdf190b695a27ca0de9f57b6ec`  
		Last Modified: Sat, 17 Oct 2026 00:33:31 GMT  
		Size: 30.1 KB (30103 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:9-resolute` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:4278740dbc9d04c9d41d4ea140518c126ff42caecb1fad1eca26e0805d526ff0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **368.5 MB (368537206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecb10c0fcda8956f56417eecc656cf6439a418d06f69c057cbfad544f570debc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 06 Oct 2026 20:38:11 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.9614.tar --tag 26.04
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-06T20:38:12.175309+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-06T20:38:12.175309+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.control_data.9614.tar
# Sat, 17 Oct 2026 00:31:37 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Sat, 17 Oct 2026 00:31:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:31:59 GMT
ENV GOSU_VERSION=1.19
# Sat, 17 Oct 2026 00:31:59 GMT
ENV JSYAML_VERSION=3.13.1
# Sat, 17 Oct 2026 00:31:59 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Sat, 17 Oct 2026 00:31:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-9.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor 'B3B42B6C39E5CDDEC0A27E3CF366D55B602E502D' 'CC524D92D4374A7FDD702AC3849AF88AAC5C6694' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 17 Oct 2026 00:31:59 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 17 Oct 2026 00:31:59 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 17 Oct 2026 00:31:59 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 17 Oct 2026 00:31:59 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 17 Oct 2026 00:31:59 GMT
ENV MONGO_MAJOR=9.0
# Sat, 17 Oct 2026 00:31:59 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu resolute/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Sat, 17 Oct 2026 00:31:59 GMT
ENV MONGO_VERSION=9.0.4
# Sat, 17 Oct 2026 00:32:23 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Sat, 17 Oct 2026 00:32:23 GMT
VOLUME [/data/db /data/configdb]
# Sat, 17 Oct 2026 00:32:23 GMT
ENV HOME=/data/db
# Sat, 17 Oct 2026 00:32:23 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Sat, 17 Oct 2026 00:32:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 17 Oct 2026 00:32:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Oct 2026 00:32:23 GMT
EXPOSE map[27017/tcp:{}]
# Sat, 17 Oct 2026 00:32:23 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:00dbf11534ae4abda99e035d0e681f5254da63d2f778eaed69f1e5f6be9a6092`  
		Last Modified: Wed, 07 Oct 2026 20:45:23 GMT  
		Size: 41.1 MB (41107810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8eae6888566fa953bb1c57088f997a22020e240963959b195cbe865109eabd9`  
		Last Modified: Wed, 07 Oct 2026 20:45:26 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90de0e1838a6022808ab4b92e9b048da016462b6c7f697da057bf346ad1ba05c`  
		Last Modified: Sat, 17 Oct 2026 00:33:02 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4264f98d10f61366cfdba988ef1a83431df4e857c4b67d1ba13ad168330395c`  
		Last Modified: Sat, 17 Oct 2026 00:33:02 GMT  
		Size: 1.5 MB (1517912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aded46b066819107fd5e954908f140645d0654f5607199bd48fc4b090070962`  
		Last Modified: Sat, 17 Oct 2026 00:33:02 GMT  
		Size: 891.9 KB (891949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd6b3fbd3b435ab52f79682cc2dbf940cc16ab8e4c5c68dd2b3429240d5107c9`  
		Last Modified: Sat, 17 Oct 2026 00:33:02 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d0d10178793e842493932b4fe4a297ff8cf483b2f5ec6d7e92fdab72b2a8218`  
		Last Modified: Sat, 17 Oct 2026 00:33:03 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc6dc5080e2b36dd0c185c9d5ac931453af776c7d47d3f66f7fe89a34dd0d37e`  
		Last Modified: Sat, 17 Oct 2026 00:33:09 GMT  
		Size: 325.0 MB (325012546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8a46b07a2c4518cb22fde8c732520172be3b3e8d94f55b554ebdc6897985615`  
		Last Modified: Sat, 17 Oct 2026 00:33:03 GMT  
		Size: 5.0 KB (5008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:9-resolute` - unknown; unknown

```console
$ docker pull mongo@sha256:933b269c268426ab962afe9c30b9cfd5332d4621b431b877ea5780b5ba620ff8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4533667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42ebe7cb4c55477ff30a63c2b921d03a97f88dcea3356d263781e05ff240103f`

```dockerfile
```

-	Layers:
	-	`sha256:86490cf1282462b3034f5355b7991c6237525b4b58ea954955fbe13b60f15bbf`  
		Last Modified: Sat, 17 Oct 2026 00:33:02 GMT  
		Size: 4.5 MB (4503340 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad9534ebb05441aa55e6a96c0f0f5271d38431e94c4b13773ce9f41dd2cab39f`  
		Last Modified: Sat, 17 Oct 2026 00:33:02 GMT  
		Size: 30.3 KB (30327 bytes)  
		MIME: application/vnd.in-toto+json
