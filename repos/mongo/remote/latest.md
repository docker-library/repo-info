## `mongo:latest`

```console
$ docker pull mongo@sha256:452bdaf2127b8ff851e31410a267809b9829eded219979f2210e7c7efb85a058
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `mongo:latest` - linux; amd64

```console
$ docker pull mongo@sha256:ce91889f87a369d312e50ecbc6c0b7f960e915bc4b69c4f6662402fa7011d242
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **385.7 MB (385665716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b56d78aee1b13f1e149a7208eaab503c238869c483209816eeba85636ede26a5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.9587.tar --tag 26.04
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-25T10:26:07.538865+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-25T10:26:07.538865+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.control_data.9587.tar
# Mon, 26 Oct 2026 23:24:53 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Mon, 26 Oct 2026 23:25:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:25:15 GMT
ENV GOSU_VERSION=1.19
# Mon, 26 Oct 2026 23:25:15 GMT
ENV JSYAML_VERSION=3.13.1
# Mon, 26 Oct 2026 23:25:15 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Mon, 26 Oct 2026 23:25:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-9.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor 'B3B42B6C39E5CDDEC0A27E3CF366D55B602E502D' 'CC524D92D4374A7FDD702AC3849AF88AAC5C6694' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 26 Oct 2026 23:25:15 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:25:15 GMT
ARG MONGO_PACKAGE=mongodb-org
# Mon, 26 Oct 2026 23:25:15 GMT
ARG MONGO_REPO=repo.mongodb.org
# Mon, 26 Oct 2026 23:25:15 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Mon, 26 Oct 2026 23:25:15 GMT
ENV MONGO_MAJOR=9.0
# Mon, 26 Oct 2026 23:25:16 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu resolute/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Mon, 26 Oct 2026 23:25:16 GMT
ENV MONGO_VERSION=9.0.4
# Mon, 26 Oct 2026 23:25:37 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Mon, 26 Oct 2026 23:25:37 GMT
VOLUME [/data/db /data/configdb]
# Mon, 26 Oct 2026 23:25:37 GMT
ENV HOME=/data/db
# Mon, 26 Oct 2026 23:25:37 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Mon, 26 Oct 2026 23:25:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:25:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:25:37 GMT
EXPOSE map[27017/tcp:{}]
# Mon, 26 Oct 2026 23:25:37 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:edafa32f5d9e4d9629f0dbc6c01e63c79ff08133c01cfb7d3363aa8bd8a614cf`  
		Last Modified: Sun, 25 Oct 2026 13:21:15 GMT  
		Size: 42.1 MB (42139920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3f25b84a7d74315d94ee4108231f8f5e0cd2a44725a7204d5dd6ce91c151697`  
		Last Modified: Sun, 25 Oct 2026 13:21:18 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce49395e697634a4386c0ff8cda9cdbbf9580450e1747a25818990513b5e2fba`  
		Last Modified: Mon, 26 Oct 2026 23:26:18 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f241cf8d7013f648df1e161ea066a2a3f6d316e92458d73fd85288da9b5c2553`  
		Last Modified: Mon, 26 Oct 2026 23:26:18 GMT  
		Size: 1.5 MB (1540796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0be95fbdf58ca2380dee1dac9bd7db72852c43e72183835c384c5f56ae436fda`  
		Last Modified: Mon, 26 Oct 2026 23:26:18 GMT  
		Size: 938.3 KB (938301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2e72a39651c632179691f7e4a2a5afad12a287981607a906c16f1e22acc3ffe`  
		Last Modified: Mon, 26 Oct 2026 23:26:18 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffcd860d5e154dfcd8f2e1082d615975073a6ab76aa03a1ae07454eea5bb8dfc`  
		Last Modified: Mon, 26 Oct 2026 23:26:19 GMT  
		Size: 266.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cac1b769635f6f89a5bdf46937d1d229fefad9347b9ace5be4d2f1b4861718b6`  
		Last Modified: Mon, 26 Oct 2026 23:26:26 GMT  
		Size: 341.0 MB (341039703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83ff6ac63f37b0a6a4230c5f3c0b218330b5c14e872d063255b871282bf113e8`  
		Last Modified: Mon, 26 Oct 2026 23:26:20 GMT  
		Size: 5.0 KB (5005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:latest` - unknown; unknown

```console
$ docker pull mongo@sha256:50a75dfa0dd99d84dd5774ff6af56af7549baf6ab8c67c1e4ed60fea13ac8eef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4529439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:827ff824d48232ece394b101e464e2273d86bd9b5e2dcca405e75385e74e82d0`

```dockerfile
```

-	Layers:
	-	`sha256:45b019dfcb21b7d5a074cd42e62bbb00ae0d9c4e1d152b276c62f954a0958c80`  
		Last Modified: Mon, 26 Oct 2026 23:26:18 GMT  
		Size: 4.5 MB (4499336 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a2c63934e5d0bbc87fa98b80e7be671d5f03db29811da53ab1516d4774d83ad9`  
		Last Modified: Mon, 26 Oct 2026 23:26:18 GMT  
		Size: 30.1 KB (30103 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:latest` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:b6514c2b5d83c170481c5cde26446115bd8bd48bbc1ee7eae9effef005bfb4c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **368.9 MB (368875896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:013fa3d024e93df282da3f2e01bc147656ec65ecd8c2dc7e3c6d32cb1263a28a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sun, 25 Oct 2026 10:30:31 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.9649.tar --tag 26.04
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-25T10:30:32.309136+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-25T10:30:32.309136+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.control_data.9649.tar
# Mon, 26 Oct 2026 23:29:23 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Mon, 26 Oct 2026 23:29:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:29:49 GMT
ENV GOSU_VERSION=1.19
# Mon, 26 Oct 2026 23:29:49 GMT
ENV JSYAML_VERSION=3.13.1
# Mon, 26 Oct 2026 23:29:49 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Mon, 26 Oct 2026 23:29:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-9.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor 'B3B42B6C39E5CDDEC0A27E3CF366D55B602E502D' 'CC524D92D4374A7FDD702AC3849AF88AAC5C6694' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 26 Oct 2026 23:29:49 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:29:49 GMT
ARG MONGO_PACKAGE=mongodb-org
# Mon, 26 Oct 2026 23:29:49 GMT
ARG MONGO_REPO=repo.mongodb.org
# Mon, 26 Oct 2026 23:29:49 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Mon, 26 Oct 2026 23:29:49 GMT
ENV MONGO_MAJOR=9.0
# Mon, 26 Oct 2026 23:29:49 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu resolute/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Mon, 26 Oct 2026 23:29:49 GMT
ENV MONGO_VERSION=9.0.4
# Mon, 26 Oct 2026 23:30:14 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Mon, 26 Oct 2026 23:30:14 GMT
VOLUME [/data/db /data/configdb]
# Mon, 26 Oct 2026 23:30:14 GMT
ENV HOME=/data/db
# Mon, 26 Oct 2026 23:30:14 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Mon, 26 Oct 2026 23:30:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:30:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:30:14 GMT
EXPOSE map[27017/tcp:{}]
# Mon, 26 Oct 2026 23:30:14 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:afa7f7d582de8ee3433df193ede10fc2c50d3398de31c14d329b643e7a69b852`  
		Last Modified: Sun, 25 Oct 2026 13:21:25 GMT  
		Size: 41.1 MB (41122308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f01cc7d6fb3d703f324d1ccddfddeaa2e8c97cf4b5d6936a66396eaf4089d99`  
		Last Modified: Sun, 25 Oct 2026 13:21:28 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aad34a0cef9bf1d719f546c2b7d7fe7400f0dfde869db69574d69ba828c35ca0`  
		Last Modified: Mon, 26 Oct 2026 23:30:54 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df7bbc81769936f995e75644a2658905e9edf91dad1546443ad583c0504eee34`  
		Last Modified: Mon, 26 Oct 2026 23:30:54 GMT  
		Size: 1.5 MB (1516739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e09dc88a5c00223680386a09a99319e02bc30bc39d55ccad0cb92e1ba617141`  
		Last Modified: Mon, 26 Oct 2026 23:30:54 GMT  
		Size: 892.2 KB (892183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9abeaba1524e6228727160df36b9bf96166dcec11e9c2076e4086ab73bbdc00d`  
		Last Modified: Mon, 26 Oct 2026 23:30:54 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddfc287d935668a4f2cdac386fa31ecb32814651b9a51f60f331eeeb97f9229e`  
		Last Modified: Mon, 26 Oct 2026 23:30:55 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07836c76b0b24f0cb45b03840f86f7b81d2cf027064a1c6f3ec7106981278074`  
		Last Modified: Mon, 26 Oct 2026 23:31:01 GMT  
		Size: 325.3 MB (325337682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c784c950fb0a93f483c764c75f422f2c530dff8ae031fde741ff2772fdcedb8c`  
		Last Modified: Mon, 26 Oct 2026 23:30:55 GMT  
		Size: 5.0 KB (5006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:latest` - unknown; unknown

```console
$ docker pull mongo@sha256:fa3674052a8627b8912abdedfd32040109beb3cbcb291038c46008126a321841
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4529998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec7637c926055ea1c73d0d8af2b3a376d3c2df50c43e6f4870ba3c0c5eb12d31`

```dockerfile
```

-	Layers:
	-	`sha256:0cb6f7a032b9b77666fc74e0e244ba74d1e8768c3be9b2b1bb6a181b98997e8e`  
		Last Modified: Mon, 26 Oct 2026 23:30:54 GMT  
		Size: 4.5 MB (4499668 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bebf50e0e733d1222aa7df292d04ee8952125dccd3a2e7a98677a7d06dc1e6d3`  
		Last Modified: Mon, 26 Oct 2026 23:30:54 GMT  
		Size: 30.3 KB (30330 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:latest` - windows version 10.0.26100.33674; amd64

```console
$ docker pull mongo@sha256:70ded15f5008a728dcf6e9f3109e89caa67fe672bbe61f8cd6e13d860794291a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 GB (3387637828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30276e755c271f01dfd37bc3915377c2547130838d0ae9a464ce7190ae2f1d2e`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 27 Oct 2026 17:58:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 27 Oct 2026 17:58:36 GMT
ENV MONGO_VERSION=9.0.4
# Tue, 27 Oct 2026 17:58:36 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-9.0.4-signed.msi
# Tue, 27 Oct 2026 17:58:37 GMT
ENV MONGO_DOWNLOAD_SHA256=914085f58aaa9699d3bee720ef660db6bf83c478f4afa2aa40909ea773e5d476
# Tue, 27 Oct 2026 18:00:49 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 27 Oct 2026 18:00:50 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 27 Oct 2026 18:00:50 GMT
EXPOSE 27017
# Tue, 27 Oct 2026 18:00:50 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c65c650297c541b10bc7b03e61fef7f53d3ad5948e5336bab2d5447d85af231c`  
		Last Modified: Tue, 27 Oct 2026 18:00:56 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ff6de93a32a4d1f631fad451f0ef61a5dc77fd430801e0030b94e45c4df1416`  
		Last Modified: Tue, 27 Oct 2026 18:00:56 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:328af4762ecdf04fc3757dc4a03e54972d2907f9fdb8a7848c43c3c7c006c7c4`  
		Last Modified: Tue, 27 Oct 2026 18:00:56 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2ad63b065e62c3ca1e0e814f07531ded3d6711adfdc041c964693b2cc8b67a`  
		Last Modified: Tue, 27 Oct 2026 18:00:54 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6cecf85ccd7df8d8619c2aff0aa85fc931ffe76b8cdbcefb4d242ae6fe4d558`  
		Last Modified: Tue, 27 Oct 2026 18:02:06 GMT  
		Size: 995.6 MB (995579808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf53a76abe92333346132ff64858d50f25cd42a4ac8f98deec722a2a46c8fbc`  
		Last Modified: Tue, 27 Oct 2026 18:00:54 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d4eca26573b51be01cb49f3a87ba165b9a37654663f42314360530c8660171f`  
		Last Modified: Tue, 27 Oct 2026 18:00:54 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68a0ba2f8844be475ff6f4b17b47e4353a5d0d65fdcd788f8dcd916947d14af9`  
		Last Modified: Tue, 27 Oct 2026 18:00:54 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:latest` - windows version 10.0.20348.5773; amd64

```console
$ docker pull mongo@sha256:ef1c6e8448a902fe93d2115182eb04b6d3a8305e45193fe8c19d5e2a895eec38
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3222607530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70c479afe796df4dfa405b1e372d653828f99584f4f3fa56e1cc57291789d170`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 27 Oct 2026 17:59:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 27 Oct 2026 18:06:13 GMT
ENV MONGO_VERSION=9.0.4
# Tue, 27 Oct 2026 18:06:14 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-9.0.4-signed.msi
# Tue, 27 Oct 2026 18:06:14 GMT
ENV MONGO_DOWNLOAD_SHA256=914085f58aaa9699d3bee720ef660db6bf83c478f4afa2aa40909ea773e5d476
# Tue, 27 Oct 2026 18:07:53 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 27 Oct 2026 18:07:58 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 27 Oct 2026 18:07:58 GMT
EXPOSE 27017
# Tue, 27 Oct 2026 18:07:58 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c65daf2016e8f11984ad53aa6e96038c91bf728a60071a4a6c90c1939614f5`  
		Last Modified: Tue, 27 Oct 2026 18:00:21 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d10c2a2a26868b71115d94b9181d6fa9baeecdf409ec8a41d73e77af4224e797`  
		Last Modified: Tue, 27 Oct 2026 18:08:12 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f24f5cc48ae527b48f20491e685eeb382617eb56656dad4e6d8143c19e29b4c5`  
		Last Modified: Tue, 27 Oct 2026 18:08:13 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e89a2215f0da95a56f849cc23afd6e2a3ea0729ed488c93fc199737beccbff`  
		Last Modified: Tue, 27 Oct 2026 18:08:11 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b31092068bee9a786f0d051a28a7e0996dc2fca412337235b7cd02e8efd6d8a4`  
		Last Modified: Tue, 27 Oct 2026 18:09:29 GMT  
		Size: 995.5 MB (995542208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1258d28448b36136a1516e5b8f2baaf8b7fa5ab63c3845369da3d0ca080be9`  
		Last Modified: Tue, 27 Oct 2026 18:08:11 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c732a801aab5cbb216e1c2ce2fc77fe24b4782118f0280dd9ad036b79f325b`  
		Last Modified: Tue, 27 Oct 2026 18:08:11 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7490c31210b6d0b0abca3556b59321ecfcf66df71d88e4479263167f6fac9aa6`  
		Last Modified: Tue, 27 Oct 2026 18:08:11 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
