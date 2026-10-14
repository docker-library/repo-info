## `mongo:9-resolute`

```console
$ docker pull mongo@sha256:458d71ae7733ec09ac63710422d2435de09803de1540424cdb1cc099678f6070
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mongo:9-resolute` - linux; amd64

```console
$ docker pull mongo@sha256:bfdfadb4d4caf1134bbd1ea6441417c3e5f3217889187bc4c8b13e7422fa0072
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **387.9 MB (387903878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d10bac793ee89d117c82397d5b48e1145cd737815506e5898396988229adc21`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9550.tar --tag 26.04
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9550.tar
# Wed, 14 Oct 2026 17:09:22 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Wed, 14 Oct 2026 17:09:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 14 Oct 2026 17:09:45 GMT
ENV GOSU_VERSION=1.19
# Wed, 14 Oct 2026 17:09:45 GMT
ENV JSYAML_VERSION=3.13.1
# Wed, 14 Oct 2026 17:09:45 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Wed, 14 Oct 2026 17:09:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-9.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor 'B3B42B6C39E5CDDEC0A27E3CF366D55B602E502D' 'CC524D92D4374A7FDD702AC3849AF88AAC5C6694' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 14 Oct 2026 17:09:45 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 14 Oct 2026 17:09:45 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 14 Oct 2026 17:09:45 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 14 Oct 2026 17:09:45 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 14 Oct 2026 17:09:45 GMT
ENV MONGO_MAJOR=9.0
# Wed, 14 Oct 2026 17:09:46 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu resolute/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Wed, 14 Oct 2026 17:09:46 GMT
ENV MONGO_VERSION=9.0.4
# Wed, 14 Oct 2026 17:10:07 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Wed, 14 Oct 2026 17:10:07 GMT
VOLUME [/data/db /data/configdb]
# Wed, 14 Oct 2026 17:10:07 GMT
ENV HOME=/data/db
# Wed, 14 Oct 2026 17:10:07 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Wed, 14 Oct 2026 17:10:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 14 Oct 2026 17:10:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Oct 2026 17:10:07 GMT
EXPOSE map[27017/tcp:{}]
# Wed, 14 Oct 2026 17:10:07 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:4e07a0f12b2c009f98326fa391e869bd52fc63728c482400af6cb752bc16744b`  
		Last Modified: Sun, 27 Sep 2026 12:12:08 GMT  
		Size: 41.8 MB (41837521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ad70e463aa4a17833d00d6d5d346c895ebb66fee637eefd67024dc6cdc2f1c`  
		Last Modified: Sun, 27 Sep 2026 12:12:11 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b7f8aeff879fd7dd0eb480b909e29f68bc5f8178c0f315bbf64343a97164103`  
		Last Modified: Wed, 14 Oct 2026 17:10:48 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96236490913d48a478b249ac5944786d1c4a5e4d22e44e9ad7cdbdfb773e4132`  
		Last Modified: Wed, 14 Oct 2026 17:10:48 GMT  
		Size: 4.5 MB (4518995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8555da623e0acc75e52ee65ac6ec05c97bc3ae4247ea1b5408b863e971f14cd8`  
		Last Modified: Wed, 14 Oct 2026 17:10:48 GMT  
		Size: 938.7 KB (938653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b135053ddefa1de6fe2b6892db0490a8a470094c656d52bc19c5cfab6464115b`  
		Last Modified: Wed, 14 Oct 2026 17:10:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed5aa44bdafadfd7609777d1c27b069fa22108f0bf73c1a29e230029a2ce807e`  
		Last Modified: Wed, 14 Oct 2026 17:10:49 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b49e78495a30996bdb69763232104641ebbd97e898d55240491a5ae87dd140d`  
		Last Modified: Wed, 14 Oct 2026 17:10:56 GMT  
		Size: 340.6 MB (340601715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd0100c52ce9c85d7bb18bd85961678d5836c3b4414894f9363e1559775d50f0`  
		Last Modified: Wed, 14 Oct 2026 17:10:49 GMT  
		Size: 5.0 KB (5006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:9-resolute` - unknown; unknown

```console
$ docker pull mongo@sha256:2df83432cb8ba892e19489d931b679b5e4615e4f87e8cc45950d4020647adf47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4534687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48aef1da1e5266efb1a12c98ccca0e275d58f51ae49deeca3c6d61603563b5b2`

```dockerfile
```

-	Layers:
	-	`sha256:45594eef3969285a832e98f96a0f7dfee8f48691b2963266cab95572cd6849bb`  
		Last Modified: Wed, 14 Oct 2026 17:10:48 GMT  
		Size: 4.5 MB (4504584 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:71ae69f3b4cc209e6d298118134a8825f89faa80aaee0b58ff81a0960e6ef7b6`  
		Last Modified: Wed, 14 Oct 2026 17:10:48 GMT  
		Size: 30.1 KB (30103 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:9-resolute` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:8bb2a74b651703c5720790016a81c7769643fe4293d8bf3e0475e205c0651855
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **371.6 MB (371631294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4815e3b2efb1b3e7c07b6cb507206961c39d9a6fe5239ae364a31e35a54bc90b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9649.tar --tag 26.04
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:29:55.694692+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:29:55.694692+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9649.tar
# Wed, 14 Oct 2026 17:09:34 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Wed, 14 Oct 2026 17:09:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 14 Oct 2026 17:09:54 GMT
ENV GOSU_VERSION=1.19
# Wed, 14 Oct 2026 17:09:54 GMT
ENV JSYAML_VERSION=3.13.1
# Wed, 14 Oct 2026 17:09:54 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Wed, 14 Oct 2026 17:09:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-9.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor 'B3B42B6C39E5CDDEC0A27E3CF366D55B602E502D' 'CC524D92D4374A7FDD702AC3849AF88AAC5C6694' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 14 Oct 2026 17:09:54 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 14 Oct 2026 17:09:54 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 14 Oct 2026 17:09:54 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 14 Oct 2026 17:09:54 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 14 Oct 2026 17:09:54 GMT
ENV MONGO_MAJOR=9.0
# Wed, 14 Oct 2026 17:09:55 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu resolute/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Wed, 14 Oct 2026 17:09:55 GMT
ENV MONGO_VERSION=9.0.4
# Wed, 14 Oct 2026 17:10:21 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Wed, 14 Oct 2026 17:10:21 GMT
VOLUME [/data/db /data/configdb]
# Wed, 14 Oct 2026 17:10:21 GMT
ENV HOME=/data/db
# Wed, 14 Oct 2026 17:10:21 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Wed, 14 Oct 2026 17:10:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 14 Oct 2026 17:10:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Oct 2026 17:10:21 GMT
EXPOSE map[27017/tcp:{}]
# Wed, 14 Oct 2026 17:10:21 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:06db5ba23986104cd78dcfa853ddf2354c943d2efefc333eca2b447d4559d89c`  
		Last Modified: Sun, 27 Sep 2026 12:12:17 GMT  
		Size: 40.9 MB (40864755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa77813dc560f299656013d742628128cac51fdfda979349e96a9f09497170f`  
		Last Modified: Sun, 27 Sep 2026 12:12:20 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4c8b38e6af5612412929f3ac5d3b9183a173a692f1cd95fdab1e627366a8870`  
		Last Modified: Wed, 14 Oct 2026 17:11:02 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5be6a14aeca6eb920079e423b1536e993af604c3cf089788d264c9ece68e8749`  
		Last Modified: Wed, 14 Oct 2026 17:11:02 GMT  
		Size: 4.9 MB (4854095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d1353d7094b2d61d7227d8c3933292fff30cde26999bf475d4957ad88a1973f`  
		Last Modified: Wed, 14 Oct 2026 17:11:02 GMT  
		Size: 892.4 KB (892369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80d85bb041a808703cd90023c4c1380c3c92a3ca4cd97d9779c55077914cf735`  
		Last Modified: Wed, 14 Oct 2026 17:11:02 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:711283a5b421e6fa67e0af7eff85b19da13ca84d315e7566568a6d94c663ef11`  
		Last Modified: Wed, 14 Oct 2026 17:11:03 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5535e2f7c545ba74a4f7b4253a9db003ee6b91af944157bf88cc2b4717ccbe8a`  
		Last Modified: Wed, 14 Oct 2026 17:11:10 GMT  
		Size: 325.0 MB (325013077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2b489eec5efbec7cdb61b2c454beb92e20abfe50062a074a1a116bf4e12436d`  
		Last Modified: Wed, 14 Oct 2026 17:11:03 GMT  
		Size: 5.0 KB (5011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:9-resolute` - unknown; unknown

```console
$ docker pull mongo@sha256:f776f57133fff0ea859fc9f8ef9ac72b5102eb54c492e84a917cdfaa59b05566
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4535245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab48e9139c3d897e1a15b7ca0edcfe2c9fe5539aeabc9018316de7d89bff9dec`

```dockerfile
```

-	Layers:
	-	`sha256:0c0ed3aa3bb7d9e546cfdcfddec522f98198dad8189d5a3c5bae72ac2a9070c3`  
		Last Modified: Wed, 14 Oct 2026 17:11:02 GMT  
		Size: 4.5 MB (4504916 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2768fba7e75326ab01999dcda61c201b364cb471f7678d42c6437aaed819255`  
		Last Modified: Wed, 14 Oct 2026 17:11:02 GMT  
		Size: 30.3 KB (30329 bytes)  
		MIME: application/vnd.in-toto+json
