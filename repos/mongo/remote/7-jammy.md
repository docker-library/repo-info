## `mongo:7-jammy`

```console
$ docker pull mongo@sha256:a54d9f915e1dafd2ac9b4865df8abdaa976b0814fb8e18a9a2a36cad9c8fc1f1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mongo:7-jammy` - linux; amd64

```console
$ docker pull mongo@sha256:3ed89b6952a7220fa06ff43d1b8af93ab069461461844fef7279b7465e44238c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.7 MB (296704284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1574608720ee095c98916aa9b19d319c297ad21aa92a41c4a3b8875128900bf`
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
# Tue, 13 Oct 2026 21:13:15 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 13 Oct 2026 21:13:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 21:13:36 GMT
ENV GOSU_VERSION=1.19
# Tue, 13 Oct 2026 21:13:36 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 13 Oct 2026 21:13:36 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 13 Oct 2026 21:13:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-7.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor 'E58830201F7DD82CD808AA84160D26BB1785BA38' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 13 Oct 2026 21:13:36 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 13 Oct 2026 21:13:36 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 13 Oct 2026 21:13:36 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 13 Oct 2026 21:13:36 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 13 Oct 2026 21:13:36 GMT
ENV MONGO_MAJOR=7.0
# Tue, 13 Oct 2026 21:13:36 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu jammy/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 13 Oct 2026 21:13:36 GMT
ENV MONGO_VERSION=7.0.45
# Tue, 13 Oct 2026 21:13:58 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 13 Oct 2026 21:13:58 GMT
VOLUME [/data/db /data/configdb]
# Tue, 13 Oct 2026 21:13:58 GMT
ENV HOME=/data/db
# Tue, 13 Oct 2026 21:13:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 13 Oct 2026 21:13:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Oct 2026 21:13:58 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 13 Oct 2026 21:13:58 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46af4c3054ba9491fcdbcca3a760a12a5966f537f5d9ee1d378ce14a83bdb768`  
		Last Modified: Tue, 13 Oct 2026 21:14:32 GMT  
		Size: 1.8 KB (1780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3dcc4941f997f7ab7c749803ac7a8e6ada40f9e4e7d2ea6f426193325cfa920`  
		Last Modified: Tue, 13 Oct 2026 21:14:32 GMT  
		Size: 1.5 MB (1473219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c0138ea263eabe2f82e7eb886f73a277c691b2cb0384782be2096e535742e0b`  
		Last Modified: Tue, 13 Oct 2026 21:14:32 GMT  
		Size: 898.8 KB (898770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dc6b9caf536c6506d464106311bc35af21fe8b58e5c9f6d4e278ea3da983e15`  
		Last Modified: Tue, 13 Oct 2026 21:14:32 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba0b63346eaf9b4dc4d43c4dfede173e694aaf8fe1c7b10e92ed60bd213ce2b`  
		Last Modified: Tue, 13 Oct 2026 21:14:33 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98c170cf6a3a196a1603c95437ee5c68db024b7eeae04a2efe21f50d47c14a04`  
		Last Modified: Tue, 13 Oct 2026 21:14:38 GMT  
		Size: 264.6 MB (264573506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59aedc95ff65a1979dd660f251dcc219b32d6a2573faf3460b4869fe2fc4e70c`  
		Last Modified: Tue, 13 Oct 2026 21:14:33 GMT  
		Size: 5.0 KB (5005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:7-jammy` - unknown; unknown

```console
$ docker pull mongo@sha256:fa5f5a348df63459eda67b9ea7de0d0c416e51d896d4c7dbf96ed8d40d7bb361
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3231592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:205f7cd3a4834cd288e8c38312dd14bd450647bf59d8d8e00576a60f99540f74`

```dockerfile
```

-	Layers:
	-	`sha256:c98997e2eec0de132121098bb7f3e34eb019cb883817a1400542eaff93678045`  
		Last Modified: Tue, 13 Oct 2026 21:14:32 GMT  
		Size: 3.2 MB (3203705 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d72c2dfaa0265eb21df02cfcf492d0d49730d68cd4078c2892e9496a50f6c0c`  
		Last Modified: Tue, 13 Oct 2026 21:14:32 GMT  
		Size: 27.9 KB (27887 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:7-jammy` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:6128e405456dfe502c06fdc1541d70c1a5a416db30dec473dbb2d670b707dec9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.5 MB (283494366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:703d4f099ab7162e46acfe120caca4db58d43c9a620c97314013caedbeb9fb86`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:32:15 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Sat, 17 Oct 2026 00:32:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:32:39 GMT
ENV GOSU_VERSION=1.19
# Sat, 17 Oct 2026 00:32:39 GMT
ENV JSYAML_VERSION=3.13.1
# Sat, 17 Oct 2026 00:32:39 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Sat, 17 Oct 2026 00:32:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-7.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor 'E58830201F7DD82CD808AA84160D26BB1785BA38' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 17 Oct 2026 00:32:40 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 17 Oct 2026 00:32:40 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 17 Oct 2026 00:32:40 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 17 Oct 2026 00:32:40 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 17 Oct 2026 00:32:40 GMT
ENV MONGO_MAJOR=7.0
# Sat, 17 Oct 2026 00:32:40 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu jammy/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Sat, 17 Oct 2026 00:32:40 GMT
ENV MONGO_VERSION=7.0.45
# Sat, 17 Oct 2026 00:33:00 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Sat, 17 Oct 2026 00:33:00 GMT
VOLUME [/data/db /data/configdb]
# Sat, 17 Oct 2026 00:33:00 GMT
ENV HOME=/data/db
# Sat, 17 Oct 2026 00:33:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 17 Oct 2026 00:33:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Oct 2026 00:33:00 GMT
EXPOSE map[27017/tcp:{}]
# Sat, 17 Oct 2026 00:33:00 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a5a8e1d5bdbe3413fc603a437d1c8b7afc7850a1d86a0665f2ca47df556590f`  
		Last Modified: Sat, 17 Oct 2026 00:33:30 GMT  
		Size: 1.8 KB (1789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4545064cbbe9b6c602aed0c4d617a679d035262ceaec760cfa10ae888a75ff75`  
		Last Modified: Sat, 17 Oct 2026 00:33:30 GMT  
		Size: 1.4 MB (1439394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cd660d5a085ce460f7264d5510d5fcd49eb758e5408b0f1e24b1b451c384506`  
		Last Modified: Sat, 17 Oct 2026 00:33:30 GMT  
		Size: 851.1 KB (851115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abdf287c964910fc0acb08abb6d8aa4da787722ce6cf415af0bb2ac2a3ef4293`  
		Last Modified: Sat, 17 Oct 2026 00:33:30 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87675f37a789b62bc73ccff921197f986dd8d3afd609d5472abb39a0ddfc7c83`  
		Last Modified: Sat, 17 Oct 2026 00:33:32 GMT  
		Size: 267.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d628b20e5c6f86424d8c014bdaab2fa1fb427dcd66398cc9224e25689f6ce60`  
		Last Modified: Sat, 17 Oct 2026 00:33:37 GMT  
		Size: 253.5 MB (253511959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe7c67a05d02de3d49d3e7725982d5843789c2a80495937574d6e61be004c323`  
		Last Modified: Sat, 17 Oct 2026 00:33:32 GMT  
		Size: 5.0 KB (5003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:7-jammy` - unknown; unknown

```console
$ docker pull mongo@sha256:5ab1d02dba56c7c05229232352f7020798be07cdf83ea829f1bd885b25764766
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3230211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e21555444f6f77ab50b789964bbce03920f3c43aa65c8aac928f532467e5d5c`

```dockerfile
```

-	Layers:
	-	`sha256:a1831ba2b5597c4658f7667e5df59469861390c2cfada48ee29c0b0323ee3f5c`  
		Last Modified: Sat, 17 Oct 2026 00:33:30 GMT  
		Size: 3.2 MB (3202121 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04808ebaa23de05e54bb29ca0e2d6779edfa4ea57e55da0bf42e5af0c7d1c718`  
		Last Modified: Sat, 17 Oct 2026 00:33:30 GMT  
		Size: 28.1 KB (28090 bytes)  
		MIME: application/vnd.in-toto+json
