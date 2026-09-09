## `mongo:8-noble`

```console
$ docker pull mongo@sha256:9db65a1f2d3ff043938caed9f9bd619195a40acaf1dea03888482ab7a1ae474f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mongo:8-noble` - linux; amd64

```console
$ docker pull mongo@sha256:d1494721242c1bcd52801963207efc400279e26a2265ac3fd9fc1a2b2a2a39e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.7 MB (302698543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a3f808ed44f57ce929d27b1944280f79dd9a837e305b58de0771eea33120c91`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 21:47:47 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 08 Sep 2026 21:47:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 21:48:09 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 21:48:09 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 08 Sep 2026 21:48:09 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 08 Sep 2026 21:48:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-8.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor '4B0752C1BCA238C0B4EE14DC41DE058A4E7DCA05' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 21:48:09 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 08 Sep 2026 21:48:09 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 08 Sep 2026 21:48:09 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 08 Sep 2026 21:48:09 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 08 Sep 2026 21:48:09 GMT
ENV MONGO_MAJOR=8.3
# Tue, 08 Sep 2026 21:48:09 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu noble/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 08 Sep 2026 21:48:09 GMT
ENV MONGO_VERSION=8.3.9
# Tue, 08 Sep 2026 21:48:26 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 08 Sep 2026 21:48:26 GMT
VOLUME [/data/db /data/configdb]
# Tue, 08 Sep 2026 21:48:26 GMT
ENV HOME=/data/db
# Tue, 08 Sep 2026 21:48:26 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Tue, 08 Sep 2026 21:48:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 21:48:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 21:48:26 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 08 Sep 2026 21:48:26 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2c5eb5ad5b07de06c8ad0a3e7f86353d3ba6f17c862bc890ce6364ffe7ccb84`  
		Last Modified: Tue, 08 Sep 2026 21:48:57 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5182af2ebe22dbdf337f775c6fcbb47f6049693a96febb115bee56abcccca673`  
		Last Modified: Tue, 08 Sep 2026 21:48:57 GMT  
		Size: 4.2 MB (4184813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d8ae78d53aa172d7470ab9b09c55029470e00611273d700b6a0e6fb34046b24`  
		Last Modified: Tue, 08 Sep 2026 21:48:58 GMT  
		Size: 1.1 MB (1101906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24cb51273f4f826b492ee3a01770fc2e7626ea562f2a1b5abcca8d8c55a763f1`  
		Last Modified: Tue, 08 Sep 2026 21:48:58 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2071bd83a11782e5818e7cacc9153d7bbdfdab96e88912b14b0ab46ead48f3fe`  
		Last Modified: Tue, 08 Sep 2026 21:48:59 GMT  
		Size: 261.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:423a44cce11873a6281485d906849d494f484aa5426ce5896c6d882b59e3544e`  
		Last Modified: Tue, 08 Sep 2026 21:49:04 GMT  
		Size: 267.7 MB (267652421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a60e39379caefda9fa34f0bd6bf66d907660bf24836b21a00571b5bab6ef1cf`  
		Last Modified: Tue, 08 Sep 2026 21:48:59 GMT  
		Size: 5.0 KB (5004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:8-noble` - unknown; unknown

```console
$ docker pull mongo@sha256:de76ec9d1b5c8e90988558f681245ed67d95eee55981e9295d2c4a607e6a4368
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2675546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24d49a5b5e9f21a0f6d092e3e1df684f248e4c492256fc44bb4172cd8907f156`

```dockerfile
```

-	Layers:
	-	`sha256:e8ca3b2ecdeea748c6a97db921323361333dc3dc6bc97a56ae10d274ac65c767`  
		Last Modified: Tue, 08 Sep 2026 21:48:58 GMT  
		Size: 2.6 MB (2646806 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d5c6041cfe18a86d5b7ad170567939ced81ec58446d5f71b91b6287f9100cc4`  
		Last Modified: Tue, 08 Sep 2026 21:48:57 GMT  
		Size: 28.7 KB (28740 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:8-noble` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:12f3e97541eb9c16cd3670172e82eb42b80d04acff9610f8747ec121be67df85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.6 MB (289583188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c4c1db250368b91faadedaf95fe34dbbf1c5959a886bf0e37a08df431375329`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 21:48:07 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 08 Sep 2026 21:48:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 08 Sep 2026 21:48:28 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 21:48:28 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 08 Sep 2026 21:48:28 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 08 Sep 2026 21:48:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-8.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor '4B0752C1BCA238C0B4EE14DC41DE058A4E7DCA05' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 21:48:29 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 08 Sep 2026 21:48:29 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 08 Sep 2026 21:48:29 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 08 Sep 2026 21:48:29 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 08 Sep 2026 21:48:29 GMT
ENV MONGO_MAJOR=8.3
# Tue, 08 Sep 2026 21:48:29 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu noble/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 08 Sep 2026 21:48:29 GMT
ENV MONGO_VERSION=8.3.9
# Tue, 08 Sep 2026 21:48:47 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 08 Sep 2026 21:48:47 GMT
VOLUME [/data/db /data/configdb]
# Tue, 08 Sep 2026 21:48:47 GMT
ENV HOME=/data/db
# Tue, 08 Sep 2026 21:48:47 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Tue, 08 Sep 2026 21:48:47 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 21:48:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 21:48:47 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 08 Sep 2026 21:48:47 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c6368d3f7edac872036beac97afb2466d56217372c6c66aa253f4259b8a4134`  
		Last Modified: Tue, 08 Sep 2026 21:49:19 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:488c5a675b601481182e0361bd7687847ea29e95f61d81864b8c5c00fc4cc5eb`  
		Last Modified: Tue, 08 Sep 2026 21:49:19 GMT  
		Size: 4.0 MB (4042680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:310bfa76eb65fbf9b80eaea27c0af6bb3060ad149c3bd50e04b1df3809d5d09e`  
		Last Modified: Tue, 08 Sep 2026 21:49:19 GMT  
		Size: 1.1 MB (1050652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0041c2b04a16a9e2930b4a47c88e8513f396f55a70cc1d813b3ee54feae8dc0c`  
		Last Modified: Tue, 08 Sep 2026 21:49:19 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f699912c81da4a2408c3f34cb6345d68bd92ce3412958f9c725e6ea00261c56`  
		Last Modified: Tue, 08 Sep 2026 21:49:20 GMT  
		Size: 265.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5bc475790f0fd846aa38bdedf0549ff70f8640296fd2b77888cfd31bbfe8e8b`  
		Last Modified: Tue, 08 Sep 2026 21:49:26 GMT  
		Size: 255.6 MB (255596026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d2530667c25a297f4bd4a6f634ea80b5df66ca25275457e80dca3d771afc0d8`  
		Last Modified: Tue, 08 Sep 2026 21:49:20 GMT  
		Size: 5.0 KB (5000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:8-noble` - unknown; unknown

```console
$ docker pull mongo@sha256:2ab5cbd96bfe00754e462b741624a72a5f429c2d1c13c66bf351d16f92749ea2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2676910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:124c7feafbeb67d884cca50a2456abfda256d6456bdba85c03e5a4cce7384833`

```dockerfile
```

-	Layers:
	-	`sha256:0457d9685c4ec22c950eda4a6965b448363ec5e6702b462362f5558e2c6ee1ad`  
		Last Modified: Tue, 08 Sep 2026 21:49:19 GMT  
		Size: 2.6 MB (2647942 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a68f373f710e8d4c3bd6f9dbb78c2f0c02332babedb2f86c11499b369da743f`  
		Last Modified: Tue, 08 Sep 2026 21:49:19 GMT  
		Size: 29.0 KB (28968 bytes)  
		MIME: application/vnd.in-toto+json
