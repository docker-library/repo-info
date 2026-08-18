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
