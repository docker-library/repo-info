## `mongo:8-noble`

```console
$ docker pull mongo@sha256:02eb14a1130c6d060847c4169eccd4d79d9f172a584da7aea8f160c492537b02
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mongo:8-noble` - linux; amd64

```console
$ docker pull mongo@sha256:949d53a1e0f0f26c8545a9c589474b0ba3be4ca9209c89713c684078665d78d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.9 MB (299851313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d9c509681d8a8683928a6ebb2029b77e931db6983878765ea8a3971e57142e6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:25:50 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Wed, 16 Sep 2026 03:25:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:26:12 GMT
ENV GOSU_VERSION=1.19
# Wed, 16 Sep 2026 03:26:12 GMT
ENV JSYAML_VERSION=3.13.1
# Wed, 16 Sep 2026 03:26:12 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Wed, 16 Sep 2026 03:26:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-8.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor '4B0752C1BCA238C0B4EE14DC41DE058A4E7DCA05' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 16 Sep 2026 03:26:12 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 16 Sep 2026 03:26:12 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 16 Sep 2026 03:26:12 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 16 Sep 2026 03:26:12 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 16 Sep 2026 03:26:12 GMT
ENV MONGO_MAJOR=8.3
# Wed, 16 Sep 2026 03:26:12 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu noble/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Wed, 16 Sep 2026 03:26:12 GMT
ENV MONGO_VERSION=8.3.11
# Wed, 16 Sep 2026 03:26:33 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Wed, 16 Sep 2026 03:26:33 GMT
VOLUME [/data/db /data/configdb]
# Wed, 16 Sep 2026 03:26:33 GMT
ENV HOME=/data/db
# Wed, 16 Sep 2026 03:26:33 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Wed, 16 Sep 2026 03:26:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 03:26:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Sep 2026 03:26:33 GMT
EXPOSE map[27017/tcp:{}]
# Wed, 16 Sep 2026 03:26:33 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:452c7dd3efc21bd06a75fcf8e40b5fc9b47f711920106b8623b21caf96c48cb6`  
		Last Modified: Wed, 16 Sep 2026 03:27:07 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:629b21fcd7ff1aa66eaea22bd441520ab367813c45a2ac4b565bc8526d1dabf4`  
		Last Modified: Wed, 16 Sep 2026 03:27:07 GMT  
		Size: 1.5 MB (1470873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6924226aa25f9608b25c55ac53b18436b0e979a823c875e7eafdf33ed8bfc096`  
		Last Modified: Wed, 16 Sep 2026 03:27:06 GMT  
		Size: 934.2 KB (934244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfc8c140f3367d8e651bcfcaa6ce85a1d40b276df77f354faa16a578e79e2304`  
		Last Modified: Wed, 16 Sep 2026 03:27:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbd0b49c84d6e67edffc65f6fe89221fa630e0dcd1a2b3bc8c290cb676ae5f0b`  
		Last Modified: Wed, 16 Sep 2026 03:27:08 GMT  
		Size: 265.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d05cf6da107efee6dd35c0d89b0798f05a32654a4415aeec106419a01ae56c32`  
		Last Modified: Wed, 16 Sep 2026 03:27:13 GMT  
		Size: 267.7 MB (267675479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00c2e14425982fe033f10e4a027fc5a1c6b2a7fa061ae625081acb0ddeefa570`  
		Last Modified: Wed, 16 Sep 2026 03:27:08 GMT  
		Size: 5.0 KB (5004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:8-noble` - unknown; unknown

```console
$ docker pull mongo@sha256:dfa30dd250ed3adc92063f24cbd32816ef6235bae8c3d12fa9eee6de36de9973
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2675591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02f682a79d5faacd11e1e1feab7a21c4476a3e31147b3dc3b94589bbc41b1fa9`

```dockerfile
```

-	Layers:
	-	`sha256:d795988cb81724e748a9008351f723a799bdedeeb796c598809d4c89c5f4b401`  
		Last Modified: Wed, 16 Sep 2026 03:27:07 GMT  
		Size: 2.6 MB (2646850 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0839c978e1a1161cb21bcf78166d8bd85253c6478e1e2a4219905eae01b25210`  
		Last Modified: Wed, 16 Sep 2026 03:27:06 GMT  
		Size: 28.7 KB (28741 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:8-noble` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:b9355ea0db081f2b10dd6274fa1a176146bdd3c8a4f39346b494bb8138b6aca5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.9 MB (286885209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b5f5ad9066dcc78ada8bc2a204f6e03a7ce927c46ca4d03587079386cd23199`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:25:18 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Wed, 16 Sep 2026 03:25:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:25:38 GMT
ENV GOSU_VERSION=1.19
# Wed, 16 Sep 2026 03:25:38 GMT
ENV JSYAML_VERSION=3.13.1
# Wed, 16 Sep 2026 03:25:38 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Wed, 16 Sep 2026 03:25:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-8.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor '4B0752C1BCA238C0B4EE14DC41DE058A4E7DCA05' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 16 Sep 2026 03:25:39 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 16 Sep 2026 03:25:39 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 16 Sep 2026 03:25:39 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 16 Sep 2026 03:25:39 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 16 Sep 2026 03:25:39 GMT
ENV MONGO_MAJOR=8.3
# Wed, 16 Sep 2026 03:25:39 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu noble/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Wed, 16 Sep 2026 03:25:39 GMT
ENV MONGO_VERSION=8.3.11
# Wed, 16 Sep 2026 03:25:59 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Wed, 16 Sep 2026 03:25:59 GMT
VOLUME [/data/db /data/configdb]
# Wed, 16 Sep 2026 03:25:59 GMT
ENV HOME=/data/db
# Wed, 16 Sep 2026 03:25:59 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Wed, 16 Sep 2026 03:25:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 03:25:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Sep 2026 03:25:59 GMT
EXPOSE map[27017/tcp:{}]
# Wed, 16 Sep 2026 03:25:59 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:448c9eb42c8a9aa7a88b856909ffa2c5112286cb3c327fa10310cdda315ac1fe`  
		Last Modified: Wed, 16 Sep 2026 03:26:30 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67e0708b3bf6200f06e2f42ac6a67aa7306586ba900ad07e874451525c582945`  
		Last Modified: Wed, 16 Sep 2026 03:26:30 GMT  
		Size: 1.5 MB (1451879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5ed40fc033e13f40d261377a27d06cf3798e90f62601b9961372a408d98a63b`  
		Last Modified: Wed, 16 Sep 2026 03:26:30 GMT  
		Size: 886.4 KB (886438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cd9bcce2ff7cf4357bcf86004556290abb745552a58ec57b8f9f62efddf9cdc`  
		Last Modified: Wed, 16 Sep 2026 03:26:30 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f2ad2b2743e05882f021e1dc839f6a41c942f0756557fcafc99360b26bd9b80`  
		Last Modified: Wed, 16 Sep 2026 03:26:31 GMT  
		Size: 266.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1720ea38a700019477d2df257f1a481923272e48533ece0ebe957552fb62f54f`  
		Last Modified: Wed, 16 Sep 2026 03:26:36 GMT  
		Size: 255.6 MB (255598715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f254ad1871138ecbff53a6420a757a75b6e4ce5d74890ff27d2de510aeccd9f1`  
		Last Modified: Wed, 16 Sep 2026 03:26:31 GMT  
		Size: 5.0 KB (4999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:8-noble` - unknown; unknown

```console
$ docker pull mongo@sha256:7c6cc5aae4b5b0190fc477b81bc8be3b02a26a1b2b968c0cd73ad3ce89e37768
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2676954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b7b4d4a2379366988b9cadca4b51eacc44bd49b0709edd624d956d9e4593d75`

```dockerfile
```

-	Layers:
	-	`sha256:c7c68620c822cba74428980fd2b2e8569c974a10e05b1bc4a498d7a1655e4854`  
		Last Modified: Wed, 16 Sep 2026 03:26:30 GMT  
		Size: 2.6 MB (2647986 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:152dd35d836718cebf2dacaf5d88988505fb4c386aefc28ab3ad816e884ba486`  
		Last Modified: Wed, 16 Sep 2026 03:26:30 GMT  
		Size: 29.0 KB (28968 bytes)  
		MIME: application/vnd.in-toto+json
