## `mongo:7-jammy`

```console
$ docker pull mongo@sha256:7fba8c37d681a79f22a85d2b06bd5ed121a7973c0a6ca20ed4887bb0a1548ce0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mongo:7-jammy` - linux; amd64

```console
$ docker pull mongo@sha256:6dad6a5e2addb71d84eb417fcbcba0e11d096669917f8e8c26607cd7b52f9495
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.7 MB (296707342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72404c1083af5306608b7487184154a199b7d183f4ef250339f3c1a0b72e2523`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:32:29 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Sat, 17 Oct 2026 00:32:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:32:52 GMT
ENV GOSU_VERSION=1.19
# Sat, 17 Oct 2026 00:32:52 GMT
ENV JSYAML_VERSION=3.13.1
# Sat, 17 Oct 2026 00:32:52 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Sat, 17 Oct 2026 00:32:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-7.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor 'E58830201F7DD82CD808AA84160D26BB1785BA38' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 17 Oct 2026 00:32:52 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 17 Oct 2026 00:32:52 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 17 Oct 2026 00:32:52 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 17 Oct 2026 00:32:52 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 17 Oct 2026 00:32:52 GMT
ENV MONGO_MAJOR=7.0
# Sat, 17 Oct 2026 00:32:52 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu jammy/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Sat, 17 Oct 2026 00:32:52 GMT
ENV MONGO_VERSION=7.0.45
# Sat, 17 Oct 2026 00:33:15 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Sat, 17 Oct 2026 00:33:15 GMT
VOLUME [/data/db /data/configdb]
# Sat, 17 Oct 2026 00:33:15 GMT
ENV HOME=/data/db
# Sat, 17 Oct 2026 00:33:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 17 Oct 2026 00:33:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Oct 2026 00:33:15 GMT
EXPOSE map[27017/tcp:{}]
# Sat, 17 Oct 2026 00:33:15 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca0f09f093bd52800fedefdc29b1095b9da8685baefe7e3aaa946e5df7c63d1e`  
		Last Modified: Sat, 17 Oct 2026 00:33:48 GMT  
		Size: 1.8 KB (1787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e3619dee48f686ea0ab403840515586693fb5d6839fe89e9cf220004bb10e74`  
		Last Modified: Sat, 17 Oct 2026 00:33:49 GMT  
		Size: 1.5 MB (1473203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b8d2545e83d13b290d81b102e33b6f0a97641ac5fcc1b3d56de06979cc53ccc`  
		Last Modified: Sat, 17 Oct 2026 00:33:49 GMT  
		Size: 898.8 KB (898758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e982937421ba9b5c7f9d73ff6687027204f1a7521e40fefcae627013513200b`  
		Last Modified: Sat, 17 Oct 2026 00:33:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7699bccdf0aea740bedc6a7bb4354080dea3d9e65c5475d5f3317c2848bbf421`  
		Last Modified: Sat, 17 Oct 2026 00:33:50 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05fe25a67949f43da937a50f6407c8d18e3efd22671afbe142a5c5e21e330485`  
		Last Modified: Sat, 17 Oct 2026 00:33:55 GMT  
		Size: 264.6 MB (264575734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6acc432d653a5015c5f3583a09d34e13ac1e4df04b75be178eb9df5871287ba5`  
		Last Modified: Sat, 17 Oct 2026 00:33:50 GMT  
		Size: 5.0 KB (5005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:7-jammy` - unknown; unknown

```console
$ docker pull mongo@sha256:3786a9956dcd587cb70b2b34e10d472897b2f922d8e72b5ae1813d97fc79050e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3229689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4c001bdbdc754e98f25d60b3ef90eebb4c26fc2b127491349ce10514c8d6303`

```dockerfile
```

-	Layers:
	-	`sha256:c466ef55e1a82c70657b3d09924ef3e829ad3a95c9c92e8a75476b02fdbf3eca`  
		Last Modified: Sat, 17 Oct 2026 00:33:49 GMT  
		Size: 3.2 MB (3201802 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f4b44dda78c078776011545c484c072de0ae2f79617cd72404f85382a5cc680`  
		Last Modified: Sat, 17 Oct 2026 00:33:48 GMT  
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
