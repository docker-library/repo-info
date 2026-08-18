<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mongo`

-	[`mongo:7`](#mongo7)
-	[`mongo:7-jammy`](#mongo7-jammy)
-	[`mongo:7-nanoserver`](#mongo7-nanoserver)
-	[`mongo:7-nanoserver-ltsc2022`](#mongo7-nanoserver-ltsc2022)
-	[`mongo:7-windowsservercore`](#mongo7-windowsservercore)
-	[`mongo:7-windowsservercore-ltsc2022`](#mongo7-windowsservercore-ltsc2022)
-	[`mongo:7-windowsservercore-ltsc2025`](#mongo7-windowsservercore-ltsc2025)
-	[`mongo:7.0`](#mongo70)
-	[`mongo:7.0-jammy`](#mongo70-jammy)
-	[`mongo:7.0-nanoserver`](#mongo70-nanoserver)
-	[`mongo:7.0-nanoserver-ltsc2022`](#mongo70-nanoserver-ltsc2022)
-	[`mongo:7.0-windowsservercore`](#mongo70-windowsservercore)
-	[`mongo:7.0-windowsservercore-ltsc2022`](#mongo70-windowsservercore-ltsc2022)
-	[`mongo:7.0-windowsservercore-ltsc2025`](#mongo70-windowsservercore-ltsc2025)
-	[`mongo:7.0.40`](#mongo7040)
-	[`mongo:7.0.40-jammy`](#mongo7040-jammy)
-	[`mongo:7.0.40-nanoserver`](#mongo7040-nanoserver)
-	[`mongo:7.0.40-nanoserver-ltsc2022`](#mongo7040-nanoserver-ltsc2022)
-	[`mongo:7.0.40-windowsservercore`](#mongo7040-windowsservercore)
-	[`mongo:7.0.40-windowsservercore-ltsc2022`](#mongo7040-windowsservercore-ltsc2022)
-	[`mongo:7.0.40-windowsservercore-ltsc2025`](#mongo7040-windowsservercore-ltsc2025)
-	[`mongo:8.0`](#mongo80)
-	[`mongo:8.0-nanoserver`](#mongo80-nanoserver)
-	[`mongo:8.0-nanoserver-ltsc2022`](#mongo80-nanoserver-ltsc2022)
-	[`mongo:8.0-noble`](#mongo80-noble)
-	[`mongo:8.0-windowsservercore`](#mongo80-windowsservercore)
-	[`mongo:8.0-windowsservercore-ltsc2022`](#mongo80-windowsservercore-ltsc2022)
-	[`mongo:8.0-windowsservercore-ltsc2025`](#mongo80-windowsservercore-ltsc2025)
-	[`mongo:8.0.29`](#mongo8029)
-	[`mongo:8.0.29-nanoserver`](#mongo8029-nanoserver)
-	[`mongo:8.0.29-nanoserver-ltsc2022`](#mongo8029-nanoserver-ltsc2022)
-	[`mongo:8.0.29-noble`](#mongo8029-noble)
-	[`mongo:8.0.29-windowsservercore`](#mongo8029-windowsservercore)
-	[`mongo:8.0.29-windowsservercore-ltsc2022`](#mongo8029-windowsservercore-ltsc2022)
-	[`mongo:8.0.29-windowsservercore-ltsc2025`](#mongo8029-windowsservercore-ltsc2025)
-	[`mongo:8.3`](#mongo83)
-	[`mongo:8.3-nanoserver`](#mongo83-nanoserver)
-	[`mongo:8.3-nanoserver-ltsc2022`](#mongo83-nanoserver-ltsc2022)
-	[`mongo:8.3-noble`](#mongo83-noble)
-	[`mongo:8.3-windowsservercore`](#mongo83-windowsservercore)
-	[`mongo:8.3-windowsservercore-ltsc2022`](#mongo83-windowsservercore-ltsc2022)
-	[`mongo:8.3-windowsservercore-ltsc2025`](#mongo83-windowsservercore-ltsc2025)
-	[`mongo:8.3.8`](#mongo838)
-	[`mongo:8.3.8-nanoserver`](#mongo838-nanoserver)
-	[`mongo:8.3.8-nanoserver-ltsc2022`](#mongo838-nanoserver-ltsc2022)
-	[`mongo:8.3.8-noble`](#mongo838-noble)
-	[`mongo:8.3.8-windowsservercore`](#mongo838-windowsservercore)
-	[`mongo:8.3.8-windowsservercore-ltsc2022`](#mongo838-windowsservercore-ltsc2022)
-	[`mongo:8.3.8-windowsservercore-ltsc2025`](#mongo838-windowsservercore-ltsc2025)

## `mongo:7`

```console
$ docker pull mongo@sha256:b6421fd6d1c5ded6377b397d8983e2f82e2100dc5123332dcfda2065a472be5b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `mongo:7` - linux; amd64

