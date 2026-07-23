## `mongo:noble`

```console
$ docker pull mongo@sha256:dc23b0dde2221277b581dd76933f39f8a765fee9dbd99b9deb19184c063c061f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mongo:noble` - linux; amd64

```console
$ docker pull mongo@sha256:41afd6e1183f57e4e4d03ab733070671fca8553da2b36f15d6e3fc9760494d17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.7 MB (336700841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:654cf3b1ec383d27091c0a8444f63afec4e7b5e40bd5e1052485449d7d62a633`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 22:12:50 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Wed, 22 Jul 2026 22:12:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 22:13:03 GMT
ENV GOSU_VERSION=1.19
# Wed, 22 Jul 2026 22:13:03 GMT
ENV JSYAML_VERSION=3.13.1
# Wed, 22 Jul 2026 22:13:03 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Wed, 22 Jul 2026 22:13:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-8.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor '4B0752C1BCA238C0B4EE14DC41DE058A4E7DCA05' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 22 Jul 2026 22:13:03 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 22 Jul 2026 22:13:03 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 22 Jul 2026 22:13:03 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 22 Jul 2026 22:13:03 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 22 Jul 2026 22:13:03 GMT
ENV MONGO_MAJOR=8.2
# Wed, 22 Jul 2026 22:13:03 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu noble/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Wed, 22 Jul 2026 22:13:03 GMT
ENV MONGO_VERSION=8.2.12
# Wed, 22 Jul 2026 22:13:21 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Wed, 22 Jul 2026 22:13:21 GMT
VOLUME [/data/db /data/configdb]
# Wed, 22 Jul 2026 22:13:21 GMT
ENV HOME=/data/db
# Wed, 22 Jul 2026 22:13:21 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Wed, 22 Jul 2026 22:13:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 22 Jul 2026 22:13:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 22 Jul 2026 22:13:21 GMT
EXPOSE map[27017/tcp:{}]
# Wed, 22 Jul 2026 22:13:21 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3a92d6db844752e7acd7ab20f96079805bf6680cfb8fc7158e867d7351a3e0f`  
		Last Modified: Wed, 22 Jul 2026 22:13:56 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be8bd401cb7759d7eca42b5e8ce8c277a4c8b36e7c06c6ee867af34c1b481283`  
		Last Modified: Wed, 22 Jul 2026 22:13:56 GMT  
		Size: 1.5 MB (1470566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ece2966105df0229edd54f77550eae6bb5cf3a65a83ec50b58c2bbf33d661474`  
		Last Modified: Wed, 22 Jul 2026 22:13:56 GMT  
		Size: 933.9 KB (933910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21ac84f9ca5c152b196a283741fa21450311e35b06574056bfb38be426042b6b`  
		Last Modified: Wed, 22 Jul 2026 22:13:56 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd73b7dff09c5b7a26b2264002f032ea532086eb54c9780376c7d4eb040fac13`  
		Last Modified: Wed, 22 Jul 2026 22:13:57 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5288e6265f37aff69a234750f442fff2dfc55ab12b0ec90f092b1e83191ee9e`  
		Last Modified: Wed, 22 Jul 2026 22:14:03 GMT  
		Size: 304.6 MB (304554166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7dcacb0816f81a31e16c9b4231007c8c1c064ff2bf45a75c661ecc18749c3b0`  
		Last Modified: Wed, 22 Jul 2026 22:13:57 GMT  
		Size: 5.0 KB (5002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:noble` - unknown; unknown

```console
$ docker pull mongo@sha256:2075a39f6d5b881a3341bdaa92a3ba072aee57ca92b0f9199c105f63f631c17b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2672948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de51d7ff6869066ad09476a39067a18d5ad6455b3907920bab61ff6d67f8c55b`

```dockerfile
```

-	Layers:
	-	`sha256:a4c7e52d1052dc105f5db405e0ab2a6330014ac4d25025f3f68368a792702817`  
		Last Modified: Wed, 22 Jul 2026 22:13:56 GMT  
		Size: 2.6 MB (2644207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1872e150d3c490e8a726a64352ce6798865148935a0c2eda7ce3f0491fc1e9b6`  
		Last Modified: Wed, 22 Jul 2026 22:13:56 GMT  
		Size: 28.7 KB (28741 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:noble` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:21ca0269db1ebbd1c59f5cbc04928d7e3f6ab6186d7ceafc8fa489c0486525b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.3 MB (321339428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1f5c772d94ecc42587e1c90b192124329273ce609b3f6a1915185f1bc00982d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 22:12:23 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Wed, 22 Jul 2026 22:12:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 22:12:39 GMT
ENV GOSU_VERSION=1.19
# Wed, 22 Jul 2026 22:12:39 GMT
ENV JSYAML_VERSION=3.13.1
# Wed, 22 Jul 2026 22:12:39 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Wed, 22 Jul 2026 22:12:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-8.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor '4B0752C1BCA238C0B4EE14DC41DE058A4E7DCA05' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 22 Jul 2026 22:12:39 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 22 Jul 2026 22:12:39 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 22 Jul 2026 22:12:39 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 22 Jul 2026 22:12:39 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 22 Jul 2026 22:12:39 GMT
ENV MONGO_MAJOR=8.2
# Wed, 22 Jul 2026 22:12:39 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu noble/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Wed, 22 Jul 2026 22:12:39 GMT
ENV MONGO_VERSION=8.2.12
# Wed, 22 Jul 2026 22:13:04 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Wed, 22 Jul 2026 22:13:04 GMT
VOLUME [/data/db /data/configdb]
# Wed, 22 Jul 2026 22:13:04 GMT
ENV HOME=/data/db
# Wed, 22 Jul 2026 22:13:04 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Wed, 22 Jul 2026 22:13:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 22 Jul 2026 22:13:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 22 Jul 2026 22:13:04 GMT
EXPOSE map[27017/tcp:{}]
# Wed, 22 Jul 2026 22:13:04 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a5c42880683c65b530c3991a9b7132139a43711f7b8730d3bba97b904b51a9f`  
		Last Modified: Wed, 22 Jul 2026 22:13:38 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f63c3d3f0acab5aa634f93e3ee90c0523f4b15dc197b13d4122983dd2506be4d`  
		Last Modified: Wed, 22 Jul 2026 22:13:38 GMT  
		Size: 1.5 MB (1451601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd1bcfc1f2cd58ec45cea45ed154912cbd0e2a136280e249d0cb827a7f81e4df`  
		Last Modified: Wed, 22 Jul 2026 22:13:38 GMT  
		Size: 886.1 KB (886134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68513c7222d101bb095e5ab8f00b5301de4a08a04c8a1bdfde0e6b8c40c57c8e`  
		Last Modified: Wed, 22 Jul 2026 22:13:38 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:838beff7af47d6f7e0c1c9fbf9a4ca3c537ac8fd6a6ed6e09734526995bfd09b`  
		Last Modified: Wed, 22 Jul 2026 22:13:39 GMT  
		Size: 265.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0263a1d8c9852bce12f2183dc58e9ac1646f5d959223d7cdc398bafb45b1822`  
		Last Modified: Wed, 22 Jul 2026 22:13:45 GMT  
		Size: 290.1 MB (290110910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65a169ff61044693c892497846c9378ca6f167d1d5203b05f83198c8a2347c31`  
		Last Modified: Wed, 22 Jul 2026 22:13:39 GMT  
		Size: 5.0 KB (5005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:noble` - unknown; unknown

```console
$ docker pull mongo@sha256:f1eb8ff81d5479472ef071bc795542be7af735c66d7b739e0da212d368c15869
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2674311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05f753072a735f7f014c64d1f34f0334a97e1717b31e4e57fa4dcfa4f5e7b4fc`

```dockerfile
```

-	Layers:
	-	`sha256:a1dae7c14176a46b6d4cf8bd7fd459e48af59ac93ac8831c1f212c2b1d64b808`  
		Last Modified: Wed, 22 Jul 2026 22:13:38 GMT  
		Size: 2.6 MB (2645343 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b2eef83d6e8e32baf12aed41d486d0f6e37d7ea041e6c63a95cd3fee4070d688`  
		Last Modified: Wed, 22 Jul 2026 22:13:38 GMT  
		Size: 29.0 KB (28968 bytes)  
		MIME: application/vnd.in-toto+json
