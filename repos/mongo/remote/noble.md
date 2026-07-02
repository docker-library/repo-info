## `mongo:noble`

```console
$ docker pull mongo@sha256:b82ec70f8cdba87a770cf37bd0c84536ce13ad9387bad2f822283af5c9c4767a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mongo:noble` - linux; amd64

```console
$ docker pull mongo@sha256:3809fdcebf634552847a68bfed1927652cfb0e97ece23d94d7b57867de243464
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.5 MB (336512096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:683091d0bbbf441601d528324802f42ca711bfe764060b0e3a492d0f1441fdbb`
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
# Thu, 02 Jul 2026 02:30:44 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Thu, 02 Jul 2026 02:30:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:30:59 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 02:30:59 GMT
ENV JSYAML_VERSION=3.13.1
# Thu, 02 Jul 2026 02:30:59 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Thu, 02 Jul 2026 02:30:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-8.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor '4B0752C1BCA238C0B4EE14DC41DE058A4E7DCA05' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 02:31:00 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:31:00 GMT
ARG MONGO_PACKAGE=mongodb-org
# Thu, 02 Jul 2026 02:31:00 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 02 Jul 2026 02:31:00 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Thu, 02 Jul 2026 02:31:00 GMT
ENV MONGO_MAJOR=8.2
# Thu, 02 Jul 2026 02:31:00 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu noble/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Thu, 02 Jul 2026 02:31:00 GMT
ENV MONGO_VERSION=8.2.11
# Thu, 02 Jul 2026 02:31:17 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Thu, 02 Jul 2026 02:31:17 GMT
VOLUME [/data/db /data/configdb]
# Thu, 02 Jul 2026 02:31:17 GMT
ENV HOME=/data/db
# Thu, 02 Jul 2026 02:31:17 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Thu, 02 Jul 2026 02:31:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 02:31:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 02:31:17 GMT
EXPOSE map[27017/tcp:{}]
# Thu, 02 Jul 2026 02:31:17 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2a132d8e30245713e4a8ea6da89ddd58459b34bca6c90c8256ad70005a40b97`  
		Last Modified: Thu, 02 Jul 2026 02:31:55 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d60daeb7b51e76d13228442c1cfe84e87ec35b8e0d4bc1bed3010311b98fba66`  
		Last Modified: Thu, 02 Jul 2026 02:31:55 GMT  
		Size: 1.5 MB (1470592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3647363b6a0464eb56d2ffc6e3249094a0dd718f188705313ce90a707b4f77d6`  
		Last Modified: Thu, 02 Jul 2026 02:31:55 GMT  
		Size: 933.9 KB (933892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:690606b575e442568140fd9988ab40c5b34af8af1fc2fb947c6c7d738f4d80aa`  
		Last Modified: Thu, 02 Jul 2026 02:31:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:664e5a5a54027652e0322ad6a070a4e9d84149f68836e0ea978558177192df9a`  
		Last Modified: Thu, 02 Jul 2026 02:31:56 GMT  
		Size: 267.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31e270117e3bce4fad159c9f74a17515906077eb89bb6fed5a961dd346f9d416`  
		Last Modified: Thu, 02 Jul 2026 02:32:02 GMT  
		Size: 304.4 MB (304365406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a81e773c224c5b4b15975ad4acf02b84f88905d22f12daf343592bcfa901b744`  
		Last Modified: Thu, 02 Jul 2026 02:31:56 GMT  
		Size: 5.0 KB (5005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:noble` - unknown; unknown

```console
$ docker pull mongo@sha256:b764dd1433e869a5298983f0ca055d045cb289d864f0d205ff0e6bf953edc3ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2672948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71e52f517497d9665ea920e2ab73091071cde922dc67795b188e0378322402bb`

```dockerfile
```

-	Layers:
	-	`sha256:669abace3f59161c459eadd22d277ff7f20519115b3dd54a5e565ce99e1662fb`  
		Last Modified: Thu, 02 Jul 2026 02:31:55 GMT  
		Size: 2.6 MB (2644207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ead80752d94a3879ae0527f4e937e0389723686bf91703ea2983a17ed30d9993`  
		Last Modified: Thu, 02 Jul 2026 02:31:55 GMT  
		Size: 28.7 KB (28741 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:noble` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:e640caae79f590303952dd18b91a0690377e784e332508c0f7adbf188a7169d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.2 MB (321165321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e373807d6ac3ab62a12e07bc0d57b6461ecedc292620613efa330d3c1558ed6`
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
# Thu, 02 Jul 2026 02:29:50 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Thu, 02 Jul 2026 02:29:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:30:04 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 02:30:04 GMT
ENV JSYAML_VERSION=3.13.1
# Thu, 02 Jul 2026 02:30:04 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Thu, 02 Jul 2026 02:30:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-8.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor '4B0752C1BCA238C0B4EE14DC41DE058A4E7DCA05' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 02:30:04 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:30:04 GMT
ARG MONGO_PACKAGE=mongodb-org
# Thu, 02 Jul 2026 02:30:04 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 02 Jul 2026 02:30:04 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Thu, 02 Jul 2026 02:30:04 GMT
ENV MONGO_MAJOR=8.2
# Thu, 02 Jul 2026 02:30:04 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu noble/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Thu, 02 Jul 2026 02:30:04 GMT
ENV MONGO_VERSION=8.2.11
# Thu, 02 Jul 2026 02:30:31 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Thu, 02 Jul 2026 02:30:31 GMT
VOLUME [/data/db /data/configdb]
# Thu, 02 Jul 2026 02:30:31 GMT
ENV HOME=/data/db
# Thu, 02 Jul 2026 02:30:31 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Thu, 02 Jul 2026 02:30:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 02:30:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 02:30:31 GMT
EXPOSE map[27017/tcp:{}]
# Thu, 02 Jul 2026 02:30:31 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c436f59d4c3a0300d5376c56b2fc906fb51d00061e50fe0c75edee77eb99586c`  
		Last Modified: Thu, 02 Jul 2026 02:31:04 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b064158874410af1a3944195a7d6264d307e3030222b814c0b255d0bd5b6156f`  
		Last Modified: Thu, 02 Jul 2026 02:31:05 GMT  
		Size: 1.5 MB (1451612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77cbbe75df75ddbf7a2ef884469a93159001cf53a2ab054ae0b0c04fcc362113`  
		Last Modified: Thu, 02 Jul 2026 02:31:04 GMT  
		Size: 886.1 KB (886109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c066a2ac613c4e58082ad5c870b30d629be351aa4e934d9977a8fef35e95705a`  
		Last Modified: Thu, 02 Jul 2026 02:31:04 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e60d0af3880ab53d88cabbb93cd879b73683dfc5f937310186d5fed35c966aa6`  
		Last Modified: Thu, 02 Jul 2026 02:31:06 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2149023d94961ef42fe43b5b69c2b6346f31e951aa7ad964f1dfa4ad065d7532`  
		Last Modified: Thu, 02 Jul 2026 02:31:12 GMT  
		Size: 289.9 MB (289936820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c695335391004226d24a9f5710ea7233f82224a32069efbad5f28c216b900d19`  
		Last Modified: Thu, 02 Jul 2026 02:31:06 GMT  
		Size: 5.0 KB (5004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:noble` - unknown; unknown

```console
$ docker pull mongo@sha256:efc15d9a1086cab37050821b8b6916ea184dd17749d94de316ff14e2b7c9f684
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2674311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f87d253eef1d7b0c432ecc03ce40dc42324c8f8f5f76decfa06c35f4f10dcdd`

```dockerfile
```

-	Layers:
	-	`sha256:f8f0a48dee9d2774181dc9729546ab94a25df86844c905c583e10c14ebefa057`  
		Last Modified: Thu, 02 Jul 2026 02:31:05 GMT  
		Size: 2.6 MB (2645343 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b13a4efa6b3330e7ca0d395f917259e0ffbfa4954f8def6657a7376f0363bf5c`  
		Last Modified: Thu, 02 Jul 2026 02:31:05 GMT  
		Size: 29.0 KB (28968 bytes)  
		MIME: application/vnd.in-toto+json