```console
$ docker pull mongo@sha256:76f1e3cc36f46a79f98f30736174fa0c55a2ba41d6ce860e4e551e3ffbcce009
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.8 MB (295837579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a887b589a601923f6ae405f3f76c17984218971ced2ca59f05840b1f5a7c44c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:19:15 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 18 Aug 2026 01:19:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:35 GMT
ENV GOSU_VERSION=1.19
# Tue, 18 Aug 2026 01:19:35 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 18 Aug 2026 01:19:35 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 18 Aug 2026 01:19:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-7.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor 'E58830201F7DD82CD808AA84160D26BB1785BA38' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 18 Aug 2026 01:19:36 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:19:36 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 18 Aug 2026 01:19:36 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 18 Aug 2026 01:19:36 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 18 Aug 2026 01:19:36 GMT
ENV MONGO_MAJOR=7.0
# Tue, 18 Aug 2026 01:19:36 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu jammy/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 18 Aug 2026 01:19:36 GMT
ENV MONGO_VERSION=7.0.40
# Tue, 18 Aug 2026 01:19:58 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 18 Aug 2026 01:19:58 GMT
VOLUME [/data/db /data/configdb]
# Tue, 18 Aug 2026 01:19:58 GMT
ENV HOME=/data/db
# Tue, 18 Aug 2026 01:19:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 01:19:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Aug 2026 01:19:58 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 18 Aug 2026 01:19:58 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bcb0cd9f68c0e60a91406c3ef38039e2175646cb2db51f6454f7bba21c2eac3`  
		Last Modified: Tue, 18 Aug 2026 01:20:30 GMT  
		Size: 1.8 KB (1785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:164558a2a8faea6b2f93372b0623963809ec4f71ed7c68fd85d8c1f529e29051`  
		Last Modified: Tue, 18 Aug 2026 01:20:30 GMT  
		Size: 1.5 MB (1472767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77214491514e3e176131ad001929ddf7bfbdf1c59722cab682006b132e377d9c`  
		Last Modified: Tue, 18 Aug 2026 01:20:30 GMT  
		Size: 898.3 KB (898349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dad1a8753e0f46099828451a294acb449729e1f154fd50eeb38d09eb57b0177`  
		Last Modified: Tue, 18 Aug 2026 01:20:05 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:586ba587042d5c45d2f7aa95909801bead5761785edd62c3bc44aaeb020870dc`  
		Last Modified: Tue, 18 Aug 2026 01:20:30 GMT  
		Size: 266.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4afa172ff42c2de878a0a69293ed91cd0a6b5859c0aaf8967210886ca34c76f7`  
		Last Modified: Tue, 18 Aug 2026 01:20:36 GMT  
		Size: 263.7 MB (263722348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad1d6026847d3cb542cb478f7eaba12a085314c1acbae1a137a3b8253a39cb76`  
		Last Modified: Tue, 18 Aug 2026 01:20:31 GMT  
		Size: 5.0 KB (5005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:7` - unknown; unknown

```console
$ docker pull mongo@sha256:827126c4761968bd2d695d1c7d69db636d392242a892c858bc50e608ae079b74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3232216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85e1fa9ec9e65e7e54ad8694218a6c1c2efcc1c601e519c62bdaffcb88d77d90`

```dockerfile
```

-	Layers:
	-	`sha256:a2b49326e024df4622410610d8cb6de1ec315686caf8c381c84e99498cb40b8a`  
		Last Modified: Tue, 18 Aug 2026 01:20:30 GMT  
		Size: 3.2 MB (3204331 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b6bc1923d416a11277f904833ba8329f6a6c6a4b94332e11dcfb4f97a01c0d2d`  
		Last Modified: Tue, 18 Aug 2026 01:20:30 GMT  
		Size: 27.9 KB (27885 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:7` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:296832068f49a66237019ca965879c0c6bc7f2ab0b29b02c57cbe11ce692f7f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.7 MB (282659097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:039796be5c9ac1457093d604aac6e19e7ab5af9a31875bcd7a98b4881389876d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:18:55 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 18 Aug 2026 01:19:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:16 GMT
ENV GOSU_VERSION=1.19
# Tue, 18 Aug 2026 01:19:16 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 18 Aug 2026 01:19:16 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 18 Aug 2026 01:19:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-7.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor 'E58830201F7DD82CD808AA84160D26BB1785BA38' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 18 Aug 2026 01:19:16 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:19:16 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 18 Aug 2026 01:19:16 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 18 Aug 2026 01:19:16 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 18 Aug 2026 01:19:16 GMT
ENV MONGO_MAJOR=7.0
# Tue, 18 Aug 2026 01:19:16 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu jammy/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 18 Aug 2026 01:19:16 GMT
ENV MONGO_VERSION=7.0.40
# Tue, 18 Aug 2026 01:19:40 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 18 Aug 2026 01:19:40 GMT
VOLUME [/data/db /data/configdb]
# Tue, 18 Aug 2026 01:19:40 GMT
ENV HOME=/data/db
# Tue, 18 Aug 2026 01:19:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 01:19:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Aug 2026 01:19:40 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 18 Aug 2026 01:19:40 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7d5e3b111ef22b944758abf44ec9970783276c94954d9e7d41f82a2647d31da`  
		Last Modified: Tue, 18 Aug 2026 01:20:11 GMT  
		Size: 1.8 KB (1786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41f3136204348bb17096a498d7f15d5f7aa358a498615b3b320d28ec404fec8b`  
		Last Modified: Tue, 18 Aug 2026 01:20:11 GMT  
		Size: 1.4 MB (1438894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3924d1c64c951f591b6eba98c72f168cd2ff68eba65282c2c52fd75f73a69e7`  
		Last Modified: Tue, 18 Aug 2026 01:20:11 GMT  
		Size: 850.7 KB (850736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:011d20a8e5bb49970cac1b534f5e75287b36dfccacb60bf5836f564351a8ff36`  
		Last Modified: Tue, 18 Aug 2026 01:20:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6304a02d8c2e48433f0a0cc2cc1f2796a8dc350b3269ec1c4018d3ade38c8e0c`  
		Last Modified: Tue, 18 Aug 2026 01:20:12 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4249f634469594b3e6cc1bf204a5dd4fa82746bd1ece96f8138df9581d0155e2`  
		Last Modified: Tue, 18 Aug 2026 01:20:18 GMT  
		Size: 252.7 MB (252741847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb02d2d6b121b293913ac3374e1fb880b1c93ddeb676c5b7e9434506ea9dd6da`  
		Last Modified: Tue, 18 Aug 2026 01:20:12 GMT  
		Size: 5.0 KB (5001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:7` - unknown; unknown

```console
$ docker pull mongo@sha256:4eb7caa9baecc8d2a73a1eba7026ca75f8acd0a77ce73b100246fa1a98145d42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3232740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c16893bab7758504a97c6e28cdc53901fbde2d98a2eca311887568fe044c0af`

```dockerfile
```

-	Layers:
	-	`sha256:28a8589f737094f4de3b62248723f34a7008c1520b59288065c945d5f070c6fa`  
		Last Modified: Tue, 18 Aug 2026 01:20:11 GMT  
		Size: 3.2 MB (3204650 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83dd3702153292a57843c56efbb1079596d67f42c745f8bc7890c70473cf0dd3`  
		Last Modified: Tue, 18 Aug 2026 01:20:11 GMT  
		Size: 28.1 KB (28090 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:7` - windows version 10.0.26100.33296; amd64

```console
$ docker pull mongo@sha256:546d01c1fd61b6e725cf10d2ebe2fabf62145667d63833f08422868520300109
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 GB (3066490824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82bc182b9d87976d1ec42bc181603998fcfc784f32099ecbae882bb3759a8aa2`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 12 Aug 2026 17:46:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Aug 2026 17:49:05 GMT
ENV MONGO_VERSION=7.0.40
# Wed, 12 Aug 2026 17:49:06 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.40-signed.msi
# Wed, 12 Aug 2026 17:49:06 GMT
ENV MONGO_DOWNLOAD_SHA256=1adfb2c433f6215cfe38ce871b39d6ba2bd3d6d9159b6b251c647a694fd113c7
# Wed, 12 Aug 2026 17:50:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 17:50:39 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 17:50:39 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 17:50:40 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5abeeefbb7b11eb6332573ca632d3d8807213461f1b97f3cfee8899a29583f`  
		Last Modified: Tue, 11 Aug 2026 18:01:52 GMT  
		Size: 917.7 MB (917726084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efc9541172fee148ae0773f77cd5c15fd952a1ad7b84849afc9becf648dd6d1`  
		Last Modified: Wed, 12 Aug 2026 17:48:50 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce3cfb1967751bd0d24bcf4da1e49923ca7e1471c02cd9f38cdc015048a3e84e`  
		Last Modified: Wed, 12 Aug 2026 17:50:46 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbaa4e7d5472f2d2fa17694eb79adfe413e06285141775b48912d6b305249e70`  
		Last Modified: Wed, 12 Aug 2026 17:50:45 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a43a758d25412f09f9b2566c366c96ab3fa7cc5b5cf00ce02fbb1d419055874`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a746cb395aaa14972b03dc2ed9fb4fd2bdaedb2ad794ed30b17c590a7420b13`  
		Last Modified: Wed, 12 Aug 2026 17:51:38 GMT  
		Size: 625.7 MB (625696389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6aedf7dd51f28ff7c6ba2ab26c228f7d3403b801d0bddc4971bfee9dbc0c218`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6494ac04728ca1ae430513815d0c6102f42268e0fddca65f52c3e3694887c1b`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7beb1fd23821ca86e733b6c4078ee4c867e08cda3a32970bab3548573b2329e3`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:7` - windows version 10.0.20348.5499; amd64

```console
$ docker pull mongo@sha256:f6d968d3ec586deda5fa100624153c35061c56581f95bb3c2c46a677fc3a531d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2809652944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6686fced41d59847503a8d43fdf58efa36198ba8ebc14fce8e7b0e1989d58ed4`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Wed, 12 Aug 2026 17:49:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Aug 2026 17:49:12 GMT
ENV MONGO_VERSION=7.0.40
# Wed, 12 Aug 2026 17:49:13 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.40-signed.msi
# Wed, 12 Aug 2026 17:49:14 GMT
ENV MONGO_DOWNLOAD_SHA256=1adfb2c433f6215cfe38ce871b39d6ba2bd3d6d9159b6b251c647a694fd113c7
# Wed, 12 Aug 2026 17:50:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 17:50:22 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 17:50:23 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 17:50:23 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6663eb7183e1ec85dde1e1417037a290a09bf063d3d5deea1ba9d134d7c7d44`  
		Last Modified: Wed, 12 Aug 2026 17:50:29 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f2f132716487cfbd67422406a1a3d3411baa56b5c9f8d30b09d539dedab73b`  
		Last Modified: Wed, 12 Aug 2026 17:50:29 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23b0cb1564076c54f685439d7cdd9ebd02c721ebbb284fcce57b576ed4094f1`  
		Last Modified: Wed, 12 Aug 2026 17:50:28 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0a613a252fa45362eb7c442bd34745c12c4f416d89a39bb133707d77bfd2b3`  
		Last Modified: Wed, 12 Aug 2026 17:50:27 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65f80357647f76f82b9bd1c8eab9d5ff205a781b665e0842236bd0debec95c4`  
		Last Modified: Wed, 12 Aug 2026 17:51:17 GMT  
		Size: 625.6 MB (625646398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2d855813a8b324f9b87829c1771871e80df1f501fb883442dcb4d6c8837b0b`  
		Last Modified: Wed, 12 Aug 2026 17:50:27 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea593466449a500abdd9fc5ac3b5944da40426c87cf824bb25ac73a74557944`  
		Last Modified: Wed, 12 Aug 2026 17:50:27 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f3cffe0c4cc18e6ee5f4b19bac18d4219974ea6ea8508583c1aff940ec0c77c`  
		Last Modified: Wed, 12 Aug 2026 17:50:27 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:7-jammy`

```console
$ docker pull mongo@sha256:406a4fdca9fc763443268f000218d3849ef8996f66ed9e92ba0b501b446ab822
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mongo:7-jammy` - linux; amd64

```console
$ docker pull mongo@sha256:76f1e3cc36f46a79f98f30736174fa0c55a2ba41d6ce860e4e551e3ffbcce009
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.8 MB (295837579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a887b589a601923f6ae405f3f76c17984218971ced2ca59f05840b1f5a7c44c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:19:15 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 18 Aug 2026 01:19:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:35 GMT
ENV GOSU_VERSION=1.19
# Tue, 18 Aug 2026 01:19:35 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 18 Aug 2026 01:19:35 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 18 Aug 2026 01:19:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-7.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor 'E58830201F7DD82CD808AA84160D26BB1785BA38' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 18 Aug 2026 01:19:36 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:19:36 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 18 Aug 2026 01:19:36 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 18 Aug 2026 01:19:36 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 18 Aug 2026 01:19:36 GMT
ENV MONGO_MAJOR=7.0
# Tue, 18 Aug 2026 01:19:36 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu jammy/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 18 Aug 2026 01:19:36 GMT
ENV MONGO_VERSION=7.0.40
# Tue, 18 Aug 2026 01:19:58 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 18 Aug 2026 01:19:58 GMT
VOLUME [/data/db /data/configdb]
# Tue, 18 Aug 2026 01:19:58 GMT
ENV HOME=/data/db
# Tue, 18 Aug 2026 01:19:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 01:19:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Aug 2026 01:19:58 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 18 Aug 2026 01:19:58 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bcb0cd9f68c0e60a91406c3ef38039e2175646cb2db51f6454f7bba21c2eac3`  
		Last Modified: Tue, 18 Aug 2026 01:20:30 GMT  
		Size: 1.8 KB (1785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:164558a2a8faea6b2f93372b0623963809ec4f71ed7c68fd85d8c1f529e29051`  
		Last Modified: Tue, 18 Aug 2026 01:20:30 GMT  
		Size: 1.5 MB (1472767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77214491514e3e176131ad001929ddf7bfbdf1c59722cab682006b132e377d9c`  
		Last Modified: Tue, 18 Aug 2026 01:20:30 GMT  
		Size: 898.3 KB (898349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dad1a8753e0f46099828451a294acb449729e1f154fd50eeb38d09eb57b0177`  
		Last Modified: Tue, 18 Aug 2026 01:20:05 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:586ba587042d5c45d2f7aa95909801bead5761785edd62c3bc44aaeb020870dc`  
		Last Modified: Tue, 18 Aug 2026 01:20:30 GMT  
		Size: 266.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4afa172ff42c2de878a0a69293ed91cd0a6b5859c0aaf8967210886ca34c76f7`  
		Last Modified: Tue, 18 Aug 2026 01:20:36 GMT  
		Size: 263.7 MB (263722348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad1d6026847d3cb542cb478f7eaba12a085314c1acbae1a137a3b8253a39cb76`  
		Last Modified: Tue, 18 Aug 2026 01:20:31 GMT  
		Size: 5.0 KB (5005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:7-jammy` - unknown; unknown

```console
$ docker pull mongo@sha256:827126c4761968bd2d695d1c7d69db636d392242a892c858bc50e608ae079b74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3232216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85e1fa9ec9e65e7e54ad8694218a6c1c2efcc1c601e519c62bdaffcb88d77d90`

```dockerfile
```

-	Layers:
	-	`sha256:a2b49326e024df4622410610d8cb6de1ec315686caf8c381c84e99498cb40b8a`  
		Last Modified: Tue, 18 Aug 2026 01:20:30 GMT  
		Size: 3.2 MB (3204331 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b6bc1923d416a11277f904833ba8329f6a6c6a4b94332e11dcfb4f97a01c0d2d`  
		Last Modified: Tue, 18 Aug 2026 01:20:30 GMT  
		Size: 27.9 KB (27885 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:7-jammy` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:296832068f49a66237019ca965879c0c6bc7f2ab0b29b02c57cbe11ce692f7f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.7 MB (282659097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:039796be5c9ac1457093d604aac6e19e7ab5af9a31875bcd7a98b4881389876d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:18:55 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 18 Aug 2026 01:19:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:16 GMT
ENV GOSU_VERSION=1.19
# Tue, 18 Aug 2026 01:19:16 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 18 Aug 2026 01:19:16 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 18 Aug 2026 01:19:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-7.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor 'E58830201F7DD82CD808AA84160D26BB1785BA38' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 18 Aug 2026 01:19:16 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:19:16 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 18 Aug 2026 01:19:16 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 18 Aug 2026 01:19:16 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 18 Aug 2026 01:19:16 GMT
ENV MONGO_MAJOR=7.0
# Tue, 18 Aug 2026 01:19:16 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu jammy/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 18 Aug 2026 01:19:16 GMT
ENV MONGO_VERSION=7.0.40
# Tue, 18 Aug 2026 01:19:40 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 18 Aug 2026 01:19:40 GMT
VOLUME [/data/db /data/configdb]
# Tue, 18 Aug 2026 01:19:40 GMT
ENV HOME=/data/db
# Tue, 18 Aug 2026 01:19:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 01:19:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Aug 2026 01:19:40 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 18 Aug 2026 01:19:40 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7d5e3b111ef22b944758abf44ec9970783276c94954d9e7d41f82a2647d31da`  
		Last Modified: Tue, 18 Aug 2026 01:20:11 GMT  
		Size: 1.8 KB (1786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41f3136204348bb17096a498d7f15d5f7aa358a498615b3b320d28ec404fec8b`  
		Last Modified: Tue, 18 Aug 2026 01:20:11 GMT  
		Size: 1.4 MB (1438894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3924d1c64c951f591b6eba98c72f168cd2ff68eba65282c2c52fd75f73a69e7`  
		Last Modified: Tue, 18 Aug 2026 01:20:11 GMT  
		Size: 850.7 KB (850736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:011d20a8e5bb49970cac1b534f5e75287b36dfccacb60bf5836f564351a8ff36`  
		Last Modified: Tue, 18 Aug 2026 01:20:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6304a02d8c2e48433f0a0cc2cc1f2796a8dc350b3269ec1c4018d3ade38c8e0c`  
		Last Modified: Tue, 18 Aug 2026 01:20:12 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4249f634469594b3e6cc1bf204a5dd4fa82746bd1ece96f8138df9581d0155e2`  
		Last Modified: Tue, 18 Aug 2026 01:20:18 GMT  
		Size: 252.7 MB (252741847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb02d2d6b121b293913ac3374e1fb880b1c93ddeb676c5b7e9434506ea9dd6da`  
		Last Modified: Tue, 18 Aug 2026 01:20:12 GMT  
		Size: 5.0 KB (5001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:7-jammy` - unknown; unknown

```console
$ docker pull mongo@sha256:4eb7caa9baecc8d2a73a1eba7026ca75f8acd0a77ce73b100246fa1a98145d42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3232740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c16893bab7758504a97c6e28cdc53901fbde2d98a2eca311887568fe044c0af`

```dockerfile
```

-	Layers:
	-	`sha256:28a8589f737094f4de3b62248723f34a7008c1520b59288065c945d5f070c6fa`  
		Last Modified: Tue, 18 Aug 2026 01:20:11 GMT  
		Size: 3.2 MB (3204650 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83dd3702153292a57843c56efbb1079596d67f42c745f8bc7890c70473cf0dd3`  
		Last Modified: Tue, 18 Aug 2026 01:20:11 GMT  
		Size: 28.1 KB (28090 bytes)  
		MIME: application/vnd.in-toto+json

## `mongo:7-nanoserver`

```console
$ docker pull mongo@sha256:b3b2fb141303301d6d2e55877ae0d2edcc924a209e3d9fba7f756830c9b20d60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `mongo:7-nanoserver` - windows version 10.0.20348.5499; amd64

```console
$ docker pull mongo@sha256:aff9a59db1cd15b04c36af936f549bde141bf2310c058cd15f00466a1151af51
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **749.3 MB (749320741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:599392192b2b756bfba20ffab1879ec0d98c155666619553096d4ccc954158bb`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sun, 09 Aug 2026 04:00:46 GMT
RUN Apply image 10.0.20348.5499
# Wed, 12 Aug 2026 18:16:58 GMT
SHELL [cmd /S /C]
# Wed, 12 Aug 2026 18:16:58 GMT
USER ContainerAdministrator
# Wed, 12 Aug 2026 18:17:06 GMT
RUN setx /m PATH "C:\mongodb\bin;%PATH%"
# Wed, 12 Aug 2026 18:17:06 GMT
USER ContainerUser
# Wed, 12 Aug 2026 18:17:07 GMT
COPY multi:540d6dd70b1e7484f1958dc08b337aeb56cf8a92fe38be4c279dd406990d6935 in C:\Windows\System32\ 
# Wed, 12 Aug 2026 18:17:08 GMT
ENV MONGO_VERSION=7.0.40
# Wed, 12 Aug 2026 18:17:37 GMT
COPY dir:5275c90acc984d2e95da7478ab8f186163bcce4e9272031fdda8ff9e1e70c12e in C:\mongodb 
# Wed, 12 Aug 2026 18:17:55 GMT
RUN mongod --version
# Wed, 12 Aug 2026 18:17:55 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 18:17:55 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 18:17:56 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:dc16402aa7d3fdbac6580d83e9c13ab7caf61d557113810e102089ffa3cd6cb4`  
		Last Modified: Tue, 11 Aug 2026 20:43:43 GMT  
		Size: 124.3 MB (124257916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5668a0986d86af72e8e34b07ed9e1137c39b2947ca5ddc12e86bc9a504dbacd7`  
		Last Modified: Wed, 12 Aug 2026 18:18:03 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0e8bf56fca7e3fb9b88a4211c18fe6db6f59e92256769962f45c93ccd69be5`  
		Last Modified: Wed, 12 Aug 2026 18:18:03 GMT  
		Size: 1.1 KB (1073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74467317328e68c7e72bddfd88e8e50ecb4a2530b808193c86a6937d6425f12e`  
		Last Modified: Wed, 12 Aug 2026 18:18:02 GMT  
		Size: 85.6 KB (85588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2501799c6e922ee9eda295295fab278f76bc2f43a43c400dc79ad2488f20deb8`  
		Last Modified: Wed, 12 Aug 2026 18:18:02 GMT  
		Size: 1.1 KB (1086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:718e6eeeffe2cb65358fcf869f0866135c4d8477d2afa0e2f3f5f19bed476de4`  
		Last Modified: Wed, 12 Aug 2026 18:18:02 GMT  
		Size: 275.2 KB (275207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5c57a19c92fd1a5c88b3dcd766ea2cd136999656c6287e8e73995e6a9c4618`  
		Last Modified: Wed, 12 Aug 2026 18:18:02 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1cf589fd7d812845e9ef6b122b0bcd4db1e8cea3b29ddf6474786da82ad515`  
		Last Modified: Wed, 12 Aug 2026 18:18:54 GMT  
		Size: 624.6 MB (624598202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9900449e92def35901e78df30570a34e4577364bfeaf98687a1a00fd5d0a2510`  
		Last Modified: Wed, 12 Aug 2026 18:18:00 GMT  
		Size: 96.4 KB (96387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b49ce691ffa5332dd194a68f420ceefbde765ef6f79d30f5e70499f11d5ad6`  
		Last Modified: Wed, 12 Aug 2026 18:18:00 GMT  
		Size: 1.1 KB (1077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbee817771cd9d6e6a3986c62397f35789062bed47d42d7f1600b0ab2ce592cb`  
		Last Modified: Wed, 12 Aug 2026 18:18:00 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9765f9fdb7adb6c819d993c1386d095efdbc4b9de49da522a4d9b12eb68ec9b`  
		Last Modified: Wed, 12 Aug 2026 18:18:00 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:7-nanoserver-ltsc2022`

```console
$ docker pull mongo@sha256:b3b2fb141303301d6d2e55877ae0d2edcc924a209e3d9fba7f756830c9b20d60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `mongo:7-nanoserver-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull mongo@sha256:aff9a59db1cd15b04c36af936f549bde141bf2310c058cd15f00466a1151af51
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **749.3 MB (749320741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:599392192b2b756bfba20ffab1879ec0d98c155666619553096d4ccc954158bb`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sun, 09 Aug 2026 04:00:46 GMT
RUN Apply image 10.0.20348.5499
# Wed, 12 Aug 2026 18:16:58 GMT
SHELL [cmd /S /C]
# Wed, 12 Aug 2026 18:16:58 GMT
USER ContainerAdministrator
# Wed, 12 Aug 2026 18:17:06 GMT
RUN setx /m PATH "C:\mongodb\bin;%PATH%"
# Wed, 12 Aug 2026 18:17:06 GMT
USER ContainerUser
# Wed, 12 Aug 2026 18:17:07 GMT
COPY multi:540d6dd70b1e7484f1958dc08b337aeb56cf8a92fe38be4c279dd406990d6935 in C:\Windows\System32\ 
# Wed, 12 Aug 2026 18:17:08 GMT
ENV MONGO_VERSION=7.0.40
# Wed, 12 Aug 2026 18:17:37 GMT
COPY dir:5275c90acc984d2e95da7478ab8f186163bcce4e9272031fdda8ff9e1e70c12e in C:\mongodb 
# Wed, 12 Aug 2026 18:17:55 GMT
RUN mongod --version
# Wed, 12 Aug 2026 18:17:55 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 18:17:55 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 18:17:56 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:dc16402aa7d3fdbac6580d83e9c13ab7caf61d557113810e102089ffa3cd6cb4`  
		Last Modified: Tue, 11 Aug 2026 20:43:43 GMT  
		Size: 124.3 MB (124257916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5668a0986d86af72e8e34b07ed9e1137c39b2947ca5ddc12e86bc9a504dbacd7`  
		Last Modified: Wed, 12 Aug 2026 18:18:03 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0e8bf56fca7e3fb9b88a4211c18fe6db6f59e92256769962f45c93ccd69be5`  
		Last Modified: Wed, 12 Aug 2026 18:18:03 GMT  
		Size: 1.1 KB (1073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74467317328e68c7e72bddfd88e8e50ecb4a2530b808193c86a6937d6425f12e`  
		Last Modified: Wed, 12 Aug 2026 18:18:02 GMT  
		Size: 85.6 KB (85588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2501799c6e922ee9eda295295fab278f76bc2f43a43c400dc79ad2488f20deb8`  
		Last Modified: Wed, 12 Aug 2026 18:18:02 GMT  
		Size: 1.1 KB (1086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:718e6eeeffe2cb65358fcf869f0866135c4d8477d2afa0e2f3f5f19bed476de4`  
		Last Modified: Wed, 12 Aug 2026 18:18:02 GMT  
		Size: 275.2 KB (275207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5c57a19c92fd1a5c88b3dcd766ea2cd136999656c6287e8e73995e6a9c4618`  
		Last Modified: Wed, 12 Aug 2026 18:18:02 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1cf589fd7d812845e9ef6b122b0bcd4db1e8cea3b29ddf6474786da82ad515`  
		Last Modified: Wed, 12 Aug 2026 18:18:54 GMT  
		Size: 624.6 MB (624598202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9900449e92def35901e78df30570a34e4577364bfeaf98687a1a00fd5d0a2510`  
		Last Modified: Wed, 12 Aug 2026 18:18:00 GMT  
		Size: 96.4 KB (96387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b49ce691ffa5332dd194a68f420ceefbde765ef6f79d30f5e70499f11d5ad6`  
		Last Modified: Wed, 12 Aug 2026 18:18:00 GMT  
		Size: 1.1 KB (1077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbee817771cd9d6e6a3986c62397f35789062bed47d42d7f1600b0ab2ce592cb`  
		Last Modified: Wed, 12 Aug 2026 18:18:00 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9765f9fdb7adb6c819d993c1386d095efdbc4b9de49da522a4d9b12eb68ec9b`  
		Last Modified: Wed, 12 Aug 2026 18:18:00 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:7-windowsservercore`

```console
$ docker pull mongo@sha256:13f8a7ad21a4f0dafdbdea34c175c24d95ecdb0a2cd52e092f71f916ad5fc781
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `mongo:7-windowsservercore` - windows version 10.0.26100.33296; amd64

```console
$ docker pull mongo@sha256:546d01c1fd61b6e725cf10d2ebe2fabf62145667d63833f08422868520300109
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 GB (3066490824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82bc182b9d87976d1ec42bc181603998fcfc784f32099ecbae882bb3759a8aa2`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 12 Aug 2026 17:46:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Aug 2026 17:49:05 GMT
ENV MONGO_VERSION=7.0.40
# Wed, 12 Aug 2026 17:49:06 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.40-signed.msi
# Wed, 12 Aug 2026 17:49:06 GMT
ENV MONGO_DOWNLOAD_SHA256=1adfb2c433f6215cfe38ce871b39d6ba2bd3d6d9159b6b251c647a694fd113c7
# Wed, 12 Aug 2026 17:50:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 17:50:39 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 17:50:39 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 17:50:40 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5abeeefbb7b11eb6332573ca632d3d8807213461f1b97f3cfee8899a29583f`  
		Last Modified: Tue, 11 Aug 2026 18:01:52 GMT  
		Size: 917.7 MB (917726084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efc9541172fee148ae0773f77cd5c15fd952a1ad7b84849afc9becf648dd6d1`  
		Last Modified: Wed, 12 Aug 2026 17:48:50 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce3cfb1967751bd0d24bcf4da1e49923ca7e1471c02cd9f38cdc015048a3e84e`  
		Last Modified: Wed, 12 Aug 2026 17:50:46 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbaa4e7d5472f2d2fa17694eb79adfe413e06285141775b48912d6b305249e70`  
		Last Modified: Wed, 12 Aug 2026 17:50:45 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a43a758d25412f09f9b2566c366c96ab3fa7cc5b5cf00ce02fbb1d419055874`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a746cb395aaa14972b03dc2ed9fb4fd2bdaedb2ad794ed30b17c590a7420b13`  
		Last Modified: Wed, 12 Aug 2026 17:51:38 GMT  
		Size: 625.7 MB (625696389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6aedf7dd51f28ff7c6ba2ab26c228f7d3403b801d0bddc4971bfee9dbc0c218`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6494ac04728ca1ae430513815d0c6102f42268e0fddca65f52c3e3694887c1b`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7beb1fd23821ca86e733b6c4078ee4c867e08cda3a32970bab3548573b2329e3`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:7-windowsservercore` - windows version 10.0.20348.5499; amd64

```console
$ docker pull mongo@sha256:f6d968d3ec586deda5fa100624153c35061c56581f95bb3c2c46a677fc3a531d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2809652944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6686fced41d59847503a8d43fdf58efa36198ba8ebc14fce8e7b0e1989d58ed4`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Wed, 12 Aug 2026 17:49:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Aug 2026 17:49:12 GMT
ENV MONGO_VERSION=7.0.40
# Wed, 12 Aug 2026 17:49:13 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.40-signed.msi
# Wed, 12 Aug 2026 17:49:14 GMT
ENV MONGO_DOWNLOAD_SHA256=1adfb2c433f6215cfe38ce871b39d6ba2bd3d6d9159b6b251c647a694fd113c7
# Wed, 12 Aug 2026 17:50:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 17:50:22 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 17:50:23 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 17:50:23 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6663eb7183e1ec85dde1e1417037a290a09bf063d3d5deea1ba9d134d7c7d44`  
		Last Modified: Wed, 12 Aug 2026 17:50:29 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f2f132716487cfbd67422406a1a3d3411baa56b5c9f8d30b09d539dedab73b`  
		Last Modified: Wed, 12 Aug 2026 17:50:29 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23b0cb1564076c54f685439d7cdd9ebd02c721ebbb284fcce57b576ed4094f1`  
		Last Modified: Wed, 12 Aug 2026 17:50:28 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0a613a252fa45362eb7c442bd34745c12c4f416d89a39bb133707d77bfd2b3`  
		Last Modified: Wed, 12 Aug 2026 17:50:27 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65f80357647f76f82b9bd1c8eab9d5ff205a781b665e0842236bd0debec95c4`  
		Last Modified: Wed, 12 Aug 2026 17:51:17 GMT  
		Size: 625.6 MB (625646398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2d855813a8b324f9b87829c1771871e80df1f501fb883442dcb4d6c8837b0b`  
		Last Modified: Wed, 12 Aug 2026 17:50:27 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea593466449a500abdd9fc5ac3b5944da40426c87cf824bb25ac73a74557944`  
		Last Modified: Wed, 12 Aug 2026 17:50:27 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f3cffe0c4cc18e6ee5f4b19bac18d4219974ea6ea8508583c1aff940ec0c77c`  
		Last Modified: Wed, 12 Aug 2026 17:50:27 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:7-windowsservercore-ltsc2022`

```console
$ docker pull mongo@sha256:21fdfa7812812749504b8d4c893c04d602d1f82bf5f240c1427e2d5587d1fbf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `mongo:7-windowsservercore-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull mongo@sha256:f6d968d3ec586deda5fa100624153c35061c56581f95bb3c2c46a677fc3a531d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2809652944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6686fced41d59847503a8d43fdf58efa36198ba8ebc14fce8e7b0e1989d58ed4`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Wed, 12 Aug 2026 17:49:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Aug 2026 17:49:12 GMT
ENV MONGO_VERSION=7.0.40
# Wed, 12 Aug 2026 17:49:13 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.40-signed.msi
# Wed, 12 Aug 2026 17:49:14 GMT
ENV MONGO_DOWNLOAD_SHA256=1adfb2c433f6215cfe38ce871b39d6ba2bd3d6d9159b6b251c647a694fd113c7
# Wed, 12 Aug 2026 17:50:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 17:50:22 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 17:50:23 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 17:50:23 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6663eb7183e1ec85dde1e1417037a290a09bf063d3d5deea1ba9d134d7c7d44`  
		Last Modified: Wed, 12 Aug 2026 17:50:29 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f2f132716487cfbd67422406a1a3d3411baa56b5c9f8d30b09d539dedab73b`  
		Last Modified: Wed, 12 Aug 2026 17:50:29 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23b0cb1564076c54f685439d7cdd9ebd02c721ebbb284fcce57b576ed4094f1`  
		Last Modified: Wed, 12 Aug 2026 17:50:28 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0a613a252fa45362eb7c442bd34745c12c4f416d89a39bb133707d77bfd2b3`  
		Last Modified: Wed, 12 Aug 2026 17:50:27 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65f80357647f76f82b9bd1c8eab9d5ff205a781b665e0842236bd0debec95c4`  
		Last Modified: Wed, 12 Aug 2026 17:51:17 GMT  
		Size: 625.6 MB (625646398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2d855813a8b324f9b87829c1771871e80df1f501fb883442dcb4d6c8837b0b`  
		Last Modified: Wed, 12 Aug 2026 17:50:27 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea593466449a500abdd9fc5ac3b5944da40426c87cf824bb25ac73a74557944`  
		Last Modified: Wed, 12 Aug 2026 17:50:27 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f3cffe0c4cc18e6ee5f4b19bac18d4219974ea6ea8508583c1aff940ec0c77c`  
		Last Modified: Wed, 12 Aug 2026 17:50:27 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:7-windowsservercore-ltsc2025`

```console
$ docker pull mongo@sha256:51db0c3806da05f5f9695a0cb638b80048dfe0e2a97d459551ff73b4d1e77727
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `mongo:7-windowsservercore-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull mongo@sha256:546d01c1fd61b6e725cf10d2ebe2fabf62145667d63833f08422868520300109
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 GB (3066490824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82bc182b9d87976d1ec42bc181603998fcfc784f32099ecbae882bb3759a8aa2`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 12 Aug 2026 17:46:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Aug 2026 17:49:05 GMT
ENV MONGO_VERSION=7.0.40
# Wed, 12 Aug 2026 17:49:06 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.40-signed.msi
# Wed, 12 Aug 2026 17:49:06 GMT
ENV MONGO_DOWNLOAD_SHA256=1adfb2c433f6215cfe38ce871b39d6ba2bd3d6d9159b6b251c647a694fd113c7
# Wed, 12 Aug 2026 17:50:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 17:50:39 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 17:50:39 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 17:50:40 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5abeeefbb7b11eb6332573ca632d3d8807213461f1b97f3cfee8899a29583f`  
		Last Modified: Tue, 11 Aug 2026 18:01:52 GMT  
		Size: 917.7 MB (917726084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efc9541172fee148ae0773f77cd5c15fd952a1ad7b84849afc9becf648dd6d1`  
		Last Modified: Wed, 12 Aug 2026 17:48:50 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce3cfb1967751bd0d24bcf4da1e49923ca7e1471c02cd9f38cdc015048a3e84e`  
		Last Modified: Wed, 12 Aug 2026 17:50:46 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbaa4e7d5472f2d2fa17694eb79adfe413e06285141775b48912d6b305249e70`  
		Last Modified: Wed, 12 Aug 2026 17:50:45 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a43a758d25412f09f9b2566c366c96ab3fa7cc5b5cf00ce02fbb1d419055874`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a746cb395aaa14972b03dc2ed9fb4fd2bdaedb2ad794ed30b17c590a7420b13`  
		Last Modified: Wed, 12 Aug 2026 17:51:38 GMT  
		Size: 625.7 MB (625696389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6aedf7dd51f28ff7c6ba2ab26c228f7d3403b801d0bddc4971bfee9dbc0c218`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6494ac04728ca1ae430513815d0c6102f42268e0fddca65f52c3e3694887c1b`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7beb1fd23821ca86e733b6c4078ee4c867e08cda3a32970bab3548573b2329e3`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:7.0`

```console
$ docker pull mongo@sha256:b6421fd6d1c5ded6377b397d8983e2f82e2100dc5123332dcfda2065a472be5b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `mongo:7.0` - linux; amd64

```console
$ docker pull mongo@sha256:76f1e3cc36f46a79f98f30736174fa0c55a2ba41d6ce860e4e551e3ffbcce009
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.8 MB (295837579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a887b589a601923f6ae405f3f76c17984218971ced2ca59f05840b1f5a7c44c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:19:15 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 18 Aug 2026 01:19:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:35 GMT
ENV GOSU_VERSION=1.19
# Tue, 18 Aug 2026 01:19:35 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 18 Aug 2026 01:19:35 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 18 Aug 2026 01:19:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-7.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor 'E58830201F7DD82CD808AA84160D26BB1785BA38' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 18 Aug 2026 01:19:36 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:19:36 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 18 Aug 2026 01:19:36 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 18 Aug 2026 01:19:36 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 18 Aug 2026 01:19:36 GMT
ENV MONGO_MAJOR=7.0
# Tue, 18 Aug 2026 01:19:36 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu jammy/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 18 Aug 2026 01:19:36 GMT
ENV MONGO_VERSION=7.0.40
# Tue, 18 Aug 2026 01:19:58 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 18 Aug 2026 01:19:58 GMT
VOLUME [/data/db /data/configdb]
# Tue, 18 Aug 2026 01:19:58 GMT
ENV HOME=/data/db
# Tue, 18 Aug 2026 01:19:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 01:19:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Aug 2026 01:19:58 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 18 Aug 2026 01:19:58 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bcb0cd9f68c0e60a91406c3ef38039e2175646cb2db51f6454f7bba21c2eac3`  
		Last Modified: Tue, 18 Aug 2026 01:20:30 GMT  
		Size: 1.8 KB (1785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:164558a2a8faea6b2f93372b0623963809ec4f71ed7c68fd85d8c1f529e29051`  
		Last Modified: Tue, 18 Aug 2026 01:20:30 GMT  
		Size: 1.5 MB (1472767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77214491514e3e176131ad001929ddf7bfbdf1c59722cab682006b132e377d9c`  
		Last Modified: Tue, 18 Aug 2026 01:20:30 GMT  
		Size: 898.3 KB (898349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dad1a8753e0f46099828451a294acb449729e1f154fd50eeb38d09eb57b0177`  
		Last Modified: Tue, 18 Aug 2026 01:20:05 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:586ba587042d5c45d2f7aa95909801bead5761785edd62c3bc44aaeb020870dc`  
		Last Modified: Tue, 18 Aug 2026 01:20:30 GMT  
		Size: 266.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4afa172ff42c2de878a0a69293ed91cd0a6b5859c0aaf8967210886ca34c76f7`  
		Last Modified: Tue, 18 Aug 2026 01:20:36 GMT  
		Size: 263.7 MB (263722348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad1d6026847d3cb542cb478f7eaba12a085314c1acbae1a137a3b8253a39cb76`  
		Last Modified: Tue, 18 Aug 2026 01:20:31 GMT  
		Size: 5.0 KB (5005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:7.0` - unknown; unknown

```console
$ docker pull mongo@sha256:827126c4761968bd2d695d1c7d69db636d392242a892c858bc50e608ae079b74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3232216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85e1fa9ec9e65e7e54ad8694218a6c1c2efcc1c601e519c62bdaffcb88d77d90`

```dockerfile
```

-	Layers:
	-	`sha256:a2b49326e024df4622410610d8cb6de1ec315686caf8c381c84e99498cb40b8a`  
		Last Modified: Tue, 18 Aug 2026 01:20:30 GMT  
		Size: 3.2 MB (3204331 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b6bc1923d416a11277f904833ba8329f6a6c6a4b94332e11dcfb4f97a01c0d2d`  
		Last Modified: Tue, 18 Aug 2026 01:20:30 GMT  
		Size: 27.9 KB (27885 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:7.0` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:296832068f49a66237019ca965879c0c6bc7f2ab0b29b02c57cbe11ce692f7f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.7 MB (282659097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:039796be5c9ac1457093d604aac6e19e7ab5af9a31875bcd7a98b4881389876d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:18:55 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 18 Aug 2026 01:19:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:16 GMT
ENV GOSU_VERSION=1.19
# Tue, 18 Aug 2026 01:19:16 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 18 Aug 2026 01:19:16 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 18 Aug 2026 01:19:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-7.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor 'E58830201F7DD82CD808AA84160D26BB1785BA38' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 18 Aug 2026 01:19:16 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:19:16 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 18 Aug 2026 01:19:16 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 18 Aug 2026 01:19:16 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 18 Aug 2026 01:19:16 GMT
ENV MONGO_MAJOR=7.0
# Tue, 18 Aug 2026 01:19:16 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu jammy/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 18 Aug 2026 01:19:16 GMT
ENV MONGO_VERSION=7.0.40
# Tue, 18 Aug 2026 01:19:40 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 18 Aug 2026 01:19:40 GMT
VOLUME [/data/db /data/configdb]
# Tue, 18 Aug 2026 01:19:40 GMT
ENV HOME=/data/db
# Tue, 18 Aug 2026 01:19:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 01:19:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Aug 2026 01:19:40 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 18 Aug 2026 01:19:40 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7d5e3b111ef22b944758abf44ec9970783276c94954d9e7d41f82a2647d31da`  
		Last Modified: Tue, 18 Aug 2026 01:20:11 GMT  
		Size: 1.8 KB (1786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41f3136204348bb17096a498d7f15d5f7aa358a498615b3b320d28ec404fec8b`  
		Last Modified: Tue, 18 Aug 2026 01:20:11 GMT  
		Size: 1.4 MB (1438894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3924d1c64c951f591b6eba98c72f168cd2ff68eba65282c2c52fd75f73a69e7`  
		Last Modified: Tue, 18 Aug 2026 01:20:11 GMT  
		Size: 850.7 KB (850736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:011d20a8e5bb49970cac1b534f5e75287b36dfccacb60bf5836f564351a8ff36`  
		Last Modified: Tue, 18 Aug 2026 01:20:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6304a02d8c2e48433f0a0cc2cc1f2796a8dc350b3269ec1c4018d3ade38c8e0c`  
		Last Modified: Tue, 18 Aug 2026 01:20:12 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4249f634469594b3e6cc1bf204a5dd4fa82746bd1ece96f8138df9581d0155e2`  
		Last Modified: Tue, 18 Aug 2026 01:20:18 GMT  
		Size: 252.7 MB (252741847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb02d2d6b121b293913ac3374e1fb880b1c93ddeb676c5b7e9434506ea9dd6da`  
		Last Modified: Tue, 18 Aug 2026 01:20:12 GMT  
		Size: 5.0 KB (5001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:7.0` - unknown; unknown

```console
$ docker pull mongo@sha256:4eb7caa9baecc8d2a73a1eba7026ca75f8acd0a77ce73b100246fa1a98145d42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3232740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c16893bab7758504a97c6e28cdc53901fbde2d98a2eca311887568fe044c0af`

```dockerfile
```

-	Layers:
	-	`sha256:28a8589f737094f4de3b62248723f34a7008c1520b59288065c945d5f070c6fa`  
		Last Modified: Tue, 18 Aug 2026 01:20:11 GMT  
		Size: 3.2 MB (3204650 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83dd3702153292a57843c56efbb1079596d67f42c745f8bc7890c70473cf0dd3`  
		Last Modified: Tue, 18 Aug 2026 01:20:11 GMT  
		Size: 28.1 KB (28090 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:7.0` - windows version 10.0.26100.33296; amd64

```console
$ docker pull mongo@sha256:546d01c1fd61b6e725cf10d2ebe2fabf62145667d63833f08422868520300109
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 GB (3066490824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82bc182b9d87976d1ec42bc181603998fcfc784f32099ecbae882bb3759a8aa2`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 12 Aug 2026 17:46:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Aug 2026 17:49:05 GMT
ENV MONGO_VERSION=7.0.40
# Wed, 12 Aug 2026 17:49:06 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.40-signed.msi
# Wed, 12 Aug 2026 17:49:06 GMT
ENV MONGO_DOWNLOAD_SHA256=1adfb2c433f6215cfe38ce871b39d6ba2bd3d6d9159b6b251c647a694fd113c7
# Wed, 12 Aug 2026 17:50:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 17:50:39 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 17:50:39 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 17:50:40 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5abeeefbb7b11eb6332573ca632d3d8807213461f1b97f3cfee8899a29583f`  
		Last Modified: Tue, 11 Aug 2026 18:01:52 GMT  
		Size: 917.7 MB (917726084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efc9541172fee148ae0773f77cd5c15fd952a1ad7b84849afc9becf648dd6d1`  
		Last Modified: Wed, 12 Aug 2026 17:48:50 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce3cfb1967751bd0d24bcf4da1e49923ca7e1471c02cd9f38cdc015048a3e84e`  
		Last Modified: Wed, 12 Aug 2026 17:50:46 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbaa4e7d5472f2d2fa17694eb79adfe413e06285141775b48912d6b305249e70`  
		Last Modified: Wed, 12 Aug 2026 17:50:45 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a43a758d25412f09f9b2566c366c96ab3fa7cc5b5cf00ce02fbb1d419055874`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a746cb395aaa14972b03dc2ed9fb4fd2bdaedb2ad794ed30b17c590a7420b13`  
		Last Modified: Wed, 12 Aug 2026 17:51:38 GMT  
		Size: 625.7 MB (625696389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6aedf7dd51f28ff7c6ba2ab26c228f7d3403b801d0bddc4971bfee9dbc0c218`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6494ac04728ca1ae430513815d0c6102f42268e0fddca65f52c3e3694887c1b`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7beb1fd23821ca86e733b6c4078ee4c867e08cda3a32970bab3548573b2329e3`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:7.0` - windows version 10.0.20348.5499; amd64

```console
$ docker pull mongo@sha256:f6d968d3ec586deda5fa100624153c35061c56581f95bb3c2c46a677fc3a531d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2809652944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6686fced41d59847503a8d43fdf58efa36198ba8ebc14fce8e7b0e1989d58ed4`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Wed, 12 Aug 2026 17:49:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Aug 2026 17:49:12 GMT
ENV MONGO_VERSION=7.0.40
# Wed, 12 Aug 2026 17:49:13 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.40-signed.msi
# Wed, 12 Aug 2026 17:49:14 GMT
ENV MONGO_DOWNLOAD_SHA256=1adfb2c433f6215cfe38ce871b39d6ba2bd3d6d9159b6b251c647a694fd113c7
# Wed, 12 Aug 2026 17:50:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 17:50:22 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 17:50:23 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 17:50:23 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6663eb7183e1ec85dde1e1417037a290a09bf063d3d5deea1ba9d134d7c7d44`  
		Last Modified: Wed, 12 Aug 2026 17:50:29 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f2f132716487cfbd67422406a1a3d3411baa56b5c9f8d30b09d539dedab73b`  
		Last Modified: Wed, 12 Aug 2026 17:50:29 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23b0cb1564076c54f685439d7cdd9ebd02c721ebbb284fcce57b576ed4094f1`  
		Last Modified: Wed, 12 Aug 2026 17:50:28 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0a613a252fa45362eb7c442bd34745c12c4f416d89a39bb133707d77bfd2b3`  
		Last Modified: Wed, 12 Aug 2026 17:50:27 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65f80357647f76f82b9bd1c8eab9d5ff205a781b665e0842236bd0debec95c4`  
		Last Modified: Wed, 12 Aug 2026 17:51:17 GMT  
		Size: 625.6 MB (625646398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2d855813a8b324f9b87829c1771871e80df1f501fb883442dcb4d6c8837b0b`  
		Last Modified: Wed, 12 Aug 2026 17:50:27 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea593466449a500abdd9fc5ac3b5944da40426c87cf824bb25ac73a74557944`  
		Last Modified: Wed, 12 Aug 2026 17:50:27 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f3cffe0c4cc18e6ee5f4b19bac18d4219974ea6ea8508583c1aff940ec0c77c`  
		Last Modified: Wed, 12 Aug 2026 17:50:27 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:7.0-jammy`

```console
$ docker pull mongo@sha256:406a4fdca9fc763443268f000218d3849ef8996f66ed9e92ba0b501b446ab822
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mongo:7.0-jammy` - linux; amd64

```console
$ docker pull mongo@sha256:76f1e3cc36f46a79f98f30736174fa0c55a2ba41d6ce860e4e551e3ffbcce009
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.8 MB (295837579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a887b589a601923f6ae405f3f76c17984218971ced2ca59f05840b1f5a7c44c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:19:15 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 18 Aug 2026 01:19:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:35 GMT
ENV GOSU_VERSION=1.19
# Tue, 18 Aug 2026 01:19:35 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 18 Aug 2026 01:19:35 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 18 Aug 2026 01:19:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-7.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor 'E58830201F7DD82CD808AA84160D26BB1785BA38' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 18 Aug 2026 01:19:36 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:19:36 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 18 Aug 2026 01:19:36 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 18 Aug 2026 01:19:36 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 18 Aug 2026 01:19:36 GMT
ENV MONGO_MAJOR=7.0
# Tue, 18 Aug 2026 01:19:36 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu jammy/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 18 Aug 2026 01:19:36 GMT
ENV MONGO_VERSION=7.0.40
# Tue, 18 Aug 2026 01:19:58 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 18 Aug 2026 01:19:58 GMT
VOLUME [/data/db /data/configdb]
# Tue, 18 Aug 2026 01:19:58 GMT
ENV HOME=/data/db
# Tue, 18 Aug 2026 01:19:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 01:19:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Aug 2026 01:19:58 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 18 Aug 2026 01:19:58 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bcb0cd9f68c0e60a91406c3ef38039e2175646cb2db51f6454f7bba21c2eac3`  
		Last Modified: Tue, 18 Aug 2026 01:20:30 GMT  
		Size: 1.8 KB (1785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:164558a2a8faea6b2f93372b0623963809ec4f71ed7c68fd85d8c1f529e29051`  
		Last Modified: Tue, 18 Aug 2026 01:20:30 GMT  
		Size: 1.5 MB (1472767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77214491514e3e176131ad001929ddf7bfbdf1c59722cab682006b132e377d9c`  
		Last Modified: Tue, 18 Aug 2026 01:20:30 GMT  
		Size: 898.3 KB (898349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dad1a8753e0f46099828451a294acb449729e1f154fd50eeb38d09eb57b0177`  
		Last Modified: Tue, 18 Aug 2026 01:20:05 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:586ba587042d5c45d2f7aa95909801bead5761785edd62c3bc44aaeb020870dc`  
		Last Modified: Tue, 18 Aug 2026 01:20:30 GMT  
		Size: 266.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4afa172ff42c2de878a0a69293ed91cd0a6b5859c0aaf8967210886ca34c76f7`  
		Last Modified: Tue, 18 Aug 2026 01:20:36 GMT  
		Size: 263.7 MB (263722348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad1d6026847d3cb542cb478f7eaba12a085314c1acbae1a137a3b8253a39cb76`  
		Last Modified: Tue, 18 Aug 2026 01:20:31 GMT  
		Size: 5.0 KB (5005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:7.0-jammy` - unknown; unknown

```console
$ docker pull mongo@sha256:827126c4761968bd2d695d1c7d69db636d392242a892c858bc50e608ae079b74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3232216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85e1fa9ec9e65e7e54ad8694218a6c1c2efcc1c601e519c62bdaffcb88d77d90`

```dockerfile
```

-	Layers:
	-	`sha256:a2b49326e024df4622410610d8cb6de1ec315686caf8c381c84e99498cb40b8a`  
		Last Modified: Tue, 18 Aug 2026 01:20:30 GMT  
		Size: 3.2 MB (3204331 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b6bc1923d416a11277f904833ba8329f6a6c6a4b94332e11dcfb4f97a01c0d2d`  
		Last Modified: Tue, 18 Aug 2026 01:20:30 GMT  
		Size: 27.9 KB (27885 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:7.0-jammy` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:296832068f49a66237019ca965879c0c6bc7f2ab0b29b02c57cbe11ce692f7f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.7 MB (282659097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:039796be5c9ac1457093d604aac6e19e7ab5af9a31875bcd7a98b4881389876d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:18:55 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 18 Aug 2026 01:19:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:16 GMT
ENV GOSU_VERSION=1.19
# Tue, 18 Aug 2026 01:19:16 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 18 Aug 2026 01:19:16 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 18 Aug 2026 01:19:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-7.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor 'E58830201F7DD82CD808AA84160D26BB1785BA38' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 18 Aug 2026 01:19:16 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:19:16 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 18 Aug 2026 01:19:16 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 18 Aug 2026 01:19:16 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 18 Aug 2026 01:19:16 GMT
ENV MONGO_MAJOR=7.0
# Tue, 18 Aug 2026 01:19:16 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu jammy/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 18 Aug 2026 01:19:16 GMT
ENV MONGO_VERSION=7.0.40
# Tue, 18 Aug 2026 01:19:40 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 18 Aug 2026 01:19:40 GMT
VOLUME [/data/db /data/configdb]
# Tue, 18 Aug 2026 01:19:40 GMT
ENV HOME=/data/db
# Tue, 18 Aug 2026 01:19:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 01:19:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Aug 2026 01:19:40 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 18 Aug 2026 01:19:40 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7d5e3b111ef22b944758abf44ec9970783276c94954d9e7d41f82a2647d31da`  
		Last Modified: Tue, 18 Aug 2026 01:20:11 GMT  
		Size: 1.8 KB (1786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41f3136204348bb17096a498d7f15d5f7aa358a498615b3b320d28ec404fec8b`  
		Last Modified: Tue, 18 Aug 2026 01:20:11 GMT  
		Size: 1.4 MB (1438894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3924d1c64c951f591b6eba98c72f168cd2ff68eba65282c2c52fd75f73a69e7`  
		Last Modified: Tue, 18 Aug 2026 01:20:11 GMT  
		Size: 850.7 KB (850736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:011d20a8e5bb49970cac1b534f5e75287b36dfccacb60bf5836f564351a8ff36`  
		Last Modified: Tue, 18 Aug 2026 01:20:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6304a02d8c2e48433f0a0cc2cc1f2796a8dc350b3269ec1c4018d3ade38c8e0c`  
		Last Modified: Tue, 18 Aug 2026 01:20:12 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4249f634469594b3e6cc1bf204a5dd4fa82746bd1ece96f8138df9581d0155e2`  
		Last Modified: Tue, 18 Aug 2026 01:20:18 GMT  
		Size: 252.7 MB (252741847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb02d2d6b121b293913ac3374e1fb880b1c93ddeb676c5b7e9434506ea9dd6da`  
		Last Modified: Tue, 18 Aug 2026 01:20:12 GMT  
		Size: 5.0 KB (5001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:7.0-jammy` - unknown; unknown

```console
$ docker pull mongo@sha256:4eb7caa9baecc8d2a73a1eba7026ca75f8acd0a77ce73b100246fa1a98145d42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3232740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c16893bab7758504a97c6e28cdc53901fbde2d98a2eca311887568fe044c0af`

```dockerfile
```

-	Layers:
	-	`sha256:28a8589f737094f4de3b62248723f34a7008c1520b59288065c945d5f070c6fa`  
		Last Modified: Tue, 18 Aug 2026 01:20:11 GMT  
		Size: 3.2 MB (3204650 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83dd3702153292a57843c56efbb1079596d67f42c745f8bc7890c70473cf0dd3`  
		Last Modified: Tue, 18 Aug 2026 01:20:11 GMT  
		Size: 28.1 KB (28090 bytes)  
		MIME: application/vnd.in-toto+json

## `mongo:7.0-nanoserver`

```console
$ docker pull mongo@sha256:b3b2fb141303301d6d2e55877ae0d2edcc924a209e3d9fba7f756830c9b20d60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `mongo:7.0-nanoserver` - windows version 10.0.20348.5499; amd64

```console
$ docker pull mongo@sha256:aff9a59db1cd15b04c36af936f549bde141bf2310c058cd15f00466a1151af51
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **749.3 MB (749320741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:599392192b2b756bfba20ffab1879ec0d98c155666619553096d4ccc954158bb`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sun, 09 Aug 2026 04:00:46 GMT
RUN Apply image 10.0.20348.5499
# Wed, 12 Aug 2026 18:16:58 GMT
SHELL [cmd /S /C]
# Wed, 12 Aug 2026 18:16:58 GMT
USER ContainerAdministrator
# Wed, 12 Aug 2026 18:17:06 GMT
RUN setx /m PATH "C:\mongodb\bin;%PATH%"
# Wed, 12 Aug 2026 18:17:06 GMT
USER ContainerUser
# Wed, 12 Aug 2026 18:17:07 GMT
COPY multi:540d6dd70b1e7484f1958dc08b337aeb56cf8a92fe38be4c279dd406990d6935 in C:\Windows\System32\ 
# Wed, 12 Aug 2026 18:17:08 GMT
ENV MONGO_VERSION=7.0.40
# Wed, 12 Aug 2026 18:17:37 GMT
COPY dir:5275c90acc984d2e95da7478ab8f186163bcce4e9272031fdda8ff9e1e70c12e in C:\mongodb 
# Wed, 12 Aug 2026 18:17:55 GMT
RUN mongod --version
# Wed, 12 Aug 2026 18:17:55 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 18:17:55 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 18:17:56 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:dc16402aa7d3fdbac6580d83e9c13ab7caf61d557113810e102089ffa3cd6cb4`  
		Last Modified: Tue, 11 Aug 2026 20:43:43 GMT  
		Size: 124.3 MB (124257916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5668a0986d86af72e8e34b07ed9e1137c39b2947ca5ddc12e86bc9a504dbacd7`  
		Last Modified: Wed, 12 Aug 2026 18:18:03 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0e8bf56fca7e3fb9b88a4211c18fe6db6f59e92256769962f45c93ccd69be5`  
		Last Modified: Wed, 12 Aug 2026 18:18:03 GMT  
		Size: 1.1 KB (1073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74467317328e68c7e72bddfd88e8e50ecb4a2530b808193c86a6937d6425f12e`  
		Last Modified: Wed, 12 Aug 2026 18:18:02 GMT  
		Size: 85.6 KB (85588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2501799c6e922ee9eda295295fab278f76bc2f43a43c400dc79ad2488f20deb8`  
		Last Modified: Wed, 12 Aug 2026 18:18:02 GMT  
		Size: 1.1 KB (1086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:718e6eeeffe2cb65358fcf869f0866135c4d8477d2afa0e2f3f5f19bed476de4`  
		Last Modified: Wed, 12 Aug 2026 18:18:02 GMT  
		Size: 275.2 KB (275207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5c57a19c92fd1a5c88b3dcd766ea2cd136999656c6287e8e73995e6a9c4618`  
		Last Modified: Wed, 12 Aug 2026 18:18:02 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1cf589fd7d812845e9ef6b122b0bcd4db1e8cea3b29ddf6474786da82ad515`  
		Last Modified: Wed, 12 Aug 2026 18:18:54 GMT  
		Size: 624.6 MB (624598202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9900449e92def35901e78df30570a34e4577364bfeaf98687a1a00fd5d0a2510`  
		Last Modified: Wed, 12 Aug 2026 18:18:00 GMT  
		Size: 96.4 KB (96387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b49ce691ffa5332dd194a68f420ceefbde765ef6f79d30f5e70499f11d5ad6`  
		Last Modified: Wed, 12 Aug 2026 18:18:00 GMT  
		Size: 1.1 KB (1077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbee817771cd9d6e6a3986c62397f35789062bed47d42d7f1600b0ab2ce592cb`  
		Last Modified: Wed, 12 Aug 2026 18:18:00 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9765f9fdb7adb6c819d993c1386d095efdbc4b9de49da522a4d9b12eb68ec9b`  
		Last Modified: Wed, 12 Aug 2026 18:18:00 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:7.0-nanoserver-ltsc2022`

```console
$ docker pull mongo@sha256:b3b2fb141303301d6d2e55877ae0d2edcc924a209e3d9fba7f756830c9b20d60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `mongo:7.0-nanoserver-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull mongo@sha256:aff9a59db1cd15b04c36af936f549bde141bf2310c058cd15f00466a1151af51
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **749.3 MB (749320741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:599392192b2b756bfba20ffab1879ec0d98c155666619553096d4ccc954158bb`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sun, 09 Aug 2026 04:00:46 GMT
RUN Apply image 10.0.20348.5499
# Wed, 12 Aug 2026 18:16:58 GMT
SHELL [cmd /S /C]
# Wed, 12 Aug 2026 18:16:58 GMT
USER ContainerAdministrator
# Wed, 12 Aug 2026 18:17:06 GMT
RUN setx /m PATH "C:\mongodb\bin;%PATH%"
# Wed, 12 Aug 2026 18:17:06 GMT
USER ContainerUser
# Wed, 12 Aug 2026 18:17:07 GMT
COPY multi:540d6dd70b1e7484f1958dc08b337aeb56cf8a92fe38be4c279dd406990d6935 in C:\Windows\System32\ 
# Wed, 12 Aug 2026 18:17:08 GMT
ENV MONGO_VERSION=7.0.40
# Wed, 12 Aug 2026 18:17:37 GMT
COPY dir:5275c90acc984d2e95da7478ab8f186163bcce4e9272031fdda8ff9e1e70c12e in C:\mongodb 
# Wed, 12 Aug 2026 18:17:55 GMT
RUN mongod --version
# Wed, 12 Aug 2026 18:17:55 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 18:17:55 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 18:17:56 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:dc16402aa7d3fdbac6580d83e9c13ab7caf61d557113810e102089ffa3cd6cb4`  
		Last Modified: Tue, 11 Aug 2026 20:43:43 GMT  
		Size: 124.3 MB (124257916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5668a0986d86af72e8e34b07ed9e1137c39b2947ca5ddc12e86bc9a504dbacd7`  
		Last Modified: Wed, 12 Aug 2026 18:18:03 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0e8bf56fca7e3fb9b88a4211c18fe6db6f59e92256769962f45c93ccd69be5`  
		Last Modified: Wed, 12 Aug 2026 18:18:03 GMT  
		Size: 1.1 KB (1073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74467317328e68c7e72bddfd88e8e50ecb4a2530b808193c86a6937d6425f12e`  
		Last Modified: Wed, 12 Aug 2026 18:18:02 GMT  
		Size: 85.6 KB (85588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2501799c6e922ee9eda295295fab278f76bc2f43a43c400dc79ad2488f20deb8`  
		Last Modified: Wed, 12 Aug 2026 18:18:02 GMT  
		Size: 1.1 KB (1086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:718e6eeeffe2cb65358fcf869f0866135c4d8477d2afa0e2f3f5f19bed476de4`  
		Last Modified: Wed, 12 Aug 2026 18:18:02 GMT  
		Size: 275.2 KB (275207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5c57a19c92fd1a5c88b3dcd766ea2cd136999656c6287e8e73995e6a9c4618`  
		Last Modified: Wed, 12 Aug 2026 18:18:02 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1cf589fd7d812845e9ef6b122b0bcd4db1e8cea3b29ddf6474786da82ad515`  
		Last Modified: Wed, 12 Aug 2026 18:18:54 GMT  
		Size: 624.6 MB (624598202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9900449e92def35901e78df30570a34e4577364bfeaf98687a1a00fd5d0a2510`  
		Last Modified: Wed, 12 Aug 2026 18:18:00 GMT  
		Size: 96.4 KB (96387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b49ce691ffa5332dd194a68f420ceefbde765ef6f79d30f5e70499f11d5ad6`  
		Last Modified: Wed, 12 Aug 2026 18:18:00 GMT  
		Size: 1.1 KB (1077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbee817771cd9d6e6a3986c62397f35789062bed47d42d7f1600b0ab2ce592cb`  
		Last Modified: Wed, 12 Aug 2026 18:18:00 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9765f9fdb7adb6c819d993c1386d095efdbc4b9de49da522a4d9b12eb68ec9b`  
		Last Modified: Wed, 12 Aug 2026 18:18:00 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:7.0-windowsservercore`

```console
$ docker pull mongo@sha256:13f8a7ad21a4f0dafdbdea34c175c24d95ecdb0a2cd52e092f71f916ad5fc781
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `mongo:7.0-windowsservercore` - windows version 10.0.26100.33296; amd64

```console
$ docker pull mongo@sha256:546d01c1fd61b6e725cf10d2ebe2fabf62145667d63833f08422868520300109
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 GB (3066490824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82bc182b9d87976d1ec42bc181603998fcfc784f32099ecbae882bb3759a8aa2`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 12 Aug 2026 17:46:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Aug 2026 17:49:05 GMT
ENV MONGO_VERSION=7.0.40
# Wed, 12 Aug 2026 17:49:06 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.40-signed.msi
# Wed, 12 Aug 2026 17:49:06 GMT
ENV MONGO_DOWNLOAD_SHA256=1adfb2c433f6215cfe38ce871b39d6ba2bd3d6d9159b6b251c647a694fd113c7
# Wed, 12 Aug 2026 17:50:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 17:50:39 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 17:50:39 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 17:50:40 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5abeeefbb7b11eb6332573ca632d3d8807213461f1b97f3cfee8899a29583f`  
		Last Modified: Tue, 11 Aug 2026 18:01:52 GMT  
		Size: 917.7 MB (917726084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efc9541172fee148ae0773f77cd5c15fd952a1ad7b84849afc9becf648dd6d1`  
		Last Modified: Wed, 12 Aug 2026 17:48:50 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce3cfb1967751bd0d24bcf4da1e49923ca7e1471c02cd9f38cdc015048a3e84e`  
		Last Modified: Wed, 12 Aug 2026 17:50:46 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbaa4e7d5472f2d2fa17694eb79adfe413e06285141775b48912d6b305249e70`  
		Last Modified: Wed, 12 Aug 2026 17:50:45 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a43a758d25412f09f9b2566c366c96ab3fa7cc5b5cf00ce02fbb1d419055874`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a746cb395aaa14972b03dc2ed9fb4fd2bdaedb2ad794ed30b17c590a7420b13`  
		Last Modified: Wed, 12 Aug 2026 17:51:38 GMT  
		Size: 625.7 MB (625696389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6aedf7dd51f28ff7c6ba2ab26c228f7d3403b801d0bddc4971bfee9dbc0c218`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6494ac04728ca1ae430513815d0c6102f42268e0fddca65f52c3e3694887c1b`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7beb1fd23821ca86e733b6c4078ee4c867e08cda3a32970bab3548573b2329e3`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:7.0-windowsservercore` - windows version 10.0.20348.5499; amd64

```console
$ docker pull mongo@sha256:f6d968d3ec586deda5fa100624153c35061c56581f95bb3c2c46a677fc3a531d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2809652944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6686fced41d59847503a8d43fdf58efa36198ba8ebc14fce8e7b0e1989d58ed4`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Wed, 12 Aug 2026 17:49:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Aug 2026 17:49:12 GMT
ENV MONGO_VERSION=7.0.40
# Wed, 12 Aug 2026 17:49:13 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.40-signed.msi
# Wed, 12 Aug 2026 17:49:14 GMT
ENV MONGO_DOWNLOAD_SHA256=1adfb2c433f6215cfe38ce871b39d6ba2bd3d6d9159b6b251c647a694fd113c7
# Wed, 12 Aug 2026 17:50:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 17:50:22 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 17:50:23 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 17:50:23 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6663eb7183e1ec85dde1e1417037a290a09bf063d3d5deea1ba9d134d7c7d44`  
		Last Modified: Wed, 12 Aug 2026 17:50:29 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f2f132716487cfbd67422406a1a3d3411baa56b5c9f8d30b09d539dedab73b`  
		Last Modified: Wed, 12 Aug 2026 17:50:29 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23b0cb1564076c54f685439d7cdd9ebd02c721ebbb284fcce57b576ed4094f1`  
		Last Modified: Wed, 12 Aug 2026 17:50:28 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0a613a252fa45362eb7c442bd34745c12c4f416d89a39bb133707d77bfd2b3`  
		Last Modified: Wed, 12 Aug 2026 17:50:27 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65f80357647f76f82b9bd1c8eab9d5ff205a781b665e0842236bd0debec95c4`  
		Last Modified: Wed, 12 Aug 2026 17:51:17 GMT  
		Size: 625.6 MB (625646398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2d855813a8b324f9b87829c1771871e80df1f501fb883442dcb4d6c8837b0b`  
		Last Modified: Wed, 12 Aug 2026 17:50:27 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea593466449a500abdd9fc5ac3b5944da40426c87cf824bb25ac73a74557944`  
		Last Modified: Wed, 12 Aug 2026 17:50:27 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f3cffe0c4cc18e6ee5f4b19bac18d4219974ea6ea8508583c1aff940ec0c77c`  
		Last Modified: Wed, 12 Aug 2026 17:50:27 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:7.0-windowsservercore-ltsc2022`

```console
$ docker pull mongo@sha256:21fdfa7812812749504b8d4c893c04d602d1f82bf5f240c1427e2d5587d1fbf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `mongo:7.0-windowsservercore-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull mongo@sha256:f6d968d3ec586deda5fa100624153c35061c56581f95bb3c2c46a677fc3a531d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2809652944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6686fced41d59847503a8d43fdf58efa36198ba8ebc14fce8e7b0e1989d58ed4`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Wed, 12 Aug 2026 17:49:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Aug 2026 17:49:12 GMT
ENV MONGO_VERSION=7.0.40
# Wed, 12 Aug 2026 17:49:13 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.40-signed.msi
# Wed, 12 Aug 2026 17:49:14 GMT
ENV MONGO_DOWNLOAD_SHA256=1adfb2c433f6215cfe38ce871b39d6ba2bd3d6d9159b6b251c647a694fd113c7
# Wed, 12 Aug 2026 17:50:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 17:50:22 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 17:50:23 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 17:50:23 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6663eb7183e1ec85dde1e1417037a290a09bf063d3d5deea1ba9d134d7c7d44`  
		Last Modified: Wed, 12 Aug 2026 17:50:29 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f2f132716487cfbd67422406a1a3d3411baa56b5c9f8d30b09d539dedab73b`  
		Last Modified: Wed, 12 Aug 2026 17:50:29 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23b0cb1564076c54f685439d7cdd9ebd02c721ebbb284fcce57b576ed4094f1`  
		Last Modified: Wed, 12 Aug 2026 17:50:28 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0a613a252fa45362eb7c442bd34745c12c4f416d89a39bb133707d77bfd2b3`  
		Last Modified: Wed, 12 Aug 2026 17:50:27 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65f80357647f76f82b9bd1c8eab9d5ff205a781b665e0842236bd0debec95c4`  
		Last Modified: Wed, 12 Aug 2026 17:51:17 GMT  
		Size: 625.6 MB (625646398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2d855813a8b324f9b87829c1771871e80df1f501fb883442dcb4d6c8837b0b`  
		Last Modified: Wed, 12 Aug 2026 17:50:27 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea593466449a500abdd9fc5ac3b5944da40426c87cf824bb25ac73a74557944`  
		Last Modified: Wed, 12 Aug 2026 17:50:27 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f3cffe0c4cc18e6ee5f4b19bac18d4219974ea6ea8508583c1aff940ec0c77c`  
		Last Modified: Wed, 12 Aug 2026 17:50:27 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:7.0-windowsservercore-ltsc2025`

```console
$ docker pull mongo@sha256:51db0c3806da05f5f9695a0cb638b80048dfe0e2a97d459551ff73b4d1e77727
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `mongo:7.0-windowsservercore-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull mongo@sha256:546d01c1fd61b6e725cf10d2ebe2fabf62145667d63833f08422868520300109
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 GB (3066490824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82bc182b9d87976d1ec42bc181603998fcfc784f32099ecbae882bb3759a8aa2`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 12 Aug 2026 17:46:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Aug 2026 17:49:05 GMT
ENV MONGO_VERSION=7.0.40
# Wed, 12 Aug 2026 17:49:06 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.40-signed.msi
# Wed, 12 Aug 2026 17:49:06 GMT
ENV MONGO_DOWNLOAD_SHA256=1adfb2c433f6215cfe38ce871b39d6ba2bd3d6d9159b6b251c647a694fd113c7
# Wed, 12 Aug 2026 17:50:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 17:50:39 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 17:50:39 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 17:50:40 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5abeeefbb7b11eb6332573ca632d3d8807213461f1b97f3cfee8899a29583f`  
		Last Modified: Tue, 11 Aug 2026 18:01:52 GMT  
		Size: 917.7 MB (917726084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efc9541172fee148ae0773f77cd5c15fd952a1ad7b84849afc9becf648dd6d1`  
		Last Modified: Wed, 12 Aug 2026 17:48:50 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce3cfb1967751bd0d24bcf4da1e49923ca7e1471c02cd9f38cdc015048a3e84e`  
		Last Modified: Wed, 12 Aug 2026 17:50:46 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbaa4e7d5472f2d2fa17694eb79adfe413e06285141775b48912d6b305249e70`  
		Last Modified: Wed, 12 Aug 2026 17:50:45 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a43a758d25412f09f9b2566c366c96ab3fa7cc5b5cf00ce02fbb1d419055874`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a746cb395aaa14972b03dc2ed9fb4fd2bdaedb2ad794ed30b17c590a7420b13`  
		Last Modified: Wed, 12 Aug 2026 17:51:38 GMT  
		Size: 625.7 MB (625696389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6aedf7dd51f28ff7c6ba2ab26c228f7d3403b801d0bddc4971bfee9dbc0c218`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6494ac04728ca1ae430513815d0c6102f42268e0fddca65f52c3e3694887c1b`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7beb1fd23821ca86e733b6c4078ee4c867e08cda3a32970bab3548573b2329e3`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:7.0.40`

```console
$ docker pull mongo@sha256:b6421fd6d1c5ded6377b397d8983e2f82e2100dc5123332dcfda2065a472be5b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `mongo:7.0.40` - linux; amd64

```console
$ docker pull mongo@sha256:76f1e3cc36f46a79f98f30736174fa0c55a2ba41d6ce860e4e551e3ffbcce009
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.8 MB (295837579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a887b589a601923f6ae405f3f76c17984218971ced2ca59f05840b1f5a7c44c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:19:15 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 18 Aug 2026 01:19:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:35 GMT
ENV GOSU_VERSION=1.19
# Tue, 18 Aug 2026 01:19:35 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 18 Aug 2026 01:19:35 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 18 Aug 2026 01:19:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-7.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor 'E58830201F7DD82CD808AA84160D26BB1785BA38' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 18 Aug 2026 01:19:36 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:19:36 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 18 Aug 2026 01:19:36 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 18 Aug 2026 01:19:36 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 18 Aug 2026 01:19:36 GMT
ENV MONGO_MAJOR=7.0
# Tue, 18 Aug 2026 01:19:36 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu jammy/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 18 Aug 2026 01:19:36 GMT
ENV MONGO_VERSION=7.0.40
# Tue, 18 Aug 2026 01:19:58 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 18 Aug 2026 01:19:58 GMT
VOLUME [/data/db /data/configdb]
# Tue, 18 Aug 2026 01:19:58 GMT
ENV HOME=/data/db
# Tue, 18 Aug 2026 01:19:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 01:19:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Aug 2026 01:19:58 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 18 Aug 2026 01:19:58 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bcb0cd9f68c0e60a91406c3ef38039e2175646cb2db51f6454f7bba21c2eac3`  
		Last Modified: Tue, 18 Aug 2026 01:20:30 GMT  
		Size: 1.8 KB (1785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:164558a2a8faea6b2f93372b0623963809ec4f71ed7c68fd85d8c1f529e29051`  
		Last Modified: Tue, 18 Aug 2026 01:20:30 GMT  
		Size: 1.5 MB (1472767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77214491514e3e176131ad001929ddf7bfbdf1c59722cab682006b132e377d9c`  
		Last Modified: Tue, 18 Aug 2026 01:20:30 GMT  
		Size: 898.3 KB (898349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dad1a8753e0f46099828451a294acb449729e1f154fd50eeb38d09eb57b0177`  
		Last Modified: Tue, 18 Aug 2026 01:20:05 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:586ba587042d5c45d2f7aa95909801bead5761785edd62c3bc44aaeb020870dc`  
		Last Modified: Tue, 18 Aug 2026 01:20:30 GMT  
		Size: 266.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4afa172ff42c2de878a0a69293ed91cd0a6b5859c0aaf8967210886ca34c76f7`  
		Last Modified: Tue, 18 Aug 2026 01:20:36 GMT  
		Size: 263.7 MB (263722348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad1d6026847d3cb542cb478f7eaba12a085314c1acbae1a137a3b8253a39cb76`  
		Last Modified: Tue, 18 Aug 2026 01:20:31 GMT  
		Size: 5.0 KB (5005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:7.0.40` - unknown; unknown

```console
$ docker pull mongo@sha256:827126c4761968bd2d695d1c7d69db636d392242a892c858bc50e608ae079b74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3232216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85e1fa9ec9e65e7e54ad8694218a6c1c2efcc1c601e519c62bdaffcb88d77d90`

```dockerfile
```

-	Layers:
	-	`sha256:a2b49326e024df4622410610d8cb6de1ec315686caf8c381c84e99498cb40b8a`  
		Last Modified: Tue, 18 Aug 2026 01:20:30 GMT  
		Size: 3.2 MB (3204331 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b6bc1923d416a11277f904833ba8329f6a6c6a4b94332e11dcfb4f97a01c0d2d`  
		Last Modified: Tue, 18 Aug 2026 01:20:30 GMT  
		Size: 27.9 KB (27885 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:7.0.40` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:296832068f49a66237019ca965879c0c6bc7f2ab0b29b02c57cbe11ce692f7f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.7 MB (282659097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:039796be5c9ac1457093d604aac6e19e7ab5af9a31875bcd7a98b4881389876d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:18:55 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 18 Aug 2026 01:19:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:16 GMT
ENV GOSU_VERSION=1.19
# Tue, 18 Aug 2026 01:19:16 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 18 Aug 2026 01:19:16 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 18 Aug 2026 01:19:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-7.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor 'E58830201F7DD82CD808AA84160D26BB1785BA38' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 18 Aug 2026 01:19:16 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:19:16 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 18 Aug 2026 01:19:16 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 18 Aug 2026 01:19:16 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 18 Aug 2026 01:19:16 GMT
ENV MONGO_MAJOR=7.0
# Tue, 18 Aug 2026 01:19:16 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu jammy/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 18 Aug 2026 01:19:16 GMT
ENV MONGO_VERSION=7.0.40
# Tue, 18 Aug 2026 01:19:40 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 18 Aug 2026 01:19:40 GMT
VOLUME [/data/db /data/configdb]
# Tue, 18 Aug 2026 01:19:40 GMT
ENV HOME=/data/db
# Tue, 18 Aug 2026 01:19:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 01:19:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Aug 2026 01:19:40 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 18 Aug 2026 01:19:40 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7d5e3b111ef22b944758abf44ec9970783276c94954d9e7d41f82a2647d31da`  
		Last Modified: Tue, 18 Aug 2026 01:20:11 GMT  
		Size: 1.8 KB (1786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41f3136204348bb17096a498d7f15d5f7aa358a498615b3b320d28ec404fec8b`  
		Last Modified: Tue, 18 Aug 2026 01:20:11 GMT  
		Size: 1.4 MB (1438894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3924d1c64c951f591b6eba98c72f168cd2ff68eba65282c2c52fd75f73a69e7`  
		Last Modified: Tue, 18 Aug 2026 01:20:11 GMT  
		Size: 850.7 KB (850736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:011d20a8e5bb49970cac1b534f5e75287b36dfccacb60bf5836f564351a8ff36`  
		Last Modified: Tue, 18 Aug 2026 01:20:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6304a02d8c2e48433f0a0cc2cc1f2796a8dc350b3269ec1c4018d3ade38c8e0c`  
		Last Modified: Tue, 18 Aug 2026 01:20:12 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4249f634469594b3e6cc1bf204a5dd4fa82746bd1ece96f8138df9581d0155e2`  
		Last Modified: Tue, 18 Aug 2026 01:20:18 GMT  
		Size: 252.7 MB (252741847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb02d2d6b121b293913ac3374e1fb880b1c93ddeb676c5b7e9434506ea9dd6da`  
		Last Modified: Tue, 18 Aug 2026 01:20:12 GMT  
		Size: 5.0 KB (5001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:7.0.40` - unknown; unknown

```console
$ docker pull mongo@sha256:4eb7caa9baecc8d2a73a1eba7026ca75f8acd0a77ce73b100246fa1a98145d42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3232740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c16893bab7758504a97c6e28cdc53901fbde2d98a2eca311887568fe044c0af`

```dockerfile
```

-	Layers:
	-	`sha256:28a8589f737094f4de3b62248723f34a7008c1520b59288065c945d5f070c6fa`  
		Last Modified: Tue, 18 Aug 2026 01:20:11 GMT  
		Size: 3.2 MB (3204650 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83dd3702153292a57843c56efbb1079596d67f42c745f8bc7890c70473cf0dd3`  
		Last Modified: Tue, 18 Aug 2026 01:20:11 GMT  
		Size: 28.1 KB (28090 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:7.0.40` - windows version 10.0.26100.33296; amd64

```console
$ docker pull mongo@sha256:546d01c1fd61b6e725cf10d2ebe2fabf62145667d63833f08422868520300109
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 GB (3066490824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82bc182b9d87976d1ec42bc181603998fcfc784f32099ecbae882bb3759a8aa2`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 12 Aug 2026 17:46:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Aug 2026 17:49:05 GMT
ENV MONGO_VERSION=7.0.40
# Wed, 12 Aug 2026 17:49:06 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.40-signed.msi
# Wed, 12 Aug 2026 17:49:06 GMT
ENV MONGO_DOWNLOAD_SHA256=1adfb2c433f6215cfe38ce871b39d6ba2bd3d6d9159b6b251c647a694fd113c7
# Wed, 12 Aug 2026 17:50:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 17:50:39 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 17:50:39 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 17:50:40 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5abeeefbb7b11eb6332573ca632d3d8807213461f1b97f3cfee8899a29583f`  
		Last Modified: Tue, 11 Aug 2026 18:01:52 GMT  
		Size: 917.7 MB (917726084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efc9541172fee148ae0773f77cd5c15fd952a1ad7b84849afc9becf648dd6d1`  
		Last Modified: Wed, 12 Aug 2026 17:48:50 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce3cfb1967751bd0d24bcf4da1e49923ca7e1471c02cd9f38cdc015048a3e84e`  
		Last Modified: Wed, 12 Aug 2026 17:50:46 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbaa4e7d5472f2d2fa17694eb79adfe413e06285141775b48912d6b305249e70`  
		Last Modified: Wed, 12 Aug 2026 17:50:45 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a43a758d25412f09f9b2566c366c96ab3fa7cc5b5cf00ce02fbb1d419055874`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a746cb395aaa14972b03dc2ed9fb4fd2bdaedb2ad794ed30b17c590a7420b13`  
		Last Modified: Wed, 12 Aug 2026 17:51:38 GMT  
		Size: 625.7 MB (625696389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6aedf7dd51f28ff7c6ba2ab26c228f7d3403b801d0bddc4971bfee9dbc0c218`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6494ac04728ca1ae430513815d0c6102f42268e0fddca65f52c3e3694887c1b`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7beb1fd23821ca86e733b6c4078ee4c867e08cda3a32970bab3548573b2329e3`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:7.0.40` - windows version 10.0.20348.5499; amd64

```console
$ docker pull mongo@sha256:f6d968d3ec586deda5fa100624153c35061c56581f95bb3c2c46a677fc3a531d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2809652944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6686fced41d59847503a8d43fdf58efa36198ba8ebc14fce8e7b0e1989d58ed4`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Wed, 12 Aug 2026 17:49:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Aug 2026 17:49:12 GMT
ENV MONGO_VERSION=7.0.40
# Wed, 12 Aug 2026 17:49:13 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.40-signed.msi
# Wed, 12 Aug 2026 17:49:14 GMT
ENV MONGO_DOWNLOAD_SHA256=1adfb2c433f6215cfe38ce871b39d6ba2bd3d6d9159b6b251c647a694fd113c7
# Wed, 12 Aug 2026 17:50:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 17:50:22 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 17:50:23 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 17:50:23 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6663eb7183e1ec85dde1e1417037a290a09bf063d3d5deea1ba9d134d7c7d44`  
		Last Modified: Wed, 12 Aug 2026 17:50:29 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f2f132716487cfbd67422406a1a3d3411baa56b5c9f8d30b09d539dedab73b`  
		Last Modified: Wed, 12 Aug 2026 17:50:29 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23b0cb1564076c54f685439d7cdd9ebd02c721ebbb284fcce57b576ed4094f1`  
		Last Modified: Wed, 12 Aug 2026 17:50:28 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0a613a252fa45362eb7c442bd34745c12c4f416d89a39bb133707d77bfd2b3`  
		Last Modified: Wed, 12 Aug 2026 17:50:27 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65f80357647f76f82b9bd1c8eab9d5ff205a781b665e0842236bd0debec95c4`  
		Last Modified: Wed, 12 Aug 2026 17:51:17 GMT  
		Size: 625.6 MB (625646398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2d855813a8b324f9b87829c1771871e80df1f501fb883442dcb4d6c8837b0b`  
		Last Modified: Wed, 12 Aug 2026 17:50:27 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea593466449a500abdd9fc5ac3b5944da40426c87cf824bb25ac73a74557944`  
		Last Modified: Wed, 12 Aug 2026 17:50:27 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f3cffe0c4cc18e6ee5f4b19bac18d4219974ea6ea8508583c1aff940ec0c77c`  
		Last Modified: Wed, 12 Aug 2026 17:50:27 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:7.0.40-jammy`

```console
$ docker pull mongo@sha256:406a4fdca9fc763443268f000218d3849ef8996f66ed9e92ba0b501b446ab822
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mongo:7.0.40-jammy` - linux; amd64

```console
$ docker pull mongo@sha256:76f1e3cc36f46a79f98f30736174fa0c55a2ba41d6ce860e4e551e3ffbcce009
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.8 MB (295837579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a887b589a601923f6ae405f3f76c17984218971ced2ca59f05840b1f5a7c44c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:19:15 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 18 Aug 2026 01:19:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:35 GMT
ENV GOSU_VERSION=1.19
# Tue, 18 Aug 2026 01:19:35 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 18 Aug 2026 01:19:35 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 18 Aug 2026 01:19:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-7.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor 'E58830201F7DD82CD808AA84160D26BB1785BA38' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 18 Aug 2026 01:19:36 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:19:36 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 18 Aug 2026 01:19:36 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 18 Aug 2026 01:19:36 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 18 Aug 2026 01:19:36 GMT
ENV MONGO_MAJOR=7.0
# Tue, 18 Aug 2026 01:19:36 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu jammy/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 18 Aug 2026 01:19:36 GMT
ENV MONGO_VERSION=7.0.40
# Tue, 18 Aug 2026 01:19:58 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 18 Aug 2026 01:19:58 GMT
VOLUME [/data/db /data/configdb]
# Tue, 18 Aug 2026 01:19:58 GMT
ENV HOME=/data/db
# Tue, 18 Aug 2026 01:19:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 01:19:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Aug 2026 01:19:58 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 18 Aug 2026 01:19:58 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bcb0cd9f68c0e60a91406c3ef38039e2175646cb2db51f6454f7bba21c2eac3`  
		Last Modified: Tue, 18 Aug 2026 01:20:30 GMT  
		Size: 1.8 KB (1785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:164558a2a8faea6b2f93372b0623963809ec4f71ed7c68fd85d8c1f529e29051`  
		Last Modified: Tue, 18 Aug 2026 01:20:30 GMT  
		Size: 1.5 MB (1472767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77214491514e3e176131ad001929ddf7bfbdf1c59722cab682006b132e377d9c`  
		Last Modified: Tue, 18 Aug 2026 01:20:30 GMT  
		Size: 898.3 KB (898349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dad1a8753e0f46099828451a294acb449729e1f154fd50eeb38d09eb57b0177`  
		Last Modified: Tue, 18 Aug 2026 01:20:05 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:586ba587042d5c45d2f7aa95909801bead5761785edd62c3bc44aaeb020870dc`  
		Last Modified: Tue, 18 Aug 2026 01:20:30 GMT  
		Size: 266.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4afa172ff42c2de878a0a69293ed91cd0a6b5859c0aaf8967210886ca34c76f7`  
		Last Modified: Tue, 18 Aug 2026 01:20:36 GMT  
		Size: 263.7 MB (263722348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad1d6026847d3cb542cb478f7eaba12a085314c1acbae1a137a3b8253a39cb76`  
		Last Modified: Tue, 18 Aug 2026 01:20:31 GMT  
		Size: 5.0 KB (5005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:7.0.40-jammy` - unknown; unknown

```console
$ docker pull mongo@sha256:827126c4761968bd2d695d1c7d69db636d392242a892c858bc50e608ae079b74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3232216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85e1fa9ec9e65e7e54ad8694218a6c1c2efcc1c601e519c62bdaffcb88d77d90`

```dockerfile
```

-	Layers:
	-	`sha256:a2b49326e024df4622410610d8cb6de1ec315686caf8c381c84e99498cb40b8a`  
		Last Modified: Tue, 18 Aug 2026 01:20:30 GMT  
		Size: 3.2 MB (3204331 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b6bc1923d416a11277f904833ba8329f6a6c6a4b94332e11dcfb4f97a01c0d2d`  
		Last Modified: Tue, 18 Aug 2026 01:20:30 GMT  
		Size: 27.9 KB (27885 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:7.0.40-jammy` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:296832068f49a66237019ca965879c0c6bc7f2ab0b29b02c57cbe11ce692f7f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.7 MB (282659097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:039796be5c9ac1457093d604aac6e19e7ab5af9a31875bcd7a98b4881389876d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:18:55 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 18 Aug 2026 01:19:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:16 GMT
ENV GOSU_VERSION=1.19
# Tue, 18 Aug 2026 01:19:16 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 18 Aug 2026 01:19:16 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 18 Aug 2026 01:19:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-7.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor 'E58830201F7DD82CD808AA84160D26BB1785BA38' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 18 Aug 2026 01:19:16 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 01:19:16 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 18 Aug 2026 01:19:16 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 18 Aug 2026 01:19:16 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 18 Aug 2026 01:19:16 GMT
ENV MONGO_MAJOR=7.0
# Tue, 18 Aug 2026 01:19:16 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu jammy/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 18 Aug 2026 01:19:16 GMT
ENV MONGO_VERSION=7.0.40
# Tue, 18 Aug 2026 01:19:40 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 18 Aug 2026 01:19:40 GMT
VOLUME [/data/db /data/configdb]
# Tue, 18 Aug 2026 01:19:40 GMT
ENV HOME=/data/db
# Tue, 18 Aug 2026 01:19:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 01:19:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Aug 2026 01:19:40 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 18 Aug 2026 01:19:40 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7d5e3b111ef22b944758abf44ec9970783276c94954d9e7d41f82a2647d31da`  
		Last Modified: Tue, 18 Aug 2026 01:20:11 GMT  
		Size: 1.8 KB (1786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41f3136204348bb17096a498d7f15d5f7aa358a498615b3b320d28ec404fec8b`  
		Last Modified: Tue, 18 Aug 2026 01:20:11 GMT  
		Size: 1.4 MB (1438894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3924d1c64c951f591b6eba98c72f168cd2ff68eba65282c2c52fd75f73a69e7`  
		Last Modified: Tue, 18 Aug 2026 01:20:11 GMT  
		Size: 850.7 KB (850736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:011d20a8e5bb49970cac1b534f5e75287b36dfccacb60bf5836f564351a8ff36`  
		Last Modified: Tue, 18 Aug 2026 01:20:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6304a02d8c2e48433f0a0cc2cc1f2796a8dc350b3269ec1c4018d3ade38c8e0c`  
		Last Modified: Tue, 18 Aug 2026 01:20:12 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4249f634469594b3e6cc1bf204a5dd4fa82746bd1ece96f8138df9581d0155e2`  
		Last Modified: Tue, 18 Aug 2026 01:20:18 GMT  
		Size: 252.7 MB (252741847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb02d2d6b121b293913ac3374e1fb880b1c93ddeb676c5b7e9434506ea9dd6da`  
		Last Modified: Tue, 18 Aug 2026 01:20:12 GMT  
		Size: 5.0 KB (5001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:7.0.40-jammy` - unknown; unknown

```console
$ docker pull mongo@sha256:4eb7caa9baecc8d2a73a1eba7026ca75f8acd0a77ce73b100246fa1a98145d42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3232740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c16893bab7758504a97c6e28cdc53901fbde2d98a2eca311887568fe044c0af`

```dockerfile
```

-	Layers:
	-	`sha256:28a8589f737094f4de3b62248723f34a7008c1520b59288065c945d5f070c6fa`  
		Last Modified: Tue, 18 Aug 2026 01:20:11 GMT  
		Size: 3.2 MB (3204650 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83dd3702153292a57843c56efbb1079596d67f42c745f8bc7890c70473cf0dd3`  
		Last Modified: Tue, 18 Aug 2026 01:20:11 GMT  
		Size: 28.1 KB (28090 bytes)  
		MIME: application/vnd.in-toto+json

## `mongo:7.0.40-nanoserver`

```console
$ docker pull mongo@sha256:b3b2fb141303301d6d2e55877ae0d2edcc924a209e3d9fba7f756830c9b20d60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `mongo:7.0.40-nanoserver` - windows version 10.0.20348.5499; amd64

```console
$ docker pull mongo@sha256:aff9a59db1cd15b04c36af936f549bde141bf2310c058cd15f00466a1151af51
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **749.3 MB (749320741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:599392192b2b756bfba20ffab1879ec0d98c155666619553096d4ccc954158bb`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sun, 09 Aug 2026 04:00:46 GMT
RUN Apply image 10.0.20348.5499
# Wed, 12 Aug 2026 18:16:58 GMT
SHELL [cmd /S /C]
# Wed, 12 Aug 2026 18:16:58 GMT
USER ContainerAdministrator
# Wed, 12 Aug 2026 18:17:06 GMT
RUN setx /m PATH "C:\mongodb\bin;%PATH%"
# Wed, 12 Aug 2026 18:17:06 GMT
USER ContainerUser
# Wed, 12 Aug 2026 18:17:07 GMT
COPY multi:540d6dd70b1e7484f1958dc08b337aeb56cf8a92fe38be4c279dd406990d6935 in C:\Windows\System32\ 
# Wed, 12 Aug 2026 18:17:08 GMT
ENV MONGO_VERSION=7.0.40
# Wed, 12 Aug 2026 18:17:37 GMT
COPY dir:5275c90acc984d2e95da7478ab8f186163bcce4e9272031fdda8ff9e1e70c12e in C:\mongodb 
# Wed, 12 Aug 2026 18:17:55 GMT
RUN mongod --version
# Wed, 12 Aug 2026 18:17:55 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 18:17:55 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 18:17:56 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:dc16402aa7d3fdbac6580d83e9c13ab7caf61d557113810e102089ffa3cd6cb4`  
		Last Modified: Tue, 11 Aug 2026 20:43:43 GMT  
		Size: 124.3 MB (124257916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5668a0986d86af72e8e34b07ed9e1137c39b2947ca5ddc12e86bc9a504dbacd7`  
		Last Modified: Wed, 12 Aug 2026 18:18:03 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0e8bf56fca7e3fb9b88a4211c18fe6db6f59e92256769962f45c93ccd69be5`  
		Last Modified: Wed, 12 Aug 2026 18:18:03 GMT  
		Size: 1.1 KB (1073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74467317328e68c7e72bddfd88e8e50ecb4a2530b808193c86a6937d6425f12e`  
		Last Modified: Wed, 12 Aug 2026 18:18:02 GMT  
		Size: 85.6 KB (85588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2501799c6e922ee9eda295295fab278f76bc2f43a43c400dc79ad2488f20deb8`  
		Last Modified: Wed, 12 Aug 2026 18:18:02 GMT  
		Size: 1.1 KB (1086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:718e6eeeffe2cb65358fcf869f0866135c4d8477d2afa0e2f3f5f19bed476de4`  
		Last Modified: Wed, 12 Aug 2026 18:18:02 GMT  
		Size: 275.2 KB (275207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5c57a19c92fd1a5c88b3dcd766ea2cd136999656c6287e8e73995e6a9c4618`  
		Last Modified: Wed, 12 Aug 2026 18:18:02 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1cf589fd7d812845e9ef6b122b0bcd4db1e8cea3b29ddf6474786da82ad515`  
		Last Modified: Wed, 12 Aug 2026 18:18:54 GMT  
		Size: 624.6 MB (624598202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9900449e92def35901e78df30570a34e4577364bfeaf98687a1a00fd5d0a2510`  
		Last Modified: Wed, 12 Aug 2026 18:18:00 GMT  
		Size: 96.4 KB (96387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b49ce691ffa5332dd194a68f420ceefbde765ef6f79d30f5e70499f11d5ad6`  
		Last Modified: Wed, 12 Aug 2026 18:18:00 GMT  
		Size: 1.1 KB (1077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbee817771cd9d6e6a3986c62397f35789062bed47d42d7f1600b0ab2ce592cb`  
		Last Modified: Wed, 12 Aug 2026 18:18:00 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9765f9fdb7adb6c819d993c1386d095efdbc4b9de49da522a4d9b12eb68ec9b`  
		Last Modified: Wed, 12 Aug 2026 18:18:00 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:7.0.40-nanoserver-ltsc2022`

```console
$ docker pull mongo@sha256:b3b2fb141303301d6d2e55877ae0d2edcc924a209e3d9fba7f756830c9b20d60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `mongo:7.0.40-nanoserver-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull mongo@sha256:aff9a59db1cd15b04c36af936f549bde141bf2310c058cd15f00466a1151af51
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **749.3 MB (749320741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:599392192b2b756bfba20ffab1879ec0d98c155666619553096d4ccc954158bb`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sun, 09 Aug 2026 04:00:46 GMT
RUN Apply image 10.0.20348.5499
# Wed, 12 Aug 2026 18:16:58 GMT
SHELL [cmd /S /C]
# Wed, 12 Aug 2026 18:16:58 GMT
USER ContainerAdministrator
# Wed, 12 Aug 2026 18:17:06 GMT
RUN setx /m PATH "C:\mongodb\bin;%PATH%"
# Wed, 12 Aug 2026 18:17:06 GMT
USER ContainerUser
# Wed, 12 Aug 2026 18:17:07 GMT
COPY multi:540d6dd70b1e7484f1958dc08b337aeb56cf8a92fe38be4c279dd406990d6935 in C:\Windows\System32\ 
# Wed, 12 Aug 2026 18:17:08 GMT
ENV MONGO_VERSION=7.0.40
# Wed, 12 Aug 2026 18:17:37 GMT
COPY dir:5275c90acc984d2e95da7478ab8f186163bcce4e9272031fdda8ff9e1e70c12e in C:\mongodb 
# Wed, 12 Aug 2026 18:17:55 GMT
RUN mongod --version
# Wed, 12 Aug 2026 18:17:55 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 18:17:55 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 18:17:56 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:dc16402aa7d3fdbac6580d83e9c13ab7caf61d557113810e102089ffa3cd6cb4`  
		Last Modified: Tue, 11 Aug 2026 20:43:43 GMT  
		Size: 124.3 MB (124257916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5668a0986d86af72e8e34b07ed9e1137c39b2947ca5ddc12e86bc9a504dbacd7`  
		Last Modified: Wed, 12 Aug 2026 18:18:03 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0e8bf56fca7e3fb9b88a4211c18fe6db6f59e92256769962f45c93ccd69be5`  
		Last Modified: Wed, 12 Aug 2026 18:18:03 GMT  
		Size: 1.1 KB (1073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74467317328e68c7e72bddfd88e8e50ecb4a2530b808193c86a6937d6425f12e`  
		Last Modified: Wed, 12 Aug 2026 18:18:02 GMT  
		Size: 85.6 KB (85588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2501799c6e922ee9eda295295fab278f76bc2f43a43c400dc79ad2488f20deb8`  
		Last Modified: Wed, 12 Aug 2026 18:18:02 GMT  
		Size: 1.1 KB (1086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:718e6eeeffe2cb65358fcf869f0866135c4d8477d2afa0e2f3f5f19bed476de4`  
		Last Modified: Wed, 12 Aug 2026 18:18:02 GMT  
		Size: 275.2 KB (275207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5c57a19c92fd1a5c88b3dcd766ea2cd136999656c6287e8e73995e6a9c4618`  
		Last Modified: Wed, 12 Aug 2026 18:18:02 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1cf589fd7d812845e9ef6b122b0bcd4db1e8cea3b29ddf6474786da82ad515`  
		Last Modified: Wed, 12 Aug 2026 18:18:54 GMT  
		Size: 624.6 MB (624598202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9900449e92def35901e78df30570a34e4577364bfeaf98687a1a00fd5d0a2510`  
		Last Modified: Wed, 12 Aug 2026 18:18:00 GMT  
		Size: 96.4 KB (96387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b49ce691ffa5332dd194a68f420ceefbde765ef6f79d30f5e70499f11d5ad6`  
		Last Modified: Wed, 12 Aug 2026 18:18:00 GMT  
		Size: 1.1 KB (1077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbee817771cd9d6e6a3986c62397f35789062bed47d42d7f1600b0ab2ce592cb`  
		Last Modified: Wed, 12 Aug 2026 18:18:00 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9765f9fdb7adb6c819d993c1386d095efdbc4b9de49da522a4d9b12eb68ec9b`  
		Last Modified: Wed, 12 Aug 2026 18:18:00 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:7.0.40-windowsservercore`

```console
$ docker pull mongo@sha256:13f8a7ad21a4f0dafdbdea34c175c24d95ecdb0a2cd52e092f71f916ad5fc781
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `mongo:7.0.40-windowsservercore` - windows version 10.0.26100.33296; amd64

```console
$ docker pull mongo@sha256:546d01c1fd61b6e725cf10d2ebe2fabf62145667d63833f08422868520300109
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 GB (3066490824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82bc182b9d87976d1ec42bc181603998fcfc784f32099ecbae882bb3759a8aa2`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 12 Aug 2026 17:46:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Aug 2026 17:49:05 GMT
ENV MONGO_VERSION=7.0.40
# Wed, 12 Aug 2026 17:49:06 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.40-signed.msi
# Wed, 12 Aug 2026 17:49:06 GMT
ENV MONGO_DOWNLOAD_SHA256=1adfb2c433f6215cfe38ce871b39d6ba2bd3d6d9159b6b251c647a694fd113c7
# Wed, 12 Aug 2026 17:50:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 17:50:39 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 17:50:39 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 17:50:40 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5abeeefbb7b11eb6332573ca632d3d8807213461f1b97f3cfee8899a29583f`  
		Last Modified: Tue, 11 Aug 2026 18:01:52 GMT  
		Size: 917.7 MB (917726084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efc9541172fee148ae0773f77cd5c15fd952a1ad7b84849afc9becf648dd6d1`  
		Last Modified: Wed, 12 Aug 2026 17:48:50 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce3cfb1967751bd0d24bcf4da1e49923ca7e1471c02cd9f38cdc015048a3e84e`  
		Last Modified: Wed, 12 Aug 2026 17:50:46 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbaa4e7d5472f2d2fa17694eb79adfe413e06285141775b48912d6b305249e70`  
		Last Modified: Wed, 12 Aug 2026 17:50:45 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a43a758d25412f09f9b2566c366c96ab3fa7cc5b5cf00ce02fbb1d419055874`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a746cb395aaa14972b03dc2ed9fb4fd2bdaedb2ad794ed30b17c590a7420b13`  
		Last Modified: Wed, 12 Aug 2026 17:51:38 GMT  
		Size: 625.7 MB (625696389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6aedf7dd51f28ff7c6ba2ab26c228f7d3403b801d0bddc4971bfee9dbc0c218`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6494ac04728ca1ae430513815d0c6102f42268e0fddca65f52c3e3694887c1b`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7beb1fd23821ca86e733b6c4078ee4c867e08cda3a32970bab3548573b2329e3`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:7.0.40-windowsservercore` - windows version 10.0.20348.5499; amd64

```console
$ docker pull mongo@sha256:f6d968d3ec586deda5fa100624153c35061c56581f95bb3c2c46a677fc3a531d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2809652944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6686fced41d59847503a8d43fdf58efa36198ba8ebc14fce8e7b0e1989d58ed4`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Wed, 12 Aug 2026 17:49:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Aug 2026 17:49:12 GMT
ENV MONGO_VERSION=7.0.40
# Wed, 12 Aug 2026 17:49:13 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.40-signed.msi
# Wed, 12 Aug 2026 17:49:14 GMT
ENV MONGO_DOWNLOAD_SHA256=1adfb2c433f6215cfe38ce871b39d6ba2bd3d6d9159b6b251c647a694fd113c7
# Wed, 12 Aug 2026 17:50:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 17:50:22 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 17:50:23 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 17:50:23 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6663eb7183e1ec85dde1e1417037a290a09bf063d3d5deea1ba9d134d7c7d44`  
		Last Modified: Wed, 12 Aug 2026 17:50:29 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f2f132716487cfbd67422406a1a3d3411baa56b5c9f8d30b09d539dedab73b`  
		Last Modified: Wed, 12 Aug 2026 17:50:29 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23b0cb1564076c54f685439d7cdd9ebd02c721ebbb284fcce57b576ed4094f1`  
		Last Modified: Wed, 12 Aug 2026 17:50:28 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0a613a252fa45362eb7c442bd34745c12c4f416d89a39bb133707d77bfd2b3`  
		Last Modified: Wed, 12 Aug 2026 17:50:27 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65f80357647f76f82b9bd1c8eab9d5ff205a781b665e0842236bd0debec95c4`  
		Last Modified: Wed, 12 Aug 2026 17:51:17 GMT  
		Size: 625.6 MB (625646398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2d855813a8b324f9b87829c1771871e80df1f501fb883442dcb4d6c8837b0b`  
		Last Modified: Wed, 12 Aug 2026 17:50:27 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea593466449a500abdd9fc5ac3b5944da40426c87cf824bb25ac73a74557944`  
		Last Modified: Wed, 12 Aug 2026 17:50:27 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f3cffe0c4cc18e6ee5f4b19bac18d4219974ea6ea8508583c1aff940ec0c77c`  
		Last Modified: Wed, 12 Aug 2026 17:50:27 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:7.0.40-windowsservercore-ltsc2022`

```console
$ docker pull mongo@sha256:21fdfa7812812749504b8d4c893c04d602d1f82bf5f240c1427e2d5587d1fbf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `mongo:7.0.40-windowsservercore-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull mongo@sha256:f6d968d3ec586deda5fa100624153c35061c56581f95bb3c2c46a677fc3a531d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2809652944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6686fced41d59847503a8d43fdf58efa36198ba8ebc14fce8e7b0e1989d58ed4`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Wed, 12 Aug 2026 17:49:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Aug 2026 17:49:12 GMT
ENV MONGO_VERSION=7.0.40
# Wed, 12 Aug 2026 17:49:13 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.40-signed.msi
# Wed, 12 Aug 2026 17:49:14 GMT
ENV MONGO_DOWNLOAD_SHA256=1adfb2c433f6215cfe38ce871b39d6ba2bd3d6d9159b6b251c647a694fd113c7
# Wed, 12 Aug 2026 17:50:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 17:50:22 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 17:50:23 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 17:50:23 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6663eb7183e1ec85dde1e1417037a290a09bf063d3d5deea1ba9d134d7c7d44`  
		Last Modified: Wed, 12 Aug 2026 17:50:29 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f2f132716487cfbd67422406a1a3d3411baa56b5c9f8d30b09d539dedab73b`  
		Last Modified: Wed, 12 Aug 2026 17:50:29 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23b0cb1564076c54f685439d7cdd9ebd02c721ebbb284fcce57b576ed4094f1`  
		Last Modified: Wed, 12 Aug 2026 17:50:28 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0a613a252fa45362eb7c442bd34745c12c4f416d89a39bb133707d77bfd2b3`  
		Last Modified: Wed, 12 Aug 2026 17:50:27 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65f80357647f76f82b9bd1c8eab9d5ff205a781b665e0842236bd0debec95c4`  
		Last Modified: Wed, 12 Aug 2026 17:51:17 GMT  
		Size: 625.6 MB (625646398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2d855813a8b324f9b87829c1771871e80df1f501fb883442dcb4d6c8837b0b`  
		Last Modified: Wed, 12 Aug 2026 17:50:27 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea593466449a500abdd9fc5ac3b5944da40426c87cf824bb25ac73a74557944`  
		Last Modified: Wed, 12 Aug 2026 17:50:27 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f3cffe0c4cc18e6ee5f4b19bac18d4219974ea6ea8508583c1aff940ec0c77c`  
		Last Modified: Wed, 12 Aug 2026 17:50:27 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:7.0.40-windowsservercore-ltsc2025`

```console
$ docker pull mongo@sha256:51db0c3806da05f5f9695a0cb638b80048dfe0e2a97d459551ff73b4d1e77727
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `mongo:7.0.40-windowsservercore-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull mongo@sha256:546d01c1fd61b6e725cf10d2ebe2fabf62145667d63833f08422868520300109
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 GB (3066490824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82bc182b9d87976d1ec42bc181603998fcfc784f32099ecbae882bb3759a8aa2`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 12 Aug 2026 17:46:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Aug 2026 17:49:05 GMT
ENV MONGO_VERSION=7.0.40
# Wed, 12 Aug 2026 17:49:06 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.40-signed.msi
# Wed, 12 Aug 2026 17:49:06 GMT
ENV MONGO_DOWNLOAD_SHA256=1adfb2c433f6215cfe38ce871b39d6ba2bd3d6d9159b6b251c647a694fd113c7
# Wed, 12 Aug 2026 17:50:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 17:50:39 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 17:50:39 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 17:50:40 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5abeeefbb7b11eb6332573ca632d3d8807213461f1b97f3cfee8899a29583f`  
		Last Modified: Tue, 11 Aug 2026 18:01:52 GMT  
		Size: 917.7 MB (917726084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efc9541172fee148ae0773f77cd5c15fd952a1ad7b84849afc9becf648dd6d1`  
		Last Modified: Wed, 12 Aug 2026 17:48:50 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce3cfb1967751bd0d24bcf4da1e49923ca7e1471c02cd9f38cdc015048a3e84e`  
		Last Modified: Wed, 12 Aug 2026 17:50:46 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbaa4e7d5472f2d2fa17694eb79adfe413e06285141775b48912d6b305249e70`  
		Last Modified: Wed, 12 Aug 2026 17:50:45 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a43a758d25412f09f9b2566c366c96ab3fa7cc5b5cf00ce02fbb1d419055874`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a746cb395aaa14972b03dc2ed9fb4fd2bdaedb2ad794ed30b17c590a7420b13`  
		Last Modified: Wed, 12 Aug 2026 17:51:38 GMT  
		Size: 625.7 MB (625696389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6aedf7dd51f28ff7c6ba2ab26c228f7d3403b801d0bddc4971bfee9dbc0c218`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6494ac04728ca1ae430513815d0c6102f42268e0fddca65f52c3e3694887c1b`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7beb1fd23821ca86e733b6c4078ee4c867e08cda3a32970bab3548573b2329e3`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.0`

```console
$ docker pull mongo@sha256:de267922bc1153d923f5c9dc429f21c11faf18299080c1ce04d6d6007097fb06
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `mongo:8.0` - linux; amd64

```console
$ docker pull mongo@sha256:8be83ffcebcaeb2aa1013b5a60418c6cc2521217bb079403ae4df79e2518678a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.2 MB (315185260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96945420794a773fcc98df62021e49fcb2994ef7a9a96dd91c3fe00cf50967b7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 11 Aug 2026 18:31:32 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 11 Aug 2026 18:31:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 18:31:54 GMT
ENV GOSU_VERSION=1.19
# Tue, 11 Aug 2026 18:31:54 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 11 Aug 2026 18:31:54 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 11 Aug 2026 18:31:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-8.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor '4B0752C1BCA238C0B4EE14DC41DE058A4E7DCA05' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 11 Aug 2026 18:31:54 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 11 Aug 2026 18:31:54 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 11 Aug 2026 18:31:54 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 18:31:54 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 18:31:54 GMT
ENV MONGO_MAJOR=8.0
# Tue, 11 Aug 2026 18:31:54 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu noble/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 11 Aug 2026 18:31:54 GMT
ENV MONGO_VERSION=8.0.29
# Tue, 11 Aug 2026 18:32:14 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 11 Aug 2026 18:32:14 GMT
VOLUME [/data/db /data/configdb]
# Tue, 11 Aug 2026 18:32:14 GMT
ENV HOME=/data/db
# Tue, 11 Aug 2026 18:32:14 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Tue, 11 Aug 2026 18:32:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 11 Aug 2026 18:32:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Aug 2026 18:32:14 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 11 Aug 2026 18:32:14 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b6d7d8ac1d4301aa5c78e25dab33c752211e3f03bba446be2180f62cc3d3375`  
		Last Modified: Tue, 11 Aug 2026 18:32:52 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d76bc04d882c0d0ee9e30ee68555e3f43908ae141fb3b550fad060311bf34c15`  
		Last Modified: Tue, 11 Aug 2026 18:32:53 GMT  
		Size: 3.9 MB (3876539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ee9258595cf47709a5ae5e93e54d59d394deec5218ba12b55f533c5124d2ec8`  
		Last Modified: Tue, 11 Aug 2026 18:32:52 GMT  
		Size: 934.2 KB (934235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eae9dc6be43e06649f4aac7eaa8a66a6044b29c3f7ed8b2c4a837b5384018639`  
		Last Modified: Tue, 11 Aug 2026 18:32:52 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c9b278a78f2da9b99d05f1d30f45ca3eca8f0a4216a8237ee8580463ecfab0a`  
		Last Modified: Tue, 11 Aug 2026 18:32:53 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98dac1e98f6f36883819968be5fcdde4153fd245b7c85cd6a4ecebbcbebb2b85`  
		Last Modified: Tue, 11 Aug 2026 18:32:59 GMT  
		Size: 280.6 MB (280616776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02732eb2d2028b6e6093f4e77fe1e0c1f0ba8d70177891ad65fab8b92b823b90`  
		Last Modified: Tue, 11 Aug 2026 18:32:54 GMT  
		Size: 5.0 KB (5005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:8.0` - unknown; unknown

```console
$ docker pull mongo@sha256:42c5a642230a4eefdc44e327771cdf6285f948675c911837e8a462628ab229a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2670625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14bcb6c81dbc596ee891a6ebe0d7765dce65e5dba31bcea25857f64aaea87bf1`

```dockerfile
```

-	Layers:
	-	`sha256:d1ba0c9b704e87a5cc1d0ebd6127c69eccb5605244f365da352a217c638c9e32`  
		Last Modified: Tue, 11 Aug 2026 18:32:53 GMT  
		Size: 2.6 MB (2643059 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3692dd546741902d2d46cd6112363c7da71a8fe4b9e3084ae7ef630cc6a7bb5`  
		Last Modified: Tue, 11 Aug 2026 18:32:52 GMT  
		Size: 27.6 KB (27566 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:8.0` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:5815b078273075ed210b35e67063ac7dc8e34c62c35ca5c845c4f73d568c5b2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.1 MB (299144584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ffef762a4b5bd1b0c567ab0baee06d612bce913fb50d09e678efb63b57f76f0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 11 Aug 2026 19:07:14 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 11 Aug 2026 19:07:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 19:07:33 GMT
ENV GOSU_VERSION=1.19
# Tue, 11 Aug 2026 19:07:33 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 11 Aug 2026 19:07:33 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 11 Aug 2026 19:07:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-8.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor '4B0752C1BCA238C0B4EE14DC41DE058A4E7DCA05' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 11 Aug 2026 19:07:33 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 11 Aug 2026 19:07:33 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 11 Aug 2026 19:07:33 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 19:07:33 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 19:07:33 GMT
ENV MONGO_MAJOR=8.0
# Tue, 11 Aug 2026 19:07:33 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu noble/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 11 Aug 2026 19:07:33 GMT
ENV MONGO_VERSION=8.0.29
# Tue, 11 Aug 2026 19:07:53 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 11 Aug 2026 19:07:53 GMT
VOLUME [/data/db /data/configdb]
# Tue, 11 Aug 2026 19:07:53 GMT
ENV HOME=/data/db
# Tue, 11 Aug 2026 19:07:53 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Tue, 11 Aug 2026 19:07:53 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 11 Aug 2026 19:07:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Aug 2026 19:07:53 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 11 Aug 2026 19:07:53 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54292ddcf9f782576c7bbb9867858354c9552bb95b9a9762d4fcbe76c449964e`  
		Last Modified: Tue, 11 Aug 2026 19:08:27 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8f54fb9bdec3b28278db102ee35826000b235ddcadce4a3ab5c0f54d41e5c2d`  
		Last Modified: Tue, 11 Aug 2026 19:08:27 GMT  
		Size: 1.5 MB (1451848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6639fa3ef389878ea045448e446da36174e7b928ec9797f4484c738d77d50900`  
		Last Modified: Tue, 11 Aug 2026 19:08:26 GMT  
		Size: 886.5 KB (886493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b80090128f1ecfa0dd1371356787c4f05d5e5188bc193818aad19030979028b`  
		Last Modified: Tue, 11 Aug 2026 19:08:27 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b46594195bd37deaae8f26441b2066b68275280bcb7489c38d6f4df4994be85`  
		Last Modified: Tue, 11 Aug 2026 19:08:28 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:827c824c1f443d235bdfbe941b451151ca9a137b8133bbd3ed0c67e17de2e904`  
		Last Modified: Tue, 11 Aug 2026 19:08:34 GMT  
		Size: 267.9 MB (267912830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54cd5bbab73af0d05ae56106eff21dd4ceb200942d15b219e1baec230a8e7229`  
		Last Modified: Tue, 11 Aug 2026 19:08:28 GMT  
		Size: 5.0 KB (5001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:8.0` - unknown; unknown

```console
$ docker pull mongo@sha256:244a0817d5180008a16cea831027bfc1a35c9f56fc51ad1d27dac4c73d38e9c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2671892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae99a9e2e6a23c7f42292e54329f012bffdc82a897c5193c3fd4ea977c0dec61`

```dockerfile
```

-	Layers:
	-	`sha256:81f87c092e4cc283b414988c61d0aa5794c4cf29b914acece57cbbe8d5a449e5`  
		Last Modified: Tue, 11 Aug 2026 19:08:27 GMT  
		Size: 2.6 MB (2644147 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9dbbf74fff1a3482432d3b5511c6f20a30348b07b3726dc8769014234240bf62`  
		Last Modified: Tue, 11 Aug 2026 19:08:26 GMT  
		Size: 27.7 KB (27745 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:8.0` - windows version 10.0.26100.33296; amd64

```console
$ docker pull mongo@sha256:6129b76a57425f06f1722be12c4f2efe172a8afa104cf08e099061f02b633b10
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3239270279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:873e4efc1b48b1aa90cdaa996d5503ae2bafb8f4c91eaaa83ade82e5060d8c62`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 12 Aug 2026 17:48:32 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Aug 2026 17:48:33 GMT
ENV MONGO_VERSION=8.0.29
# Wed, 12 Aug 2026 17:48:34 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.0.29-signed.msi
# Wed, 12 Aug 2026 17:48:35 GMT
ENV MONGO_DOWNLOAD_SHA256=7c2a821f6caaffe53da63f3a048ba624e04f37358b749ce0ebe9da1684fdfedc
# Wed, 12 Aug 2026 17:50:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 17:50:25 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 17:50:26 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 17:50:26 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5abeeefbb7b11eb6332573ca632d3d8807213461f1b97f3cfee8899a29583f`  
		Last Modified: Tue, 11 Aug 2026 18:01:52 GMT  
		Size: 917.7 MB (917726084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1431b768a9a0ba04c416c5ab7ed6487186a2fb55c10236e589259c86dfa4c531`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8df99a1b9c13ce353171d1eaa84dafc9a0e7051001a47e179bcdbd73d43f161`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5ef0eb6de90d82e067d451359aa121a56bb3143b845a3a27ede671a74d3ea93`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8912cd13cc7c5a99270fc1fc61aec405bf8390ba1652d620bdfb8b1d76c6c936`  
		Last Modified: Wed, 12 Aug 2026 17:50:42 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b6902935ed2d3d92e424a9a71f331d49f0b3610702c51c450d7fc14eadb8973`  
		Last Modified: Wed, 12 Aug 2026 17:51:45 GMT  
		Size: 798.5 MB (798475902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab251571dffd19d9e5d03a2f4c922fb19de84e21c65e8791f1289bf4382e2a8f`  
		Last Modified: Wed, 12 Aug 2026 17:50:42 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a9e52928bc6bb1d726b028a9f9bd5d9893c38ba6d620b41a22c5930e541dae`  
		Last Modified: Wed, 12 Aug 2026 17:50:42 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dbffd31d1caaae99fbe16f416b4e98be10ec9539b483801d810bd55f7bd6544`  
		Last Modified: Wed, 12 Aug 2026 17:50:42 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:8.0` - windows version 10.0.20348.5499; amd64

```console
$ docker pull mongo@sha256:e44fa23aa1e3060536acb8998e22a27d135604463f2a8314c4ee20abd23e25c3
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 GB (2982463412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74c74298427f1027d3b4bf71560ab9eebdf6437de8ffaacc84bb556d29458d99`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Wed, 12 Aug 2026 17:47:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Aug 2026 18:26:44 GMT
ENV MONGO_VERSION=8.0.29
# Wed, 12 Aug 2026 18:26:44 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.0.29-signed.msi
# Wed, 12 Aug 2026 18:26:45 GMT
ENV MONGO_DOWNLOAD_SHA256=7c2a821f6caaffe53da63f3a048ba624e04f37358b749ce0ebe9da1684fdfedc
# Wed, 12 Aug 2026 18:28:09 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 18:28:12 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 18:28:12 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 18:28:14 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e88f1160789d32e05e5f6d26a146bb8d1ae151a598a09633b60090645bd7ad9`  
		Last Modified: Wed, 12 Aug 2026 17:51:05 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a8eac6f240bbc85cd5dd9c6db61c9ecdea92525b96b6f452f66f9444843702`  
		Last Modified: Wed, 12 Aug 2026 18:28:28 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f59ac63d1bd5fef9521b72458027c08c21e56228215d190ad1f74e21f9e1b6`  
		Last Modified: Wed, 12 Aug 2026 18:28:27 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f750bd3377bfd39b93fb1e400bddc2b695b6509a2e1b67c1d8a5b0e516dfeed`  
		Last Modified: Wed, 12 Aug 2026 18:28:26 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28c366b7f3300c1c9705219f28f87485d2f41265426b2524e31e012cbe997e7b`  
		Last Modified: Wed, 12 Aug 2026 18:29:34 GMT  
		Size: 798.5 MB (798456803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24b05edbab24454d7f1fe90b4935b25b367fca5da44464739e675a09d1505bb`  
		Last Modified: Wed, 12 Aug 2026 18:28:26 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:938677f053bdaefed8a27097496452deee4fa384ce614abc69e70cf8d109afc4`  
		Last Modified: Wed, 12 Aug 2026 18:28:26 GMT  
		Size: 1.3 KB (1341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b1a4de3edf093652e8073e5c7d7e58554c05f37951bdb09f033ba1d0a94851`  
		Last Modified: Wed, 12 Aug 2026 18:28:26 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.0-nanoserver`

```console
$ docker pull mongo@sha256:45d6d6e527916453ab7cc057feb175ce2f510a6f175c397c44fc0d09735ea680
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `mongo:8.0-nanoserver` - windows version 10.0.20348.5499; amd64

```console
$ docker pull mongo@sha256:4308dd95148da4a1d91517612d2e4e5d9e13dec7ad922007581f4d1b2ef394bd
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **922.1 MB (922115958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20485b8b454cfcb98dec90b5cb012b9a3e9db515f43b4c691bfb30108202ccf2`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sun, 09 Aug 2026 04:00:46 GMT
RUN Apply image 10.0.20348.5499
# Wed, 12 Aug 2026 19:19:05 GMT
SHELL [cmd /S /C]
# Wed, 12 Aug 2026 19:19:06 GMT
USER ContainerAdministrator
# Wed, 12 Aug 2026 19:19:08 GMT
RUN setx /m PATH "C:\mongodb\bin;%PATH%"
# Wed, 12 Aug 2026 19:19:08 GMT
USER ContainerUser
# Wed, 12 Aug 2026 19:19:10 GMT
COPY multi:540d6dd70b1e7484f1958dc08b337aeb56cf8a92fe38be4c279dd406990d6935 in C:\Windows\System32\ 
# Wed, 12 Aug 2026 19:19:11 GMT
ENV MONGO_VERSION=8.0.29
# Wed, 12 Aug 2026 19:19:55 GMT
COPY dir:a2fa17e7cb290b710f03c3da8b69c45906c7650871c120c86cbc315639b81f57 in C:\mongodb 
# Wed, 12 Aug 2026 19:20:25 GMT
RUN mongod --version
# Wed, 12 Aug 2026 19:20:25 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 19:20:26 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 19:20:27 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:dc16402aa7d3fdbac6580d83e9c13ab7caf61d557113810e102089ffa3cd6cb4`  
		Last Modified: Tue, 11 Aug 2026 20:43:43 GMT  
		Size: 124.3 MB (124257916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49de8af3778a8f1c869163825da5d813d50c192d8d012eb450e2e85393374737`  
		Last Modified: Wed, 12 Aug 2026 19:20:39 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abfeec69698f019a242f92d1417c24c54dda38961db31e9e7be78cc8485a2267`  
		Last Modified: Wed, 12 Aug 2026 19:20:39 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc1facf08fbef9c44ea6e8a1e6ab1bafae3a0afa14e7d1db570e8b89131ccd3`  
		Last Modified: Wed, 12 Aug 2026 19:20:38 GMT  
		Size: 85.3 KB (85311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f48f7325636d3be59eb8483e2c19f9b17386782d2546f572322660d1b253fad`  
		Last Modified: Wed, 12 Aug 2026 19:20:38 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e72d313391090f22c29cf8baba37aa26088061623bbde8503a8ac8e64727cd`  
		Last Modified: Wed, 12 Aug 2026 19:20:38 GMT  
		Size: 275.2 KB (275211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa773a84551de95b6cd4162f1ba16c6faf69b2d80618531a951fa426a1188766`  
		Last Modified: Wed, 12 Aug 2026 19:20:38 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9af692834e89518fc8b5f79ffcd7fee5e63083320fabdd4720579809f978776`  
		Last Modified: Wed, 12 Aug 2026 19:21:43 GMT  
		Size: 797.4 MB (797403683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd3bc3d2c7952373fccc9760774cb95bf7aedff656371e3bf314ab4aa8d45100`  
		Last Modified: Wed, 12 Aug 2026 19:20:36 GMT  
		Size: 86.4 KB (86399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231d75847d712441a05c24414fca3710af48139890d4b379cccd3a75cb4ecc86`  
		Last Modified: Wed, 12 Aug 2026 19:20:36 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059b1ff8b20b26ccb184821a419ed9298589649f88a38f6bfa75bf3d8e70d813`  
		Last Modified: Wed, 12 Aug 2026 19:20:36 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f6de04cb7c37405597d548ca8c4aeba4bd2e9e8e730b2eeae9f4822c3acbcce`  
		Last Modified: Wed, 12 Aug 2026 19:20:36 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.0-nanoserver-ltsc2022`

```console
$ docker pull mongo@sha256:45d6d6e527916453ab7cc057feb175ce2f510a6f175c397c44fc0d09735ea680
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `mongo:8.0-nanoserver-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull mongo@sha256:4308dd95148da4a1d91517612d2e4e5d9e13dec7ad922007581f4d1b2ef394bd
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **922.1 MB (922115958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20485b8b454cfcb98dec90b5cb012b9a3e9db515f43b4c691bfb30108202ccf2`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sun, 09 Aug 2026 04:00:46 GMT
RUN Apply image 10.0.20348.5499
# Wed, 12 Aug 2026 19:19:05 GMT
SHELL [cmd /S /C]
# Wed, 12 Aug 2026 19:19:06 GMT
USER ContainerAdministrator
# Wed, 12 Aug 2026 19:19:08 GMT
RUN setx /m PATH "C:\mongodb\bin;%PATH%"
# Wed, 12 Aug 2026 19:19:08 GMT
USER ContainerUser
# Wed, 12 Aug 2026 19:19:10 GMT
COPY multi:540d6dd70b1e7484f1958dc08b337aeb56cf8a92fe38be4c279dd406990d6935 in C:\Windows\System32\ 
# Wed, 12 Aug 2026 19:19:11 GMT
ENV MONGO_VERSION=8.0.29
# Wed, 12 Aug 2026 19:19:55 GMT
COPY dir:a2fa17e7cb290b710f03c3da8b69c45906c7650871c120c86cbc315639b81f57 in C:\mongodb 
# Wed, 12 Aug 2026 19:20:25 GMT
RUN mongod --version
# Wed, 12 Aug 2026 19:20:25 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 19:20:26 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 19:20:27 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:dc16402aa7d3fdbac6580d83e9c13ab7caf61d557113810e102089ffa3cd6cb4`  
		Last Modified: Tue, 11 Aug 2026 20:43:43 GMT  
		Size: 124.3 MB (124257916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49de8af3778a8f1c869163825da5d813d50c192d8d012eb450e2e85393374737`  
		Last Modified: Wed, 12 Aug 2026 19:20:39 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abfeec69698f019a242f92d1417c24c54dda38961db31e9e7be78cc8485a2267`  
		Last Modified: Wed, 12 Aug 2026 19:20:39 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc1facf08fbef9c44ea6e8a1e6ab1bafae3a0afa14e7d1db570e8b89131ccd3`  
		Last Modified: Wed, 12 Aug 2026 19:20:38 GMT  
		Size: 85.3 KB (85311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f48f7325636d3be59eb8483e2c19f9b17386782d2546f572322660d1b253fad`  
		Last Modified: Wed, 12 Aug 2026 19:20:38 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e72d313391090f22c29cf8baba37aa26088061623bbde8503a8ac8e64727cd`  
		Last Modified: Wed, 12 Aug 2026 19:20:38 GMT  
		Size: 275.2 KB (275211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa773a84551de95b6cd4162f1ba16c6faf69b2d80618531a951fa426a1188766`  
		Last Modified: Wed, 12 Aug 2026 19:20:38 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9af692834e89518fc8b5f79ffcd7fee5e63083320fabdd4720579809f978776`  
		Last Modified: Wed, 12 Aug 2026 19:21:43 GMT  
		Size: 797.4 MB (797403683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd3bc3d2c7952373fccc9760774cb95bf7aedff656371e3bf314ab4aa8d45100`  
		Last Modified: Wed, 12 Aug 2026 19:20:36 GMT  
		Size: 86.4 KB (86399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231d75847d712441a05c24414fca3710af48139890d4b379cccd3a75cb4ecc86`  
		Last Modified: Wed, 12 Aug 2026 19:20:36 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059b1ff8b20b26ccb184821a419ed9298589649f88a38f6bfa75bf3d8e70d813`  
		Last Modified: Wed, 12 Aug 2026 19:20:36 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f6de04cb7c37405597d548ca8c4aeba4bd2e9e8e730b2eeae9f4822c3acbcce`  
		Last Modified: Wed, 12 Aug 2026 19:20:36 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.0-noble`

```console
$ docker pull mongo@sha256:43f6e6733f0f0647bcc896cd7b4ee6e0e4872e65a1e6de27ea935efd43120a70
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mongo:8.0-noble` - linux; amd64

```console
$ docker pull mongo@sha256:8be83ffcebcaeb2aa1013b5a60418c6cc2521217bb079403ae4df79e2518678a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.2 MB (315185260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96945420794a773fcc98df62021e49fcb2994ef7a9a96dd91c3fe00cf50967b7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 11 Aug 2026 18:31:32 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 11 Aug 2026 18:31:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 18:31:54 GMT
ENV GOSU_VERSION=1.19
# Tue, 11 Aug 2026 18:31:54 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 11 Aug 2026 18:31:54 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 11 Aug 2026 18:31:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-8.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor '4B0752C1BCA238C0B4EE14DC41DE058A4E7DCA05' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 11 Aug 2026 18:31:54 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 11 Aug 2026 18:31:54 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 11 Aug 2026 18:31:54 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 18:31:54 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 18:31:54 GMT
ENV MONGO_MAJOR=8.0
# Tue, 11 Aug 2026 18:31:54 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu noble/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 11 Aug 2026 18:31:54 GMT
ENV MONGO_VERSION=8.0.29
# Tue, 11 Aug 2026 18:32:14 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 11 Aug 2026 18:32:14 GMT
VOLUME [/data/db /data/configdb]
# Tue, 11 Aug 2026 18:32:14 GMT
ENV HOME=/data/db
# Tue, 11 Aug 2026 18:32:14 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Tue, 11 Aug 2026 18:32:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 11 Aug 2026 18:32:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Aug 2026 18:32:14 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 11 Aug 2026 18:32:14 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b6d7d8ac1d4301aa5c78e25dab33c752211e3f03bba446be2180f62cc3d3375`  
		Last Modified: Tue, 11 Aug 2026 18:32:52 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d76bc04d882c0d0ee9e30ee68555e3f43908ae141fb3b550fad060311bf34c15`  
		Last Modified: Tue, 11 Aug 2026 18:32:53 GMT  
		Size: 3.9 MB (3876539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ee9258595cf47709a5ae5e93e54d59d394deec5218ba12b55f533c5124d2ec8`  
		Last Modified: Tue, 11 Aug 2026 18:32:52 GMT  
		Size: 934.2 KB (934235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eae9dc6be43e06649f4aac7eaa8a66a6044b29c3f7ed8b2c4a837b5384018639`  
		Last Modified: Tue, 11 Aug 2026 18:32:52 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c9b278a78f2da9b99d05f1d30f45ca3eca8f0a4216a8237ee8580463ecfab0a`  
		Last Modified: Tue, 11 Aug 2026 18:32:53 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98dac1e98f6f36883819968be5fcdde4153fd245b7c85cd6a4ecebbcbebb2b85`  
		Last Modified: Tue, 11 Aug 2026 18:32:59 GMT  
		Size: 280.6 MB (280616776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02732eb2d2028b6e6093f4e77fe1e0c1f0ba8d70177891ad65fab8b92b823b90`  
		Last Modified: Tue, 11 Aug 2026 18:32:54 GMT  
		Size: 5.0 KB (5005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:8.0-noble` - unknown; unknown

```console
$ docker pull mongo@sha256:42c5a642230a4eefdc44e327771cdf6285f948675c911837e8a462628ab229a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2670625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14bcb6c81dbc596ee891a6ebe0d7765dce65e5dba31bcea25857f64aaea87bf1`

```dockerfile
```

-	Layers:
	-	`sha256:d1ba0c9b704e87a5cc1d0ebd6127c69eccb5605244f365da352a217c638c9e32`  
		Last Modified: Tue, 11 Aug 2026 18:32:53 GMT  
		Size: 2.6 MB (2643059 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3692dd546741902d2d46cd6112363c7da71a8fe4b9e3084ae7ef630cc6a7bb5`  
		Last Modified: Tue, 11 Aug 2026 18:32:52 GMT  
		Size: 27.6 KB (27566 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:8.0-noble` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:5815b078273075ed210b35e67063ac7dc8e34c62c35ca5c845c4f73d568c5b2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.1 MB (299144584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ffef762a4b5bd1b0c567ab0baee06d612bce913fb50d09e678efb63b57f76f0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 11 Aug 2026 19:07:14 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 11 Aug 2026 19:07:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 19:07:33 GMT
ENV GOSU_VERSION=1.19
# Tue, 11 Aug 2026 19:07:33 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 11 Aug 2026 19:07:33 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 11 Aug 2026 19:07:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-8.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor '4B0752C1BCA238C0B4EE14DC41DE058A4E7DCA05' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 11 Aug 2026 19:07:33 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 11 Aug 2026 19:07:33 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 11 Aug 2026 19:07:33 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 19:07:33 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 19:07:33 GMT
ENV MONGO_MAJOR=8.0
# Tue, 11 Aug 2026 19:07:33 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu noble/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 11 Aug 2026 19:07:33 GMT
ENV MONGO_VERSION=8.0.29
# Tue, 11 Aug 2026 19:07:53 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 11 Aug 2026 19:07:53 GMT
VOLUME [/data/db /data/configdb]
# Tue, 11 Aug 2026 19:07:53 GMT
ENV HOME=/data/db
# Tue, 11 Aug 2026 19:07:53 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Tue, 11 Aug 2026 19:07:53 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 11 Aug 2026 19:07:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Aug 2026 19:07:53 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 11 Aug 2026 19:07:53 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54292ddcf9f782576c7bbb9867858354c9552bb95b9a9762d4fcbe76c449964e`  
		Last Modified: Tue, 11 Aug 2026 19:08:27 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8f54fb9bdec3b28278db102ee35826000b235ddcadce4a3ab5c0f54d41e5c2d`  
		Last Modified: Tue, 11 Aug 2026 19:08:27 GMT  
		Size: 1.5 MB (1451848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6639fa3ef389878ea045448e446da36174e7b928ec9797f4484c738d77d50900`  
		Last Modified: Tue, 11 Aug 2026 19:08:26 GMT  
		Size: 886.5 KB (886493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b80090128f1ecfa0dd1371356787c4f05d5e5188bc193818aad19030979028b`  
		Last Modified: Tue, 11 Aug 2026 19:08:27 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b46594195bd37deaae8f26441b2066b68275280bcb7489c38d6f4df4994be85`  
		Last Modified: Tue, 11 Aug 2026 19:08:28 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:827c824c1f443d235bdfbe941b451151ca9a137b8133bbd3ed0c67e17de2e904`  
		Last Modified: Tue, 11 Aug 2026 19:08:34 GMT  
		Size: 267.9 MB (267912830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54cd5bbab73af0d05ae56106eff21dd4ceb200942d15b219e1baec230a8e7229`  
		Last Modified: Tue, 11 Aug 2026 19:08:28 GMT  
		Size: 5.0 KB (5001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:8.0-noble` - unknown; unknown

```console
$ docker pull mongo@sha256:244a0817d5180008a16cea831027bfc1a35c9f56fc51ad1d27dac4c73d38e9c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2671892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae99a9e2e6a23c7f42292e54329f012bffdc82a897c5193c3fd4ea977c0dec61`

```dockerfile
```

-	Layers:
	-	`sha256:81f87c092e4cc283b414988c61d0aa5794c4cf29b914acece57cbbe8d5a449e5`  
		Last Modified: Tue, 11 Aug 2026 19:08:27 GMT  
		Size: 2.6 MB (2644147 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9dbbf74fff1a3482432d3b5511c6f20a30348b07b3726dc8769014234240bf62`  
		Last Modified: Tue, 11 Aug 2026 19:08:26 GMT  
		Size: 27.7 KB (27745 bytes)  
		MIME: application/vnd.in-toto+json

## `mongo:8.0-windowsservercore`

```console
$ docker pull mongo@sha256:fc239e4edb294cebf234a0c8b8e9318bcacad60739af3acf526b061e39b79cc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `mongo:8.0-windowsservercore` - windows version 10.0.26100.33296; amd64

```console
$ docker pull mongo@sha256:6129b76a57425f06f1722be12c4f2efe172a8afa104cf08e099061f02b633b10
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3239270279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:873e4efc1b48b1aa90cdaa996d5503ae2bafb8f4c91eaaa83ade82e5060d8c62`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 12 Aug 2026 17:48:32 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Aug 2026 17:48:33 GMT
ENV MONGO_VERSION=8.0.29
# Wed, 12 Aug 2026 17:48:34 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.0.29-signed.msi
# Wed, 12 Aug 2026 17:48:35 GMT
ENV MONGO_DOWNLOAD_SHA256=7c2a821f6caaffe53da63f3a048ba624e04f37358b749ce0ebe9da1684fdfedc
# Wed, 12 Aug 2026 17:50:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 17:50:25 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 17:50:26 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 17:50:26 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5abeeefbb7b11eb6332573ca632d3d8807213461f1b97f3cfee8899a29583f`  
		Last Modified: Tue, 11 Aug 2026 18:01:52 GMT  
		Size: 917.7 MB (917726084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1431b768a9a0ba04c416c5ab7ed6487186a2fb55c10236e589259c86dfa4c531`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8df99a1b9c13ce353171d1eaa84dafc9a0e7051001a47e179bcdbd73d43f161`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5ef0eb6de90d82e067d451359aa121a56bb3143b845a3a27ede671a74d3ea93`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8912cd13cc7c5a99270fc1fc61aec405bf8390ba1652d620bdfb8b1d76c6c936`  
		Last Modified: Wed, 12 Aug 2026 17:50:42 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b6902935ed2d3d92e424a9a71f331d49f0b3610702c51c450d7fc14eadb8973`  
		Last Modified: Wed, 12 Aug 2026 17:51:45 GMT  
		Size: 798.5 MB (798475902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab251571dffd19d9e5d03a2f4c922fb19de84e21c65e8791f1289bf4382e2a8f`  
		Last Modified: Wed, 12 Aug 2026 17:50:42 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a9e52928bc6bb1d726b028a9f9bd5d9893c38ba6d620b41a22c5930e541dae`  
		Last Modified: Wed, 12 Aug 2026 17:50:42 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dbffd31d1caaae99fbe16f416b4e98be10ec9539b483801d810bd55f7bd6544`  
		Last Modified: Wed, 12 Aug 2026 17:50:42 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:8.0-windowsservercore` - windows version 10.0.20348.5499; amd64

```console
$ docker pull mongo@sha256:e44fa23aa1e3060536acb8998e22a27d135604463f2a8314c4ee20abd23e25c3
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 GB (2982463412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74c74298427f1027d3b4bf71560ab9eebdf6437de8ffaacc84bb556d29458d99`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Wed, 12 Aug 2026 17:47:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Aug 2026 18:26:44 GMT
ENV MONGO_VERSION=8.0.29
# Wed, 12 Aug 2026 18:26:44 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.0.29-signed.msi
# Wed, 12 Aug 2026 18:26:45 GMT
ENV MONGO_DOWNLOAD_SHA256=7c2a821f6caaffe53da63f3a048ba624e04f37358b749ce0ebe9da1684fdfedc
# Wed, 12 Aug 2026 18:28:09 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 18:28:12 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 18:28:12 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 18:28:14 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e88f1160789d32e05e5f6d26a146bb8d1ae151a598a09633b60090645bd7ad9`  
		Last Modified: Wed, 12 Aug 2026 17:51:05 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a8eac6f240bbc85cd5dd9c6db61c9ecdea92525b96b6f452f66f9444843702`  
		Last Modified: Wed, 12 Aug 2026 18:28:28 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f59ac63d1bd5fef9521b72458027c08c21e56228215d190ad1f74e21f9e1b6`  
		Last Modified: Wed, 12 Aug 2026 18:28:27 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f750bd3377bfd39b93fb1e400bddc2b695b6509a2e1b67c1d8a5b0e516dfeed`  
		Last Modified: Wed, 12 Aug 2026 18:28:26 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28c366b7f3300c1c9705219f28f87485d2f41265426b2524e31e012cbe997e7b`  
		Last Modified: Wed, 12 Aug 2026 18:29:34 GMT  
		Size: 798.5 MB (798456803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24b05edbab24454d7f1fe90b4935b25b367fca5da44464739e675a09d1505bb`  
		Last Modified: Wed, 12 Aug 2026 18:28:26 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:938677f053bdaefed8a27097496452deee4fa384ce614abc69e70cf8d109afc4`  
		Last Modified: Wed, 12 Aug 2026 18:28:26 GMT  
		Size: 1.3 KB (1341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b1a4de3edf093652e8073e5c7d7e58554c05f37951bdb09f033ba1d0a94851`  
		Last Modified: Wed, 12 Aug 2026 18:28:26 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.0-windowsservercore-ltsc2022`

```console
$ docker pull mongo@sha256:12698d2dbf88d42eb36c2a811375d6f04bfa01ee6214746d30b5ab001d30403f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `mongo:8.0-windowsservercore-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull mongo@sha256:e44fa23aa1e3060536acb8998e22a27d135604463f2a8314c4ee20abd23e25c3
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 GB (2982463412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74c74298427f1027d3b4bf71560ab9eebdf6437de8ffaacc84bb556d29458d99`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Wed, 12 Aug 2026 17:47:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Aug 2026 18:26:44 GMT
ENV MONGO_VERSION=8.0.29
# Wed, 12 Aug 2026 18:26:44 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.0.29-signed.msi
# Wed, 12 Aug 2026 18:26:45 GMT
ENV MONGO_DOWNLOAD_SHA256=7c2a821f6caaffe53da63f3a048ba624e04f37358b749ce0ebe9da1684fdfedc
# Wed, 12 Aug 2026 18:28:09 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 18:28:12 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 18:28:12 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 18:28:14 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e88f1160789d32e05e5f6d26a146bb8d1ae151a598a09633b60090645bd7ad9`  
		Last Modified: Wed, 12 Aug 2026 17:51:05 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a8eac6f240bbc85cd5dd9c6db61c9ecdea92525b96b6f452f66f9444843702`  
		Last Modified: Wed, 12 Aug 2026 18:28:28 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f59ac63d1bd5fef9521b72458027c08c21e56228215d190ad1f74e21f9e1b6`  
		Last Modified: Wed, 12 Aug 2026 18:28:27 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f750bd3377bfd39b93fb1e400bddc2b695b6509a2e1b67c1d8a5b0e516dfeed`  
		Last Modified: Wed, 12 Aug 2026 18:28:26 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28c366b7f3300c1c9705219f28f87485d2f41265426b2524e31e012cbe997e7b`  
		Last Modified: Wed, 12 Aug 2026 18:29:34 GMT  
		Size: 798.5 MB (798456803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24b05edbab24454d7f1fe90b4935b25b367fca5da44464739e675a09d1505bb`  
		Last Modified: Wed, 12 Aug 2026 18:28:26 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:938677f053bdaefed8a27097496452deee4fa384ce614abc69e70cf8d109afc4`  
		Last Modified: Wed, 12 Aug 2026 18:28:26 GMT  
		Size: 1.3 KB (1341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b1a4de3edf093652e8073e5c7d7e58554c05f37951bdb09f033ba1d0a94851`  
		Last Modified: Wed, 12 Aug 2026 18:28:26 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.0-windowsservercore-ltsc2025`

```console
$ docker pull mongo@sha256:c3a4fb5f5e7820af66095fabeec11f96224b1df76b9fc8b2f309f7fb189ca784
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `mongo:8.0-windowsservercore-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull mongo@sha256:6129b76a57425f06f1722be12c4f2efe172a8afa104cf08e099061f02b633b10
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3239270279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:873e4efc1b48b1aa90cdaa996d5503ae2bafb8f4c91eaaa83ade82e5060d8c62`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 12 Aug 2026 17:48:32 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Aug 2026 17:48:33 GMT
ENV MONGO_VERSION=8.0.29
# Wed, 12 Aug 2026 17:48:34 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.0.29-signed.msi
# Wed, 12 Aug 2026 17:48:35 GMT
ENV MONGO_DOWNLOAD_SHA256=7c2a821f6caaffe53da63f3a048ba624e04f37358b749ce0ebe9da1684fdfedc
# Wed, 12 Aug 2026 17:50:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 17:50:25 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 17:50:26 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 17:50:26 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5abeeefbb7b11eb6332573ca632d3d8807213461f1b97f3cfee8899a29583f`  
		Last Modified: Tue, 11 Aug 2026 18:01:52 GMT  
		Size: 917.7 MB (917726084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1431b768a9a0ba04c416c5ab7ed6487186a2fb55c10236e589259c86dfa4c531`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8df99a1b9c13ce353171d1eaa84dafc9a0e7051001a47e179bcdbd73d43f161`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5ef0eb6de90d82e067d451359aa121a56bb3143b845a3a27ede671a74d3ea93`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8912cd13cc7c5a99270fc1fc61aec405bf8390ba1652d620bdfb8b1d76c6c936`  
		Last Modified: Wed, 12 Aug 2026 17:50:42 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b6902935ed2d3d92e424a9a71f331d49f0b3610702c51c450d7fc14eadb8973`  
		Last Modified: Wed, 12 Aug 2026 17:51:45 GMT  
		Size: 798.5 MB (798475902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab251571dffd19d9e5d03a2f4c922fb19de84e21c65e8791f1289bf4382e2a8f`  
		Last Modified: Wed, 12 Aug 2026 17:50:42 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a9e52928bc6bb1d726b028a9f9bd5d9893c38ba6d620b41a22c5930e541dae`  
		Last Modified: Wed, 12 Aug 2026 17:50:42 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dbffd31d1caaae99fbe16f416b4e98be10ec9539b483801d810bd55f7bd6544`  
		Last Modified: Wed, 12 Aug 2026 17:50:42 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.0.29`

```console
$ docker pull mongo@sha256:de267922bc1153d923f5c9dc429f21c11faf18299080c1ce04d6d6007097fb06
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `mongo:8.0.29` - linux; amd64

```console
$ docker pull mongo@sha256:8be83ffcebcaeb2aa1013b5a60418c6cc2521217bb079403ae4df79e2518678a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.2 MB (315185260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96945420794a773fcc98df62021e49fcb2994ef7a9a96dd91c3fe00cf50967b7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 11 Aug 2026 18:31:32 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 11 Aug 2026 18:31:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 18:31:54 GMT
ENV GOSU_VERSION=1.19
# Tue, 11 Aug 2026 18:31:54 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 11 Aug 2026 18:31:54 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 11 Aug 2026 18:31:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-8.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor '4B0752C1BCA238C0B4EE14DC41DE058A4E7DCA05' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 11 Aug 2026 18:31:54 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 11 Aug 2026 18:31:54 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 11 Aug 2026 18:31:54 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 18:31:54 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 18:31:54 GMT
ENV MONGO_MAJOR=8.0
# Tue, 11 Aug 2026 18:31:54 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu noble/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 11 Aug 2026 18:31:54 GMT
ENV MONGO_VERSION=8.0.29
# Tue, 11 Aug 2026 18:32:14 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 11 Aug 2026 18:32:14 GMT
VOLUME [/data/db /data/configdb]
# Tue, 11 Aug 2026 18:32:14 GMT
ENV HOME=/data/db
# Tue, 11 Aug 2026 18:32:14 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Tue, 11 Aug 2026 18:32:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 11 Aug 2026 18:32:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Aug 2026 18:32:14 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 11 Aug 2026 18:32:14 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b6d7d8ac1d4301aa5c78e25dab33c752211e3f03bba446be2180f62cc3d3375`  
		Last Modified: Tue, 11 Aug 2026 18:32:52 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d76bc04d882c0d0ee9e30ee68555e3f43908ae141fb3b550fad060311bf34c15`  
		Last Modified: Tue, 11 Aug 2026 18:32:53 GMT  
		Size: 3.9 MB (3876539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ee9258595cf47709a5ae5e93e54d59d394deec5218ba12b55f533c5124d2ec8`  
		Last Modified: Tue, 11 Aug 2026 18:32:52 GMT  
		Size: 934.2 KB (934235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eae9dc6be43e06649f4aac7eaa8a66a6044b29c3f7ed8b2c4a837b5384018639`  
		Last Modified: Tue, 11 Aug 2026 18:32:52 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c9b278a78f2da9b99d05f1d30f45ca3eca8f0a4216a8237ee8580463ecfab0a`  
		Last Modified: Tue, 11 Aug 2026 18:32:53 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98dac1e98f6f36883819968be5fcdde4153fd245b7c85cd6a4ecebbcbebb2b85`  
		Last Modified: Tue, 11 Aug 2026 18:32:59 GMT  
		Size: 280.6 MB (280616776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02732eb2d2028b6e6093f4e77fe1e0c1f0ba8d70177891ad65fab8b92b823b90`  
		Last Modified: Tue, 11 Aug 2026 18:32:54 GMT  
		Size: 5.0 KB (5005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:8.0.29` - unknown; unknown

```console
$ docker pull mongo@sha256:42c5a642230a4eefdc44e327771cdf6285f948675c911837e8a462628ab229a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2670625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14bcb6c81dbc596ee891a6ebe0d7765dce65e5dba31bcea25857f64aaea87bf1`

```dockerfile
```

-	Layers:
	-	`sha256:d1ba0c9b704e87a5cc1d0ebd6127c69eccb5605244f365da352a217c638c9e32`  
		Last Modified: Tue, 11 Aug 2026 18:32:53 GMT  
		Size: 2.6 MB (2643059 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3692dd546741902d2d46cd6112363c7da71a8fe4b9e3084ae7ef630cc6a7bb5`  
		Last Modified: Tue, 11 Aug 2026 18:32:52 GMT  
		Size: 27.6 KB (27566 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:8.0.29` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:5815b078273075ed210b35e67063ac7dc8e34c62c35ca5c845c4f73d568c5b2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.1 MB (299144584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ffef762a4b5bd1b0c567ab0baee06d612bce913fb50d09e678efb63b57f76f0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 11 Aug 2026 19:07:14 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 11 Aug 2026 19:07:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 19:07:33 GMT
ENV GOSU_VERSION=1.19
# Tue, 11 Aug 2026 19:07:33 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 11 Aug 2026 19:07:33 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 11 Aug 2026 19:07:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-8.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor '4B0752C1BCA238C0B4EE14DC41DE058A4E7DCA05' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 11 Aug 2026 19:07:33 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 11 Aug 2026 19:07:33 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 11 Aug 2026 19:07:33 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 19:07:33 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 19:07:33 GMT
ENV MONGO_MAJOR=8.0
# Tue, 11 Aug 2026 19:07:33 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu noble/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 11 Aug 2026 19:07:33 GMT
ENV MONGO_VERSION=8.0.29
# Tue, 11 Aug 2026 19:07:53 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 11 Aug 2026 19:07:53 GMT
VOLUME [/data/db /data/configdb]
# Tue, 11 Aug 2026 19:07:53 GMT
ENV HOME=/data/db
# Tue, 11 Aug 2026 19:07:53 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Tue, 11 Aug 2026 19:07:53 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 11 Aug 2026 19:07:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Aug 2026 19:07:53 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 11 Aug 2026 19:07:53 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54292ddcf9f782576c7bbb9867858354c9552bb95b9a9762d4fcbe76c449964e`  
		Last Modified: Tue, 11 Aug 2026 19:08:27 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8f54fb9bdec3b28278db102ee35826000b235ddcadce4a3ab5c0f54d41e5c2d`  
		Last Modified: Tue, 11 Aug 2026 19:08:27 GMT  
		Size: 1.5 MB (1451848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6639fa3ef389878ea045448e446da36174e7b928ec9797f4484c738d77d50900`  
		Last Modified: Tue, 11 Aug 2026 19:08:26 GMT  
		Size: 886.5 KB (886493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b80090128f1ecfa0dd1371356787c4f05d5e5188bc193818aad19030979028b`  
		Last Modified: Tue, 11 Aug 2026 19:08:27 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b46594195bd37deaae8f26441b2066b68275280bcb7489c38d6f4df4994be85`  
		Last Modified: Tue, 11 Aug 2026 19:08:28 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:827c824c1f443d235bdfbe941b451151ca9a137b8133bbd3ed0c67e17de2e904`  
		Last Modified: Tue, 11 Aug 2026 19:08:34 GMT  
		Size: 267.9 MB (267912830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54cd5bbab73af0d05ae56106eff21dd4ceb200942d15b219e1baec230a8e7229`  
		Last Modified: Tue, 11 Aug 2026 19:08:28 GMT  
		Size: 5.0 KB (5001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:8.0.29` - unknown; unknown

```console
$ docker pull mongo@sha256:244a0817d5180008a16cea831027bfc1a35c9f56fc51ad1d27dac4c73d38e9c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2671892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae99a9e2e6a23c7f42292e54329f012bffdc82a897c5193c3fd4ea977c0dec61`

```dockerfile
```

-	Layers:
	-	`sha256:81f87c092e4cc283b414988c61d0aa5794c4cf29b914acece57cbbe8d5a449e5`  
		Last Modified: Tue, 11 Aug 2026 19:08:27 GMT  
		Size: 2.6 MB (2644147 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9dbbf74fff1a3482432d3b5511c6f20a30348b07b3726dc8769014234240bf62`  
		Last Modified: Tue, 11 Aug 2026 19:08:26 GMT  
		Size: 27.7 KB (27745 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:8.0.29` - windows version 10.0.26100.33296; amd64

```console
$ docker pull mongo@sha256:6129b76a57425f06f1722be12c4f2efe172a8afa104cf08e099061f02b633b10
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3239270279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:873e4efc1b48b1aa90cdaa996d5503ae2bafb8f4c91eaaa83ade82e5060d8c62`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 12 Aug 2026 17:48:32 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Aug 2026 17:48:33 GMT
ENV MONGO_VERSION=8.0.29
# Wed, 12 Aug 2026 17:48:34 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.0.29-signed.msi
# Wed, 12 Aug 2026 17:48:35 GMT
ENV MONGO_DOWNLOAD_SHA256=7c2a821f6caaffe53da63f3a048ba624e04f37358b749ce0ebe9da1684fdfedc
# Wed, 12 Aug 2026 17:50:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 17:50:25 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 17:50:26 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 17:50:26 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5abeeefbb7b11eb6332573ca632d3d8807213461f1b97f3cfee8899a29583f`  
		Last Modified: Tue, 11 Aug 2026 18:01:52 GMT  
		Size: 917.7 MB (917726084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1431b768a9a0ba04c416c5ab7ed6487186a2fb55c10236e589259c86dfa4c531`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8df99a1b9c13ce353171d1eaa84dafc9a0e7051001a47e179bcdbd73d43f161`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5ef0eb6de90d82e067d451359aa121a56bb3143b845a3a27ede671a74d3ea93`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8912cd13cc7c5a99270fc1fc61aec405bf8390ba1652d620bdfb8b1d76c6c936`  
		Last Modified: Wed, 12 Aug 2026 17:50:42 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b6902935ed2d3d92e424a9a71f331d49f0b3610702c51c450d7fc14eadb8973`  
		Last Modified: Wed, 12 Aug 2026 17:51:45 GMT  
		Size: 798.5 MB (798475902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab251571dffd19d9e5d03a2f4c922fb19de84e21c65e8791f1289bf4382e2a8f`  
		Last Modified: Wed, 12 Aug 2026 17:50:42 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a9e52928bc6bb1d726b028a9f9bd5d9893c38ba6d620b41a22c5930e541dae`  
		Last Modified: Wed, 12 Aug 2026 17:50:42 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dbffd31d1caaae99fbe16f416b4e98be10ec9539b483801d810bd55f7bd6544`  
		Last Modified: Wed, 12 Aug 2026 17:50:42 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:8.0.29` - windows version 10.0.20348.5499; amd64

```console
$ docker pull mongo@sha256:e44fa23aa1e3060536acb8998e22a27d135604463f2a8314c4ee20abd23e25c3
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 GB (2982463412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74c74298427f1027d3b4bf71560ab9eebdf6437de8ffaacc84bb556d29458d99`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Wed, 12 Aug 2026 17:47:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Aug 2026 18:26:44 GMT
ENV MONGO_VERSION=8.0.29
# Wed, 12 Aug 2026 18:26:44 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.0.29-signed.msi
# Wed, 12 Aug 2026 18:26:45 GMT
ENV MONGO_DOWNLOAD_SHA256=7c2a821f6caaffe53da63f3a048ba624e04f37358b749ce0ebe9da1684fdfedc
# Wed, 12 Aug 2026 18:28:09 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 18:28:12 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 18:28:12 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 18:28:14 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e88f1160789d32e05e5f6d26a146bb8d1ae151a598a09633b60090645bd7ad9`  
		Last Modified: Wed, 12 Aug 2026 17:51:05 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a8eac6f240bbc85cd5dd9c6db61c9ecdea92525b96b6f452f66f9444843702`  
		Last Modified: Wed, 12 Aug 2026 18:28:28 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f59ac63d1bd5fef9521b72458027c08c21e56228215d190ad1f74e21f9e1b6`  
		Last Modified: Wed, 12 Aug 2026 18:28:27 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f750bd3377bfd39b93fb1e400bddc2b695b6509a2e1b67c1d8a5b0e516dfeed`  
		Last Modified: Wed, 12 Aug 2026 18:28:26 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28c366b7f3300c1c9705219f28f87485d2f41265426b2524e31e012cbe997e7b`  
		Last Modified: Wed, 12 Aug 2026 18:29:34 GMT  
		Size: 798.5 MB (798456803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24b05edbab24454d7f1fe90b4935b25b367fca5da44464739e675a09d1505bb`  
		Last Modified: Wed, 12 Aug 2026 18:28:26 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:938677f053bdaefed8a27097496452deee4fa384ce614abc69e70cf8d109afc4`  
		Last Modified: Wed, 12 Aug 2026 18:28:26 GMT  
		Size: 1.3 KB (1341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b1a4de3edf093652e8073e5c7d7e58554c05f37951bdb09f033ba1d0a94851`  
		Last Modified: Wed, 12 Aug 2026 18:28:26 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.0.29-nanoserver`

```console
$ docker pull mongo@sha256:45d6d6e527916453ab7cc057feb175ce2f510a6f175c397c44fc0d09735ea680
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `mongo:8.0.29-nanoserver` - windows version 10.0.20348.5499; amd64

```console
$ docker pull mongo@sha256:4308dd95148da4a1d91517612d2e4e5d9e13dec7ad922007581f4d1b2ef394bd
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **922.1 MB (922115958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20485b8b454cfcb98dec90b5cb012b9a3e9db515f43b4c691bfb30108202ccf2`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sun, 09 Aug 2026 04:00:46 GMT
RUN Apply image 10.0.20348.5499
# Wed, 12 Aug 2026 19:19:05 GMT
SHELL [cmd /S /C]
# Wed, 12 Aug 2026 19:19:06 GMT
USER ContainerAdministrator
# Wed, 12 Aug 2026 19:19:08 GMT
RUN setx /m PATH "C:\mongodb\bin;%PATH%"
# Wed, 12 Aug 2026 19:19:08 GMT
USER ContainerUser
# Wed, 12 Aug 2026 19:19:10 GMT
COPY multi:540d6dd70b1e7484f1958dc08b337aeb56cf8a92fe38be4c279dd406990d6935 in C:\Windows\System32\ 
# Wed, 12 Aug 2026 19:19:11 GMT
ENV MONGO_VERSION=8.0.29
# Wed, 12 Aug 2026 19:19:55 GMT
COPY dir:a2fa17e7cb290b710f03c3da8b69c45906c7650871c120c86cbc315639b81f57 in C:\mongodb 
# Wed, 12 Aug 2026 19:20:25 GMT
RUN mongod --version
# Wed, 12 Aug 2026 19:20:25 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 19:20:26 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 19:20:27 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:dc16402aa7d3fdbac6580d83e9c13ab7caf61d557113810e102089ffa3cd6cb4`  
		Last Modified: Tue, 11 Aug 2026 20:43:43 GMT  
		Size: 124.3 MB (124257916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49de8af3778a8f1c869163825da5d813d50c192d8d012eb450e2e85393374737`  
		Last Modified: Wed, 12 Aug 2026 19:20:39 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abfeec69698f019a242f92d1417c24c54dda38961db31e9e7be78cc8485a2267`  
		Last Modified: Wed, 12 Aug 2026 19:20:39 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc1facf08fbef9c44ea6e8a1e6ab1bafae3a0afa14e7d1db570e8b89131ccd3`  
		Last Modified: Wed, 12 Aug 2026 19:20:38 GMT  
		Size: 85.3 KB (85311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f48f7325636d3be59eb8483e2c19f9b17386782d2546f572322660d1b253fad`  
		Last Modified: Wed, 12 Aug 2026 19:20:38 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e72d313391090f22c29cf8baba37aa26088061623bbde8503a8ac8e64727cd`  
		Last Modified: Wed, 12 Aug 2026 19:20:38 GMT  
		Size: 275.2 KB (275211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa773a84551de95b6cd4162f1ba16c6faf69b2d80618531a951fa426a1188766`  
		Last Modified: Wed, 12 Aug 2026 19:20:38 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9af692834e89518fc8b5f79ffcd7fee5e63083320fabdd4720579809f978776`  
		Last Modified: Wed, 12 Aug 2026 19:21:43 GMT  
		Size: 797.4 MB (797403683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd3bc3d2c7952373fccc9760774cb95bf7aedff656371e3bf314ab4aa8d45100`  
		Last Modified: Wed, 12 Aug 2026 19:20:36 GMT  
		Size: 86.4 KB (86399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231d75847d712441a05c24414fca3710af48139890d4b379cccd3a75cb4ecc86`  
		Last Modified: Wed, 12 Aug 2026 19:20:36 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059b1ff8b20b26ccb184821a419ed9298589649f88a38f6bfa75bf3d8e70d813`  
		Last Modified: Wed, 12 Aug 2026 19:20:36 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f6de04cb7c37405597d548ca8c4aeba4bd2e9e8e730b2eeae9f4822c3acbcce`  
		Last Modified: Wed, 12 Aug 2026 19:20:36 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.0.29-nanoserver-ltsc2022`

```console
$ docker pull mongo@sha256:45d6d6e527916453ab7cc057feb175ce2f510a6f175c397c44fc0d09735ea680
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `mongo:8.0.29-nanoserver-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull mongo@sha256:4308dd95148da4a1d91517612d2e4e5d9e13dec7ad922007581f4d1b2ef394bd
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **922.1 MB (922115958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20485b8b454cfcb98dec90b5cb012b9a3e9db515f43b4c691bfb30108202ccf2`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sun, 09 Aug 2026 04:00:46 GMT
RUN Apply image 10.0.20348.5499
# Wed, 12 Aug 2026 19:19:05 GMT
SHELL [cmd /S /C]
# Wed, 12 Aug 2026 19:19:06 GMT
USER ContainerAdministrator
# Wed, 12 Aug 2026 19:19:08 GMT
RUN setx /m PATH "C:\mongodb\bin;%PATH%"
# Wed, 12 Aug 2026 19:19:08 GMT
USER ContainerUser
# Wed, 12 Aug 2026 19:19:10 GMT
COPY multi:540d6dd70b1e7484f1958dc08b337aeb56cf8a92fe38be4c279dd406990d6935 in C:\Windows\System32\ 
# Wed, 12 Aug 2026 19:19:11 GMT
ENV MONGO_VERSION=8.0.29
# Wed, 12 Aug 2026 19:19:55 GMT
COPY dir:a2fa17e7cb290b710f03c3da8b69c45906c7650871c120c86cbc315639b81f57 in C:\mongodb 
# Wed, 12 Aug 2026 19:20:25 GMT
RUN mongod --version
# Wed, 12 Aug 2026 19:20:25 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 19:20:26 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 19:20:27 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:dc16402aa7d3fdbac6580d83e9c13ab7caf61d557113810e102089ffa3cd6cb4`  
		Last Modified: Tue, 11 Aug 2026 20:43:43 GMT  
		Size: 124.3 MB (124257916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49de8af3778a8f1c869163825da5d813d50c192d8d012eb450e2e85393374737`  
		Last Modified: Wed, 12 Aug 2026 19:20:39 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abfeec69698f019a242f92d1417c24c54dda38961db31e9e7be78cc8485a2267`  
		Last Modified: Wed, 12 Aug 2026 19:20:39 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc1facf08fbef9c44ea6e8a1e6ab1bafae3a0afa14e7d1db570e8b89131ccd3`  
		Last Modified: Wed, 12 Aug 2026 19:20:38 GMT  
		Size: 85.3 KB (85311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f48f7325636d3be59eb8483e2c19f9b17386782d2546f572322660d1b253fad`  
		Last Modified: Wed, 12 Aug 2026 19:20:38 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e72d313391090f22c29cf8baba37aa26088061623bbde8503a8ac8e64727cd`  
		Last Modified: Wed, 12 Aug 2026 19:20:38 GMT  
		Size: 275.2 KB (275211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa773a84551de95b6cd4162f1ba16c6faf69b2d80618531a951fa426a1188766`  
		Last Modified: Wed, 12 Aug 2026 19:20:38 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9af692834e89518fc8b5f79ffcd7fee5e63083320fabdd4720579809f978776`  
		Last Modified: Wed, 12 Aug 2026 19:21:43 GMT  
		Size: 797.4 MB (797403683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd3bc3d2c7952373fccc9760774cb95bf7aedff656371e3bf314ab4aa8d45100`  
		Last Modified: Wed, 12 Aug 2026 19:20:36 GMT  
		Size: 86.4 KB (86399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231d75847d712441a05c24414fca3710af48139890d4b379cccd3a75cb4ecc86`  
		Last Modified: Wed, 12 Aug 2026 19:20:36 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059b1ff8b20b26ccb184821a419ed9298589649f88a38f6bfa75bf3d8e70d813`  
		Last Modified: Wed, 12 Aug 2026 19:20:36 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f6de04cb7c37405597d548ca8c4aeba4bd2e9e8e730b2eeae9f4822c3acbcce`  
		Last Modified: Wed, 12 Aug 2026 19:20:36 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.0.29-noble`

```console
$ docker pull mongo@sha256:43f6e6733f0f0647bcc896cd7b4ee6e0e4872e65a1e6de27ea935efd43120a70
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mongo:8.0.29-noble` - linux; amd64

```console
$ docker pull mongo@sha256:8be83ffcebcaeb2aa1013b5a60418c6cc2521217bb079403ae4df79e2518678a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.2 MB (315185260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96945420794a773fcc98df62021e49fcb2994ef7a9a96dd91c3fe00cf50967b7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 11 Aug 2026 18:31:32 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 11 Aug 2026 18:31:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 18:31:54 GMT
ENV GOSU_VERSION=1.19
# Tue, 11 Aug 2026 18:31:54 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 11 Aug 2026 18:31:54 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 11 Aug 2026 18:31:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-8.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor '4B0752C1BCA238C0B4EE14DC41DE058A4E7DCA05' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 11 Aug 2026 18:31:54 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 11 Aug 2026 18:31:54 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 11 Aug 2026 18:31:54 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 18:31:54 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 18:31:54 GMT
ENV MONGO_MAJOR=8.0
# Tue, 11 Aug 2026 18:31:54 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu noble/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 11 Aug 2026 18:31:54 GMT
ENV MONGO_VERSION=8.0.29
# Tue, 11 Aug 2026 18:32:14 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 11 Aug 2026 18:32:14 GMT
VOLUME [/data/db /data/configdb]
# Tue, 11 Aug 2026 18:32:14 GMT
ENV HOME=/data/db
# Tue, 11 Aug 2026 18:32:14 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Tue, 11 Aug 2026 18:32:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 11 Aug 2026 18:32:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Aug 2026 18:32:14 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 11 Aug 2026 18:32:14 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b6d7d8ac1d4301aa5c78e25dab33c752211e3f03bba446be2180f62cc3d3375`  
		Last Modified: Tue, 11 Aug 2026 18:32:52 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d76bc04d882c0d0ee9e30ee68555e3f43908ae141fb3b550fad060311bf34c15`  
		Last Modified: Tue, 11 Aug 2026 18:32:53 GMT  
		Size: 3.9 MB (3876539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ee9258595cf47709a5ae5e93e54d59d394deec5218ba12b55f533c5124d2ec8`  
		Last Modified: Tue, 11 Aug 2026 18:32:52 GMT  
		Size: 934.2 KB (934235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eae9dc6be43e06649f4aac7eaa8a66a6044b29c3f7ed8b2c4a837b5384018639`  
		Last Modified: Tue, 11 Aug 2026 18:32:52 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c9b278a78f2da9b99d05f1d30f45ca3eca8f0a4216a8237ee8580463ecfab0a`  
		Last Modified: Tue, 11 Aug 2026 18:32:53 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98dac1e98f6f36883819968be5fcdde4153fd245b7c85cd6a4ecebbcbebb2b85`  
		Last Modified: Tue, 11 Aug 2026 18:32:59 GMT  
		Size: 280.6 MB (280616776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02732eb2d2028b6e6093f4e77fe1e0c1f0ba8d70177891ad65fab8b92b823b90`  
		Last Modified: Tue, 11 Aug 2026 18:32:54 GMT  
		Size: 5.0 KB (5005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:8.0.29-noble` - unknown; unknown

```console
$ docker pull mongo@sha256:42c5a642230a4eefdc44e327771cdf6285f948675c911837e8a462628ab229a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2670625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14bcb6c81dbc596ee891a6ebe0d7765dce65e5dba31bcea25857f64aaea87bf1`

```dockerfile
```

-	Layers:
	-	`sha256:d1ba0c9b704e87a5cc1d0ebd6127c69eccb5605244f365da352a217c638c9e32`  
		Last Modified: Tue, 11 Aug 2026 18:32:53 GMT  
		Size: 2.6 MB (2643059 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3692dd546741902d2d46cd6112363c7da71a8fe4b9e3084ae7ef630cc6a7bb5`  
		Last Modified: Tue, 11 Aug 2026 18:32:52 GMT  
		Size: 27.6 KB (27566 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:8.0.29-noble` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:5815b078273075ed210b35e67063ac7dc8e34c62c35ca5c845c4f73d568c5b2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.1 MB (299144584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ffef762a4b5bd1b0c567ab0baee06d612bce913fb50d09e678efb63b57f76f0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 11 Aug 2026 19:07:14 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 11 Aug 2026 19:07:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 19:07:33 GMT
ENV GOSU_VERSION=1.19
# Tue, 11 Aug 2026 19:07:33 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 11 Aug 2026 19:07:33 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 11 Aug 2026 19:07:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-8.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor '4B0752C1BCA238C0B4EE14DC41DE058A4E7DCA05' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 11 Aug 2026 19:07:33 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 11 Aug 2026 19:07:33 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 11 Aug 2026 19:07:33 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 19:07:33 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 19:07:33 GMT
ENV MONGO_MAJOR=8.0
# Tue, 11 Aug 2026 19:07:33 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu noble/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 11 Aug 2026 19:07:33 GMT
ENV MONGO_VERSION=8.0.29
# Tue, 11 Aug 2026 19:07:53 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 11 Aug 2026 19:07:53 GMT
VOLUME [/data/db /data/configdb]
# Tue, 11 Aug 2026 19:07:53 GMT
ENV HOME=/data/db
# Tue, 11 Aug 2026 19:07:53 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Tue, 11 Aug 2026 19:07:53 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 11 Aug 2026 19:07:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Aug 2026 19:07:53 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 11 Aug 2026 19:07:53 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54292ddcf9f782576c7bbb9867858354c9552bb95b9a9762d4fcbe76c449964e`  
		Last Modified: Tue, 11 Aug 2026 19:08:27 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8f54fb9bdec3b28278db102ee35826000b235ddcadce4a3ab5c0f54d41e5c2d`  
		Last Modified: Tue, 11 Aug 2026 19:08:27 GMT  
		Size: 1.5 MB (1451848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6639fa3ef389878ea045448e446da36174e7b928ec9797f4484c738d77d50900`  
		Last Modified: Tue, 11 Aug 2026 19:08:26 GMT  
		Size: 886.5 KB (886493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b80090128f1ecfa0dd1371356787c4f05d5e5188bc193818aad19030979028b`  
		Last Modified: Tue, 11 Aug 2026 19:08:27 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b46594195bd37deaae8f26441b2066b68275280bcb7489c38d6f4df4994be85`  
		Last Modified: Tue, 11 Aug 2026 19:08:28 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:827c824c1f443d235bdfbe941b451151ca9a137b8133bbd3ed0c67e17de2e904`  
		Last Modified: Tue, 11 Aug 2026 19:08:34 GMT  
		Size: 267.9 MB (267912830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54cd5bbab73af0d05ae56106eff21dd4ceb200942d15b219e1baec230a8e7229`  
		Last Modified: Tue, 11 Aug 2026 19:08:28 GMT  
		Size: 5.0 KB (5001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:8.0.29-noble` - unknown; unknown

```console
$ docker pull mongo@sha256:244a0817d5180008a16cea831027bfc1a35c9f56fc51ad1d27dac4c73d38e9c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2671892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae99a9e2e6a23c7f42292e54329f012bffdc82a897c5193c3fd4ea977c0dec61`

```dockerfile
```

-	Layers:
	-	`sha256:81f87c092e4cc283b414988c61d0aa5794c4cf29b914acece57cbbe8d5a449e5`  
		Last Modified: Tue, 11 Aug 2026 19:08:27 GMT  
		Size: 2.6 MB (2644147 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9dbbf74fff1a3482432d3b5511c6f20a30348b07b3726dc8769014234240bf62`  
		Last Modified: Tue, 11 Aug 2026 19:08:26 GMT  
		Size: 27.7 KB (27745 bytes)  
		MIME: application/vnd.in-toto+json

## `mongo:8.0.29-windowsservercore`

```console
$ docker pull mongo@sha256:fc239e4edb294cebf234a0c8b8e9318bcacad60739af3acf526b061e39b79cc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `mongo:8.0.29-windowsservercore` - windows version 10.0.26100.33296; amd64

```console
$ docker pull mongo@sha256:6129b76a57425f06f1722be12c4f2efe172a8afa104cf08e099061f02b633b10
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3239270279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:873e4efc1b48b1aa90cdaa996d5503ae2bafb8f4c91eaaa83ade82e5060d8c62`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 12 Aug 2026 17:48:32 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Aug 2026 17:48:33 GMT
ENV MONGO_VERSION=8.0.29
# Wed, 12 Aug 2026 17:48:34 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.0.29-signed.msi
# Wed, 12 Aug 2026 17:48:35 GMT
ENV MONGO_DOWNLOAD_SHA256=7c2a821f6caaffe53da63f3a048ba624e04f37358b749ce0ebe9da1684fdfedc
# Wed, 12 Aug 2026 17:50:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 17:50:25 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 17:50:26 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 17:50:26 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5abeeefbb7b11eb6332573ca632d3d8807213461f1b97f3cfee8899a29583f`  
		Last Modified: Tue, 11 Aug 2026 18:01:52 GMT  
		Size: 917.7 MB (917726084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1431b768a9a0ba04c416c5ab7ed6487186a2fb55c10236e589259c86dfa4c531`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8df99a1b9c13ce353171d1eaa84dafc9a0e7051001a47e179bcdbd73d43f161`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5ef0eb6de90d82e067d451359aa121a56bb3143b845a3a27ede671a74d3ea93`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8912cd13cc7c5a99270fc1fc61aec405bf8390ba1652d620bdfb8b1d76c6c936`  
		Last Modified: Wed, 12 Aug 2026 17:50:42 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b6902935ed2d3d92e424a9a71f331d49f0b3610702c51c450d7fc14eadb8973`  
		Last Modified: Wed, 12 Aug 2026 17:51:45 GMT  
		Size: 798.5 MB (798475902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab251571dffd19d9e5d03a2f4c922fb19de84e21c65e8791f1289bf4382e2a8f`  
		Last Modified: Wed, 12 Aug 2026 17:50:42 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a9e52928bc6bb1d726b028a9f9bd5d9893c38ba6d620b41a22c5930e541dae`  
		Last Modified: Wed, 12 Aug 2026 17:50:42 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dbffd31d1caaae99fbe16f416b4e98be10ec9539b483801d810bd55f7bd6544`  
		Last Modified: Wed, 12 Aug 2026 17:50:42 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:8.0.29-windowsservercore` - windows version 10.0.20348.5499; amd64

```console
$ docker pull mongo@sha256:e44fa23aa1e3060536acb8998e22a27d135604463f2a8314c4ee20abd23e25c3
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 GB (2982463412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74c74298427f1027d3b4bf71560ab9eebdf6437de8ffaacc84bb556d29458d99`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Wed, 12 Aug 2026 17:47:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Aug 2026 18:26:44 GMT
ENV MONGO_VERSION=8.0.29
# Wed, 12 Aug 2026 18:26:44 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.0.29-signed.msi
# Wed, 12 Aug 2026 18:26:45 GMT
ENV MONGO_DOWNLOAD_SHA256=7c2a821f6caaffe53da63f3a048ba624e04f37358b749ce0ebe9da1684fdfedc
# Wed, 12 Aug 2026 18:28:09 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 18:28:12 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 18:28:12 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 18:28:14 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e88f1160789d32e05e5f6d26a146bb8d1ae151a598a09633b60090645bd7ad9`  
		Last Modified: Wed, 12 Aug 2026 17:51:05 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a8eac6f240bbc85cd5dd9c6db61c9ecdea92525b96b6f452f66f9444843702`  
		Last Modified: Wed, 12 Aug 2026 18:28:28 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f59ac63d1bd5fef9521b72458027c08c21e56228215d190ad1f74e21f9e1b6`  
		Last Modified: Wed, 12 Aug 2026 18:28:27 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f750bd3377bfd39b93fb1e400bddc2b695b6509a2e1b67c1d8a5b0e516dfeed`  
		Last Modified: Wed, 12 Aug 2026 18:28:26 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28c366b7f3300c1c9705219f28f87485d2f41265426b2524e31e012cbe997e7b`  
		Last Modified: Wed, 12 Aug 2026 18:29:34 GMT  
		Size: 798.5 MB (798456803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24b05edbab24454d7f1fe90b4935b25b367fca5da44464739e675a09d1505bb`  
		Last Modified: Wed, 12 Aug 2026 18:28:26 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:938677f053bdaefed8a27097496452deee4fa384ce614abc69e70cf8d109afc4`  
		Last Modified: Wed, 12 Aug 2026 18:28:26 GMT  
		Size: 1.3 KB (1341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b1a4de3edf093652e8073e5c7d7e58554c05f37951bdb09f033ba1d0a94851`  
		Last Modified: Wed, 12 Aug 2026 18:28:26 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.0.29-windowsservercore-ltsc2022`

```console
$ docker pull mongo@sha256:12698d2dbf88d42eb36c2a811375d6f04bfa01ee6214746d30b5ab001d30403f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `mongo:8.0.29-windowsservercore-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull mongo@sha256:e44fa23aa1e3060536acb8998e22a27d135604463f2a8314c4ee20abd23e25c3
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 GB (2982463412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74c74298427f1027d3b4bf71560ab9eebdf6437de8ffaacc84bb556d29458d99`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Wed, 12 Aug 2026 17:47:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Aug 2026 18:26:44 GMT
ENV MONGO_VERSION=8.0.29
# Wed, 12 Aug 2026 18:26:44 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.0.29-signed.msi
# Wed, 12 Aug 2026 18:26:45 GMT
ENV MONGO_DOWNLOAD_SHA256=7c2a821f6caaffe53da63f3a048ba624e04f37358b749ce0ebe9da1684fdfedc
# Wed, 12 Aug 2026 18:28:09 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 18:28:12 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 18:28:12 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 18:28:14 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e88f1160789d32e05e5f6d26a146bb8d1ae151a598a09633b60090645bd7ad9`  
		Last Modified: Wed, 12 Aug 2026 17:51:05 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a8eac6f240bbc85cd5dd9c6db61c9ecdea92525b96b6f452f66f9444843702`  
		Last Modified: Wed, 12 Aug 2026 18:28:28 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f59ac63d1bd5fef9521b72458027c08c21e56228215d190ad1f74e21f9e1b6`  
		Last Modified: Wed, 12 Aug 2026 18:28:27 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f750bd3377bfd39b93fb1e400bddc2b695b6509a2e1b67c1d8a5b0e516dfeed`  
		Last Modified: Wed, 12 Aug 2026 18:28:26 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28c366b7f3300c1c9705219f28f87485d2f41265426b2524e31e012cbe997e7b`  
		Last Modified: Wed, 12 Aug 2026 18:29:34 GMT  
		Size: 798.5 MB (798456803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24b05edbab24454d7f1fe90b4935b25b367fca5da44464739e675a09d1505bb`  
		Last Modified: Wed, 12 Aug 2026 18:28:26 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:938677f053bdaefed8a27097496452deee4fa384ce614abc69e70cf8d109afc4`  
		Last Modified: Wed, 12 Aug 2026 18:28:26 GMT  
		Size: 1.3 KB (1341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b1a4de3edf093652e8073e5c7d7e58554c05f37951bdb09f033ba1d0a94851`  
		Last Modified: Wed, 12 Aug 2026 18:28:26 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.0.29-windowsservercore-ltsc2025`

```console
$ docker pull mongo@sha256:c3a4fb5f5e7820af66095fabeec11f96224b1df76b9fc8b2f309f7fb189ca784
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `mongo:8.0.29-windowsservercore-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull mongo@sha256:6129b76a57425f06f1722be12c4f2efe172a8afa104cf08e099061f02b633b10
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3239270279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:873e4efc1b48b1aa90cdaa996d5503ae2bafb8f4c91eaaa83ade82e5060d8c62`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 12 Aug 2026 17:48:32 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Aug 2026 17:48:33 GMT
ENV MONGO_VERSION=8.0.29
# Wed, 12 Aug 2026 17:48:34 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.0.29-signed.msi
# Wed, 12 Aug 2026 17:48:35 GMT
ENV MONGO_DOWNLOAD_SHA256=7c2a821f6caaffe53da63f3a048ba624e04f37358b749ce0ebe9da1684fdfedc
# Wed, 12 Aug 2026 17:50:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 17:50:25 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 17:50:26 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 17:50:26 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5abeeefbb7b11eb6332573ca632d3d8807213461f1b97f3cfee8899a29583f`  
		Last Modified: Tue, 11 Aug 2026 18:01:52 GMT  
		Size: 917.7 MB (917726084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1431b768a9a0ba04c416c5ab7ed6487186a2fb55c10236e589259c86dfa4c531`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8df99a1b9c13ce353171d1eaa84dafc9a0e7051001a47e179bcdbd73d43f161`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5ef0eb6de90d82e067d451359aa121a56bb3143b845a3a27ede671a74d3ea93`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8912cd13cc7c5a99270fc1fc61aec405bf8390ba1652d620bdfb8b1d76c6c936`  
		Last Modified: Wed, 12 Aug 2026 17:50:42 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b6902935ed2d3d92e424a9a71f331d49f0b3610702c51c450d7fc14eadb8973`  
		Last Modified: Wed, 12 Aug 2026 17:51:45 GMT  
		Size: 798.5 MB (798475902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab251571dffd19d9e5d03a2f4c922fb19de84e21c65e8791f1289bf4382e2a8f`  
		Last Modified: Wed, 12 Aug 2026 17:50:42 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a9e52928bc6bb1d726b028a9f9bd5d9893c38ba6d620b41a22c5930e541dae`  
		Last Modified: Wed, 12 Aug 2026 17:50:42 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dbffd31d1caaae99fbe16f416b4e98be10ec9539b483801d810bd55f7bd6544`  
		Last Modified: Wed, 12 Aug 2026 17:50:42 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.3`

```console
$ docker pull mongo@sha256:44dce4b1688969ff3fdbfc438fd6113f734140ad96e3639ef17ee26a162dfb58
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `mongo:8.3` - linux; amd64

```console
$ docker pull mongo@sha256:2c4997bb74bd4458f6954e2053a0a27d67814e356b771477dcff6f5692fb2444
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.1 MB (300091995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02ae9d40ca63a8308d2ad864d09c15eb96e170e26e91294337db81d4e8ab9f6b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 11 Aug 2026 18:30:44 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 11 Aug 2026 18:30:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 18:31:05 GMT
ENV GOSU_VERSION=1.19
# Tue, 11 Aug 2026 18:31:05 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 11 Aug 2026 18:31:05 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 11 Aug 2026 18:31:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-8.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor '4B0752C1BCA238C0B4EE14DC41DE058A4E7DCA05' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 11 Aug 2026 18:31:05 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 11 Aug 2026 18:31:05 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 11 Aug 2026 18:31:05 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 18:31:05 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 18:31:05 GMT
ENV MONGO_MAJOR=8.3
# Tue, 11 Aug 2026 18:31:05 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu noble/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 11 Aug 2026 18:31:05 GMT
ENV MONGO_VERSION=8.3.8
# Tue, 11 Aug 2026 18:31:24 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 11 Aug 2026 18:31:24 GMT
VOLUME [/data/db /data/configdb]
# Tue, 11 Aug 2026 18:31:24 GMT
ENV HOME=/data/db
# Tue, 11 Aug 2026 18:31:24 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Tue, 11 Aug 2026 18:31:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 11 Aug 2026 18:31:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Aug 2026 18:31:25 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 11 Aug 2026 18:31:25 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f904152f8bd62ed119e0dce8b687b6d94237a6b727cd5adf8c0ef3d6b212488`  
		Last Modified: Tue, 11 Aug 2026 18:31:59 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45d06b37927e991177f5a0587cd49c3f962689b6a01aeda7d36ef237e60bac3e`  
		Last Modified: Tue, 11 Aug 2026 18:32:00 GMT  
		Size: 3.9 MB (3876560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fc7571312641fc8edca91378603b45bc0327c161a90bc6c7883e29d9936c141`  
		Last Modified: Tue, 11 Aug 2026 18:31:59 GMT  
		Size: 934.3 KB (934275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5831ac9354561d25da463471675957fe251aa8eac4c8cc151cfbc1e096a8b18e`  
		Last Modified: Tue, 11 Aug 2026 18:31:59 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7836bf519beb7a542890349aae58b340476a44e2f730382c7f0ceee3f940e53`  
		Last Modified: Tue, 11 Aug 2026 18:32:01 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7073d45fa94c5867d0c2b06d8b679f6ef96e6f9f8f25e8f229762a5a58e89e06`  
		Last Modified: Tue, 11 Aug 2026 18:32:06 GMT  
		Size: 265.5 MB (265523452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b77d33f1e28b5be92cd93de5f5f2976411191fa5979d9398205858fd50d34c39`  
		Last Modified: Tue, 11 Aug 2026 18:32:01 GMT  
		Size: 5.0 KB (5004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:8.3` - unknown; unknown

```console
$ docker pull mongo@sha256:67ea22d740320ae2c43f2265b729d06e66749ac61e78e02f8f3b91dbf99c60b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2670602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efde8285a21f10fe3b68e9555cfd904c6d8cca007c83562d337b0abd78e91379`

```dockerfile
```

-	Layers:
	-	`sha256:8d4199cda0d3c85cb411a9a4900d346bfb015c2a342238b6dae16cb4233d9e13`  
		Last Modified: Tue, 11 Aug 2026 18:32:00 GMT  
		Size: 2.6 MB (2643041 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67d5f52735258b475449e7f66aee51c1793c077a558bef57094cfe673ff495f7`  
		Last Modified: Tue, 11 Aug 2026 18:31:59 GMT  
		Size: 27.6 KB (27561 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:8.3` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:1a9f4705cf6943e6cf5f5bae7976eb2a23a430c3a0e0e26a36fe9e70fb1f4e9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.0 MB (284005728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcd5a7da060c756bdb3081752b916daac9526ec7a6891c39146ebac0a727820b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 11 Aug 2026 19:07:14 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 11 Aug 2026 19:07:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 19:07:36 GMT
ENV GOSU_VERSION=1.19
# Tue, 11 Aug 2026 19:07:36 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 11 Aug 2026 19:07:36 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 11 Aug 2026 19:07:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-8.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor '4B0752C1BCA238C0B4EE14DC41DE058A4E7DCA05' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 11 Aug 2026 19:07:36 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 11 Aug 2026 19:07:36 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 11 Aug 2026 19:07:36 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 19:07:36 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 19:07:36 GMT
ENV MONGO_MAJOR=8.3
# Tue, 11 Aug 2026 19:07:36 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu noble/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 11 Aug 2026 19:07:36 GMT
ENV MONGO_VERSION=8.3.8
# Tue, 11 Aug 2026 19:08:00 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 11 Aug 2026 19:08:00 GMT
VOLUME [/data/db /data/configdb]
# Tue, 11 Aug 2026 19:08:00 GMT
ENV HOME=/data/db
# Tue, 11 Aug 2026 19:08:00 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Tue, 11 Aug 2026 19:08:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 11 Aug 2026 19:08:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Aug 2026 19:08:00 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 11 Aug 2026 19:08:00 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54292ddcf9f782576c7bbb9867858354c9552bb95b9a9762d4fcbe76c449964e`  
		Last Modified: Tue, 11 Aug 2026 19:08:27 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9998ae4d10ea4b5b3ff382af3f9c4e3930b79a565134e69f318ddf4f3d30915e`  
		Last Modified: Tue, 11 Aug 2026 19:08:32 GMT  
		Size: 1.5 MB (1451901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b6423dfa22ec3ae8a646373cde38419a443f581fd5bb15da140b919684df81a`  
		Last Modified: Tue, 11 Aug 2026 19:08:31 GMT  
		Size: 886.5 KB (886525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21a2a80bf19bbe0be4c3c96bfc3c02bc19f1a795198ddfe47709d7a266ceba23`  
		Last Modified: Tue, 11 Aug 2026 19:08:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e57d43b0575587c30489e158f34c8bb693e8cde996f2aa1db8be263f19e3bd3`  
		Last Modified: Tue, 11 Aug 2026 19:08:31 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85b791be63c5bfcff3eb4cb35a01ad0e6b823fc5ffa34fe27d2a5a90644c34d4`  
		Last Modified: Tue, 11 Aug 2026 19:08:37 GMT  
		Size: 252.8 MB (252773887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b82ad1617ea4bbabc54e56a1f863001b789d70ae4a6f7ac053629ac398ec51`  
		Last Modified: Tue, 11 Aug 2026 19:08:33 GMT  
		Size: 5.0 KB (5002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:8.3` - unknown; unknown

```console
$ docker pull mongo@sha256:74c3a65ce0b49cc9b1446495ec82af450c41235f819f602c6ea46c17c9ca7581
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2671870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb6916a839f10c446bc3607ce0f2a0ef528c1514c9a6d448863370309c7e84d3`

```dockerfile
```

-	Layers:
	-	`sha256:3401a38e755a954dd996c290542eec28af947eec9829e3ef99de60b4c2218379`  
		Last Modified: Tue, 11 Aug 2026 19:08:31 GMT  
		Size: 2.6 MB (2644129 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53c8f0f8e46467142355db35aed106e9206b7e48c897d54439eb1369533de9eb`  
		Last Modified: Tue, 11 Aug 2026 19:08:31 GMT  
		Size: 27.7 KB (27741 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:8.3` - windows version 10.0.26100.33296; amd64

```console
$ docker pull mongo@sha256:2cc43de570deaac19b057fae0785f83609aedcafa9cc42dcd2fe2b37d17b86c7
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 GB (3363251981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5694eae8768813b6cdfb83534a3c32143921c48fe89e8dd2461ab1cafc2732b1`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 12 Aug 2026 17:47:26 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Aug 2026 17:47:26 GMT
ENV MONGO_VERSION=8.3.8
# Wed, 12 Aug 2026 17:47:26 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.3.8-signed.msi
# Wed, 12 Aug 2026 17:47:27 GMT
ENV MONGO_DOWNLOAD_SHA256=d938c6dbc75f9ccdd0880ef91612364ba5f3c08f3640b4ee28a2cd95d4c99861
# Wed, 12 Aug 2026 17:49:27 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 17:49:27 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 17:49:28 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 17:49:28 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5abeeefbb7b11eb6332573ca632d3d8807213461f1b97f3cfee8899a29583f`  
		Last Modified: Tue, 11 Aug 2026 18:01:52 GMT  
		Size: 917.7 MB (917726084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1221989eb5d8b877bf2fc50793424c4beebfe11603ac4548c5402f5befbaa1a`  
		Last Modified: Wed, 12 Aug 2026 17:49:35 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e92275372643da6c48c0e5e54636979a3d28d186a921a8ddb6ba1fed1c7098d5`  
		Last Modified: Wed, 12 Aug 2026 17:49:35 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66b140625d1017a1a770446a0fd4c29f7d003a49258b7165fcfde48b22f7801`  
		Last Modified: Wed, 12 Aug 2026 17:49:35 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f99c10c90a20ca2bef86180af2c40ec6a154e660df5bbf14f26aa0d03578b9`  
		Last Modified: Wed, 12 Aug 2026 17:49:34 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93cf5d6e3696e3ba6b8192a9efd8096be191f07ac3e62059daa0282cad864182`  
		Last Modified: Wed, 12 Aug 2026 17:50:42 GMT  
		Size: 922.5 MB (922457523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a13b8f9fa2b7778e95e27a4c2f89c367c0467775dadfc295f275e7992a98b69f`  
		Last Modified: Wed, 12 Aug 2026 17:49:34 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb151980290ebdb13b5bf8fe536f57de5320d30ef136559237f477f772dbc83`  
		Last Modified: Wed, 12 Aug 2026 17:49:34 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edacc3baa51bd14fed8c9f3f9f36b289ac92de20a89613a2e8b69abe2b488221`  
		Last Modified: Wed, 12 Aug 2026 17:49:34 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:8.3` - windows version 10.0.20348.5499; amd64

```console
$ docker pull mongo@sha256:c7483fb413688bfd7bbeef787e3c355dbe17fd9730e1d9b9f6c8211e1425d912
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 GB (3106494378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f02b9490bbfe14eac13e515821a9be6e2d5ad08c3adc4c068eaf43eb26ef5cfc`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Wed, 12 Aug 2026 17:49:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Aug 2026 17:49:09 GMT
ENV MONGO_VERSION=8.3.8
# Wed, 12 Aug 2026 17:49:10 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.3.8-signed.msi
# Wed, 12 Aug 2026 17:49:11 GMT
ENV MONGO_DOWNLOAD_SHA256=d938c6dbc75f9ccdd0880ef91612364ba5f3c08f3640b4ee28a2cd95d4c99861
# Wed, 12 Aug 2026 17:51:01 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 17:51:01 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 17:51:02 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 17:51:02 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a164a094cd982b14c21655e30366c21a02af8c98904e7a38667854a428d15596`  
		Last Modified: Wed, 12 Aug 2026 17:51:09 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3c6b491db1685d7853b3b6b4669ef75643c077f4e5601d3ce2e7d7cb2642d8`  
		Last Modified: Wed, 12 Aug 2026 17:51:09 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:703bfef82fdac6536a3b39510e7afb64992fdce3af7e4352ff642e3a8286a1d4`  
		Last Modified: Wed, 12 Aug 2026 17:51:09 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c313b2eea779f9af4120512ed64e9f45e160b9921c7e9beeba16a0a1e05a59bb`  
		Last Modified: Wed, 12 Aug 2026 17:51:07 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c8da35baf948a5f6e01cf3864782165c1d64dbe5de4ecbf722cef715b46df2`  
		Last Modified: Wed, 12 Aug 2026 17:52:17 GMT  
		Size: 922.5 MB (922487786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1f167c9cd1a3ec6b51d75409d80ed8eeef236faacb399ce1d3f6d6d7781e7a7`  
		Last Modified: Wed, 12 Aug 2026 17:51:07 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af0c2f92c121e57e7ca277aa3a88cfdaef527c73c0cbe6f50ed9fc8bbfab63e`  
		Last Modified: Wed, 12 Aug 2026 17:51:07 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d10e3e7ed6d6644aad7f31f90374cbc143ec2cd26816a83698fb6c0415676a`  
		Last Modified: Wed, 12 Aug 2026 17:51:07 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.3-nanoserver`

```console
$ docker pull mongo@sha256:10006bb8fe3e4c474295b3f18a6963a86c819b63423c6dfebea13b24ccc4cdf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `mongo:8.3-nanoserver` - windows version 10.0.20348.5499; amd64

```console
$ docker pull mongo@sha256:8d27a8d86ae88aed45853a499322119093c16a2835bc2ce28fec279fc5280d81
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1046076909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4db75bda4433f20ee81ef7f3016d54d9ad5ae010566911247ac8bc4da48ee324`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sun, 09 Aug 2026 04:00:46 GMT
RUN Apply image 10.0.20348.5499
# Wed, 12 Aug 2026 18:17:06 GMT
SHELL [cmd /S /C]
# Wed, 12 Aug 2026 18:17:07 GMT
USER ContainerAdministrator
# Wed, 12 Aug 2026 18:17:12 GMT
RUN setx /m PATH "C:\mongodb\bin;%PATH%"
# Wed, 12 Aug 2026 18:17:13 GMT
USER ContainerUser
# Wed, 12 Aug 2026 18:17:14 GMT
COPY multi:edf1670f741f0c0f034ec218dc51015484becee19afd9d4d712d1a864fd379ff in C:\Windows\System32\ 
# Wed, 12 Aug 2026 18:17:14 GMT
ENV MONGO_VERSION=8.3.8
# Wed, 12 Aug 2026 18:18:01 GMT
COPY dir:ab77c6d81d0785876e1421f184877c7fedc2c701e07d5fc54386b3eabb2260f7 in C:\mongodb 
# Wed, 12 Aug 2026 18:18:31 GMT
RUN mongod --version
# Wed, 12 Aug 2026 18:18:31 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 18:18:31 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 18:18:32 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:dc16402aa7d3fdbac6580d83e9c13ab7caf61d557113810e102089ffa3cd6cb4`  
		Last Modified: Tue, 11 Aug 2026 20:43:43 GMT  
		Size: 124.3 MB (124257916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a79388e9f0c7a7b81672d85cc13af6d7435f432f4b9f84ded222fd016b740e29`  
		Last Modified: Wed, 12 Aug 2026 18:18:43 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299c7cd2287c2e7be5f7ea513798fda6c446af7938f168364fbba6b0b384da66`  
		Last Modified: Wed, 12 Aug 2026 18:18:42 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a2007db7310b136e198e6fb0a0bdadf72b96fd667ef2c76569441e7e6e87ab`  
		Last Modified: Wed, 12 Aug 2026 18:18:41 GMT  
		Size: 85.6 KB (85551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dec53872fb11bc03e878fd9a3030acf00c3833399acd71cff3b0ededae12895`  
		Last Modified: Wed, 12 Aug 2026 18:18:41 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ee48c97c28e98b05b10575a212622350f86a4a4f776fa9e465693d909d99e0`  
		Last Modified: Wed, 12 Aug 2026 18:18:41 GMT  
		Size: 300.4 KB (300394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f017403c87b2d22944e969ce96e8dff742c5a6449e6e115fd536ccd9544168ac`  
		Last Modified: Wed, 12 Aug 2026 18:18:41 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd154211ab48faf46fd48cb2ead55f13020915411d03a0d4d6dbba3061bc5bfd`  
		Last Modified: Wed, 12 Aug 2026 18:19:55 GMT  
		Size: 921.3 MB (921339072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ea74e932f4e1e9eac5f7229d063e28e62d214bf9852face97e16db051b49cb0`  
		Last Modified: Wed, 12 Aug 2026 18:18:39 GMT  
		Size: 86.5 KB (86533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb98c0dc34ed76e844e9a3104ce1fe50b700c6720a49cd8282ba74f6edc37310`  
		Last Modified: Wed, 12 Aug 2026 18:18:39 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48439a909f5c178dcc33e969fd4b31d1f22268779683bf457cc43a3603cb5333`  
		Last Modified: Wed, 12 Aug 2026 18:18:39 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80efb159cdfba3669913a2ab5dbea05599620f788ef2c46a0698ce5e48860384`  
		Last Modified: Wed, 12 Aug 2026 18:18:39 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.3-nanoserver-ltsc2022`

```console
$ docker pull mongo@sha256:10006bb8fe3e4c474295b3f18a6963a86c819b63423c6dfebea13b24ccc4cdf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `mongo:8.3-nanoserver-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull mongo@sha256:8d27a8d86ae88aed45853a499322119093c16a2835bc2ce28fec279fc5280d81
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1046076909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4db75bda4433f20ee81ef7f3016d54d9ad5ae010566911247ac8bc4da48ee324`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sun, 09 Aug 2026 04:00:46 GMT
RUN Apply image 10.0.20348.5499
# Wed, 12 Aug 2026 18:17:06 GMT
SHELL [cmd /S /C]
# Wed, 12 Aug 2026 18:17:07 GMT
USER ContainerAdministrator
# Wed, 12 Aug 2026 18:17:12 GMT
RUN setx /m PATH "C:\mongodb\bin;%PATH%"
# Wed, 12 Aug 2026 18:17:13 GMT
USER ContainerUser
# Wed, 12 Aug 2026 18:17:14 GMT
COPY multi:edf1670f741f0c0f034ec218dc51015484becee19afd9d4d712d1a864fd379ff in C:\Windows\System32\ 
# Wed, 12 Aug 2026 18:17:14 GMT
ENV MONGO_VERSION=8.3.8
# Wed, 12 Aug 2026 18:18:01 GMT
COPY dir:ab77c6d81d0785876e1421f184877c7fedc2c701e07d5fc54386b3eabb2260f7 in C:\mongodb 
# Wed, 12 Aug 2026 18:18:31 GMT
RUN mongod --version
# Wed, 12 Aug 2026 18:18:31 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 18:18:31 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 18:18:32 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:dc16402aa7d3fdbac6580d83e9c13ab7caf61d557113810e102089ffa3cd6cb4`  
		Last Modified: Tue, 11 Aug 2026 20:43:43 GMT  
		Size: 124.3 MB (124257916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a79388e9f0c7a7b81672d85cc13af6d7435f432f4b9f84ded222fd016b740e29`  
		Last Modified: Wed, 12 Aug 2026 18:18:43 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299c7cd2287c2e7be5f7ea513798fda6c446af7938f168364fbba6b0b384da66`  
		Last Modified: Wed, 12 Aug 2026 18:18:42 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a2007db7310b136e198e6fb0a0bdadf72b96fd667ef2c76569441e7e6e87ab`  
		Last Modified: Wed, 12 Aug 2026 18:18:41 GMT  
		Size: 85.6 KB (85551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dec53872fb11bc03e878fd9a3030acf00c3833399acd71cff3b0ededae12895`  
		Last Modified: Wed, 12 Aug 2026 18:18:41 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ee48c97c28e98b05b10575a212622350f86a4a4f776fa9e465693d909d99e0`  
		Last Modified: Wed, 12 Aug 2026 18:18:41 GMT  
		Size: 300.4 KB (300394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f017403c87b2d22944e969ce96e8dff742c5a6449e6e115fd536ccd9544168ac`  
		Last Modified: Wed, 12 Aug 2026 18:18:41 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd154211ab48faf46fd48cb2ead55f13020915411d03a0d4d6dbba3061bc5bfd`  
		Last Modified: Wed, 12 Aug 2026 18:19:55 GMT  
		Size: 921.3 MB (921339072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ea74e932f4e1e9eac5f7229d063e28e62d214bf9852face97e16db051b49cb0`  
		Last Modified: Wed, 12 Aug 2026 18:18:39 GMT  
		Size: 86.5 KB (86533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb98c0dc34ed76e844e9a3104ce1fe50b700c6720a49cd8282ba74f6edc37310`  
		Last Modified: Wed, 12 Aug 2026 18:18:39 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48439a909f5c178dcc33e969fd4b31d1f22268779683bf457cc43a3603cb5333`  
		Last Modified: Wed, 12 Aug 2026 18:18:39 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80efb159cdfba3669913a2ab5dbea05599620f788ef2c46a0698ce5e48860384`  
		Last Modified: Wed, 12 Aug 2026 18:18:39 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.3-noble`

```console
$ docker pull mongo@sha256:6db9814faf17fa130825149c8f9dbb0b05cbc28e099f5647c26a27bccbb7a717
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mongo:8.3-noble` - linux; amd64

```console
$ docker pull mongo@sha256:2c4997bb74bd4458f6954e2053a0a27d67814e356b771477dcff6f5692fb2444
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.1 MB (300091995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02ae9d40ca63a8308d2ad864d09c15eb96e170e26e91294337db81d4e8ab9f6b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 11 Aug 2026 18:30:44 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 11 Aug 2026 18:30:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 18:31:05 GMT
ENV GOSU_VERSION=1.19
# Tue, 11 Aug 2026 18:31:05 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 11 Aug 2026 18:31:05 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 11 Aug 2026 18:31:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-8.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor '4B0752C1BCA238C0B4EE14DC41DE058A4E7DCA05' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 11 Aug 2026 18:31:05 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 11 Aug 2026 18:31:05 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 11 Aug 2026 18:31:05 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 18:31:05 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 18:31:05 GMT
ENV MONGO_MAJOR=8.3
# Tue, 11 Aug 2026 18:31:05 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu noble/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 11 Aug 2026 18:31:05 GMT
ENV MONGO_VERSION=8.3.8
# Tue, 11 Aug 2026 18:31:24 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 11 Aug 2026 18:31:24 GMT
VOLUME [/data/db /data/configdb]
# Tue, 11 Aug 2026 18:31:24 GMT
ENV HOME=/data/db
# Tue, 11 Aug 2026 18:31:24 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Tue, 11 Aug 2026 18:31:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 11 Aug 2026 18:31:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Aug 2026 18:31:25 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 11 Aug 2026 18:31:25 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f904152f8bd62ed119e0dce8b687b6d94237a6b727cd5adf8c0ef3d6b212488`  
		Last Modified: Tue, 11 Aug 2026 18:31:59 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45d06b37927e991177f5a0587cd49c3f962689b6a01aeda7d36ef237e60bac3e`  
		Last Modified: Tue, 11 Aug 2026 18:32:00 GMT  
		Size: 3.9 MB (3876560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fc7571312641fc8edca91378603b45bc0327c161a90bc6c7883e29d9936c141`  
		Last Modified: Tue, 11 Aug 2026 18:31:59 GMT  
		Size: 934.3 KB (934275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5831ac9354561d25da463471675957fe251aa8eac4c8cc151cfbc1e096a8b18e`  
		Last Modified: Tue, 11 Aug 2026 18:31:59 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7836bf519beb7a542890349aae58b340476a44e2f730382c7f0ceee3f940e53`  
		Last Modified: Tue, 11 Aug 2026 18:32:01 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7073d45fa94c5867d0c2b06d8b679f6ef96e6f9f8f25e8f229762a5a58e89e06`  
		Last Modified: Tue, 11 Aug 2026 18:32:06 GMT  
		Size: 265.5 MB (265523452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b77d33f1e28b5be92cd93de5f5f2976411191fa5979d9398205858fd50d34c39`  
		Last Modified: Tue, 11 Aug 2026 18:32:01 GMT  
		Size: 5.0 KB (5004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:8.3-noble` - unknown; unknown

```console
$ docker pull mongo@sha256:67ea22d740320ae2c43f2265b729d06e66749ac61e78e02f8f3b91dbf99c60b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2670602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efde8285a21f10fe3b68e9555cfd904c6d8cca007c83562d337b0abd78e91379`

```dockerfile
```

-	Layers:
	-	`sha256:8d4199cda0d3c85cb411a9a4900d346bfb015c2a342238b6dae16cb4233d9e13`  
		Last Modified: Tue, 11 Aug 2026 18:32:00 GMT  
		Size: 2.6 MB (2643041 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67d5f52735258b475449e7f66aee51c1793c077a558bef57094cfe673ff495f7`  
		Last Modified: Tue, 11 Aug 2026 18:31:59 GMT  
		Size: 27.6 KB (27561 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:8.3-noble` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:1a9f4705cf6943e6cf5f5bae7976eb2a23a430c3a0e0e26a36fe9e70fb1f4e9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.0 MB (284005728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcd5a7da060c756bdb3081752b916daac9526ec7a6891c39146ebac0a727820b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 11 Aug 2026 19:07:14 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 11 Aug 2026 19:07:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 19:07:36 GMT
ENV GOSU_VERSION=1.19
# Tue, 11 Aug 2026 19:07:36 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 11 Aug 2026 19:07:36 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 11 Aug 2026 19:07:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-8.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor '4B0752C1BCA238C0B4EE14DC41DE058A4E7DCA05' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 11 Aug 2026 19:07:36 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 11 Aug 2026 19:07:36 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 11 Aug 2026 19:07:36 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 19:07:36 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 19:07:36 GMT
ENV MONGO_MAJOR=8.3
# Tue, 11 Aug 2026 19:07:36 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu noble/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 11 Aug 2026 19:07:36 GMT
ENV MONGO_VERSION=8.3.8
# Tue, 11 Aug 2026 19:08:00 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 11 Aug 2026 19:08:00 GMT
VOLUME [/data/db /data/configdb]
# Tue, 11 Aug 2026 19:08:00 GMT
ENV HOME=/data/db
# Tue, 11 Aug 2026 19:08:00 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Tue, 11 Aug 2026 19:08:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 11 Aug 2026 19:08:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Aug 2026 19:08:00 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 11 Aug 2026 19:08:00 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54292ddcf9f782576c7bbb9867858354c9552bb95b9a9762d4fcbe76c449964e`  
		Last Modified: Tue, 11 Aug 2026 19:08:27 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9998ae4d10ea4b5b3ff382af3f9c4e3930b79a565134e69f318ddf4f3d30915e`  
		Last Modified: Tue, 11 Aug 2026 19:08:32 GMT  
		Size: 1.5 MB (1451901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b6423dfa22ec3ae8a646373cde38419a443f581fd5bb15da140b919684df81a`  
		Last Modified: Tue, 11 Aug 2026 19:08:31 GMT  
		Size: 886.5 KB (886525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21a2a80bf19bbe0be4c3c96bfc3c02bc19f1a795198ddfe47709d7a266ceba23`  
		Last Modified: Tue, 11 Aug 2026 19:08:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e57d43b0575587c30489e158f34c8bb693e8cde996f2aa1db8be263f19e3bd3`  
		Last Modified: Tue, 11 Aug 2026 19:08:31 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85b791be63c5bfcff3eb4cb35a01ad0e6b823fc5ffa34fe27d2a5a90644c34d4`  
		Last Modified: Tue, 11 Aug 2026 19:08:37 GMT  
		Size: 252.8 MB (252773887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b82ad1617ea4bbabc54e56a1f863001b789d70ae4a6f7ac053629ac398ec51`  
		Last Modified: Tue, 11 Aug 2026 19:08:33 GMT  
		Size: 5.0 KB (5002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:8.3-noble` - unknown; unknown

```console
$ docker pull mongo@sha256:74c3a65ce0b49cc9b1446495ec82af450c41235f819f602c6ea46c17c9ca7581
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2671870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb6916a839f10c446bc3607ce0f2a0ef528c1514c9a6d448863370309c7e84d3`

```dockerfile
```

-	Layers:
	-	`sha256:3401a38e755a954dd996c290542eec28af947eec9829e3ef99de60b4c2218379`  
		Last Modified: Tue, 11 Aug 2026 19:08:31 GMT  
		Size: 2.6 MB (2644129 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53c8f0f8e46467142355db35aed106e9206b7e48c897d54439eb1369533de9eb`  
		Last Modified: Tue, 11 Aug 2026 19:08:31 GMT  
		Size: 27.7 KB (27741 bytes)  
		MIME: application/vnd.in-toto+json

## `mongo:8.3-windowsservercore`

```console
$ docker pull mongo@sha256:5d8d30d90f4b63ac8b4590269f9c9586e56798c5b24b59a97d55ec0082b2c0b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `mongo:8.3-windowsservercore` - windows version 10.0.26100.33296; amd64

```console
$ docker pull mongo@sha256:2cc43de570deaac19b057fae0785f83609aedcafa9cc42dcd2fe2b37d17b86c7
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 GB (3363251981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5694eae8768813b6cdfb83534a3c32143921c48fe89e8dd2461ab1cafc2732b1`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 12 Aug 2026 17:47:26 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Aug 2026 17:47:26 GMT
ENV MONGO_VERSION=8.3.8
# Wed, 12 Aug 2026 17:47:26 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.3.8-signed.msi
# Wed, 12 Aug 2026 17:47:27 GMT
ENV MONGO_DOWNLOAD_SHA256=d938c6dbc75f9ccdd0880ef91612364ba5f3c08f3640b4ee28a2cd95d4c99861
# Wed, 12 Aug 2026 17:49:27 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 17:49:27 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 17:49:28 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 17:49:28 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5abeeefbb7b11eb6332573ca632d3d8807213461f1b97f3cfee8899a29583f`  
		Last Modified: Tue, 11 Aug 2026 18:01:52 GMT  
		Size: 917.7 MB (917726084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1221989eb5d8b877bf2fc50793424c4beebfe11603ac4548c5402f5befbaa1a`  
		Last Modified: Wed, 12 Aug 2026 17:49:35 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e92275372643da6c48c0e5e54636979a3d28d186a921a8ddb6ba1fed1c7098d5`  
		Last Modified: Wed, 12 Aug 2026 17:49:35 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66b140625d1017a1a770446a0fd4c29f7d003a49258b7165fcfde48b22f7801`  
		Last Modified: Wed, 12 Aug 2026 17:49:35 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f99c10c90a20ca2bef86180af2c40ec6a154e660df5bbf14f26aa0d03578b9`  
		Last Modified: Wed, 12 Aug 2026 17:49:34 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93cf5d6e3696e3ba6b8192a9efd8096be191f07ac3e62059daa0282cad864182`  
		Last Modified: Wed, 12 Aug 2026 17:50:42 GMT  
		Size: 922.5 MB (922457523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a13b8f9fa2b7778e95e27a4c2f89c367c0467775dadfc295f275e7992a98b69f`  
		Last Modified: Wed, 12 Aug 2026 17:49:34 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb151980290ebdb13b5bf8fe536f57de5320d30ef136559237f477f772dbc83`  
		Last Modified: Wed, 12 Aug 2026 17:49:34 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edacc3baa51bd14fed8c9f3f9f36b289ac92de20a89613a2e8b69abe2b488221`  
		Last Modified: Wed, 12 Aug 2026 17:49:34 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:8.3-windowsservercore` - windows version 10.0.20348.5499; amd64

```console
$ docker pull mongo@sha256:c7483fb413688bfd7bbeef787e3c355dbe17fd9730e1d9b9f6c8211e1425d912
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 GB (3106494378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f02b9490bbfe14eac13e515821a9be6e2d5ad08c3adc4c068eaf43eb26ef5cfc`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Wed, 12 Aug 2026 17:49:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Aug 2026 17:49:09 GMT
ENV MONGO_VERSION=8.3.8
# Wed, 12 Aug 2026 17:49:10 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.3.8-signed.msi
# Wed, 12 Aug 2026 17:49:11 GMT
ENV MONGO_DOWNLOAD_SHA256=d938c6dbc75f9ccdd0880ef91612364ba5f3c08f3640b4ee28a2cd95d4c99861
# Wed, 12 Aug 2026 17:51:01 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 17:51:01 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 17:51:02 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 17:51:02 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a164a094cd982b14c21655e30366c21a02af8c98904e7a38667854a428d15596`  
		Last Modified: Wed, 12 Aug 2026 17:51:09 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3c6b491db1685d7853b3b6b4669ef75643c077f4e5601d3ce2e7d7cb2642d8`  
		Last Modified: Wed, 12 Aug 2026 17:51:09 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:703bfef82fdac6536a3b39510e7afb64992fdce3af7e4352ff642e3a8286a1d4`  
		Last Modified: Wed, 12 Aug 2026 17:51:09 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c313b2eea779f9af4120512ed64e9f45e160b9921c7e9beeba16a0a1e05a59bb`  
		Last Modified: Wed, 12 Aug 2026 17:51:07 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c8da35baf948a5f6e01cf3864782165c1d64dbe5de4ecbf722cef715b46df2`  
		Last Modified: Wed, 12 Aug 2026 17:52:17 GMT  
		Size: 922.5 MB (922487786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1f167c9cd1a3ec6b51d75409d80ed8eeef236faacb399ce1d3f6d6d7781e7a7`  
		Last Modified: Wed, 12 Aug 2026 17:51:07 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af0c2f92c121e57e7ca277aa3a88cfdaef527c73c0cbe6f50ed9fc8bbfab63e`  
		Last Modified: Wed, 12 Aug 2026 17:51:07 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d10e3e7ed6d6644aad7f31f90374cbc143ec2cd26816a83698fb6c0415676a`  
		Last Modified: Wed, 12 Aug 2026 17:51:07 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.3-windowsservercore-ltsc2022`

```console
$ docker pull mongo@sha256:3b34564d322e2a1adcf55d2ca31554212c66e18d9e34731b6ce2ca0e21a8a999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `mongo:8.3-windowsservercore-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull mongo@sha256:c7483fb413688bfd7bbeef787e3c355dbe17fd9730e1d9b9f6c8211e1425d912
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 GB (3106494378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f02b9490bbfe14eac13e515821a9be6e2d5ad08c3adc4c068eaf43eb26ef5cfc`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Wed, 12 Aug 2026 17:49:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Aug 2026 17:49:09 GMT
ENV MONGO_VERSION=8.3.8
# Wed, 12 Aug 2026 17:49:10 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.3.8-signed.msi
# Wed, 12 Aug 2026 17:49:11 GMT
ENV MONGO_DOWNLOAD_SHA256=d938c6dbc75f9ccdd0880ef91612364ba5f3c08f3640b4ee28a2cd95d4c99861
# Wed, 12 Aug 2026 17:51:01 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 17:51:01 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 17:51:02 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 17:51:02 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a164a094cd982b14c21655e30366c21a02af8c98904e7a38667854a428d15596`  
		Last Modified: Wed, 12 Aug 2026 17:51:09 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3c6b491db1685d7853b3b6b4669ef75643c077f4e5601d3ce2e7d7cb2642d8`  
		Last Modified: Wed, 12 Aug 2026 17:51:09 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:703bfef82fdac6536a3b39510e7afb64992fdce3af7e4352ff642e3a8286a1d4`  
		Last Modified: Wed, 12 Aug 2026 17:51:09 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c313b2eea779f9af4120512ed64e9f45e160b9921c7e9beeba16a0a1e05a59bb`  
		Last Modified: Wed, 12 Aug 2026 17:51:07 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c8da35baf948a5f6e01cf3864782165c1d64dbe5de4ecbf722cef715b46df2`  
		Last Modified: Wed, 12 Aug 2026 17:52:17 GMT  
		Size: 922.5 MB (922487786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1f167c9cd1a3ec6b51d75409d80ed8eeef236faacb399ce1d3f6d6d7781e7a7`  
		Last Modified: Wed, 12 Aug 2026 17:51:07 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af0c2f92c121e57e7ca277aa3a88cfdaef527c73c0cbe6f50ed9fc8bbfab63e`  
		Last Modified: Wed, 12 Aug 2026 17:51:07 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d10e3e7ed6d6644aad7f31f90374cbc143ec2cd26816a83698fb6c0415676a`  
		Last Modified: Wed, 12 Aug 2026 17:51:07 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.3-windowsservercore-ltsc2025`

```console
$ docker pull mongo@sha256:84d0f3bd0abf13c14c9750f4f58e13f5e9373031d21d2c368b1d4ccff6ba236c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `mongo:8.3-windowsservercore-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull mongo@sha256:2cc43de570deaac19b057fae0785f83609aedcafa9cc42dcd2fe2b37d17b86c7
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 GB (3363251981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5694eae8768813b6cdfb83534a3c32143921c48fe89e8dd2461ab1cafc2732b1`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 12 Aug 2026 17:47:26 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Aug 2026 17:47:26 GMT
ENV MONGO_VERSION=8.3.8
# Wed, 12 Aug 2026 17:47:26 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.3.8-signed.msi
# Wed, 12 Aug 2026 17:47:27 GMT
ENV MONGO_DOWNLOAD_SHA256=d938c6dbc75f9ccdd0880ef91612364ba5f3c08f3640b4ee28a2cd95d4c99861
# Wed, 12 Aug 2026 17:49:27 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 17:49:27 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 17:49:28 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 17:49:28 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5abeeefbb7b11eb6332573ca632d3d8807213461f1b97f3cfee8899a29583f`  
		Last Modified: Tue, 11 Aug 2026 18:01:52 GMT  
		Size: 917.7 MB (917726084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1221989eb5d8b877bf2fc50793424c4beebfe11603ac4548c5402f5befbaa1a`  
		Last Modified: Wed, 12 Aug 2026 17:49:35 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e92275372643da6c48c0e5e54636979a3d28d186a921a8ddb6ba1fed1c7098d5`  
		Last Modified: Wed, 12 Aug 2026 17:49:35 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66b140625d1017a1a770446a0fd4c29f7d003a49258b7165fcfde48b22f7801`  
		Last Modified: Wed, 12 Aug 2026 17:49:35 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f99c10c90a20ca2bef86180af2c40ec6a154e660df5bbf14f26aa0d03578b9`  
		Last Modified: Wed, 12 Aug 2026 17:49:34 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93cf5d6e3696e3ba6b8192a9efd8096be191f07ac3e62059daa0282cad864182`  
		Last Modified: Wed, 12 Aug 2026 17:50:42 GMT  
		Size: 922.5 MB (922457523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a13b8f9fa2b7778e95e27a4c2f89c367c0467775dadfc295f275e7992a98b69f`  
		Last Modified: Wed, 12 Aug 2026 17:49:34 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb151980290ebdb13b5bf8fe536f57de5320d30ef136559237f477f772dbc83`  
		Last Modified: Wed, 12 Aug 2026 17:49:34 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edacc3baa51bd14fed8c9f3f9f36b289ac92de20a89613a2e8b69abe2b488221`  
		Last Modified: Wed, 12 Aug 2026 17:49:34 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.3.8`

```console
$ docker pull mongo@sha256:44dce4b1688969ff3fdbfc438fd6113f734140ad96e3639ef17ee26a162dfb58
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `mongo:8.3.8` - linux; amd64

```console
$ docker pull mongo@sha256:2c4997bb74bd4458f6954e2053a0a27d67814e356b771477dcff6f5692fb2444
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.1 MB (300091995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02ae9d40ca63a8308d2ad864d09c15eb96e170e26e91294337db81d4e8ab9f6b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 11 Aug 2026 18:30:44 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 11 Aug 2026 18:30:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 18:31:05 GMT
ENV GOSU_VERSION=1.19
# Tue, 11 Aug 2026 18:31:05 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 11 Aug 2026 18:31:05 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 11 Aug 2026 18:31:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-8.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor '4B0752C1BCA238C0B4EE14DC41DE058A4E7DCA05' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 11 Aug 2026 18:31:05 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 11 Aug 2026 18:31:05 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 11 Aug 2026 18:31:05 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 18:31:05 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 18:31:05 GMT
ENV MONGO_MAJOR=8.3
# Tue, 11 Aug 2026 18:31:05 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu noble/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 11 Aug 2026 18:31:05 GMT
ENV MONGO_VERSION=8.3.8
# Tue, 11 Aug 2026 18:31:24 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 11 Aug 2026 18:31:24 GMT
VOLUME [/data/db /data/configdb]
# Tue, 11 Aug 2026 18:31:24 GMT
ENV HOME=/data/db
# Tue, 11 Aug 2026 18:31:24 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Tue, 11 Aug 2026 18:31:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 11 Aug 2026 18:31:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Aug 2026 18:31:25 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 11 Aug 2026 18:31:25 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f904152f8bd62ed119e0dce8b687b6d94237a6b727cd5adf8c0ef3d6b212488`  
		Last Modified: Tue, 11 Aug 2026 18:31:59 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45d06b37927e991177f5a0587cd49c3f962689b6a01aeda7d36ef237e60bac3e`  
		Last Modified: Tue, 11 Aug 2026 18:32:00 GMT  
		Size: 3.9 MB (3876560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fc7571312641fc8edca91378603b45bc0327c161a90bc6c7883e29d9936c141`  
		Last Modified: Tue, 11 Aug 2026 18:31:59 GMT  
		Size: 934.3 KB (934275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5831ac9354561d25da463471675957fe251aa8eac4c8cc151cfbc1e096a8b18e`  
		Last Modified: Tue, 11 Aug 2026 18:31:59 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7836bf519beb7a542890349aae58b340476a44e2f730382c7f0ceee3f940e53`  
		Last Modified: Tue, 11 Aug 2026 18:32:01 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7073d45fa94c5867d0c2b06d8b679f6ef96e6f9f8f25e8f229762a5a58e89e06`  
		Last Modified: Tue, 11 Aug 2026 18:32:06 GMT  
		Size: 265.5 MB (265523452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b77d33f1e28b5be92cd93de5f5f2976411191fa5979d9398205858fd50d34c39`  
		Last Modified: Tue, 11 Aug 2026 18:32:01 GMT  
		Size: 5.0 KB (5004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:8.3.8` - unknown; unknown

```console
$ docker pull mongo@sha256:67ea22d740320ae2c43f2265b729d06e66749ac61e78e02f8f3b91dbf99c60b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2670602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efde8285a21f10fe3b68e9555cfd904c6d8cca007c83562d337b0abd78e91379`

```dockerfile
```

-	Layers:
	-	`sha256:8d4199cda0d3c85cb411a9a4900d346bfb015c2a342238b6dae16cb4233d9e13`  
		Last Modified: Tue, 11 Aug 2026 18:32:00 GMT  
		Size: 2.6 MB (2643041 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67d5f52735258b475449e7f66aee51c1793c077a558bef57094cfe673ff495f7`  
		Last Modified: Tue, 11 Aug 2026 18:31:59 GMT  
		Size: 27.6 KB (27561 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:8.3.8` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:1a9f4705cf6943e6cf5f5bae7976eb2a23a430c3a0e0e26a36fe9e70fb1f4e9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.0 MB (284005728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcd5a7da060c756bdb3081752b916daac9526ec7a6891c39146ebac0a727820b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 11 Aug 2026 19:07:14 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 11 Aug 2026 19:07:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 19:07:36 GMT
ENV GOSU_VERSION=1.19
# Tue, 11 Aug 2026 19:07:36 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 11 Aug 2026 19:07:36 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 11 Aug 2026 19:07:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-8.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor '4B0752C1BCA238C0B4EE14DC41DE058A4E7DCA05' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 11 Aug 2026 19:07:36 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 11 Aug 2026 19:07:36 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 11 Aug 2026 19:07:36 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 19:07:36 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 19:07:36 GMT
ENV MONGO_MAJOR=8.3
# Tue, 11 Aug 2026 19:07:36 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu noble/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 11 Aug 2026 19:07:36 GMT
ENV MONGO_VERSION=8.3.8
# Tue, 11 Aug 2026 19:08:00 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 11 Aug 2026 19:08:00 GMT
VOLUME [/data/db /data/configdb]
# Tue, 11 Aug 2026 19:08:00 GMT
ENV HOME=/data/db
# Tue, 11 Aug 2026 19:08:00 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Tue, 11 Aug 2026 19:08:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 11 Aug 2026 19:08:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Aug 2026 19:08:00 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 11 Aug 2026 19:08:00 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54292ddcf9f782576c7bbb9867858354c9552bb95b9a9762d4fcbe76c449964e`  
		Last Modified: Tue, 11 Aug 2026 19:08:27 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9998ae4d10ea4b5b3ff382af3f9c4e3930b79a565134e69f318ddf4f3d30915e`  
		Last Modified: Tue, 11 Aug 2026 19:08:32 GMT  
		Size: 1.5 MB (1451901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b6423dfa22ec3ae8a646373cde38419a443f581fd5bb15da140b919684df81a`  
		Last Modified: Tue, 11 Aug 2026 19:08:31 GMT  
		Size: 886.5 KB (886525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21a2a80bf19bbe0be4c3c96bfc3c02bc19f1a795198ddfe47709d7a266ceba23`  
		Last Modified: Tue, 11 Aug 2026 19:08:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e57d43b0575587c30489e158f34c8bb693e8cde996f2aa1db8be263f19e3bd3`  
		Last Modified: Tue, 11 Aug 2026 19:08:31 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85b791be63c5bfcff3eb4cb35a01ad0e6b823fc5ffa34fe27d2a5a90644c34d4`  
		Last Modified: Tue, 11 Aug 2026 19:08:37 GMT  
		Size: 252.8 MB (252773887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b82ad1617ea4bbabc54e56a1f863001b789d70ae4a6f7ac053629ac398ec51`  
		Last Modified: Tue, 11 Aug 2026 19:08:33 GMT  
		Size: 5.0 KB (5002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:8.3.8` - unknown; unknown

```console
$ docker pull mongo@sha256:74c3a65ce0b49cc9b1446495ec82af450c41235f819f602c6ea46c17c9ca7581
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2671870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb6916a839f10c446bc3607ce0f2a0ef528c1514c9a6d448863370309c7e84d3`

```dockerfile
```

-	Layers:
	-	`sha256:3401a38e755a954dd996c290542eec28af947eec9829e3ef99de60b4c2218379`  
		Last Modified: Tue, 11 Aug 2026 19:08:31 GMT  
		Size: 2.6 MB (2644129 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53c8f0f8e46467142355db35aed106e9206b7e48c897d54439eb1369533de9eb`  
		Last Modified: Tue, 11 Aug 2026 19:08:31 GMT  
		Size: 27.7 KB (27741 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:8.3.8` - windows version 10.0.26100.33296; amd64

```console
$ docker pull mongo@sha256:2cc43de570deaac19b057fae0785f83609aedcafa9cc42dcd2fe2b37d17b86c7
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 GB (3363251981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5694eae8768813b6cdfb83534a3c32143921c48fe89e8dd2461ab1cafc2732b1`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 12 Aug 2026 17:47:26 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Aug 2026 17:47:26 GMT
ENV MONGO_VERSION=8.3.8
# Wed, 12 Aug 2026 17:47:26 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.3.8-signed.msi
# Wed, 12 Aug 2026 17:47:27 GMT
ENV MONGO_DOWNLOAD_SHA256=d938c6dbc75f9ccdd0880ef91612364ba5f3c08f3640b4ee28a2cd95d4c99861
# Wed, 12 Aug 2026 17:49:27 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 17:49:27 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 17:49:28 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 17:49:28 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5abeeefbb7b11eb6332573ca632d3d8807213461f1b97f3cfee8899a29583f`  
		Last Modified: Tue, 11 Aug 2026 18:01:52 GMT  
		Size: 917.7 MB (917726084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1221989eb5d8b877bf2fc50793424c4beebfe11603ac4548c5402f5befbaa1a`  
		Last Modified: Wed, 12 Aug 2026 17:49:35 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e92275372643da6c48c0e5e54636979a3d28d186a921a8ddb6ba1fed1c7098d5`  
		Last Modified: Wed, 12 Aug 2026 17:49:35 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66b140625d1017a1a770446a0fd4c29f7d003a49258b7165fcfde48b22f7801`  
		Last Modified: Wed, 12 Aug 2026 17:49:35 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f99c10c90a20ca2bef86180af2c40ec6a154e660df5bbf14f26aa0d03578b9`  
		Last Modified: Wed, 12 Aug 2026 17:49:34 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93cf5d6e3696e3ba6b8192a9efd8096be191f07ac3e62059daa0282cad864182`  
		Last Modified: Wed, 12 Aug 2026 17:50:42 GMT  
		Size: 922.5 MB (922457523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a13b8f9fa2b7778e95e27a4c2f89c367c0467775dadfc295f275e7992a98b69f`  
		Last Modified: Wed, 12 Aug 2026 17:49:34 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb151980290ebdb13b5bf8fe536f57de5320d30ef136559237f477f772dbc83`  
		Last Modified: Wed, 12 Aug 2026 17:49:34 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edacc3baa51bd14fed8c9f3f9f36b289ac92de20a89613a2e8b69abe2b488221`  
		Last Modified: Wed, 12 Aug 2026 17:49:34 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:8.3.8` - windows version 10.0.20348.5499; amd64

```console
$ docker pull mongo@sha256:c7483fb413688bfd7bbeef787e3c355dbe17fd9730e1d9b9f6c8211e1425d912
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 GB (3106494378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f02b9490bbfe14eac13e515821a9be6e2d5ad08c3adc4c068eaf43eb26ef5cfc`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Wed, 12 Aug 2026 17:49:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Aug 2026 17:49:09 GMT
ENV MONGO_VERSION=8.3.8
# Wed, 12 Aug 2026 17:49:10 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.3.8-signed.msi
# Wed, 12 Aug 2026 17:49:11 GMT
ENV MONGO_DOWNLOAD_SHA256=d938c6dbc75f9ccdd0880ef91612364ba5f3c08f3640b4ee28a2cd95d4c99861
# Wed, 12 Aug 2026 17:51:01 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 17:51:01 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 17:51:02 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 17:51:02 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a164a094cd982b14c21655e30366c21a02af8c98904e7a38667854a428d15596`  
		Last Modified: Wed, 12 Aug 2026 17:51:09 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3c6b491db1685d7853b3b6b4669ef75643c077f4e5601d3ce2e7d7cb2642d8`  
		Last Modified: Wed, 12 Aug 2026 17:51:09 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:703bfef82fdac6536a3b39510e7afb64992fdce3af7e4352ff642e3a8286a1d4`  
		Last Modified: Wed, 12 Aug 2026 17:51:09 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c313b2eea779f9af4120512ed64e9f45e160b9921c7e9beeba16a0a1e05a59bb`  
		Last Modified: Wed, 12 Aug 2026 17:51:07 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c8da35baf948a5f6e01cf3864782165c1d64dbe5de4ecbf722cef715b46df2`  
		Last Modified: Wed, 12 Aug 2026 17:52:17 GMT  
		Size: 922.5 MB (922487786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1f167c9cd1a3ec6b51d75409d80ed8eeef236faacb399ce1d3f6d6d7781e7a7`  
		Last Modified: Wed, 12 Aug 2026 17:51:07 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af0c2f92c121e57e7ca277aa3a88cfdaef527c73c0cbe6f50ed9fc8bbfab63e`  
		Last Modified: Wed, 12 Aug 2026 17:51:07 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d10e3e7ed6d6644aad7f31f90374cbc143ec2cd26816a83698fb6c0415676a`  
		Last Modified: Wed, 12 Aug 2026 17:51:07 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.3.8-nanoserver`

```console
$ docker pull mongo@sha256:10006bb8fe3e4c474295b3f18a6963a86c819b63423c6dfebea13b24ccc4cdf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `mongo:8.3.8-nanoserver` - windows version 10.0.20348.5499; amd64

```console
$ docker pull mongo@sha256:8d27a8d86ae88aed45853a499322119093c16a2835bc2ce28fec279fc5280d81
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1046076909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4db75bda4433f20ee81ef7f3016d54d9ad5ae010566911247ac8bc4da48ee324`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sun, 09 Aug 2026 04:00:46 GMT
RUN Apply image 10.0.20348.5499
# Wed, 12 Aug 2026 18:17:06 GMT
SHELL [cmd /S /C]
# Wed, 12 Aug 2026 18:17:07 GMT
USER ContainerAdministrator
# Wed, 12 Aug 2026 18:17:12 GMT
RUN setx /m PATH "C:\mongodb\bin;%PATH%"
# Wed, 12 Aug 2026 18:17:13 GMT
USER ContainerUser
# Wed, 12 Aug 2026 18:17:14 GMT
COPY multi:edf1670f741f0c0f034ec218dc51015484becee19afd9d4d712d1a864fd379ff in C:\Windows\System32\ 
# Wed, 12 Aug 2026 18:17:14 GMT
ENV MONGO_VERSION=8.3.8
# Wed, 12 Aug 2026 18:18:01 GMT
COPY dir:ab77c6d81d0785876e1421f184877c7fedc2c701e07d5fc54386b3eabb2260f7 in C:\mongodb 
# Wed, 12 Aug 2026 18:18:31 GMT
RUN mongod --version
# Wed, 12 Aug 2026 18:18:31 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 18:18:31 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 18:18:32 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:dc16402aa7d3fdbac6580d83e9c13ab7caf61d557113810e102089ffa3cd6cb4`  
		Last Modified: Tue, 11 Aug 2026 20:43:43 GMT  
		Size: 124.3 MB (124257916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a79388e9f0c7a7b81672d85cc13af6d7435f432f4b9f84ded222fd016b740e29`  
		Last Modified: Wed, 12 Aug 2026 18:18:43 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299c7cd2287c2e7be5f7ea513798fda6c446af7938f168364fbba6b0b384da66`  
		Last Modified: Wed, 12 Aug 2026 18:18:42 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a2007db7310b136e198e6fb0a0bdadf72b96fd667ef2c76569441e7e6e87ab`  
		Last Modified: Wed, 12 Aug 2026 18:18:41 GMT  
		Size: 85.6 KB (85551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dec53872fb11bc03e878fd9a3030acf00c3833399acd71cff3b0ededae12895`  
		Last Modified: Wed, 12 Aug 2026 18:18:41 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ee48c97c28e98b05b10575a212622350f86a4a4f776fa9e465693d909d99e0`  
		Last Modified: Wed, 12 Aug 2026 18:18:41 GMT  
		Size: 300.4 KB (300394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f017403c87b2d22944e969ce96e8dff742c5a6449e6e115fd536ccd9544168ac`  
		Last Modified: Wed, 12 Aug 2026 18:18:41 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd154211ab48faf46fd48cb2ead55f13020915411d03a0d4d6dbba3061bc5bfd`  
		Last Modified: Wed, 12 Aug 2026 18:19:55 GMT  
		Size: 921.3 MB (921339072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ea74e932f4e1e9eac5f7229d063e28e62d214bf9852face97e16db051b49cb0`  
		Last Modified: Wed, 12 Aug 2026 18:18:39 GMT  
		Size: 86.5 KB (86533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb98c0dc34ed76e844e9a3104ce1fe50b700c6720a49cd8282ba74f6edc37310`  
		Last Modified: Wed, 12 Aug 2026 18:18:39 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48439a909f5c178dcc33e969fd4b31d1f22268779683bf457cc43a3603cb5333`  
		Last Modified: Wed, 12 Aug 2026 18:18:39 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80efb159cdfba3669913a2ab5dbea05599620f788ef2c46a0698ce5e48860384`  
		Last Modified: Wed, 12 Aug 2026 18:18:39 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.3.8-nanoserver-ltsc2022`

```console
$ docker pull mongo@sha256:10006bb8fe3e4c474295b3f18a6963a86c819b63423c6dfebea13b24ccc4cdf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `mongo:8.3.8-nanoserver-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull mongo@sha256:8d27a8d86ae88aed45853a499322119093c16a2835bc2ce28fec279fc5280d81
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1046076909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4db75bda4433f20ee81ef7f3016d54d9ad5ae010566911247ac8bc4da48ee324`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sun, 09 Aug 2026 04:00:46 GMT
RUN Apply image 10.0.20348.5499
# Wed, 12 Aug 2026 18:17:06 GMT
SHELL [cmd /S /C]
# Wed, 12 Aug 2026 18:17:07 GMT
USER ContainerAdministrator
# Wed, 12 Aug 2026 18:17:12 GMT
RUN setx /m PATH "C:\mongodb\bin;%PATH%"
# Wed, 12 Aug 2026 18:17:13 GMT
USER ContainerUser
# Wed, 12 Aug 2026 18:17:14 GMT
COPY multi:edf1670f741f0c0f034ec218dc51015484becee19afd9d4d712d1a864fd379ff in C:\Windows\System32\ 
# Wed, 12 Aug 2026 18:17:14 GMT
ENV MONGO_VERSION=8.3.8
# Wed, 12 Aug 2026 18:18:01 GMT
COPY dir:ab77c6d81d0785876e1421f184877c7fedc2c701e07d5fc54386b3eabb2260f7 in C:\mongodb 
# Wed, 12 Aug 2026 18:18:31 GMT
RUN mongod --version
# Wed, 12 Aug 2026 18:18:31 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 18:18:31 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 18:18:32 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:dc16402aa7d3fdbac6580d83e9c13ab7caf61d557113810e102089ffa3cd6cb4`  
		Last Modified: Tue, 11 Aug 2026 20:43:43 GMT  
		Size: 124.3 MB (124257916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a79388e9f0c7a7b81672d85cc13af6d7435f432f4b9f84ded222fd016b740e29`  
		Last Modified: Wed, 12 Aug 2026 18:18:43 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299c7cd2287c2e7be5f7ea513798fda6c446af7938f168364fbba6b0b384da66`  
		Last Modified: Wed, 12 Aug 2026 18:18:42 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a2007db7310b136e198e6fb0a0bdadf72b96fd667ef2c76569441e7e6e87ab`  
		Last Modified: Wed, 12 Aug 2026 18:18:41 GMT  
		Size: 85.6 KB (85551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dec53872fb11bc03e878fd9a3030acf00c3833399acd71cff3b0ededae12895`  
		Last Modified: Wed, 12 Aug 2026 18:18:41 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ee48c97c28e98b05b10575a212622350f86a4a4f776fa9e465693d909d99e0`  
		Last Modified: Wed, 12 Aug 2026 18:18:41 GMT  
		Size: 300.4 KB (300394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f017403c87b2d22944e969ce96e8dff742c5a6449e6e115fd536ccd9544168ac`  
		Last Modified: Wed, 12 Aug 2026 18:18:41 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd154211ab48faf46fd48cb2ead55f13020915411d03a0d4d6dbba3061bc5bfd`  
		Last Modified: Wed, 12 Aug 2026 18:19:55 GMT  
		Size: 921.3 MB (921339072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ea74e932f4e1e9eac5f7229d063e28e62d214bf9852face97e16db051b49cb0`  
		Last Modified: Wed, 12 Aug 2026 18:18:39 GMT  
		Size: 86.5 KB (86533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb98c0dc34ed76e844e9a3104ce1fe50b700c6720a49cd8282ba74f6edc37310`  
		Last Modified: Wed, 12 Aug 2026 18:18:39 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48439a909f5c178dcc33e969fd4b31d1f22268779683bf457cc43a3603cb5333`  
		Last Modified: Wed, 12 Aug 2026 18:18:39 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80efb159cdfba3669913a2ab5dbea05599620f788ef2c46a0698ce5e48860384`  
		Last Modified: Wed, 12 Aug 2026 18:18:39 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.3.8-noble`

```console
$ docker pull mongo@sha256:6db9814faf17fa130825149c8f9dbb0b05cbc28e099f5647c26a27bccbb7a717
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mongo:8.3.8-noble` - linux; amd64

```console
$ docker pull mongo@sha256:2c4997bb74bd4458f6954e2053a0a27d67814e356b771477dcff6f5692fb2444
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.1 MB (300091995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02ae9d40ca63a8308d2ad864d09c15eb96e170e26e91294337db81d4e8ab9f6b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 11 Aug 2026 18:30:44 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 11 Aug 2026 18:30:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 18:31:05 GMT
ENV GOSU_VERSION=1.19
# Tue, 11 Aug 2026 18:31:05 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 11 Aug 2026 18:31:05 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 11 Aug 2026 18:31:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-8.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor '4B0752C1BCA238C0B4EE14DC41DE058A4E7DCA05' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 11 Aug 2026 18:31:05 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 11 Aug 2026 18:31:05 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 11 Aug 2026 18:31:05 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 18:31:05 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 18:31:05 GMT
ENV MONGO_MAJOR=8.3
# Tue, 11 Aug 2026 18:31:05 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu noble/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 11 Aug 2026 18:31:05 GMT
ENV MONGO_VERSION=8.3.8
# Tue, 11 Aug 2026 18:31:24 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 11 Aug 2026 18:31:24 GMT
VOLUME [/data/db /data/configdb]
# Tue, 11 Aug 2026 18:31:24 GMT
ENV HOME=/data/db
# Tue, 11 Aug 2026 18:31:24 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Tue, 11 Aug 2026 18:31:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 11 Aug 2026 18:31:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Aug 2026 18:31:25 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 11 Aug 2026 18:31:25 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f904152f8bd62ed119e0dce8b687b6d94237a6b727cd5adf8c0ef3d6b212488`  
		Last Modified: Tue, 11 Aug 2026 18:31:59 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45d06b37927e991177f5a0587cd49c3f962689b6a01aeda7d36ef237e60bac3e`  
		Last Modified: Tue, 11 Aug 2026 18:32:00 GMT  
		Size: 3.9 MB (3876560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fc7571312641fc8edca91378603b45bc0327c161a90bc6c7883e29d9936c141`  
		Last Modified: Tue, 11 Aug 2026 18:31:59 GMT  
		Size: 934.3 KB (934275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5831ac9354561d25da463471675957fe251aa8eac4c8cc151cfbc1e096a8b18e`  
		Last Modified: Tue, 11 Aug 2026 18:31:59 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7836bf519beb7a542890349aae58b340476a44e2f730382c7f0ceee3f940e53`  
		Last Modified: Tue, 11 Aug 2026 18:32:01 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7073d45fa94c5867d0c2b06d8b679f6ef96e6f9f8f25e8f229762a5a58e89e06`  
		Last Modified: Tue, 11 Aug 2026 18:32:06 GMT  
		Size: 265.5 MB (265523452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b77d33f1e28b5be92cd93de5f5f2976411191fa5979d9398205858fd50d34c39`  
		Last Modified: Tue, 11 Aug 2026 18:32:01 GMT  
		Size: 5.0 KB (5004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:8.3.8-noble` - unknown; unknown

```console
$ docker pull mongo@sha256:67ea22d740320ae2c43f2265b729d06e66749ac61e78e02f8f3b91dbf99c60b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2670602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efde8285a21f10fe3b68e9555cfd904c6d8cca007c83562d337b0abd78e91379`

```dockerfile
```

-	Layers:
	-	`sha256:8d4199cda0d3c85cb411a9a4900d346bfb015c2a342238b6dae16cb4233d9e13`  
		Last Modified: Tue, 11 Aug 2026 18:32:00 GMT  
		Size: 2.6 MB (2643041 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67d5f52735258b475449e7f66aee51c1793c077a558bef57094cfe673ff495f7`  
		Last Modified: Tue, 11 Aug 2026 18:31:59 GMT  
		Size: 27.6 KB (27561 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:8.3.8-noble` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:1a9f4705cf6943e6cf5f5bae7976eb2a23a430c3a0e0e26a36fe9e70fb1f4e9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.0 MB (284005728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcd5a7da060c756bdb3081752b916daac9526ec7a6891c39146ebac0a727820b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 11 Aug 2026 19:07:14 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 11 Aug 2026 19:07:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 19:07:36 GMT
ENV GOSU_VERSION=1.19
# Tue, 11 Aug 2026 19:07:36 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 11 Aug 2026 19:07:36 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 11 Aug 2026 19:07:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-8.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor '4B0752C1BCA238C0B4EE14DC41DE058A4E7DCA05' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 11 Aug 2026 19:07:36 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 11 Aug 2026 19:07:36 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 11 Aug 2026 19:07:36 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 19:07:36 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 19:07:36 GMT
ENV MONGO_MAJOR=8.3
# Tue, 11 Aug 2026 19:07:36 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu noble/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 11 Aug 2026 19:07:36 GMT
ENV MONGO_VERSION=8.3.8
# Tue, 11 Aug 2026 19:08:00 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 11 Aug 2026 19:08:00 GMT
VOLUME [/data/db /data/configdb]
# Tue, 11 Aug 2026 19:08:00 GMT
ENV HOME=/data/db
# Tue, 11 Aug 2026 19:08:00 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Tue, 11 Aug 2026 19:08:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 11 Aug 2026 19:08:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Aug 2026 19:08:00 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 11 Aug 2026 19:08:00 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54292ddcf9f782576c7bbb9867858354c9552bb95b9a9762d4fcbe76c449964e`  
		Last Modified: Tue, 11 Aug 2026 19:08:27 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9998ae4d10ea4b5b3ff382af3f9c4e3930b79a565134e69f318ddf4f3d30915e`  
		Last Modified: Tue, 11 Aug 2026 19:08:32 GMT  
		Size: 1.5 MB (1451901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b6423dfa22ec3ae8a646373cde38419a443f581fd5bb15da140b919684df81a`  
		Last Modified: Tue, 11 Aug 2026 19:08:31 GMT  
		Size: 886.5 KB (886525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21a2a80bf19bbe0be4c3c96bfc3c02bc19f1a795198ddfe47709d7a266ceba23`  
		Last Modified: Tue, 11 Aug 2026 19:08:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e57d43b0575587c30489e158f34c8bb693e8cde996f2aa1db8be263f19e3bd3`  
		Last Modified: Tue, 11 Aug 2026 19:08:31 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85b791be63c5bfcff3eb4cb35a01ad0e6b823fc5ffa34fe27d2a5a90644c34d4`  
		Last Modified: Tue, 11 Aug 2026 19:08:37 GMT  
		Size: 252.8 MB (252773887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b82ad1617ea4bbabc54e56a1f863001b789d70ae4a6f7ac053629ac398ec51`  
		Last Modified: Tue, 11 Aug 2026 19:08:33 GMT  
		Size: 5.0 KB (5002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:8.3.8-noble` - unknown; unknown

```console
$ docker pull mongo@sha256:74c3a65ce0b49cc9b1446495ec82af450c41235f819f602c6ea46c17c9ca7581
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2671870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb6916a839f10c446bc3607ce0f2a0ef528c1514c9a6d448863370309c7e84d3`

```dockerfile
```

-	Layers:
	-	`sha256:3401a38e755a954dd996c290542eec28af947eec9829e3ef99de60b4c2218379`  
		Last Modified: Tue, 11 Aug 2026 19:08:31 GMT  
		Size: 2.6 MB (2644129 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53c8f0f8e46467142355db35aed106e9206b7e48c897d54439eb1369533de9eb`  
		Last Modified: Tue, 11 Aug 2026 19:08:31 GMT  
		Size: 27.7 KB (27741 bytes)  
		MIME: application/vnd.in-toto+json

## `mongo:8.3.8-windowsservercore`

```console
$ docker pull mongo@sha256:5d8d30d90f4b63ac8b4590269f9c9586e56798c5b24b59a97d55ec0082b2c0b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `mongo:8.3.8-windowsservercore` - windows version 10.0.26100.33296; amd64

```console
$ docker pull mongo@sha256:2cc43de570deaac19b057fae0785f83609aedcafa9cc42dcd2fe2b37d17b86c7
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 GB (3363251981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5694eae8768813b6cdfb83534a3c32143921c48fe89e8dd2461ab1cafc2732b1`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 12 Aug 2026 17:47:26 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Aug 2026 17:47:26 GMT
ENV MONGO_VERSION=8.3.8
# Wed, 12 Aug 2026 17:47:26 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.3.8-signed.msi
# Wed, 12 Aug 2026 17:47:27 GMT
ENV MONGO_DOWNLOAD_SHA256=d938c6dbc75f9ccdd0880ef91612364ba5f3c08f3640b4ee28a2cd95d4c99861
# Wed, 12 Aug 2026 17:49:27 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 17:49:27 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 17:49:28 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 17:49:28 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5abeeefbb7b11eb6332573ca632d3d8807213461f1b97f3cfee8899a29583f`  
		Last Modified: Tue, 11 Aug 2026 18:01:52 GMT  
		Size: 917.7 MB (917726084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1221989eb5d8b877bf2fc50793424c4beebfe11603ac4548c5402f5befbaa1a`  
		Last Modified: Wed, 12 Aug 2026 17:49:35 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e92275372643da6c48c0e5e54636979a3d28d186a921a8ddb6ba1fed1c7098d5`  
		Last Modified: Wed, 12 Aug 2026 17:49:35 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66b140625d1017a1a770446a0fd4c29f7d003a49258b7165fcfde48b22f7801`  
		Last Modified: Wed, 12 Aug 2026 17:49:35 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f99c10c90a20ca2bef86180af2c40ec6a154e660df5bbf14f26aa0d03578b9`  
		Last Modified: Wed, 12 Aug 2026 17:49:34 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93cf5d6e3696e3ba6b8192a9efd8096be191f07ac3e62059daa0282cad864182`  
		Last Modified: Wed, 12 Aug 2026 17:50:42 GMT  
		Size: 922.5 MB (922457523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a13b8f9fa2b7778e95e27a4c2f89c367c0467775dadfc295f275e7992a98b69f`  
		Last Modified: Wed, 12 Aug 2026 17:49:34 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb151980290ebdb13b5bf8fe536f57de5320d30ef136559237f477f772dbc83`  
		Last Modified: Wed, 12 Aug 2026 17:49:34 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edacc3baa51bd14fed8c9f3f9f36b289ac92de20a89613a2e8b69abe2b488221`  
		Last Modified: Wed, 12 Aug 2026 17:49:34 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:8.3.8-windowsservercore` - windows version 10.0.20348.5499; amd64

```console
$ docker pull mongo@sha256:c7483fb413688bfd7bbeef787e3c355dbe17fd9730e1d9b9f6c8211e1425d912
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 GB (3106494378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f02b9490bbfe14eac13e515821a9be6e2d5ad08c3adc4c068eaf43eb26ef5cfc`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Wed, 12 Aug 2026 17:49:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Aug 2026 17:49:09 GMT
ENV MONGO_VERSION=8.3.8
# Wed, 12 Aug 2026 17:49:10 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.3.8-signed.msi
# Wed, 12 Aug 2026 17:49:11 GMT
ENV MONGO_DOWNLOAD_SHA256=d938c6dbc75f9ccdd0880ef91612364ba5f3c08f3640b4ee28a2cd95d4c99861
# Wed, 12 Aug 2026 17:51:01 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 17:51:01 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 17:51:02 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 17:51:02 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a164a094cd982b14c21655e30366c21a02af8c98904e7a38667854a428d15596`  
		Last Modified: Wed, 12 Aug 2026 17:51:09 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3c6b491db1685d7853b3b6b4669ef75643c077f4e5601d3ce2e7d7cb2642d8`  
		Last Modified: Wed, 12 Aug 2026 17:51:09 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:703bfef82fdac6536a3b39510e7afb64992fdce3af7e4352ff642e3a8286a1d4`  
		Last Modified: Wed, 12 Aug 2026 17:51:09 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c313b2eea779f9af4120512ed64e9f45e160b9921c7e9beeba16a0a1e05a59bb`  
		Last Modified: Wed, 12 Aug 2026 17:51:07 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c8da35baf948a5f6e01cf3864782165c1d64dbe5de4ecbf722cef715b46df2`  
		Last Modified: Wed, 12 Aug 2026 17:52:17 GMT  
		Size: 922.5 MB (922487786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1f167c9cd1a3ec6b51d75409d80ed8eeef236faacb399ce1d3f6d6d7781e7a7`  
		Last Modified: Wed, 12 Aug 2026 17:51:07 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af0c2f92c121e57e7ca277aa3a88cfdaef527c73c0cbe6f50ed9fc8bbfab63e`  
		Last Modified: Wed, 12 Aug 2026 17:51:07 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d10e3e7ed6d6644aad7f31f90374cbc143ec2cd26816a83698fb6c0415676a`  
		Last Modified: Wed, 12 Aug 2026 17:51:07 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.3.8-windowsservercore-ltsc2022`

```console
$ docker pull mongo@sha256:3b34564d322e2a1adcf55d2ca31554212c66e18d9e34731b6ce2ca0e21a8a999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `mongo:8.3.8-windowsservercore-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull mongo@sha256:c7483fb413688bfd7bbeef787e3c355dbe17fd9730e1d9b9f6c8211e1425d912
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 GB (3106494378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f02b9490bbfe14eac13e515821a9be6e2d5ad08c3adc4c068eaf43eb26ef5cfc`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Wed, 12 Aug 2026 17:49:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Aug 2026 17:49:09 GMT
ENV MONGO_VERSION=8.3.8
# Wed, 12 Aug 2026 17:49:10 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.3.8-signed.msi
# Wed, 12 Aug 2026 17:49:11 GMT
ENV MONGO_DOWNLOAD_SHA256=d938c6dbc75f9ccdd0880ef91612364ba5f3c08f3640b4ee28a2cd95d4c99861
# Wed, 12 Aug 2026 17:51:01 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 17:51:01 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 17:51:02 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 17:51:02 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a164a094cd982b14c21655e30366c21a02af8c98904e7a38667854a428d15596`  
		Last Modified: Wed, 12 Aug 2026 17:51:09 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3c6b491db1685d7853b3b6b4669ef75643c077f4e5601d3ce2e7d7cb2642d8`  
		Last Modified: Wed, 12 Aug 2026 17:51:09 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:703bfef82fdac6536a3b39510e7afb64992fdce3af7e4352ff642e3a8286a1d4`  
		Last Modified: Wed, 12 Aug 2026 17:51:09 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c313b2eea779f9af4120512ed64e9f45e160b9921c7e9beeba16a0a1e05a59bb`  
		Last Modified: Wed, 12 Aug 2026 17:51:07 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c8da35baf948a5f6e01cf3864782165c1d64dbe5de4ecbf722cef715b46df2`  
		Last Modified: Wed, 12 Aug 2026 17:52:17 GMT  
		Size: 922.5 MB (922487786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1f167c9cd1a3ec6b51d75409d80ed8eeef236faacb399ce1d3f6d6d7781e7a7`  
		Last Modified: Wed, 12 Aug 2026 17:51:07 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af0c2f92c121e57e7ca277aa3a88cfdaef527c73c0cbe6f50ed9fc8bbfab63e`  
		Last Modified: Wed, 12 Aug 2026 17:51:07 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d10e3e7ed6d6644aad7f31f90374cbc143ec2cd26816a83698fb6c0415676a`  
		Last Modified: Wed, 12 Aug 2026 17:51:07 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.3.8-windowsservercore-ltsc2025`

```console
$ docker pull mongo@sha256:84d0f3bd0abf13c14c9750f4f58e13f5e9373031d21d2c368b1d4ccff6ba236c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `mongo:8.3.8-windowsservercore-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull mongo@sha256:2cc43de570deaac19b057fae0785f83609aedcafa9cc42dcd2fe2b37d17b86c7
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 GB (3363251981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5694eae8768813b6cdfb83534a3c32143921c48fe89e8dd2461ab1cafc2732b1`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 12 Aug 2026 17:47:26 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Aug 2026 17:47:26 GMT
ENV MONGO_VERSION=8.3.8
# Wed, 12 Aug 2026 17:47:26 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.3.8-signed.msi
# Wed, 12 Aug 2026 17:47:27 GMT
ENV MONGO_DOWNLOAD_SHA256=d938c6dbc75f9ccdd0880ef91612364ba5f3c08f3640b4ee28a2cd95d4c99861
# Wed, 12 Aug 2026 17:49:27 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 17:49:27 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 17:49:28 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 17:49:28 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5abeeefbb7b11eb6332573ca632d3d8807213461f1b97f3cfee8899a29583f`  
		Last Modified: Tue, 11 Aug 2026 18:01:52 GMT  
		Size: 917.7 MB (917726084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1221989eb5d8b877bf2fc50793424c4beebfe11603ac4548c5402f5befbaa1a`  
		Last Modified: Wed, 12 Aug 2026 17:49:35 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e92275372643da6c48c0e5e54636979a3d28d186a921a8ddb6ba1fed1c7098d5`  
		Last Modified: Wed, 12 Aug 2026 17:49:35 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66b140625d1017a1a770446a0fd4c29f7d003a49258b7165fcfde48b22f7801`  
		Last Modified: Wed, 12 Aug 2026 17:49:35 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f99c10c90a20ca2bef86180af2c40ec6a154e660df5bbf14f26aa0d03578b9`  
		Last Modified: Wed, 12 Aug 2026 17:49:34 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93cf5d6e3696e3ba6b8192a9efd8096be191f07ac3e62059daa0282cad864182`  
		Last Modified: Wed, 12 Aug 2026 17:50:42 GMT  
		Size: 922.5 MB (922457523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a13b8f9fa2b7778e95e27a4c2f89c367c0467775dadfc295f275e7992a98b69f`  
		Last Modified: Wed, 12 Aug 2026 17:49:34 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb151980290ebdb13b5bf8fe536f57de5320d30ef136559237f477f772dbc83`  
		Last Modified: Wed, 12 Aug 2026 17:49:34 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edacc3baa51bd14fed8c9f3f9f36b289ac92de20a89613a2e8b69abe2b488221`  
		Last Modified: Wed, 12 Aug 2026 17:49:34 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
