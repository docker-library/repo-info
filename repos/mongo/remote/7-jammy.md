## `mongo:7-jammy`

```console
$ docker pull mongo@sha256:f71f6d0913c945096cd058557cbadf4ad435007f378d84b3c4c636c928735e72
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mongo:7-jammy` - linux; amd64

```console
$ docker pull mongo@sha256:494b956596706b19ba44908cb9d03648b585214600987b86cd2a34249358e572
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.7 MB (296685928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac1502203bffd13c241ca25a7bae60cbd968fd0011247f6727524634b3f2f6e3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:31:26 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Fri, 02 Oct 2026 01:31:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:31:47 GMT
ENV GOSU_VERSION=1.19
# Fri, 02 Oct 2026 01:31:47 GMT
ENV JSYAML_VERSION=3.13.1
# Fri, 02 Oct 2026 01:31:47 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Fri, 02 Oct 2026 01:31:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-7.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor 'E58830201F7DD82CD808AA84160D26BB1785BA38' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 02 Oct 2026 01:31:47 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 01:31:47 GMT
ARG MONGO_PACKAGE=mongodb-org
# Fri, 02 Oct 2026 01:31:47 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 02 Oct 2026 01:31:47 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Fri, 02 Oct 2026 01:31:47 GMT
ENV MONGO_MAJOR=7.0
# Fri, 02 Oct 2026 01:31:48 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu jammy/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Fri, 02 Oct 2026 01:31:48 GMT
ENV MONGO_VERSION=7.0.43
# Fri, 02 Oct 2026 01:32:10 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Fri, 02 Oct 2026 01:32:10 GMT
VOLUME [/data/db /data/configdb]
# Fri, 02 Oct 2026 01:32:10 GMT
ENV HOME=/data/db
# Fri, 02 Oct 2026 01:32:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:32:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Oct 2026 01:32:10 GMT
EXPOSE map[27017/tcp:{}]
# Fri, 02 Oct 2026 01:32:10 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbbf1927e501de80975b4175e34007548449814a4ea3bc08740cbe9dd12f8256`  
		Last Modified: Fri, 02 Oct 2026 01:32:44 GMT  
		Size: 1.8 KB (1778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:763db67a40190d56c0d6e86dc84a9117bb06edd8445707368e940ddd7d39315e`  
		Last Modified: Fri, 02 Oct 2026 01:32:44 GMT  
		Size: 1.5 MB (1473181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47f7b7c9d00962b1df4d8bfc24d828bfc5938e3d9e938b80b6f14932ca627f1f`  
		Last Modified: Fri, 02 Oct 2026 01:32:44 GMT  
		Size: 898.8 KB (898781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a58c554e41247d85782bf152b38a748da55657f600103c21323aa6d5888d6681`  
		Last Modified: Fri, 02 Oct 2026 01:32:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ba0da4cb69c0423aa0ee9806027928caa6380c37e244534391f9582d49c50ce`  
		Last Modified: Fri, 02 Oct 2026 01:32:46 GMT  
		Size: 266.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1ae443f1e54789e1de10fc6ddea4e41a5c8976fa654f6ac74f5452e2f82394b`  
		Last Modified: Fri, 02 Oct 2026 01:32:52 GMT  
		Size: 264.6 MB (264555174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7abe9b2477b0b38ca73c01b0361e584480ae01c8dc8edaba886e6581ef4dfe16`  
		Last Modified: Fri, 02 Oct 2026 01:32:46 GMT  
		Size: 5.0 KB (5005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:7-jammy` - unknown; unknown

```console
$ docker pull mongo@sha256:6452a55c30cef91a82f504d5e21c347b53b660dcda9c6160cbc1dc7a8751a2a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3231591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64f98f28995482e061327f8e83bf8c1a1c3dab07213c21e53f3f84b40920032a`

```dockerfile
```

-	Layers:
	-	`sha256:5447fcc40cda02bc56b7bac9141138d365db0ea19524697fb582afc27a74e1ef`  
		Last Modified: Fri, 02 Oct 2026 01:32:45 GMT  
		Size: 3.2 MB (3203705 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:527a7214f97394fa445a7424ce9d1da70e99dbcd208cd6f24ecf2d0d734b24ec`  
		Last Modified: Fri, 02 Oct 2026 01:32:44 GMT  
		Size: 27.9 KB (27886 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:7-jammy` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:63672ea7bd350b068f0c4369a7a9d0b40b3b322db1f70b4a138accabff104a38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.5 MB (283476916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd61624c38a6ddd1b3b8083edbec23b52b35ff1ff7ad78a74f76e77cfd5fad27`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:31:16 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Fri, 02 Oct 2026 01:31:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:31:40 GMT
ENV GOSU_VERSION=1.19
# Fri, 02 Oct 2026 01:31:40 GMT
ENV JSYAML_VERSION=3.13.1
# Fri, 02 Oct 2026 01:31:40 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Fri, 02 Oct 2026 01:31:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-7.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor 'E58830201F7DD82CD808AA84160D26BB1785BA38' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 02 Oct 2026 01:31:40 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 01:31:40 GMT
ARG MONGO_PACKAGE=mongodb-org
# Fri, 02 Oct 2026 01:31:40 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 02 Oct 2026 01:31:40 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Fri, 02 Oct 2026 01:31:40 GMT
ENV MONGO_MAJOR=7.0
# Fri, 02 Oct 2026 01:31:40 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu jammy/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Fri, 02 Oct 2026 01:31:40 GMT
ENV MONGO_VERSION=7.0.43
# Fri, 02 Oct 2026 01:32:03 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Fri, 02 Oct 2026 01:32:03 GMT
VOLUME [/data/db /data/configdb]
# Fri, 02 Oct 2026 01:32:03 GMT
ENV HOME=/data/db
# Fri, 02 Oct 2026 01:32:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:32:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Oct 2026 01:32:03 GMT
EXPOSE map[27017/tcp:{}]
# Fri, 02 Oct 2026 01:32:03 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63adeca040dd5336bbcc0b8e6ed24cc4ab46a9f93a91fffed87311d30c3653ff`  
		Last Modified: Fri, 02 Oct 2026 01:32:33 GMT  
		Size: 1.8 KB (1780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3ac329e040937096497dba3937c3bc461dad5de8914401f4121a4bb82f8936f`  
		Last Modified: Fri, 02 Oct 2026 01:32:33 GMT  
		Size: 1.4 MB (1439289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb4b253adc308e6d2df8a0f4dc4c05290c5f6fd0bdbe814314a054bd4243839d`  
		Last Modified: Fri, 02 Oct 2026 01:32:33 GMT  
		Size: 851.1 KB (851064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5799efc0b14b3322fc071c988fa1ad771f120279075991823e4c9daffa01dd59`  
		Last Modified: Fri, 02 Oct 2026 01:32:33 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de9f035e07d30b5a9763f85a1dfbdb4401c1713bd83e820f3c888d8e4805c198`  
		Last Modified: Fri, 02 Oct 2026 01:32:34 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f2d22f8fe3631b32d1b2aee54675817084c7243521fcbd44ee5320e54e52848`  
		Last Modified: Fri, 02 Oct 2026 01:32:40 GMT  
		Size: 253.5 MB (253495267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5fe42c5c0afaefc7ee82154833572d0d53fb88220ddb16dc251a7abcc38b233`  
		Last Modified: Fri, 02 Oct 2026 01:32:34 GMT  
		Size: 5.0 KB (5001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:7-jammy` - unknown; unknown

```console
$ docker pull mongo@sha256:613f130189989dd0957695138aff5d184a97588c76f9bd0c69c180b63acd2250
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3232114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce41cd117964e589e584e6db7765203409a766dbf3fe7cae15e18a2a970ccae0`

```dockerfile
```

-	Layers:
	-	`sha256:76d1bec71c3fcd0158f77311bce6a6174539aacccf9bbd952bb4512c4dc9fdaa`  
		Last Modified: Fri, 02 Oct 2026 01:32:33 GMT  
		Size: 3.2 MB (3204024 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c9ae2e92825b8e92ec8b570dfc02f2c212354a21da74928621173fa74fd2f722`  
		Last Modified: Fri, 02 Oct 2026 01:32:33 GMT  
		Size: 28.1 KB (28090 bytes)  
		MIME: application/vnd.in-toto+json
