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
$ docker pull mongo@sha256:35a5926f71f8b6cb19206bee928c5a85f241a8be99f20c81abe35ae78a73415d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `mongo:7` - linux; amd64

```console
$ docker pull mongo@sha256:e68ebd505eb6b5c5b5c6c3486bd208fed62e2765b9d7f2f5262fb172481df26f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.6 MB (293630855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cada79a950e1e83cbfc6caf34c7729a9d4b841bf0077adfb9cb62802ea3f077a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:42:18 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 04 Aug 2026 01:42:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:42:39 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 01:42:39 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 04 Aug 2026 01:42:39 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 04 Aug 2026 01:42:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-7.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor 'E58830201F7DD82CD808AA84160D26BB1785BA38' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 01:42:39 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:42:39 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 04 Aug 2026 01:42:39 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 04 Aug 2026 01:42:39 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 04 Aug 2026 01:42:39 GMT
ENV MONGO_MAJOR=7.0
# Tue, 04 Aug 2026 01:42:39 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu jammy/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 04 Aug 2026 01:42:39 GMT
ENV MONGO_VERSION=7.0.39
# Tue, 04 Aug 2026 01:43:00 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 04 Aug 2026 01:43:00 GMT
VOLUME [/data/db /data/configdb]
# Tue, 04 Aug 2026 01:43:00 GMT
ENV HOME=/data/db
# Tue, 04 Aug 2026 01:43:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:43:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:43:00 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 04 Aug 2026 01:43:00 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9edaf47f313bbe64bf4b333b2661b5cf286ea6e8665e8a8d8bf65b57738a937f`  
		Last Modified: Tue, 04 Aug 2026 01:43:31 GMT  
		Size: 1.8 KB (1779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb94a6d99c0a9154c60097417b4f1336a59c7a9e031586b68d7f436711ced6a3`  
		Last Modified: Tue, 04 Aug 2026 01:43:31 GMT  
		Size: 1.5 MB (1472730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8932aff54341185387612c974c97cf4982e12b6b268a2da3f18e655e75731844`  
		Last Modified: Tue, 04 Aug 2026 01:43:31 GMT  
		Size: 898.4 KB (898387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b0954780896c1cfcddbddea5c06e3dee2e2bef0610db4638147e8914052b9d0`  
		Last Modified: Tue, 04 Aug 2026 01:43:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dff0d25b5d25282bda78ff01d21fba25c255427687450f1f6e1926c99d9f041c`  
		Last Modified: Tue, 04 Aug 2026 01:43:32 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fc668cfba2950b0f91f7b60d8d399a957ee4c990763b0e87abc0e89bf66951b`  
		Last Modified: Tue, 04 Aug 2026 01:43:37 GMT  
		Size: 261.5 MB (261516060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15a369849dbf63f14bdd7aaf3972e977bd5fabe02c298cec152eb948179c62c6`  
		Last Modified: Tue, 04 Aug 2026 01:43:32 GMT  
		Size: 5.0 KB (5002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:7` - unknown; unknown

```console
$ docker pull mongo@sha256:4bd8a659ffb6b4dd0e7cb149716bb6c032a0501c2252af76b8f64d33aaecf3b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3229627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab4a0c11f718ca26ef92302af8525d49bfea7615bc85a0e594d49eed5b1a1bb3`

```dockerfile
```

-	Layers:
	-	`sha256:b3c1ad30c0863ad192a6fdc2d4a7590971f705441d05c63e74b4fec5e14124a3`  
		Last Modified: Tue, 04 Aug 2026 01:43:31 GMT  
		Size: 3.2 MB (3201740 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0da68b64f60de2c32251d8b3324b9cdc25ba68b1fe2220491470b88a239b92fa`  
		Last Modified: Tue, 04 Aug 2026 01:43:31 GMT  
		Size: 27.9 KB (27887 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:7` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:640a48a0e5a071bba50bcc597e328615c2d77d4b72ee5e1471e63d792d0ed4b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.7 MB (279710555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d58a07b4b2ecaff800c05ed786685d18dcbb5b31a801fdc57bdfb819a9f46c8f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:17:43 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 04 Aug 2026 01:17:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:18:06 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 01:18:06 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 04 Aug 2026 01:18:06 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 04 Aug 2026 01:18:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-7.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor 'E58830201F7DD82CD808AA84160D26BB1785BA38' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 01:18:06 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:18:06 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 04 Aug 2026 01:18:06 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 04 Aug 2026 01:18:06 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 04 Aug 2026 01:18:06 GMT
ENV MONGO_MAJOR=7.0
# Tue, 04 Aug 2026 01:18:06 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu jammy/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 04 Aug 2026 01:18:06 GMT
ENV MONGO_VERSION=7.0.39
# Tue, 04 Aug 2026 01:18:28 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 04 Aug 2026 01:18:28 GMT
VOLUME [/data/db /data/configdb]
# Tue, 04 Aug 2026 01:18:28 GMT
ENV HOME=/data/db
# Tue, 04 Aug 2026 01:18:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:18:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:18:28 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 04 Aug 2026 01:18:28 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca55afed0d547b2bddd66f896e8cbf6f6f8a92550d4da65dda28b7cc3bd12bb0`  
		Last Modified: Tue, 04 Aug 2026 01:18:58 GMT  
		Size: 1.8 KB (1783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3bcfafad474cfdc98378f991a88e408d020b1dcccc773c0da0ce0eb7eacb42b`  
		Last Modified: Tue, 04 Aug 2026 01:18:58 GMT  
		Size: 1.4 MB (1438804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08134bc9c29043bf18de04d8aa2b6190f428e7959867dab340adff35fc8b209c`  
		Last Modified: Tue, 04 Aug 2026 01:18:58 GMT  
		Size: 850.7 KB (850689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1a561de01d5ac9688794849a8badfeb2a17776837d66623888a75caa3926289`  
		Last Modified: Tue, 04 Aug 2026 01:18:58 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1faf605c88998e37dd2e31d9b6f1b551cbafca04928e86a3449cebd002776b1`  
		Last Modified: Tue, 04 Aug 2026 01:19:00 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84caf8f4bf78532fd63c3e5deb1c108ebe901cc4e30e777c13dc518c0675b27d`  
		Last Modified: Tue, 04 Aug 2026 01:19:05 GMT  
		Size: 249.8 MB (249793868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c76898d3b7f6d644ee057054cd80e6ea26c4375ff583df82295c138e9854b16c`  
		Last Modified: Tue, 04 Aug 2026 01:19:00 GMT  
		Size: 5.0 KB (5000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:7` - unknown; unknown

```console
$ docker pull mongo@sha256:67ea21b32b62023be91b7e66b86696700e9375379fd48395f2b1dc66c25e4b39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3230149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc4a47c4bd46adad3f44019a2e5fa43a8bd0ec065fc0465118c066a54d9de913`

```dockerfile
```

-	Layers:
	-	`sha256:5d3e9ba13bed6b24bed1771b0a2ad2c25d81b3ca07263b1c7f9f88dae1df12cb`  
		Last Modified: Tue, 04 Aug 2026 01:18:58 GMT  
		Size: 3.2 MB (3202059 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62e91acaff050f8817968b067e75dd10e38475807e5f65702fd08fe7dc83b5f1`  
		Last Modified: Tue, 04 Aug 2026 01:18:58 GMT  
		Size: 28.1 KB (28090 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:7` - windows version 10.0.26100.33158; amd64

```console
$ docker pull mongo@sha256:70321ae72ea96b88a94dfda6ae26e2a1830f8e4f1dcb18e3dd65fcbaeb6a8f66
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 GB (2979862324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf4f965859fb1c97f4afc10bc7ffb4ab33808634e3e8a8cf8c428d17fceb608d`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Wed, 22 Jul 2026 22:18:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 22 Jul 2026 22:18:33 GMT
ENV MONGO_VERSION=7.0.39
# Wed, 22 Jul 2026 22:18:34 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.39-signed.msi
# Wed, 22 Jul 2026 22:18:35 GMT
ENV MONGO_DOWNLOAD_SHA256=ba908ce950272f3039acb53e3209fe1af5d6533d49bb14f3954ad68c26490edf
# Wed, 22 Jul 2026 22:21:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 22 Jul 2026 22:21:33 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 22 Jul 2026 22:21:34 GMT
EXPOSE 27017
# Wed, 22 Jul 2026 22:21:34 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24b28706e4e5f31fae7935e5a79e6df5d7a2eb3e69c8c19ca723f41f0b45f6f`  
		Last Modified: Tue, 14 Jul 2026 17:58:20 GMT  
		Size: 831.9 MB (831948874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf62e988e42551103f8911da578eea9619eb3640dec82e1713932cd2891bdb1`  
		Last Modified: Wed, 22 Jul 2026 22:21:49 GMT  
		Size: 1.4 KB (1363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a18991bca6668a5d05857b26741b59f66f5fa5b4832e4a198f88684e7fe7d19`  
		Last Modified: Wed, 22 Jul 2026 22:21:49 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e0fa1fa11213f2a42e593ea7c575912a10ac95b256c5fbaed1e665881ac44b`  
		Last Modified: Wed, 22 Jul 2026 22:21:49 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b3d586b6f9c362b08ac254e34fc584ae589deafdb096736a919013e6ed8b7e`  
		Last Modified: Wed, 22 Jul 2026 22:21:48 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9379c803106bcf8fe53491a0cecb0af21f2ff014e9e9da86cd427a1ba4bfe98`  
		Last Modified: Wed, 22 Jul 2026 22:22:38 GMT  
		Size: 624.8 MB (624845132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f440c1d8659ec352c2eb9b793f673f972448c188a5af97bd742d94f76b813fd4`  
		Last Modified: Wed, 22 Jul 2026 22:21:48 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdae7c87e57137ab358319b9d4770f266eb5701c701f4ee398ba8a0c76bb3bb9`  
		Last Modified: Wed, 22 Jul 2026 22:21:48 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6846fa7f0b1a6f4d0e6e7f288862a0039d0fdbed3f8259e8581f2a03b156c27`  
		Last Modified: Wed, 22 Jul 2026 22:21:48 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:7` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:a0903ab038bfc5b8d61b9254c266b76ba56dc4964ac0d4d01bcacae2271028dc
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2782481672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b87f82381e6cb8d6833e4df782ade8ba1f026a96babbab0d878cbcc82f72c1fe`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Wed, 22 Jul 2026 22:18:55 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 22 Jul 2026 22:32:19 GMT
ENV MONGO_VERSION=7.0.39
# Wed, 22 Jul 2026 22:32:19 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.39-signed.msi
# Wed, 22 Jul 2026 22:32:20 GMT
ENV MONGO_DOWNLOAD_SHA256=ba908ce950272f3039acb53e3209fe1af5d6533d49bb14f3954ad68c26490edf
# Wed, 22 Jul 2026 22:34:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 22 Jul 2026 22:34:03 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 22 Jul 2026 22:34:04 GMT
EXPOSE 27017
# Wed, 22 Jul 2026 22:34:05 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0675e37b24741ccc9e6ff6dda8512e3be78ba3519c8af33b04872e4738349249`  
		Last Modified: Tue, 14 Jul 2026 18:09:28 GMT  
		Size: 668.5 MB (668534031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537b255253cbf6488b4f77b9be79c27f8d178d5a90feda1197946c53ea15aff1`  
		Last Modified: Wed, 22 Jul 2026 22:22:16 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003a16100e947e8b9d45430c59d74f2c7ddb787fd6fc24c2b8411211f2bf5891`  
		Last Modified: Wed, 22 Jul 2026 22:34:19 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a73363b7d1181531153e7b1d930d17eb7da32a8d5704dd33b537eb7a976898c`  
		Last Modified: Wed, 22 Jul 2026 22:34:19 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:621769b79906abd4f4e5763a27a981119ffa919e164755d8ef01c485fb1b37a9`  
		Last Modified: Wed, 22 Jul 2026 22:34:17 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:505a743fec231ca6c50a74a535a365fc6f56b6a4d377791234eb3b8e32185636`  
		Last Modified: Wed, 22 Jul 2026 22:35:11 GMT  
		Size: 624.9 MB (624919350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab1d52d24cc4b0910735bbe81380cee52c6c845cda8039455ec5d272a8676314`  
		Last Modified: Wed, 22 Jul 2026 22:34:17 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30bbf64ede8739595b58e43db41b89fc890b8ba5df24eef85e0ae5c2c04772fe`  
		Last Modified: Wed, 22 Jul 2026 22:34:17 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ffc29ca00980550c88e80ac0be52a56977237d5387593bde15e58f11975aab`  
		Last Modified: Wed, 22 Jul 2026 22:34:17 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:7-jammy`

```console
$ docker pull mongo@sha256:04582c3a144d088f841c446abfc19f79adcefa8bd00ad4a7fb18e27b9585c5d6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mongo:7-jammy` - linux; amd64

```console
$ docker pull mongo@sha256:e68ebd505eb6b5c5b5c6c3486bd208fed62e2765b9d7f2f5262fb172481df26f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.6 MB (293630855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cada79a950e1e83cbfc6caf34c7729a9d4b841bf0077adfb9cb62802ea3f077a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:42:18 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 04 Aug 2026 01:42:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:42:39 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 01:42:39 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 04 Aug 2026 01:42:39 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 04 Aug 2026 01:42:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-7.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor 'E58830201F7DD82CD808AA84160D26BB1785BA38' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 01:42:39 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:42:39 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 04 Aug 2026 01:42:39 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 04 Aug 2026 01:42:39 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 04 Aug 2026 01:42:39 GMT
ENV MONGO_MAJOR=7.0
# Tue, 04 Aug 2026 01:42:39 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu jammy/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 04 Aug 2026 01:42:39 GMT
ENV MONGO_VERSION=7.0.39
# Tue, 04 Aug 2026 01:43:00 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 04 Aug 2026 01:43:00 GMT
VOLUME [/data/db /data/configdb]
# Tue, 04 Aug 2026 01:43:00 GMT
ENV HOME=/data/db
# Tue, 04 Aug 2026 01:43:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:43:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:43:00 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 04 Aug 2026 01:43:00 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9edaf47f313bbe64bf4b333b2661b5cf286ea6e8665e8a8d8bf65b57738a937f`  
		Last Modified: Tue, 04 Aug 2026 01:43:31 GMT  
		Size: 1.8 KB (1779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb94a6d99c0a9154c60097417b4f1336a59c7a9e031586b68d7f436711ced6a3`  
		Last Modified: Tue, 04 Aug 2026 01:43:31 GMT  
		Size: 1.5 MB (1472730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8932aff54341185387612c974c97cf4982e12b6b268a2da3f18e655e75731844`  
		Last Modified: Tue, 04 Aug 2026 01:43:31 GMT  
		Size: 898.4 KB (898387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b0954780896c1cfcddbddea5c06e3dee2e2bef0610db4638147e8914052b9d0`  
		Last Modified: Tue, 04 Aug 2026 01:43:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dff0d25b5d25282bda78ff01d21fba25c255427687450f1f6e1926c99d9f041c`  
		Last Modified: Tue, 04 Aug 2026 01:43:32 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fc668cfba2950b0f91f7b60d8d399a957ee4c990763b0e87abc0e89bf66951b`  
		Last Modified: Tue, 04 Aug 2026 01:43:37 GMT  
		Size: 261.5 MB (261516060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15a369849dbf63f14bdd7aaf3972e977bd5fabe02c298cec152eb948179c62c6`  
		Last Modified: Tue, 04 Aug 2026 01:43:32 GMT  
		Size: 5.0 KB (5002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:7-jammy` - unknown; unknown

```console
$ docker pull mongo@sha256:4bd8a659ffb6b4dd0e7cb149716bb6c032a0501c2252af76b8f64d33aaecf3b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3229627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab4a0c11f718ca26ef92302af8525d49bfea7615bc85a0e594d49eed5b1a1bb3`

```dockerfile
```

-	Layers:
	-	`sha256:b3c1ad30c0863ad192a6fdc2d4a7590971f705441d05c63e74b4fec5e14124a3`  
		Last Modified: Tue, 04 Aug 2026 01:43:31 GMT  
		Size: 3.2 MB (3201740 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0da68b64f60de2c32251d8b3324b9cdc25ba68b1fe2220491470b88a239b92fa`  
		Last Modified: Tue, 04 Aug 2026 01:43:31 GMT  
		Size: 27.9 KB (27887 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:7-jammy` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:640a48a0e5a071bba50bcc597e328615c2d77d4b72ee5e1471e63d792d0ed4b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.7 MB (279710555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d58a07b4b2ecaff800c05ed786685d18dcbb5b31a801fdc57bdfb819a9f46c8f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:17:43 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 04 Aug 2026 01:17:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:18:06 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 01:18:06 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 04 Aug 2026 01:18:06 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 04 Aug 2026 01:18:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-7.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor 'E58830201F7DD82CD808AA84160D26BB1785BA38' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 01:18:06 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:18:06 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 04 Aug 2026 01:18:06 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 04 Aug 2026 01:18:06 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 04 Aug 2026 01:18:06 GMT
ENV MONGO_MAJOR=7.0
# Tue, 04 Aug 2026 01:18:06 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu jammy/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 04 Aug 2026 01:18:06 GMT
ENV MONGO_VERSION=7.0.39
# Tue, 04 Aug 2026 01:18:28 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 04 Aug 2026 01:18:28 GMT
VOLUME [/data/db /data/configdb]
# Tue, 04 Aug 2026 01:18:28 GMT
ENV HOME=/data/db
# Tue, 04 Aug 2026 01:18:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:18:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:18:28 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 04 Aug 2026 01:18:28 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca55afed0d547b2bddd66f896e8cbf6f6f8a92550d4da65dda28b7cc3bd12bb0`  
		Last Modified: Tue, 04 Aug 2026 01:18:58 GMT  
		Size: 1.8 KB (1783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3bcfafad474cfdc98378f991a88e408d020b1dcccc773c0da0ce0eb7eacb42b`  
		Last Modified: Tue, 04 Aug 2026 01:18:58 GMT  
		Size: 1.4 MB (1438804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08134bc9c29043bf18de04d8aa2b6190f428e7959867dab340adff35fc8b209c`  
		Last Modified: Tue, 04 Aug 2026 01:18:58 GMT  
		Size: 850.7 KB (850689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1a561de01d5ac9688794849a8badfeb2a17776837d66623888a75caa3926289`  
		Last Modified: Tue, 04 Aug 2026 01:18:58 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1faf605c88998e37dd2e31d9b6f1b551cbafca04928e86a3449cebd002776b1`  
		Last Modified: Tue, 04 Aug 2026 01:19:00 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84caf8f4bf78532fd63c3e5deb1c108ebe901cc4e30e777c13dc518c0675b27d`  
		Last Modified: Tue, 04 Aug 2026 01:19:05 GMT  
		Size: 249.8 MB (249793868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c76898d3b7f6d644ee057054cd80e6ea26c4375ff583df82295c138e9854b16c`  
		Last Modified: Tue, 04 Aug 2026 01:19:00 GMT  
		Size: 5.0 KB (5000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:7-jammy` - unknown; unknown

```console
$ docker pull mongo@sha256:67ea21b32b62023be91b7e66b86696700e9375379fd48395f2b1dc66c25e4b39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3230149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc4a47c4bd46adad3f44019a2e5fa43a8bd0ec065fc0465118c066a54d9de913`

```dockerfile
```

-	Layers:
	-	`sha256:5d3e9ba13bed6b24bed1771b0a2ad2c25d81b3ca07263b1c7f9f88dae1df12cb`  
		Last Modified: Tue, 04 Aug 2026 01:18:58 GMT  
		Size: 3.2 MB (3202059 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62e91acaff050f8817968b067e75dd10e38475807e5f65702fd08fe7dc83b5f1`  
		Last Modified: Tue, 04 Aug 2026 01:18:58 GMT  
		Size: 28.1 KB (28090 bytes)  
		MIME: application/vnd.in-toto+json

## `mongo:7-nanoserver`

```console
$ docker pull mongo@sha256:026e10f7d5ce2e55662428d50b5dd93308a8882bc9877b22fd5e8ea602ea215f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `mongo:7-nanoserver` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:75ff80ff960e2454608551939a90c063e32c9c0b7535f8ea5d51e36a5c3a6cff
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **748.3 MB (748271840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7a87dca5c21deba090193a08cfcf89526b7608de66b3d48b6486d98b0d6bbad`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Wed, 22 Jul 2026 23:13:56 GMT
SHELL [cmd /S /C]
# Wed, 22 Jul 2026 23:13:57 GMT
USER ContainerAdministrator
# Wed, 22 Jul 2026 23:14:13 GMT
RUN setx /m PATH "C:\mongodb\bin;%PATH%"
# Wed, 22 Jul 2026 23:14:14 GMT
USER ContainerUser
# Wed, 22 Jul 2026 23:18:10 GMT
COPY multi:540d6dd70b1e7484f1958dc08b337aeb56cf8a92fe38be4c279dd406990d6935 in C:\Windows\System32\ 
# Wed, 22 Jul 2026 23:25:16 GMT
ENV MONGO_VERSION=7.0.39
# Wed, 22 Jul 2026 23:25:46 GMT
COPY dir:ff4fc2d27911ec9e57e420b3af3ff048e53414edb6df28ea52b4dd4f54b2f49e in C:\mongodb 
# Wed, 22 Jul 2026 23:26:04 GMT
RUN mongod --version
# Wed, 22 Jul 2026 23:26:05 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 22 Jul 2026 23:26:06 GMT
EXPOSE 27017
# Wed, 22 Jul 2026 23:26:07 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c26678dc3a52b2a129f0cd4d3078b1e458348014de6e72f99571635c8c2b26a4`  
		Last Modified: Wed, 22 Jul 2026 23:15:37 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50fb562446c0f358a4e15787944fa05973945826a1012f2b13d5d12ca2ad771c`  
		Last Modified: Wed, 22 Jul 2026 23:15:38 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c33bfbdac54fabf51d60d1a49280b7831c19f1b66e48e15947119220269270e`  
		Last Modified: Wed, 22 Jul 2026 23:15:36 GMT  
		Size: 85.8 KB (85760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd05a26054383e9b127c4c7f9e876281a22ac9d9bbb02beea7f170fccdccc45b`  
		Last Modified: Wed, 22 Jul 2026 23:15:36 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f8d205c5622151d975849efa97d03ad7676136620102f7f3095f526fedd8a32`  
		Last Modified: Wed, 22 Jul 2026 23:19:24 GMT  
		Size: 275.2 KB (275187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3176b1e481db7ea4af5402e50096b6d979f7f5e1a90563513ed63db0a49d84c5`  
		Last Modified: Wed, 22 Jul 2026 23:26:12 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:248b8367de34dea27e6ada238183ae08627e5f3cacb3ab93c495f167b1b63162`  
		Last Modified: Wed, 22 Jul 2026 23:27:06 GMT  
		Size: 623.7 MB (623710057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e947df758a95d1af9f599b4e71caca7fba6ce98cae77dda34690bcd697dc102`  
		Last Modified: Wed, 22 Jul 2026 23:26:11 GMT  
		Size: 90.3 KB (90255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb0d2f587a689e5eda042d7a0d6d5a0dd3caab431b5c75f41641e1addacd27c`  
		Last Modified: Wed, 22 Jul 2026 23:26:11 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac4e97782727383840eea82940df3292bdaf1f9123577c7d7145e5856a0b655`  
		Last Modified: Wed, 22 Jul 2026 23:26:11 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0978ba24a08fd9a50656159431603564229d8c60eaf40a545100a4b98dd73d78`  
		Last Modified: Wed, 22 Jul 2026 23:26:11 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:7-nanoserver-ltsc2022`

```console
$ docker pull mongo@sha256:026e10f7d5ce2e55662428d50b5dd93308a8882bc9877b22fd5e8ea602ea215f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `mongo:7-nanoserver-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:75ff80ff960e2454608551939a90c063e32c9c0b7535f8ea5d51e36a5c3a6cff
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **748.3 MB (748271840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7a87dca5c21deba090193a08cfcf89526b7608de66b3d48b6486d98b0d6bbad`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Wed, 22 Jul 2026 23:13:56 GMT
SHELL [cmd /S /C]
# Wed, 22 Jul 2026 23:13:57 GMT
USER ContainerAdministrator
# Wed, 22 Jul 2026 23:14:13 GMT
RUN setx /m PATH "C:\mongodb\bin;%PATH%"
# Wed, 22 Jul 2026 23:14:14 GMT
USER ContainerUser
# Wed, 22 Jul 2026 23:18:10 GMT
COPY multi:540d6dd70b1e7484f1958dc08b337aeb56cf8a92fe38be4c279dd406990d6935 in C:\Windows\System32\ 
# Wed, 22 Jul 2026 23:25:16 GMT
ENV MONGO_VERSION=7.0.39
# Wed, 22 Jul 2026 23:25:46 GMT
COPY dir:ff4fc2d27911ec9e57e420b3af3ff048e53414edb6df28ea52b4dd4f54b2f49e in C:\mongodb 
# Wed, 22 Jul 2026 23:26:04 GMT
RUN mongod --version
# Wed, 22 Jul 2026 23:26:05 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 22 Jul 2026 23:26:06 GMT
EXPOSE 27017
# Wed, 22 Jul 2026 23:26:07 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c26678dc3a52b2a129f0cd4d3078b1e458348014de6e72f99571635c8c2b26a4`  
		Last Modified: Wed, 22 Jul 2026 23:15:37 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50fb562446c0f358a4e15787944fa05973945826a1012f2b13d5d12ca2ad771c`  
		Last Modified: Wed, 22 Jul 2026 23:15:38 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c33bfbdac54fabf51d60d1a49280b7831c19f1b66e48e15947119220269270e`  
		Last Modified: Wed, 22 Jul 2026 23:15:36 GMT  
		Size: 85.8 KB (85760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd05a26054383e9b127c4c7f9e876281a22ac9d9bbb02beea7f170fccdccc45b`  
		Last Modified: Wed, 22 Jul 2026 23:15:36 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f8d205c5622151d975849efa97d03ad7676136620102f7f3095f526fedd8a32`  
		Last Modified: Wed, 22 Jul 2026 23:19:24 GMT  
		Size: 275.2 KB (275187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3176b1e481db7ea4af5402e50096b6d979f7f5e1a90563513ed63db0a49d84c5`  
		Last Modified: Wed, 22 Jul 2026 23:26:12 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:248b8367de34dea27e6ada238183ae08627e5f3cacb3ab93c495f167b1b63162`  
		Last Modified: Wed, 22 Jul 2026 23:27:06 GMT  
		Size: 623.7 MB (623710057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e947df758a95d1af9f599b4e71caca7fba6ce98cae77dda34690bcd697dc102`  
		Last Modified: Wed, 22 Jul 2026 23:26:11 GMT  
		Size: 90.3 KB (90255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb0d2f587a689e5eda042d7a0d6d5a0dd3caab431b5c75f41641e1addacd27c`  
		Last Modified: Wed, 22 Jul 2026 23:26:11 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac4e97782727383840eea82940df3292bdaf1f9123577c7d7145e5856a0b655`  
		Last Modified: Wed, 22 Jul 2026 23:26:11 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0978ba24a08fd9a50656159431603564229d8c60eaf40a545100a4b98dd73d78`  
		Last Modified: Wed, 22 Jul 2026 23:26:11 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:7-windowsservercore`

```console
$ docker pull mongo@sha256:27b80fd89e47e5ed0778f8ebeb5a1026120f6df8fcd2f4ae5609ce17882ce8a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `mongo:7-windowsservercore` - windows version 10.0.26100.33158; amd64

```console
$ docker pull mongo@sha256:70321ae72ea96b88a94dfda6ae26e2a1830f8e4f1dcb18e3dd65fcbaeb6a8f66
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 GB (2979862324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf4f965859fb1c97f4afc10bc7ffb4ab33808634e3e8a8cf8c428d17fceb608d`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Wed, 22 Jul 2026 22:18:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 22 Jul 2026 22:18:33 GMT
ENV MONGO_VERSION=7.0.39
# Wed, 22 Jul 2026 22:18:34 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.39-signed.msi
# Wed, 22 Jul 2026 22:18:35 GMT
ENV MONGO_DOWNLOAD_SHA256=ba908ce950272f3039acb53e3209fe1af5d6533d49bb14f3954ad68c26490edf
# Wed, 22 Jul 2026 22:21:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 22 Jul 2026 22:21:33 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 22 Jul 2026 22:21:34 GMT
EXPOSE 27017
# Wed, 22 Jul 2026 22:21:34 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24b28706e4e5f31fae7935e5a79e6df5d7a2eb3e69c8c19ca723f41f0b45f6f`  
		Last Modified: Tue, 14 Jul 2026 17:58:20 GMT  
		Size: 831.9 MB (831948874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf62e988e42551103f8911da578eea9619eb3640dec82e1713932cd2891bdb1`  
		Last Modified: Wed, 22 Jul 2026 22:21:49 GMT  
		Size: 1.4 KB (1363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a18991bca6668a5d05857b26741b59f66f5fa5b4832e4a198f88684e7fe7d19`  
		Last Modified: Wed, 22 Jul 2026 22:21:49 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e0fa1fa11213f2a42e593ea7c575912a10ac95b256c5fbaed1e665881ac44b`  
		Last Modified: Wed, 22 Jul 2026 22:21:49 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b3d586b6f9c362b08ac254e34fc584ae589deafdb096736a919013e6ed8b7e`  
		Last Modified: Wed, 22 Jul 2026 22:21:48 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9379c803106bcf8fe53491a0cecb0af21f2ff014e9e9da86cd427a1ba4bfe98`  
		Last Modified: Wed, 22 Jul 2026 22:22:38 GMT  
		Size: 624.8 MB (624845132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f440c1d8659ec352c2eb9b793f673f972448c188a5af97bd742d94f76b813fd4`  
		Last Modified: Wed, 22 Jul 2026 22:21:48 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdae7c87e57137ab358319b9d4770f266eb5701c701f4ee398ba8a0c76bb3bb9`  
		Last Modified: Wed, 22 Jul 2026 22:21:48 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6846fa7f0b1a6f4d0e6e7f288862a0039d0fdbed3f8259e8581f2a03b156c27`  
		Last Modified: Wed, 22 Jul 2026 22:21:48 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:7-windowsservercore` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:a0903ab038bfc5b8d61b9254c266b76ba56dc4964ac0d4d01bcacae2271028dc
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2782481672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b87f82381e6cb8d6833e4df782ade8ba1f026a96babbab0d878cbcc82f72c1fe`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Wed, 22 Jul 2026 22:18:55 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 22 Jul 2026 22:32:19 GMT
ENV MONGO_VERSION=7.0.39
# Wed, 22 Jul 2026 22:32:19 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.39-signed.msi
# Wed, 22 Jul 2026 22:32:20 GMT
ENV MONGO_DOWNLOAD_SHA256=ba908ce950272f3039acb53e3209fe1af5d6533d49bb14f3954ad68c26490edf
# Wed, 22 Jul 2026 22:34:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 22 Jul 2026 22:34:03 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 22 Jul 2026 22:34:04 GMT
EXPOSE 27017
# Wed, 22 Jul 2026 22:34:05 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0675e37b24741ccc9e6ff6dda8512e3be78ba3519c8af33b04872e4738349249`  
		Last Modified: Tue, 14 Jul 2026 18:09:28 GMT  
		Size: 668.5 MB (668534031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537b255253cbf6488b4f77b9be79c27f8d178d5a90feda1197946c53ea15aff1`  
		Last Modified: Wed, 22 Jul 2026 22:22:16 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003a16100e947e8b9d45430c59d74f2c7ddb787fd6fc24c2b8411211f2bf5891`  
		Last Modified: Wed, 22 Jul 2026 22:34:19 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a73363b7d1181531153e7b1d930d17eb7da32a8d5704dd33b537eb7a976898c`  
		Last Modified: Wed, 22 Jul 2026 22:34:19 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:621769b79906abd4f4e5763a27a981119ffa919e164755d8ef01c485fb1b37a9`  
		Last Modified: Wed, 22 Jul 2026 22:34:17 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:505a743fec231ca6c50a74a535a365fc6f56b6a4d377791234eb3b8e32185636`  
		Last Modified: Wed, 22 Jul 2026 22:35:11 GMT  
		Size: 624.9 MB (624919350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab1d52d24cc4b0910735bbe81380cee52c6c845cda8039455ec5d272a8676314`  
		Last Modified: Wed, 22 Jul 2026 22:34:17 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30bbf64ede8739595b58e43db41b89fc890b8ba5df24eef85e0ae5c2c04772fe`  
		Last Modified: Wed, 22 Jul 2026 22:34:17 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ffc29ca00980550c88e80ac0be52a56977237d5387593bde15e58f11975aab`  
		Last Modified: Wed, 22 Jul 2026 22:34:17 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:7-windowsservercore-ltsc2022`

```console
$ docker pull mongo@sha256:6fa78086030a9a97c4e391233cce0761530c7fcf9882c652e1f1e37ed7d72f95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `mongo:7-windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:a0903ab038bfc5b8d61b9254c266b76ba56dc4964ac0d4d01bcacae2271028dc
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2782481672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b87f82381e6cb8d6833e4df782ade8ba1f026a96babbab0d878cbcc82f72c1fe`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Wed, 22 Jul 2026 22:18:55 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 22 Jul 2026 22:32:19 GMT
ENV MONGO_VERSION=7.0.39
# Wed, 22 Jul 2026 22:32:19 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.39-signed.msi
# Wed, 22 Jul 2026 22:32:20 GMT
ENV MONGO_DOWNLOAD_SHA256=ba908ce950272f3039acb53e3209fe1af5d6533d49bb14f3954ad68c26490edf
# Wed, 22 Jul 2026 22:34:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 22 Jul 2026 22:34:03 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 22 Jul 2026 22:34:04 GMT
EXPOSE 27017
# Wed, 22 Jul 2026 22:34:05 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0675e37b24741ccc9e6ff6dda8512e3be78ba3519c8af33b04872e4738349249`  
		Last Modified: Tue, 14 Jul 2026 18:09:28 GMT  
		Size: 668.5 MB (668534031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537b255253cbf6488b4f77b9be79c27f8d178d5a90feda1197946c53ea15aff1`  
		Last Modified: Wed, 22 Jul 2026 22:22:16 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003a16100e947e8b9d45430c59d74f2c7ddb787fd6fc24c2b8411211f2bf5891`  
		Last Modified: Wed, 22 Jul 2026 22:34:19 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a73363b7d1181531153e7b1d930d17eb7da32a8d5704dd33b537eb7a976898c`  
		Last Modified: Wed, 22 Jul 2026 22:34:19 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:621769b79906abd4f4e5763a27a981119ffa919e164755d8ef01c485fb1b37a9`  
		Last Modified: Wed, 22 Jul 2026 22:34:17 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:505a743fec231ca6c50a74a535a365fc6f56b6a4d377791234eb3b8e32185636`  
		Last Modified: Wed, 22 Jul 2026 22:35:11 GMT  
		Size: 624.9 MB (624919350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab1d52d24cc4b0910735bbe81380cee52c6c845cda8039455ec5d272a8676314`  
		Last Modified: Wed, 22 Jul 2026 22:34:17 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30bbf64ede8739595b58e43db41b89fc890b8ba5df24eef85e0ae5c2c04772fe`  
		Last Modified: Wed, 22 Jul 2026 22:34:17 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ffc29ca00980550c88e80ac0be52a56977237d5387593bde15e58f11975aab`  
		Last Modified: Wed, 22 Jul 2026 22:34:17 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:7-windowsservercore-ltsc2025`

```console
$ docker pull mongo@sha256:c402d0997e6b96e734092b3f046ea28f5210778c54632e3e7c4931c550e5e941
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `mongo:7-windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull mongo@sha256:70321ae72ea96b88a94dfda6ae26e2a1830f8e4f1dcb18e3dd65fcbaeb6a8f66
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 GB (2979862324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf4f965859fb1c97f4afc10bc7ffb4ab33808634e3e8a8cf8c428d17fceb608d`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Wed, 22 Jul 2026 22:18:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 22 Jul 2026 22:18:33 GMT
ENV MONGO_VERSION=7.0.39
# Wed, 22 Jul 2026 22:18:34 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.39-signed.msi
# Wed, 22 Jul 2026 22:18:35 GMT
ENV MONGO_DOWNLOAD_SHA256=ba908ce950272f3039acb53e3209fe1af5d6533d49bb14f3954ad68c26490edf
# Wed, 22 Jul 2026 22:21:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 22 Jul 2026 22:21:33 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 22 Jul 2026 22:21:34 GMT
EXPOSE 27017
# Wed, 22 Jul 2026 22:21:34 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24b28706e4e5f31fae7935e5a79e6df5d7a2eb3e69c8c19ca723f41f0b45f6f`  
		Last Modified: Tue, 14 Jul 2026 17:58:20 GMT  
		Size: 831.9 MB (831948874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf62e988e42551103f8911da578eea9619eb3640dec82e1713932cd2891bdb1`  
		Last Modified: Wed, 22 Jul 2026 22:21:49 GMT  
		Size: 1.4 KB (1363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a18991bca6668a5d05857b26741b59f66f5fa5b4832e4a198f88684e7fe7d19`  
		Last Modified: Wed, 22 Jul 2026 22:21:49 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e0fa1fa11213f2a42e593ea7c575912a10ac95b256c5fbaed1e665881ac44b`  
		Last Modified: Wed, 22 Jul 2026 22:21:49 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b3d586b6f9c362b08ac254e34fc584ae589deafdb096736a919013e6ed8b7e`  
		Last Modified: Wed, 22 Jul 2026 22:21:48 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9379c803106bcf8fe53491a0cecb0af21f2ff014e9e9da86cd427a1ba4bfe98`  
		Last Modified: Wed, 22 Jul 2026 22:22:38 GMT  
		Size: 624.8 MB (624845132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f440c1d8659ec352c2eb9b793f673f972448c188a5af97bd742d94f76b813fd4`  
		Last Modified: Wed, 22 Jul 2026 22:21:48 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdae7c87e57137ab358319b9d4770f266eb5701c701f4ee398ba8a0c76bb3bb9`  
		Last Modified: Wed, 22 Jul 2026 22:21:48 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6846fa7f0b1a6f4d0e6e7f288862a0039d0fdbed3f8259e8581f2a03b156c27`  
		Last Modified: Wed, 22 Jul 2026 22:21:48 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:7.0`

```console
$ docker pull mongo@sha256:35a5926f71f8b6cb19206bee928c5a85f241a8be99f20c81abe35ae78a73415d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `mongo:7.0` - linux; amd64

```console
$ docker pull mongo@sha256:e68ebd505eb6b5c5b5c6c3486bd208fed62e2765b9d7f2f5262fb172481df26f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.6 MB (293630855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cada79a950e1e83cbfc6caf34c7729a9d4b841bf0077adfb9cb62802ea3f077a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:42:18 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 04 Aug 2026 01:42:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:42:39 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 01:42:39 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 04 Aug 2026 01:42:39 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 04 Aug 2026 01:42:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-7.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor 'E58830201F7DD82CD808AA84160D26BB1785BA38' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 01:42:39 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:42:39 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 04 Aug 2026 01:42:39 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 04 Aug 2026 01:42:39 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 04 Aug 2026 01:42:39 GMT
ENV MONGO_MAJOR=7.0
# Tue, 04 Aug 2026 01:42:39 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu jammy/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 04 Aug 2026 01:42:39 GMT
ENV MONGO_VERSION=7.0.39
# Tue, 04 Aug 2026 01:43:00 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 04 Aug 2026 01:43:00 GMT
VOLUME [/data/db /data/configdb]
# Tue, 04 Aug 2026 01:43:00 GMT
ENV HOME=/data/db
# Tue, 04 Aug 2026 01:43:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:43:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:43:00 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 04 Aug 2026 01:43:00 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9edaf47f313bbe64bf4b333b2661b5cf286ea6e8665e8a8d8bf65b57738a937f`  
		Last Modified: Tue, 04 Aug 2026 01:43:31 GMT  
		Size: 1.8 KB (1779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb94a6d99c0a9154c60097417b4f1336a59c7a9e031586b68d7f436711ced6a3`  
		Last Modified: Tue, 04 Aug 2026 01:43:31 GMT  
		Size: 1.5 MB (1472730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8932aff54341185387612c974c97cf4982e12b6b268a2da3f18e655e75731844`  
		Last Modified: Tue, 04 Aug 2026 01:43:31 GMT  
		Size: 898.4 KB (898387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b0954780896c1cfcddbddea5c06e3dee2e2bef0610db4638147e8914052b9d0`  
		Last Modified: Tue, 04 Aug 2026 01:43:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dff0d25b5d25282bda78ff01d21fba25c255427687450f1f6e1926c99d9f041c`  
		Last Modified: Tue, 04 Aug 2026 01:43:32 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fc668cfba2950b0f91f7b60d8d399a957ee4c990763b0e87abc0e89bf66951b`  
		Last Modified: Tue, 04 Aug 2026 01:43:37 GMT  
		Size: 261.5 MB (261516060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15a369849dbf63f14bdd7aaf3972e977bd5fabe02c298cec152eb948179c62c6`  
		Last Modified: Tue, 04 Aug 2026 01:43:32 GMT  
		Size: 5.0 KB (5002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:7.0` - unknown; unknown

```console
$ docker pull mongo@sha256:4bd8a659ffb6b4dd0e7cb149716bb6c032a0501c2252af76b8f64d33aaecf3b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3229627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab4a0c11f718ca26ef92302af8525d49bfea7615bc85a0e594d49eed5b1a1bb3`

```dockerfile
```

-	Layers:
	-	`sha256:b3c1ad30c0863ad192a6fdc2d4a7590971f705441d05c63e74b4fec5e14124a3`  
		Last Modified: Tue, 04 Aug 2026 01:43:31 GMT  
		Size: 3.2 MB (3201740 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0da68b64f60de2c32251d8b3324b9cdc25ba68b1fe2220491470b88a239b92fa`  
		Last Modified: Tue, 04 Aug 2026 01:43:31 GMT  
		Size: 27.9 KB (27887 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:7.0` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:640a48a0e5a071bba50bcc597e328615c2d77d4b72ee5e1471e63d792d0ed4b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.7 MB (279710555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d58a07b4b2ecaff800c05ed786685d18dcbb5b31a801fdc57bdfb819a9f46c8f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:17:43 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 04 Aug 2026 01:17:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:18:06 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 01:18:06 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 04 Aug 2026 01:18:06 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 04 Aug 2026 01:18:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-7.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor 'E58830201F7DD82CD808AA84160D26BB1785BA38' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 01:18:06 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:18:06 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 04 Aug 2026 01:18:06 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 04 Aug 2026 01:18:06 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 04 Aug 2026 01:18:06 GMT
ENV MONGO_MAJOR=7.0
# Tue, 04 Aug 2026 01:18:06 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu jammy/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 04 Aug 2026 01:18:06 GMT
ENV MONGO_VERSION=7.0.39
# Tue, 04 Aug 2026 01:18:28 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 04 Aug 2026 01:18:28 GMT
VOLUME [/data/db /data/configdb]
# Tue, 04 Aug 2026 01:18:28 GMT
ENV HOME=/data/db
# Tue, 04 Aug 2026 01:18:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:18:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:18:28 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 04 Aug 2026 01:18:28 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca55afed0d547b2bddd66f896e8cbf6f6f8a92550d4da65dda28b7cc3bd12bb0`  
		Last Modified: Tue, 04 Aug 2026 01:18:58 GMT  
		Size: 1.8 KB (1783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3bcfafad474cfdc98378f991a88e408d020b1dcccc773c0da0ce0eb7eacb42b`  
		Last Modified: Tue, 04 Aug 2026 01:18:58 GMT  
		Size: 1.4 MB (1438804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08134bc9c29043bf18de04d8aa2b6190f428e7959867dab340adff35fc8b209c`  
		Last Modified: Tue, 04 Aug 2026 01:18:58 GMT  
		Size: 850.7 KB (850689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1a561de01d5ac9688794849a8badfeb2a17776837d66623888a75caa3926289`  
		Last Modified: Tue, 04 Aug 2026 01:18:58 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1faf605c88998e37dd2e31d9b6f1b551cbafca04928e86a3449cebd002776b1`  
		Last Modified: Tue, 04 Aug 2026 01:19:00 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84caf8f4bf78532fd63c3e5deb1c108ebe901cc4e30e777c13dc518c0675b27d`  
		Last Modified: Tue, 04 Aug 2026 01:19:05 GMT  
		Size: 249.8 MB (249793868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c76898d3b7f6d644ee057054cd80e6ea26c4375ff583df82295c138e9854b16c`  
		Last Modified: Tue, 04 Aug 2026 01:19:00 GMT  
		Size: 5.0 KB (5000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:7.0` - unknown; unknown

```console
$ docker pull mongo@sha256:67ea21b32b62023be91b7e66b86696700e9375379fd48395f2b1dc66c25e4b39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3230149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc4a47c4bd46adad3f44019a2e5fa43a8bd0ec065fc0465118c066a54d9de913`

```dockerfile
```

-	Layers:
	-	`sha256:5d3e9ba13bed6b24bed1771b0a2ad2c25d81b3ca07263b1c7f9f88dae1df12cb`  
		Last Modified: Tue, 04 Aug 2026 01:18:58 GMT  
		Size: 3.2 MB (3202059 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62e91acaff050f8817968b067e75dd10e38475807e5f65702fd08fe7dc83b5f1`  
		Last Modified: Tue, 04 Aug 2026 01:18:58 GMT  
		Size: 28.1 KB (28090 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:7.0` - windows version 10.0.26100.33158; amd64

```console
$ docker pull mongo@sha256:70321ae72ea96b88a94dfda6ae26e2a1830f8e4f1dcb18e3dd65fcbaeb6a8f66
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 GB (2979862324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf4f965859fb1c97f4afc10bc7ffb4ab33808634e3e8a8cf8c428d17fceb608d`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Wed, 22 Jul 2026 22:18:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 22 Jul 2026 22:18:33 GMT
ENV MONGO_VERSION=7.0.39
# Wed, 22 Jul 2026 22:18:34 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.39-signed.msi
# Wed, 22 Jul 2026 22:18:35 GMT
ENV MONGO_DOWNLOAD_SHA256=ba908ce950272f3039acb53e3209fe1af5d6533d49bb14f3954ad68c26490edf
# Wed, 22 Jul 2026 22:21:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 22 Jul 2026 22:21:33 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 22 Jul 2026 22:21:34 GMT
EXPOSE 27017
# Wed, 22 Jul 2026 22:21:34 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24b28706e4e5f31fae7935e5a79e6df5d7a2eb3e69c8c19ca723f41f0b45f6f`  
		Last Modified: Tue, 14 Jul 2026 17:58:20 GMT  
		Size: 831.9 MB (831948874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf62e988e42551103f8911da578eea9619eb3640dec82e1713932cd2891bdb1`  
		Last Modified: Wed, 22 Jul 2026 22:21:49 GMT  
		Size: 1.4 KB (1363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a18991bca6668a5d05857b26741b59f66f5fa5b4832e4a198f88684e7fe7d19`  
		Last Modified: Wed, 22 Jul 2026 22:21:49 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e0fa1fa11213f2a42e593ea7c575912a10ac95b256c5fbaed1e665881ac44b`  
		Last Modified: Wed, 22 Jul 2026 22:21:49 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b3d586b6f9c362b08ac254e34fc584ae589deafdb096736a919013e6ed8b7e`  
		Last Modified: Wed, 22 Jul 2026 22:21:48 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9379c803106bcf8fe53491a0cecb0af21f2ff014e9e9da86cd427a1ba4bfe98`  
		Last Modified: Wed, 22 Jul 2026 22:22:38 GMT  
		Size: 624.8 MB (624845132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f440c1d8659ec352c2eb9b793f673f972448c188a5af97bd742d94f76b813fd4`  
		Last Modified: Wed, 22 Jul 2026 22:21:48 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdae7c87e57137ab358319b9d4770f266eb5701c701f4ee398ba8a0c76bb3bb9`  
		Last Modified: Wed, 22 Jul 2026 22:21:48 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6846fa7f0b1a6f4d0e6e7f288862a0039d0fdbed3f8259e8581f2a03b156c27`  
		Last Modified: Wed, 22 Jul 2026 22:21:48 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:7.0` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:a0903ab038bfc5b8d61b9254c266b76ba56dc4964ac0d4d01bcacae2271028dc
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2782481672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b87f82381e6cb8d6833e4df782ade8ba1f026a96babbab0d878cbcc82f72c1fe`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Wed, 22 Jul 2026 22:18:55 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 22 Jul 2026 22:32:19 GMT
ENV MONGO_VERSION=7.0.39
# Wed, 22 Jul 2026 22:32:19 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.39-signed.msi
# Wed, 22 Jul 2026 22:32:20 GMT
ENV MONGO_DOWNLOAD_SHA256=ba908ce950272f3039acb53e3209fe1af5d6533d49bb14f3954ad68c26490edf
# Wed, 22 Jul 2026 22:34:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 22 Jul 2026 22:34:03 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 22 Jul 2026 22:34:04 GMT
EXPOSE 27017
# Wed, 22 Jul 2026 22:34:05 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0675e37b24741ccc9e6ff6dda8512e3be78ba3519c8af33b04872e4738349249`  
		Last Modified: Tue, 14 Jul 2026 18:09:28 GMT  
		Size: 668.5 MB (668534031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537b255253cbf6488b4f77b9be79c27f8d178d5a90feda1197946c53ea15aff1`  
		Last Modified: Wed, 22 Jul 2026 22:22:16 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003a16100e947e8b9d45430c59d74f2c7ddb787fd6fc24c2b8411211f2bf5891`  
		Last Modified: Wed, 22 Jul 2026 22:34:19 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a73363b7d1181531153e7b1d930d17eb7da32a8d5704dd33b537eb7a976898c`  
		Last Modified: Wed, 22 Jul 2026 22:34:19 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:621769b79906abd4f4e5763a27a981119ffa919e164755d8ef01c485fb1b37a9`  
		Last Modified: Wed, 22 Jul 2026 22:34:17 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:505a743fec231ca6c50a74a535a365fc6f56b6a4d377791234eb3b8e32185636`  
		Last Modified: Wed, 22 Jul 2026 22:35:11 GMT  
		Size: 624.9 MB (624919350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab1d52d24cc4b0910735bbe81380cee52c6c845cda8039455ec5d272a8676314`  
		Last Modified: Wed, 22 Jul 2026 22:34:17 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30bbf64ede8739595b58e43db41b89fc890b8ba5df24eef85e0ae5c2c04772fe`  
		Last Modified: Wed, 22 Jul 2026 22:34:17 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ffc29ca00980550c88e80ac0be52a56977237d5387593bde15e58f11975aab`  
		Last Modified: Wed, 22 Jul 2026 22:34:17 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:7.0-jammy`

```console
$ docker pull mongo@sha256:04582c3a144d088f841c446abfc19f79adcefa8bd00ad4a7fb18e27b9585c5d6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mongo:7.0-jammy` - linux; amd64

```console
$ docker pull mongo@sha256:e68ebd505eb6b5c5b5c6c3486bd208fed62e2765b9d7f2f5262fb172481df26f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.6 MB (293630855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cada79a950e1e83cbfc6caf34c7729a9d4b841bf0077adfb9cb62802ea3f077a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:42:18 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 04 Aug 2026 01:42:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:42:39 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 01:42:39 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 04 Aug 2026 01:42:39 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 04 Aug 2026 01:42:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-7.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor 'E58830201F7DD82CD808AA84160D26BB1785BA38' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 01:42:39 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:42:39 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 04 Aug 2026 01:42:39 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 04 Aug 2026 01:42:39 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 04 Aug 2026 01:42:39 GMT
ENV MONGO_MAJOR=7.0
# Tue, 04 Aug 2026 01:42:39 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu jammy/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 04 Aug 2026 01:42:39 GMT
ENV MONGO_VERSION=7.0.39
# Tue, 04 Aug 2026 01:43:00 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 04 Aug 2026 01:43:00 GMT
VOLUME [/data/db /data/configdb]
# Tue, 04 Aug 2026 01:43:00 GMT
ENV HOME=/data/db
# Tue, 04 Aug 2026 01:43:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:43:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:43:00 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 04 Aug 2026 01:43:00 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9edaf47f313bbe64bf4b333b2661b5cf286ea6e8665e8a8d8bf65b57738a937f`  
		Last Modified: Tue, 04 Aug 2026 01:43:31 GMT  
		Size: 1.8 KB (1779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb94a6d99c0a9154c60097417b4f1336a59c7a9e031586b68d7f436711ced6a3`  
		Last Modified: Tue, 04 Aug 2026 01:43:31 GMT  
		Size: 1.5 MB (1472730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8932aff54341185387612c974c97cf4982e12b6b268a2da3f18e655e75731844`  
		Last Modified: Tue, 04 Aug 2026 01:43:31 GMT  
		Size: 898.4 KB (898387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b0954780896c1cfcddbddea5c06e3dee2e2bef0610db4638147e8914052b9d0`  
		Last Modified: Tue, 04 Aug 2026 01:43:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dff0d25b5d25282bda78ff01d21fba25c255427687450f1f6e1926c99d9f041c`  
		Last Modified: Tue, 04 Aug 2026 01:43:32 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fc668cfba2950b0f91f7b60d8d399a957ee4c990763b0e87abc0e89bf66951b`  
		Last Modified: Tue, 04 Aug 2026 01:43:37 GMT  
		Size: 261.5 MB (261516060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15a369849dbf63f14bdd7aaf3972e977bd5fabe02c298cec152eb948179c62c6`  
		Last Modified: Tue, 04 Aug 2026 01:43:32 GMT  
		Size: 5.0 KB (5002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:7.0-jammy` - unknown; unknown

```console
$ docker pull mongo@sha256:4bd8a659ffb6b4dd0e7cb149716bb6c032a0501c2252af76b8f64d33aaecf3b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3229627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab4a0c11f718ca26ef92302af8525d49bfea7615bc85a0e594d49eed5b1a1bb3`

```dockerfile
```

-	Layers:
	-	`sha256:b3c1ad30c0863ad192a6fdc2d4a7590971f705441d05c63e74b4fec5e14124a3`  
		Last Modified: Tue, 04 Aug 2026 01:43:31 GMT  
		Size: 3.2 MB (3201740 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0da68b64f60de2c32251d8b3324b9cdc25ba68b1fe2220491470b88a239b92fa`  
		Last Modified: Tue, 04 Aug 2026 01:43:31 GMT  
		Size: 27.9 KB (27887 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:7.0-jammy` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:640a48a0e5a071bba50bcc597e328615c2d77d4b72ee5e1471e63d792d0ed4b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.7 MB (279710555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d58a07b4b2ecaff800c05ed786685d18dcbb5b31a801fdc57bdfb819a9f46c8f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:17:43 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 04 Aug 2026 01:17:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:18:06 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 01:18:06 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 04 Aug 2026 01:18:06 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 04 Aug 2026 01:18:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-7.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor 'E58830201F7DD82CD808AA84160D26BB1785BA38' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 01:18:06 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:18:06 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 04 Aug 2026 01:18:06 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 04 Aug 2026 01:18:06 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 04 Aug 2026 01:18:06 GMT
ENV MONGO_MAJOR=7.0
# Tue, 04 Aug 2026 01:18:06 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu jammy/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 04 Aug 2026 01:18:06 GMT
ENV MONGO_VERSION=7.0.39
# Tue, 04 Aug 2026 01:18:28 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 04 Aug 2026 01:18:28 GMT
VOLUME [/data/db /data/configdb]
# Tue, 04 Aug 2026 01:18:28 GMT
ENV HOME=/data/db
# Tue, 04 Aug 2026 01:18:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:18:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:18:28 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 04 Aug 2026 01:18:28 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca55afed0d547b2bddd66f896e8cbf6f6f8a92550d4da65dda28b7cc3bd12bb0`  
		Last Modified: Tue, 04 Aug 2026 01:18:58 GMT  
		Size: 1.8 KB (1783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3bcfafad474cfdc98378f991a88e408d020b1dcccc773c0da0ce0eb7eacb42b`  
		Last Modified: Tue, 04 Aug 2026 01:18:58 GMT  
		Size: 1.4 MB (1438804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08134bc9c29043bf18de04d8aa2b6190f428e7959867dab340adff35fc8b209c`  
		Last Modified: Tue, 04 Aug 2026 01:18:58 GMT  
		Size: 850.7 KB (850689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1a561de01d5ac9688794849a8badfeb2a17776837d66623888a75caa3926289`  
		Last Modified: Tue, 04 Aug 2026 01:18:58 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1faf605c88998e37dd2e31d9b6f1b551cbafca04928e86a3449cebd002776b1`  
		Last Modified: Tue, 04 Aug 2026 01:19:00 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84caf8f4bf78532fd63c3e5deb1c108ebe901cc4e30e777c13dc518c0675b27d`  
		Last Modified: Tue, 04 Aug 2026 01:19:05 GMT  
		Size: 249.8 MB (249793868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c76898d3b7f6d644ee057054cd80e6ea26c4375ff583df82295c138e9854b16c`  
		Last Modified: Tue, 04 Aug 2026 01:19:00 GMT  
		Size: 5.0 KB (5000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:7.0-jammy` - unknown; unknown

```console
$ docker pull mongo@sha256:67ea21b32b62023be91b7e66b86696700e9375379fd48395f2b1dc66c25e4b39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3230149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc4a47c4bd46adad3f44019a2e5fa43a8bd0ec065fc0465118c066a54d9de913`

```dockerfile
```

-	Layers:
	-	`sha256:5d3e9ba13bed6b24bed1771b0a2ad2c25d81b3ca07263b1c7f9f88dae1df12cb`  
		Last Modified: Tue, 04 Aug 2026 01:18:58 GMT  
		Size: 3.2 MB (3202059 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62e91acaff050f8817968b067e75dd10e38475807e5f65702fd08fe7dc83b5f1`  
		Last Modified: Tue, 04 Aug 2026 01:18:58 GMT  
		Size: 28.1 KB (28090 bytes)  
		MIME: application/vnd.in-toto+json

## `mongo:7.0-nanoserver`

```console
$ docker pull mongo@sha256:026e10f7d5ce2e55662428d50b5dd93308a8882bc9877b22fd5e8ea602ea215f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `mongo:7.0-nanoserver` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:75ff80ff960e2454608551939a90c063e32c9c0b7535f8ea5d51e36a5c3a6cff
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **748.3 MB (748271840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7a87dca5c21deba090193a08cfcf89526b7608de66b3d48b6486d98b0d6bbad`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Wed, 22 Jul 2026 23:13:56 GMT
SHELL [cmd /S /C]
# Wed, 22 Jul 2026 23:13:57 GMT
USER ContainerAdministrator
# Wed, 22 Jul 2026 23:14:13 GMT
RUN setx /m PATH "C:\mongodb\bin;%PATH%"
# Wed, 22 Jul 2026 23:14:14 GMT
USER ContainerUser
# Wed, 22 Jul 2026 23:18:10 GMT
COPY multi:540d6dd70b1e7484f1958dc08b337aeb56cf8a92fe38be4c279dd406990d6935 in C:\Windows\System32\ 
# Wed, 22 Jul 2026 23:25:16 GMT
ENV MONGO_VERSION=7.0.39
# Wed, 22 Jul 2026 23:25:46 GMT
COPY dir:ff4fc2d27911ec9e57e420b3af3ff048e53414edb6df28ea52b4dd4f54b2f49e in C:\mongodb 
# Wed, 22 Jul 2026 23:26:04 GMT
RUN mongod --version
# Wed, 22 Jul 2026 23:26:05 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 22 Jul 2026 23:26:06 GMT
EXPOSE 27017
# Wed, 22 Jul 2026 23:26:07 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c26678dc3a52b2a129f0cd4d3078b1e458348014de6e72f99571635c8c2b26a4`  
		Last Modified: Wed, 22 Jul 2026 23:15:37 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50fb562446c0f358a4e15787944fa05973945826a1012f2b13d5d12ca2ad771c`  
		Last Modified: Wed, 22 Jul 2026 23:15:38 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c33bfbdac54fabf51d60d1a49280b7831c19f1b66e48e15947119220269270e`  
		Last Modified: Wed, 22 Jul 2026 23:15:36 GMT  
		Size: 85.8 KB (85760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd05a26054383e9b127c4c7f9e876281a22ac9d9bbb02beea7f170fccdccc45b`  
		Last Modified: Wed, 22 Jul 2026 23:15:36 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f8d205c5622151d975849efa97d03ad7676136620102f7f3095f526fedd8a32`  
		Last Modified: Wed, 22 Jul 2026 23:19:24 GMT  
		Size: 275.2 KB (275187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3176b1e481db7ea4af5402e50096b6d979f7f5e1a90563513ed63db0a49d84c5`  
		Last Modified: Wed, 22 Jul 2026 23:26:12 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:248b8367de34dea27e6ada238183ae08627e5f3cacb3ab93c495f167b1b63162`  
		Last Modified: Wed, 22 Jul 2026 23:27:06 GMT  
		Size: 623.7 MB (623710057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e947df758a95d1af9f599b4e71caca7fba6ce98cae77dda34690bcd697dc102`  
		Last Modified: Wed, 22 Jul 2026 23:26:11 GMT  
		Size: 90.3 KB (90255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb0d2f587a689e5eda042d7a0d6d5a0dd3caab431b5c75f41641e1addacd27c`  
		Last Modified: Wed, 22 Jul 2026 23:26:11 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac4e97782727383840eea82940df3292bdaf1f9123577c7d7145e5856a0b655`  
		Last Modified: Wed, 22 Jul 2026 23:26:11 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0978ba24a08fd9a50656159431603564229d8c60eaf40a545100a4b98dd73d78`  
		Last Modified: Wed, 22 Jul 2026 23:26:11 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:7.0-nanoserver-ltsc2022`

```console
$ docker pull mongo@sha256:026e10f7d5ce2e55662428d50b5dd93308a8882bc9877b22fd5e8ea602ea215f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `mongo:7.0-nanoserver-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:75ff80ff960e2454608551939a90c063e32c9c0b7535f8ea5d51e36a5c3a6cff
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **748.3 MB (748271840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7a87dca5c21deba090193a08cfcf89526b7608de66b3d48b6486d98b0d6bbad`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Wed, 22 Jul 2026 23:13:56 GMT
SHELL [cmd /S /C]
# Wed, 22 Jul 2026 23:13:57 GMT
USER ContainerAdministrator
# Wed, 22 Jul 2026 23:14:13 GMT
RUN setx /m PATH "C:\mongodb\bin;%PATH%"
# Wed, 22 Jul 2026 23:14:14 GMT
USER ContainerUser
# Wed, 22 Jul 2026 23:18:10 GMT
COPY multi:540d6dd70b1e7484f1958dc08b337aeb56cf8a92fe38be4c279dd406990d6935 in C:\Windows\System32\ 
# Wed, 22 Jul 2026 23:25:16 GMT
ENV MONGO_VERSION=7.0.39
# Wed, 22 Jul 2026 23:25:46 GMT
COPY dir:ff4fc2d27911ec9e57e420b3af3ff048e53414edb6df28ea52b4dd4f54b2f49e in C:\mongodb 
# Wed, 22 Jul 2026 23:26:04 GMT
RUN mongod --version
# Wed, 22 Jul 2026 23:26:05 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 22 Jul 2026 23:26:06 GMT
EXPOSE 27017
# Wed, 22 Jul 2026 23:26:07 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c26678dc3a52b2a129f0cd4d3078b1e458348014de6e72f99571635c8c2b26a4`  
		Last Modified: Wed, 22 Jul 2026 23:15:37 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50fb562446c0f358a4e15787944fa05973945826a1012f2b13d5d12ca2ad771c`  
		Last Modified: Wed, 22 Jul 2026 23:15:38 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c33bfbdac54fabf51d60d1a49280b7831c19f1b66e48e15947119220269270e`  
		Last Modified: Wed, 22 Jul 2026 23:15:36 GMT  
		Size: 85.8 KB (85760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd05a26054383e9b127c4c7f9e876281a22ac9d9bbb02beea7f170fccdccc45b`  
		Last Modified: Wed, 22 Jul 2026 23:15:36 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f8d205c5622151d975849efa97d03ad7676136620102f7f3095f526fedd8a32`  
		Last Modified: Wed, 22 Jul 2026 23:19:24 GMT  
		Size: 275.2 KB (275187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3176b1e481db7ea4af5402e50096b6d979f7f5e1a90563513ed63db0a49d84c5`  
		Last Modified: Wed, 22 Jul 2026 23:26:12 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:248b8367de34dea27e6ada238183ae08627e5f3cacb3ab93c495f167b1b63162`  
		Last Modified: Wed, 22 Jul 2026 23:27:06 GMT  
		Size: 623.7 MB (623710057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e947df758a95d1af9f599b4e71caca7fba6ce98cae77dda34690bcd697dc102`  
		Last Modified: Wed, 22 Jul 2026 23:26:11 GMT  
		Size: 90.3 KB (90255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb0d2f587a689e5eda042d7a0d6d5a0dd3caab431b5c75f41641e1addacd27c`  
		Last Modified: Wed, 22 Jul 2026 23:26:11 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac4e97782727383840eea82940df3292bdaf1f9123577c7d7145e5856a0b655`  
		Last Modified: Wed, 22 Jul 2026 23:26:11 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0978ba24a08fd9a50656159431603564229d8c60eaf40a545100a4b98dd73d78`  
		Last Modified: Wed, 22 Jul 2026 23:26:11 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:7.0-windowsservercore`

```console
$ docker pull mongo@sha256:27b80fd89e47e5ed0778f8ebeb5a1026120f6df8fcd2f4ae5609ce17882ce8a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `mongo:7.0-windowsservercore` - windows version 10.0.26100.33158; amd64

```console
$ docker pull mongo@sha256:70321ae72ea96b88a94dfda6ae26e2a1830f8e4f1dcb18e3dd65fcbaeb6a8f66
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 GB (2979862324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf4f965859fb1c97f4afc10bc7ffb4ab33808634e3e8a8cf8c428d17fceb608d`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Wed, 22 Jul 2026 22:18:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 22 Jul 2026 22:18:33 GMT
ENV MONGO_VERSION=7.0.39
# Wed, 22 Jul 2026 22:18:34 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.39-signed.msi
# Wed, 22 Jul 2026 22:18:35 GMT
ENV MONGO_DOWNLOAD_SHA256=ba908ce950272f3039acb53e3209fe1af5d6533d49bb14f3954ad68c26490edf
# Wed, 22 Jul 2026 22:21:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 22 Jul 2026 22:21:33 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 22 Jul 2026 22:21:34 GMT
EXPOSE 27017
# Wed, 22 Jul 2026 22:21:34 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24b28706e4e5f31fae7935e5a79e6df5d7a2eb3e69c8c19ca723f41f0b45f6f`  
		Last Modified: Tue, 14 Jul 2026 17:58:20 GMT  
		Size: 831.9 MB (831948874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf62e988e42551103f8911da578eea9619eb3640dec82e1713932cd2891bdb1`  
		Last Modified: Wed, 22 Jul 2026 22:21:49 GMT  
		Size: 1.4 KB (1363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a18991bca6668a5d05857b26741b59f66f5fa5b4832e4a198f88684e7fe7d19`  
		Last Modified: Wed, 22 Jul 2026 22:21:49 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e0fa1fa11213f2a42e593ea7c575912a10ac95b256c5fbaed1e665881ac44b`  
		Last Modified: Wed, 22 Jul 2026 22:21:49 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b3d586b6f9c362b08ac254e34fc584ae589deafdb096736a919013e6ed8b7e`  
		Last Modified: Wed, 22 Jul 2026 22:21:48 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9379c803106bcf8fe53491a0cecb0af21f2ff014e9e9da86cd427a1ba4bfe98`  
		Last Modified: Wed, 22 Jul 2026 22:22:38 GMT  
		Size: 624.8 MB (624845132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f440c1d8659ec352c2eb9b793f673f972448c188a5af97bd742d94f76b813fd4`  
		Last Modified: Wed, 22 Jul 2026 22:21:48 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdae7c87e57137ab358319b9d4770f266eb5701c701f4ee398ba8a0c76bb3bb9`  
		Last Modified: Wed, 22 Jul 2026 22:21:48 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6846fa7f0b1a6f4d0e6e7f288862a0039d0fdbed3f8259e8581f2a03b156c27`  
		Last Modified: Wed, 22 Jul 2026 22:21:48 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:7.0-windowsservercore` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:a0903ab038bfc5b8d61b9254c266b76ba56dc4964ac0d4d01bcacae2271028dc
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2782481672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b87f82381e6cb8d6833e4df782ade8ba1f026a96babbab0d878cbcc82f72c1fe`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Wed, 22 Jul 2026 22:18:55 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 22 Jul 2026 22:32:19 GMT
ENV MONGO_VERSION=7.0.39
# Wed, 22 Jul 2026 22:32:19 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.39-signed.msi
# Wed, 22 Jul 2026 22:32:20 GMT
ENV MONGO_DOWNLOAD_SHA256=ba908ce950272f3039acb53e3209fe1af5d6533d49bb14f3954ad68c26490edf
# Wed, 22 Jul 2026 22:34:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 22 Jul 2026 22:34:03 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 22 Jul 2026 22:34:04 GMT
EXPOSE 27017
# Wed, 22 Jul 2026 22:34:05 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0675e37b24741ccc9e6ff6dda8512e3be78ba3519c8af33b04872e4738349249`  
		Last Modified: Tue, 14 Jul 2026 18:09:28 GMT  
		Size: 668.5 MB (668534031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537b255253cbf6488b4f77b9be79c27f8d178d5a90feda1197946c53ea15aff1`  
		Last Modified: Wed, 22 Jul 2026 22:22:16 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003a16100e947e8b9d45430c59d74f2c7ddb787fd6fc24c2b8411211f2bf5891`  
		Last Modified: Wed, 22 Jul 2026 22:34:19 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a73363b7d1181531153e7b1d930d17eb7da32a8d5704dd33b537eb7a976898c`  
		Last Modified: Wed, 22 Jul 2026 22:34:19 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:621769b79906abd4f4e5763a27a981119ffa919e164755d8ef01c485fb1b37a9`  
		Last Modified: Wed, 22 Jul 2026 22:34:17 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:505a743fec231ca6c50a74a535a365fc6f56b6a4d377791234eb3b8e32185636`  
		Last Modified: Wed, 22 Jul 2026 22:35:11 GMT  
		Size: 624.9 MB (624919350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab1d52d24cc4b0910735bbe81380cee52c6c845cda8039455ec5d272a8676314`  
		Last Modified: Wed, 22 Jul 2026 22:34:17 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30bbf64ede8739595b58e43db41b89fc890b8ba5df24eef85e0ae5c2c04772fe`  
		Last Modified: Wed, 22 Jul 2026 22:34:17 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ffc29ca00980550c88e80ac0be52a56977237d5387593bde15e58f11975aab`  
		Last Modified: Wed, 22 Jul 2026 22:34:17 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:7.0-windowsservercore-ltsc2022`

```console
$ docker pull mongo@sha256:6fa78086030a9a97c4e391233cce0761530c7fcf9882c652e1f1e37ed7d72f95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `mongo:7.0-windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:a0903ab038bfc5b8d61b9254c266b76ba56dc4964ac0d4d01bcacae2271028dc
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2782481672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b87f82381e6cb8d6833e4df782ade8ba1f026a96babbab0d878cbcc82f72c1fe`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Wed, 22 Jul 2026 22:18:55 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 22 Jul 2026 22:32:19 GMT
ENV MONGO_VERSION=7.0.39
# Wed, 22 Jul 2026 22:32:19 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.39-signed.msi
# Wed, 22 Jul 2026 22:32:20 GMT
ENV MONGO_DOWNLOAD_SHA256=ba908ce950272f3039acb53e3209fe1af5d6533d49bb14f3954ad68c26490edf
# Wed, 22 Jul 2026 22:34:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 22 Jul 2026 22:34:03 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 22 Jul 2026 22:34:04 GMT
EXPOSE 27017
# Wed, 22 Jul 2026 22:34:05 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0675e37b24741ccc9e6ff6dda8512e3be78ba3519c8af33b04872e4738349249`  
		Last Modified: Tue, 14 Jul 2026 18:09:28 GMT  
		Size: 668.5 MB (668534031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537b255253cbf6488b4f77b9be79c27f8d178d5a90feda1197946c53ea15aff1`  
		Last Modified: Wed, 22 Jul 2026 22:22:16 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003a16100e947e8b9d45430c59d74f2c7ddb787fd6fc24c2b8411211f2bf5891`  
		Last Modified: Wed, 22 Jul 2026 22:34:19 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a73363b7d1181531153e7b1d930d17eb7da32a8d5704dd33b537eb7a976898c`  
		Last Modified: Wed, 22 Jul 2026 22:34:19 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:621769b79906abd4f4e5763a27a981119ffa919e164755d8ef01c485fb1b37a9`  
		Last Modified: Wed, 22 Jul 2026 22:34:17 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:505a743fec231ca6c50a74a535a365fc6f56b6a4d377791234eb3b8e32185636`  
		Last Modified: Wed, 22 Jul 2026 22:35:11 GMT  
		Size: 624.9 MB (624919350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab1d52d24cc4b0910735bbe81380cee52c6c845cda8039455ec5d272a8676314`  
		Last Modified: Wed, 22 Jul 2026 22:34:17 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30bbf64ede8739595b58e43db41b89fc890b8ba5df24eef85e0ae5c2c04772fe`  
		Last Modified: Wed, 22 Jul 2026 22:34:17 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ffc29ca00980550c88e80ac0be52a56977237d5387593bde15e58f11975aab`  
		Last Modified: Wed, 22 Jul 2026 22:34:17 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:7.0-windowsservercore-ltsc2025`

```console
$ docker pull mongo@sha256:c402d0997e6b96e734092b3f046ea28f5210778c54632e3e7c4931c550e5e941
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `mongo:7.0-windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull mongo@sha256:70321ae72ea96b88a94dfda6ae26e2a1830f8e4f1dcb18e3dd65fcbaeb6a8f66
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 GB (2979862324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf4f965859fb1c97f4afc10bc7ffb4ab33808634e3e8a8cf8c428d17fceb608d`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Wed, 22 Jul 2026 22:18:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 22 Jul 2026 22:18:33 GMT
ENV MONGO_VERSION=7.0.39
# Wed, 22 Jul 2026 22:18:34 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.39-signed.msi
# Wed, 22 Jul 2026 22:18:35 GMT
ENV MONGO_DOWNLOAD_SHA256=ba908ce950272f3039acb53e3209fe1af5d6533d49bb14f3954ad68c26490edf
# Wed, 22 Jul 2026 22:21:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 22 Jul 2026 22:21:33 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 22 Jul 2026 22:21:34 GMT
EXPOSE 27017
# Wed, 22 Jul 2026 22:21:34 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24b28706e4e5f31fae7935e5a79e6df5d7a2eb3e69c8c19ca723f41f0b45f6f`  
		Last Modified: Tue, 14 Jul 2026 17:58:20 GMT  
		Size: 831.9 MB (831948874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf62e988e42551103f8911da578eea9619eb3640dec82e1713932cd2891bdb1`  
		Last Modified: Wed, 22 Jul 2026 22:21:49 GMT  
		Size: 1.4 KB (1363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a18991bca6668a5d05857b26741b59f66f5fa5b4832e4a198f88684e7fe7d19`  
		Last Modified: Wed, 22 Jul 2026 22:21:49 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e0fa1fa11213f2a42e593ea7c575912a10ac95b256c5fbaed1e665881ac44b`  
		Last Modified: Wed, 22 Jul 2026 22:21:49 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b3d586b6f9c362b08ac254e34fc584ae589deafdb096736a919013e6ed8b7e`  
		Last Modified: Wed, 22 Jul 2026 22:21:48 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9379c803106bcf8fe53491a0cecb0af21f2ff014e9e9da86cd427a1ba4bfe98`  
		Last Modified: Wed, 22 Jul 2026 22:22:38 GMT  
		Size: 624.8 MB (624845132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f440c1d8659ec352c2eb9b793f673f972448c188a5af97bd742d94f76b813fd4`  
		Last Modified: Wed, 22 Jul 2026 22:21:48 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdae7c87e57137ab358319b9d4770f266eb5701c701f4ee398ba8a0c76bb3bb9`  
		Last Modified: Wed, 22 Jul 2026 22:21:48 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6846fa7f0b1a6f4d0e6e7f288862a0039d0fdbed3f8259e8581f2a03b156c27`  
		Last Modified: Wed, 22 Jul 2026 22:21:48 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:7.0.40`

**does not exist** (yet?)

## `mongo:7.0.40-jammy`

**does not exist** (yet?)

## `mongo:7.0.40-nanoserver`

**does not exist** (yet?)

## `mongo:7.0.40-nanoserver-ltsc2022`

**does not exist** (yet?)

## `mongo:7.0.40-windowsservercore`

**does not exist** (yet?)

## `mongo:7.0.40-windowsservercore-ltsc2022`

**does not exist** (yet?)

## `mongo:7.0.40-windowsservercore-ltsc2025`

**does not exist** (yet?)

## `mongo:8.0`

```console
$ docker pull mongo@sha256:98605bfa1bb2a15dd82109e1d78ad31527a9a744909fab4606076fa71a0ae515
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `mongo:8.0` - linux; amd64

```console
$ docker pull mongo@sha256:b112b1c1e552ab2b5bf5935b5662e1d19347d68effa8f2595687a42abfac5df4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.1 MB (315142819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b5b5f0924a8ba2e0eacafe95b2f7a830e6aad8876bd581b01101638d2bc30d5`
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
# Tue, 04 Aug 2026 01:41:58 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 04 Aug 2026 01:42:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:42:17 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 01:42:17 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 04 Aug 2026 01:42:17 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 04 Aug 2026 01:42:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-8.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor '4B0752C1BCA238C0B4EE14DC41DE058A4E7DCA05' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 01:42:17 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:42:17 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 04 Aug 2026 01:42:17 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 04 Aug 2026 01:42:17 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 04 Aug 2026 01:42:17 GMT
ENV MONGO_MAJOR=8.0
# Tue, 04 Aug 2026 01:42:17 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu noble/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 04 Aug 2026 01:42:17 GMT
ENV MONGO_VERSION=8.0.28
# Tue, 04 Aug 2026 01:42:36 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 04 Aug 2026 01:42:36 GMT
VOLUME [/data/db /data/configdb]
# Tue, 04 Aug 2026 01:42:36 GMT
ENV HOME=/data/db
# Tue, 04 Aug 2026 01:42:36 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Tue, 04 Aug 2026 01:42:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:42:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:42:36 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 04 Aug 2026 01:42:36 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:650f2eb51384ca4cce41b9ffd21c8a76547acaa307dddf26161c3a9a6d6a3e3f`  
		Last Modified: Tue, 04 Aug 2026 01:43:15 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7effa0a759488318bc91f35a0d20e19830f991c88d21a1ab94dfac9c406265b`  
		Last Modified: Tue, 04 Aug 2026 01:43:15 GMT  
		Size: 3.9 MB (3876619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6551f8494ea2c7d0c0500e017896c0b7be59b16c1f6e546905b51529561664a`  
		Last Modified: Tue, 04 Aug 2026 01:43:15 GMT  
		Size: 934.3 KB (934262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7371d5e7e1326afed7243bc675820ff6dea1664991d2d64a311a4b941138d75a`  
		Last Modified: Tue, 04 Aug 2026 01:43:03 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8b2be4216f20324dab337fcddfbca62b407e5bd62073213808a5b52d6c9fd9e`  
		Last Modified: Tue, 04 Aug 2026 01:43:16 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e70abd04bb6df1b029de3c614d22f25991b73ad310f736b3b3e9b5d653300b57`  
		Last Modified: Tue, 04 Aug 2026 01:43:22 GMT  
		Size: 280.6 MB (280574231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e704f243bdbc5d742f8a3698bd75fde9fd17156e0528a870c5233b4193eab67`  
		Last Modified: Tue, 04 Aug 2026 01:43:16 GMT  
		Size: 5.0 KB (5003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:8.0` - unknown; unknown

```console
$ docker pull mongo@sha256:252bee4e5cee9508ac813ada708697c0fee04ce673b037195d3af74aa81e63c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2670626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be7261c30f01770d16d0cab2d9a684d323587c2de713241d8cf291d94c8fb6c4`

```dockerfile
```

-	Layers:
	-	`sha256:30a737d71194150a868b05bfb1757fa798ec152ee7091dc292e60b2467282127`  
		Last Modified: Tue, 04 Aug 2026 01:43:15 GMT  
		Size: 2.6 MB (2643059 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce1a686986d580122e6098148ba5fcda901b676ce95f3dd9687dd9eec27be8ae`  
		Last Modified: Tue, 04 Aug 2026 01:43:15 GMT  
		Size: 27.6 KB (27567 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:8.0` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:fe58c4dcc0d1467bb1c51dab164c659746849e37b09ad9a7f1211ebcede35548
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.1 MB (299075790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92cdceb5e3a17c7f957e478f061130c2e94712af13e8f507d477d993ce2652f7`
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
# Tue, 04 Aug 2026 01:42:09 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 04 Aug 2026 01:42:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:42:32 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 01:42:32 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 04 Aug 2026 01:42:32 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 04 Aug 2026 01:42:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-8.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor '4B0752C1BCA238C0B4EE14DC41DE058A4E7DCA05' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 01:42:32 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:42:32 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 04 Aug 2026 01:42:32 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 04 Aug 2026 01:42:32 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 04 Aug 2026 01:42:32 GMT
ENV MONGO_MAJOR=8.0
# Tue, 04 Aug 2026 01:42:32 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu noble/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 04 Aug 2026 01:42:32 GMT
ENV MONGO_VERSION=8.0.28
# Tue, 04 Aug 2026 01:42:49 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 04 Aug 2026 01:42:49 GMT
VOLUME [/data/db /data/configdb]
# Tue, 04 Aug 2026 01:42:49 GMT
ENV HOME=/data/db
# Tue, 04 Aug 2026 01:42:49 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Tue, 04 Aug 2026 01:42:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:42:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:42:49 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 04 Aug 2026 01:42:49 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10a1892336a0f2cc2e24f6dc6a152a165d6a928e481d6295a8cce13300835063`  
		Last Modified: Tue, 04 Aug 2026 01:43:21 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe66e4e4d190489e9fda2ad790ac038faae25e0972d71d3dff12396603a241d5`  
		Last Modified: Tue, 04 Aug 2026 01:43:21 GMT  
		Size: 1.5 MB (1451882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0a8c45f948d0c80f459b97727df16a2c8a71dfb9bc3d4d67adfceef2487f44c`  
		Last Modified: Tue, 04 Aug 2026 01:43:21 GMT  
		Size: 886.5 KB (886501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd036e10d2eddc75a7a290ad2701b5e2ee26cfe2e81efac5b7fe8084c629cb80`  
		Last Modified: Tue, 04 Aug 2026 01:43:21 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e56270a13dd82f7af9b332ff9b432a125775142065d7e53ecb3ddafcc88adf02`  
		Last Modified: Tue, 04 Aug 2026 01:43:22 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a94bfb58001aeb27ace7f6d3f273808cfaa01b74881d41855eb716592266e9d4`  
		Last Modified: Tue, 04 Aug 2026 01:43:28 GMT  
		Size: 267.8 MB (267843991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d42bddf8e7d452c1b98be9f9370e173b091ab147ab9494581f119dc029425b03`  
		Last Modified: Tue, 04 Aug 2026 01:43:23 GMT  
		Size: 5.0 KB (5004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:8.0` - unknown; unknown

```console
$ docker pull mongo@sha256:6f642885984a7307937427baa49bf5d894ecb64f30e99aef33f7a081c43a97a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2671893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4879557f85aed3efb741de738558701983f2e46a146480969b4875702136ed52`

```dockerfile
```

-	Layers:
	-	`sha256:dc8fcc6119de01688dbc58a2dbab18e316a5c8d3ac9b3c3b9134e3ea00189fda`  
		Last Modified: Tue, 04 Aug 2026 01:43:21 GMT  
		Size: 2.6 MB (2644147 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:abeafd690e3e04009081fb2cd91a9a08016895bf6a8be1cfd604c1ed5f274ab0`  
		Last Modified: Tue, 04 Aug 2026 01:43:21 GMT  
		Size: 27.7 KB (27746 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:8.0` - windows version 10.0.26100.33158; amd64

```console
$ docker pull mongo@sha256:253192797920d4eed365cef37a6a133f1e2a72a6d079c4094e6a3821e1ae8697
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3153276750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e28d20cfa3a768439644bf96b39dd97cd0ca332e675e7748194c1c7f594e505c`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Wed, 22 Jul 2026 22:18:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 22 Jul 2026 22:18:33 GMT
ENV MONGO_VERSION=8.0.28
# Wed, 22 Jul 2026 22:18:34 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.0.28-signed.msi
# Wed, 22 Jul 2026 22:18:35 GMT
ENV MONGO_DOWNLOAD_SHA256=4dba821fbe63e380f80a21785bade811744a276c17d01e51c8c5bbbcd9c682fb
# Wed, 22 Jul 2026 22:21:59 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 22 Jul 2026 22:22:00 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 22 Jul 2026 22:22:00 GMT
EXPOSE 27017
# Wed, 22 Jul 2026 22:22:01 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24b28706e4e5f31fae7935e5a79e6df5d7a2eb3e69c8c19ca723f41f0b45f6f`  
		Last Modified: Tue, 14 Jul 2026 17:58:20 GMT  
		Size: 831.9 MB (831948874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af6ce730ffcb959e2a1e2f4a8fe396d6aaa0497fc3a275f899d582bc8b3df72`  
		Last Modified: Wed, 22 Jul 2026 22:22:17 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1062d6713bbf0f589fda7e357edd3b4d30d9806aca533d1940f63c8e3a5845b0`  
		Last Modified: Wed, 22 Jul 2026 22:22:17 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f99e842be9b8da98716e747539b741e6554049b3e3d1bacf9a7030bc346443`  
		Last Modified: Wed, 22 Jul 2026 22:22:17 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d6fe714bdc089bed3a295fffdb66da7e414884418dca4b239958470e83940de`  
		Last Modified: Wed, 22 Jul 2026 22:22:15 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbe5b3d14c6a286c23cce2742a0b8ea4941f3d08697ba1c04fdcaa311c86e1b9`  
		Last Modified: Wed, 22 Jul 2026 22:23:26 GMT  
		Size: 798.3 MB (798259527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5027043cff02beaa792c47ebae2fb5961aa8d9260a32e23190083229128386f3`  
		Last Modified: Wed, 22 Jul 2026 22:22:15 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e972e29be52df4be7f3bcc98a9056ce41f2b9da62485d4bc69a216e7ef6b73b7`  
		Last Modified: Wed, 22 Jul 2026 22:22:15 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:496df7e649af5e782f7d020c95a0c78062aa124ab8ccfb23b0486ade142a9dc2`  
		Last Modified: Wed, 22 Jul 2026 22:22:15 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:8.0` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:6435ea310512addbe6b6d3b148277c7cbea14ca2f111b9679f9db77897de2a83
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 GB (2955954890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a96d4d7c2f69868e426f424b5689ec5d4532e4d607a47e26b505c5dc057c444c`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Wed, 22 Jul 2026 22:18:55 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 22 Jul 2026 22:18:58 GMT
ENV MONGO_VERSION=8.0.28
# Wed, 22 Jul 2026 22:19:00 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.0.28-signed.msi
# Wed, 22 Jul 2026 22:19:01 GMT
ENV MONGO_DOWNLOAD_SHA256=4dba821fbe63e380f80a21785bade811744a276c17d01e51c8c5bbbcd9c682fb
# Wed, 22 Jul 2026 22:21:57 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 22 Jul 2026 22:21:59 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 22 Jul 2026 22:22:00 GMT
EXPOSE 27017
# Wed, 22 Jul 2026 22:22:01 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0675e37b24741ccc9e6ff6dda8512e3be78ba3519c8af33b04872e4738349249`  
		Last Modified: Tue, 14 Jul 2026 18:09:28 GMT  
		Size: 668.5 MB (668534031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537b255253cbf6488b4f77b9be79c27f8d178d5a90feda1197946c53ea15aff1`  
		Last Modified: Wed, 22 Jul 2026 22:22:16 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464d99f2bf5e69b8fcd66f41db8a0ca52f759da1231f978ef27627c6b3a46c92`  
		Last Modified: Wed, 22 Jul 2026 22:22:16 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89eefc03411720d31bc64799d9bea1e686070da740708fd105cc7602ffc0b6da`  
		Last Modified: Wed, 22 Jul 2026 22:22:16 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c506029d07608525197c35b7a3e21b987a12e4c742637f0cb43af1e95dbcef0`  
		Last Modified: Wed, 22 Jul 2026 22:22:15 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ef9dad0416c24b147c98552bff99bdd34f1598e836555839d4d4f1f5a06a9c7`  
		Last Modified: Wed, 22 Jul 2026 22:23:23 GMT  
		Size: 798.4 MB (798392545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b5a5e73bdd025ce0e12619bfecf64f46fce354936a3fb155ac16e17b28bb415`  
		Last Modified: Wed, 22 Jul 2026 22:22:14 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f6bb4a2814f3a33f411fc827b6695c26d90a73fb648bc2731afcb4b7ce6f07c`  
		Last Modified: Wed, 22 Jul 2026 22:22:14 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150916fad807b915f5ab9d824cc32b543e9a38bee107298c94176798c01e0200`  
		Last Modified: Wed, 22 Jul 2026 22:22:14 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.0-nanoserver`

```console
$ docker pull mongo@sha256:0d10aed42c9e9882e43155ea26e1ccddb5b73526c1023b11ccd67f8897349170
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `mongo:8.0-nanoserver` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:1604992494cbb9c514f3a44741509486418e3b163605bbcd47567734167f9b68
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **921.7 MB (921682401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01415ba0130ba9c8ebc0c2a92e279d5c72bc0e3048b9b0721e1f8c25acbd2e92`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Wed, 22 Jul 2026 23:13:56 GMT
SHELL [cmd /S /C]
# Wed, 22 Jul 2026 23:13:57 GMT
USER ContainerAdministrator
# Wed, 22 Jul 2026 23:14:13 GMT
RUN setx /m PATH "C:\mongodb\bin;%PATH%"
# Wed, 22 Jul 2026 23:14:14 GMT
USER ContainerUser
# Wed, 22 Jul 2026 23:18:10 GMT
COPY multi:540d6dd70b1e7484f1958dc08b337aeb56cf8a92fe38be4c279dd406990d6935 in C:\Windows\System32\ 
# Wed, 22 Jul 2026 23:21:48 GMT
ENV MONGO_VERSION=8.0.28
# Wed, 22 Jul 2026 23:22:25 GMT
COPY dir:cedd55d284f8171fb7f2dc3d5cad8aae890ddb10c602b23b471cafbb46c5681f in C:\mongodb 
# Wed, 22 Jul 2026 23:22:55 GMT
RUN mongod --version
# Wed, 22 Jul 2026 23:22:55 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 22 Jul 2026 23:22:56 GMT
EXPOSE 27017
# Wed, 22 Jul 2026 23:22:56 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c26678dc3a52b2a129f0cd4d3078b1e458348014de6e72f99571635c8c2b26a4`  
		Last Modified: Wed, 22 Jul 2026 23:15:37 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50fb562446c0f358a4e15787944fa05973945826a1012f2b13d5d12ca2ad771c`  
		Last Modified: Wed, 22 Jul 2026 23:15:38 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c33bfbdac54fabf51d60d1a49280b7831c19f1b66e48e15947119220269270e`  
		Last Modified: Wed, 22 Jul 2026 23:15:36 GMT  
		Size: 85.8 KB (85760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd05a26054383e9b127c4c7f9e876281a22ac9d9bbb02beea7f170fccdccc45b`  
		Last Modified: Wed, 22 Jul 2026 23:15:36 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f8d205c5622151d975849efa97d03ad7676136620102f7f3095f526fedd8a32`  
		Last Modified: Wed, 22 Jul 2026 23:19:24 GMT  
		Size: 275.2 KB (275187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78bc3c12a0eb30c9705619baa25ca1876cad2f33800ecba09664e1b968866534`  
		Last Modified: Wed, 22 Jul 2026 23:23:02 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7413981f293f0658cf91960c7cbae58737f05595e8aa243ab5a0c24e23149f5e`  
		Last Modified: Wed, 22 Jul 2026 23:24:09 GMT  
		Size: 797.1 MB (797120131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f000360831e25cfdbc436d1e02719ac22384317043d82cf5d33ee8b2896ed79f`  
		Last Modified: Wed, 22 Jul 2026 23:23:00 GMT  
		Size: 90.8 KB (90796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9baf3846006ba9df54b6f7c283f3c9d20cb227898bacb3608261234d96deb514`  
		Last Modified: Wed, 22 Jul 2026 23:23:00 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:807d9dadd2a5320d63ba6cf8237e9f2ad53ad68f1c1324ac7b305f19cdc74d12`  
		Last Modified: Wed, 22 Jul 2026 23:23:00 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1da17db9ac702e74eaa40adf135aa66910377a7021b8bf04d9f7d516ee56801`  
		Last Modified: Wed, 22 Jul 2026 23:23:00 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.0-nanoserver-ltsc2022`

```console
$ docker pull mongo@sha256:0d10aed42c9e9882e43155ea26e1ccddb5b73526c1023b11ccd67f8897349170
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `mongo:8.0-nanoserver-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:1604992494cbb9c514f3a44741509486418e3b163605bbcd47567734167f9b68
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **921.7 MB (921682401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01415ba0130ba9c8ebc0c2a92e279d5c72bc0e3048b9b0721e1f8c25acbd2e92`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Wed, 22 Jul 2026 23:13:56 GMT
SHELL [cmd /S /C]
# Wed, 22 Jul 2026 23:13:57 GMT
USER ContainerAdministrator
# Wed, 22 Jul 2026 23:14:13 GMT
RUN setx /m PATH "C:\mongodb\bin;%PATH%"
# Wed, 22 Jul 2026 23:14:14 GMT
USER ContainerUser
# Wed, 22 Jul 2026 23:18:10 GMT
COPY multi:540d6dd70b1e7484f1958dc08b337aeb56cf8a92fe38be4c279dd406990d6935 in C:\Windows\System32\ 
# Wed, 22 Jul 2026 23:21:48 GMT
ENV MONGO_VERSION=8.0.28
# Wed, 22 Jul 2026 23:22:25 GMT
COPY dir:cedd55d284f8171fb7f2dc3d5cad8aae890ddb10c602b23b471cafbb46c5681f in C:\mongodb 
# Wed, 22 Jul 2026 23:22:55 GMT
RUN mongod --version
# Wed, 22 Jul 2026 23:22:55 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 22 Jul 2026 23:22:56 GMT
EXPOSE 27017
# Wed, 22 Jul 2026 23:22:56 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c26678dc3a52b2a129f0cd4d3078b1e458348014de6e72f99571635c8c2b26a4`  
		Last Modified: Wed, 22 Jul 2026 23:15:37 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50fb562446c0f358a4e15787944fa05973945826a1012f2b13d5d12ca2ad771c`  
		Last Modified: Wed, 22 Jul 2026 23:15:38 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c33bfbdac54fabf51d60d1a49280b7831c19f1b66e48e15947119220269270e`  
		Last Modified: Wed, 22 Jul 2026 23:15:36 GMT  
		Size: 85.8 KB (85760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd05a26054383e9b127c4c7f9e876281a22ac9d9bbb02beea7f170fccdccc45b`  
		Last Modified: Wed, 22 Jul 2026 23:15:36 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f8d205c5622151d975849efa97d03ad7676136620102f7f3095f526fedd8a32`  
		Last Modified: Wed, 22 Jul 2026 23:19:24 GMT  
		Size: 275.2 KB (275187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78bc3c12a0eb30c9705619baa25ca1876cad2f33800ecba09664e1b968866534`  
		Last Modified: Wed, 22 Jul 2026 23:23:02 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7413981f293f0658cf91960c7cbae58737f05595e8aa243ab5a0c24e23149f5e`  
		Last Modified: Wed, 22 Jul 2026 23:24:09 GMT  
		Size: 797.1 MB (797120131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f000360831e25cfdbc436d1e02719ac22384317043d82cf5d33ee8b2896ed79f`  
		Last Modified: Wed, 22 Jul 2026 23:23:00 GMT  
		Size: 90.8 KB (90796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9baf3846006ba9df54b6f7c283f3c9d20cb227898bacb3608261234d96deb514`  
		Last Modified: Wed, 22 Jul 2026 23:23:00 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:807d9dadd2a5320d63ba6cf8237e9f2ad53ad68f1c1324ac7b305f19cdc74d12`  
		Last Modified: Wed, 22 Jul 2026 23:23:00 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1da17db9ac702e74eaa40adf135aa66910377a7021b8bf04d9f7d516ee56801`  
		Last Modified: Wed, 22 Jul 2026 23:23:00 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.0-noble`

```console
$ docker pull mongo@sha256:346f9f37eb0f1b75600929979a8f62372e6c717e58a291736db09188acaad0fe
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mongo:8.0-noble` - linux; amd64

```console
$ docker pull mongo@sha256:b112b1c1e552ab2b5bf5935b5662e1d19347d68effa8f2595687a42abfac5df4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.1 MB (315142819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b5b5f0924a8ba2e0eacafe95b2f7a830e6aad8876bd581b01101638d2bc30d5`
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
# Tue, 04 Aug 2026 01:41:58 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 04 Aug 2026 01:42:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:42:17 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 01:42:17 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 04 Aug 2026 01:42:17 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 04 Aug 2026 01:42:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-8.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor '4B0752C1BCA238C0B4EE14DC41DE058A4E7DCA05' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 01:42:17 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:42:17 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 04 Aug 2026 01:42:17 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 04 Aug 2026 01:42:17 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 04 Aug 2026 01:42:17 GMT
ENV MONGO_MAJOR=8.0
# Tue, 04 Aug 2026 01:42:17 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu noble/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 04 Aug 2026 01:42:17 GMT
ENV MONGO_VERSION=8.0.28
# Tue, 04 Aug 2026 01:42:36 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 04 Aug 2026 01:42:36 GMT
VOLUME [/data/db /data/configdb]
# Tue, 04 Aug 2026 01:42:36 GMT
ENV HOME=/data/db
# Tue, 04 Aug 2026 01:42:36 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Tue, 04 Aug 2026 01:42:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:42:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:42:36 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 04 Aug 2026 01:42:36 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:650f2eb51384ca4cce41b9ffd21c8a76547acaa307dddf26161c3a9a6d6a3e3f`  
		Last Modified: Tue, 04 Aug 2026 01:43:15 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7effa0a759488318bc91f35a0d20e19830f991c88d21a1ab94dfac9c406265b`  
		Last Modified: Tue, 04 Aug 2026 01:43:15 GMT  
		Size: 3.9 MB (3876619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6551f8494ea2c7d0c0500e017896c0b7be59b16c1f6e546905b51529561664a`  
		Last Modified: Tue, 04 Aug 2026 01:43:15 GMT  
		Size: 934.3 KB (934262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7371d5e7e1326afed7243bc675820ff6dea1664991d2d64a311a4b941138d75a`  
		Last Modified: Tue, 04 Aug 2026 01:43:03 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8b2be4216f20324dab337fcddfbca62b407e5bd62073213808a5b52d6c9fd9e`  
		Last Modified: Tue, 04 Aug 2026 01:43:16 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e70abd04bb6df1b029de3c614d22f25991b73ad310f736b3b3e9b5d653300b57`  
		Last Modified: Tue, 04 Aug 2026 01:43:22 GMT  
		Size: 280.6 MB (280574231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e704f243bdbc5d742f8a3698bd75fde9fd17156e0528a870c5233b4193eab67`  
		Last Modified: Tue, 04 Aug 2026 01:43:16 GMT  
		Size: 5.0 KB (5003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:8.0-noble` - unknown; unknown

```console
$ docker pull mongo@sha256:252bee4e5cee9508ac813ada708697c0fee04ce673b037195d3af74aa81e63c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2670626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be7261c30f01770d16d0cab2d9a684d323587c2de713241d8cf291d94c8fb6c4`

```dockerfile
```

-	Layers:
	-	`sha256:30a737d71194150a868b05bfb1757fa798ec152ee7091dc292e60b2467282127`  
		Last Modified: Tue, 04 Aug 2026 01:43:15 GMT  
		Size: 2.6 MB (2643059 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce1a686986d580122e6098148ba5fcda901b676ce95f3dd9687dd9eec27be8ae`  
		Last Modified: Tue, 04 Aug 2026 01:43:15 GMT  
		Size: 27.6 KB (27567 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:8.0-noble` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:fe58c4dcc0d1467bb1c51dab164c659746849e37b09ad9a7f1211ebcede35548
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.1 MB (299075790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92cdceb5e3a17c7f957e478f061130c2e94712af13e8f507d477d993ce2652f7`
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
# Tue, 04 Aug 2026 01:42:09 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 04 Aug 2026 01:42:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:42:32 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 01:42:32 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 04 Aug 2026 01:42:32 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 04 Aug 2026 01:42:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-8.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor '4B0752C1BCA238C0B4EE14DC41DE058A4E7DCA05' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 01:42:32 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:42:32 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 04 Aug 2026 01:42:32 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 04 Aug 2026 01:42:32 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 04 Aug 2026 01:42:32 GMT
ENV MONGO_MAJOR=8.0
# Tue, 04 Aug 2026 01:42:32 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu noble/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 04 Aug 2026 01:42:32 GMT
ENV MONGO_VERSION=8.0.28
# Tue, 04 Aug 2026 01:42:49 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 04 Aug 2026 01:42:49 GMT
VOLUME [/data/db /data/configdb]
# Tue, 04 Aug 2026 01:42:49 GMT
ENV HOME=/data/db
# Tue, 04 Aug 2026 01:42:49 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Tue, 04 Aug 2026 01:42:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:42:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:42:49 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 04 Aug 2026 01:42:49 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10a1892336a0f2cc2e24f6dc6a152a165d6a928e481d6295a8cce13300835063`  
		Last Modified: Tue, 04 Aug 2026 01:43:21 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe66e4e4d190489e9fda2ad790ac038faae25e0972d71d3dff12396603a241d5`  
		Last Modified: Tue, 04 Aug 2026 01:43:21 GMT  
		Size: 1.5 MB (1451882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0a8c45f948d0c80f459b97727df16a2c8a71dfb9bc3d4d67adfceef2487f44c`  
		Last Modified: Tue, 04 Aug 2026 01:43:21 GMT  
		Size: 886.5 KB (886501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd036e10d2eddc75a7a290ad2701b5e2ee26cfe2e81efac5b7fe8084c629cb80`  
		Last Modified: Tue, 04 Aug 2026 01:43:21 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e56270a13dd82f7af9b332ff9b432a125775142065d7e53ecb3ddafcc88adf02`  
		Last Modified: Tue, 04 Aug 2026 01:43:22 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a94bfb58001aeb27ace7f6d3f273808cfaa01b74881d41855eb716592266e9d4`  
		Last Modified: Tue, 04 Aug 2026 01:43:28 GMT  
		Size: 267.8 MB (267843991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d42bddf8e7d452c1b98be9f9370e173b091ab147ab9494581f119dc029425b03`  
		Last Modified: Tue, 04 Aug 2026 01:43:23 GMT  
		Size: 5.0 KB (5004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:8.0-noble` - unknown; unknown

```console
$ docker pull mongo@sha256:6f642885984a7307937427baa49bf5d894ecb64f30e99aef33f7a081c43a97a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2671893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4879557f85aed3efb741de738558701983f2e46a146480969b4875702136ed52`

```dockerfile
```

-	Layers:
	-	`sha256:dc8fcc6119de01688dbc58a2dbab18e316a5c8d3ac9b3c3b9134e3ea00189fda`  
		Last Modified: Tue, 04 Aug 2026 01:43:21 GMT  
		Size: 2.6 MB (2644147 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:abeafd690e3e04009081fb2cd91a9a08016895bf6a8be1cfd604c1ed5f274ab0`  
		Last Modified: Tue, 04 Aug 2026 01:43:21 GMT  
		Size: 27.7 KB (27746 bytes)  
		MIME: application/vnd.in-toto+json

## `mongo:8.0-windowsservercore`

```console
$ docker pull mongo@sha256:0fa5dd2215c92357da7b3e00bf39e01217595dded416c24bfe7e23ed69dbd88b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `mongo:8.0-windowsservercore` - windows version 10.0.26100.33158; amd64

```console
$ docker pull mongo@sha256:253192797920d4eed365cef37a6a133f1e2a72a6d079c4094e6a3821e1ae8697
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3153276750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e28d20cfa3a768439644bf96b39dd97cd0ca332e675e7748194c1c7f594e505c`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Wed, 22 Jul 2026 22:18:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 22 Jul 2026 22:18:33 GMT
ENV MONGO_VERSION=8.0.28
# Wed, 22 Jul 2026 22:18:34 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.0.28-signed.msi
# Wed, 22 Jul 2026 22:18:35 GMT
ENV MONGO_DOWNLOAD_SHA256=4dba821fbe63e380f80a21785bade811744a276c17d01e51c8c5bbbcd9c682fb
# Wed, 22 Jul 2026 22:21:59 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 22 Jul 2026 22:22:00 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 22 Jul 2026 22:22:00 GMT
EXPOSE 27017
# Wed, 22 Jul 2026 22:22:01 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24b28706e4e5f31fae7935e5a79e6df5d7a2eb3e69c8c19ca723f41f0b45f6f`  
		Last Modified: Tue, 14 Jul 2026 17:58:20 GMT  
		Size: 831.9 MB (831948874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af6ce730ffcb959e2a1e2f4a8fe396d6aaa0497fc3a275f899d582bc8b3df72`  
		Last Modified: Wed, 22 Jul 2026 22:22:17 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1062d6713bbf0f589fda7e357edd3b4d30d9806aca533d1940f63c8e3a5845b0`  
		Last Modified: Wed, 22 Jul 2026 22:22:17 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f99e842be9b8da98716e747539b741e6554049b3e3d1bacf9a7030bc346443`  
		Last Modified: Wed, 22 Jul 2026 22:22:17 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d6fe714bdc089bed3a295fffdb66da7e414884418dca4b239958470e83940de`  
		Last Modified: Wed, 22 Jul 2026 22:22:15 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbe5b3d14c6a286c23cce2742a0b8ea4941f3d08697ba1c04fdcaa311c86e1b9`  
		Last Modified: Wed, 22 Jul 2026 22:23:26 GMT  
		Size: 798.3 MB (798259527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5027043cff02beaa792c47ebae2fb5961aa8d9260a32e23190083229128386f3`  
		Last Modified: Wed, 22 Jul 2026 22:22:15 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e972e29be52df4be7f3bcc98a9056ce41f2b9da62485d4bc69a216e7ef6b73b7`  
		Last Modified: Wed, 22 Jul 2026 22:22:15 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:496df7e649af5e782f7d020c95a0c78062aa124ab8ccfb23b0486ade142a9dc2`  
		Last Modified: Wed, 22 Jul 2026 22:22:15 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:8.0-windowsservercore` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:6435ea310512addbe6b6d3b148277c7cbea14ca2f111b9679f9db77897de2a83
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 GB (2955954890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a96d4d7c2f69868e426f424b5689ec5d4532e4d607a47e26b505c5dc057c444c`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Wed, 22 Jul 2026 22:18:55 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 22 Jul 2026 22:18:58 GMT
ENV MONGO_VERSION=8.0.28
# Wed, 22 Jul 2026 22:19:00 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.0.28-signed.msi
# Wed, 22 Jul 2026 22:19:01 GMT
ENV MONGO_DOWNLOAD_SHA256=4dba821fbe63e380f80a21785bade811744a276c17d01e51c8c5bbbcd9c682fb
# Wed, 22 Jul 2026 22:21:57 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 22 Jul 2026 22:21:59 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 22 Jul 2026 22:22:00 GMT
EXPOSE 27017
# Wed, 22 Jul 2026 22:22:01 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0675e37b24741ccc9e6ff6dda8512e3be78ba3519c8af33b04872e4738349249`  
		Last Modified: Tue, 14 Jul 2026 18:09:28 GMT  
		Size: 668.5 MB (668534031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537b255253cbf6488b4f77b9be79c27f8d178d5a90feda1197946c53ea15aff1`  
		Last Modified: Wed, 22 Jul 2026 22:22:16 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464d99f2bf5e69b8fcd66f41db8a0ca52f759da1231f978ef27627c6b3a46c92`  
		Last Modified: Wed, 22 Jul 2026 22:22:16 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89eefc03411720d31bc64799d9bea1e686070da740708fd105cc7602ffc0b6da`  
		Last Modified: Wed, 22 Jul 2026 22:22:16 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c506029d07608525197c35b7a3e21b987a12e4c742637f0cb43af1e95dbcef0`  
		Last Modified: Wed, 22 Jul 2026 22:22:15 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ef9dad0416c24b147c98552bff99bdd34f1598e836555839d4d4f1f5a06a9c7`  
		Last Modified: Wed, 22 Jul 2026 22:23:23 GMT  
		Size: 798.4 MB (798392545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b5a5e73bdd025ce0e12619bfecf64f46fce354936a3fb155ac16e17b28bb415`  
		Last Modified: Wed, 22 Jul 2026 22:22:14 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f6bb4a2814f3a33f411fc827b6695c26d90a73fb648bc2731afcb4b7ce6f07c`  
		Last Modified: Wed, 22 Jul 2026 22:22:14 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150916fad807b915f5ab9d824cc32b543e9a38bee107298c94176798c01e0200`  
		Last Modified: Wed, 22 Jul 2026 22:22:14 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.0-windowsservercore-ltsc2022`

```console
$ docker pull mongo@sha256:f0ec4a7f90065171a86b907fb5a91b1806e3a2db08730dabdf9c33537af36dd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `mongo:8.0-windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:6435ea310512addbe6b6d3b148277c7cbea14ca2f111b9679f9db77897de2a83
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 GB (2955954890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a96d4d7c2f69868e426f424b5689ec5d4532e4d607a47e26b505c5dc057c444c`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Wed, 22 Jul 2026 22:18:55 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 22 Jul 2026 22:18:58 GMT
ENV MONGO_VERSION=8.0.28
# Wed, 22 Jul 2026 22:19:00 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.0.28-signed.msi
# Wed, 22 Jul 2026 22:19:01 GMT
ENV MONGO_DOWNLOAD_SHA256=4dba821fbe63e380f80a21785bade811744a276c17d01e51c8c5bbbcd9c682fb
# Wed, 22 Jul 2026 22:21:57 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 22 Jul 2026 22:21:59 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 22 Jul 2026 22:22:00 GMT
EXPOSE 27017
# Wed, 22 Jul 2026 22:22:01 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0675e37b24741ccc9e6ff6dda8512e3be78ba3519c8af33b04872e4738349249`  
		Last Modified: Tue, 14 Jul 2026 18:09:28 GMT  
		Size: 668.5 MB (668534031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537b255253cbf6488b4f77b9be79c27f8d178d5a90feda1197946c53ea15aff1`  
		Last Modified: Wed, 22 Jul 2026 22:22:16 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464d99f2bf5e69b8fcd66f41db8a0ca52f759da1231f978ef27627c6b3a46c92`  
		Last Modified: Wed, 22 Jul 2026 22:22:16 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89eefc03411720d31bc64799d9bea1e686070da740708fd105cc7602ffc0b6da`  
		Last Modified: Wed, 22 Jul 2026 22:22:16 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c506029d07608525197c35b7a3e21b987a12e4c742637f0cb43af1e95dbcef0`  
		Last Modified: Wed, 22 Jul 2026 22:22:15 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ef9dad0416c24b147c98552bff99bdd34f1598e836555839d4d4f1f5a06a9c7`  
		Last Modified: Wed, 22 Jul 2026 22:23:23 GMT  
		Size: 798.4 MB (798392545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b5a5e73bdd025ce0e12619bfecf64f46fce354936a3fb155ac16e17b28bb415`  
		Last Modified: Wed, 22 Jul 2026 22:22:14 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f6bb4a2814f3a33f411fc827b6695c26d90a73fb648bc2731afcb4b7ce6f07c`  
		Last Modified: Wed, 22 Jul 2026 22:22:14 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150916fad807b915f5ab9d824cc32b543e9a38bee107298c94176798c01e0200`  
		Last Modified: Wed, 22 Jul 2026 22:22:14 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.0-windowsservercore-ltsc2025`

```console
$ docker pull mongo@sha256:e0b22bc84b79cb4d7cdfbe6bdda48277fe3480c8dab2c205ed15bd410d035c6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `mongo:8.0-windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull mongo@sha256:253192797920d4eed365cef37a6a133f1e2a72a6d079c4094e6a3821e1ae8697
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3153276750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e28d20cfa3a768439644bf96b39dd97cd0ca332e675e7748194c1c7f594e505c`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Wed, 22 Jul 2026 22:18:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 22 Jul 2026 22:18:33 GMT
ENV MONGO_VERSION=8.0.28
# Wed, 22 Jul 2026 22:18:34 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.0.28-signed.msi
# Wed, 22 Jul 2026 22:18:35 GMT
ENV MONGO_DOWNLOAD_SHA256=4dba821fbe63e380f80a21785bade811744a276c17d01e51c8c5bbbcd9c682fb
# Wed, 22 Jul 2026 22:21:59 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 22 Jul 2026 22:22:00 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 22 Jul 2026 22:22:00 GMT
EXPOSE 27017
# Wed, 22 Jul 2026 22:22:01 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24b28706e4e5f31fae7935e5a79e6df5d7a2eb3e69c8c19ca723f41f0b45f6f`  
		Last Modified: Tue, 14 Jul 2026 17:58:20 GMT  
		Size: 831.9 MB (831948874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af6ce730ffcb959e2a1e2f4a8fe396d6aaa0497fc3a275f899d582bc8b3df72`  
		Last Modified: Wed, 22 Jul 2026 22:22:17 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1062d6713bbf0f589fda7e357edd3b4d30d9806aca533d1940f63c8e3a5845b0`  
		Last Modified: Wed, 22 Jul 2026 22:22:17 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f99e842be9b8da98716e747539b741e6554049b3e3d1bacf9a7030bc346443`  
		Last Modified: Wed, 22 Jul 2026 22:22:17 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d6fe714bdc089bed3a295fffdb66da7e414884418dca4b239958470e83940de`  
		Last Modified: Wed, 22 Jul 2026 22:22:15 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbe5b3d14c6a286c23cce2742a0b8ea4941f3d08697ba1c04fdcaa311c86e1b9`  
		Last Modified: Wed, 22 Jul 2026 22:23:26 GMT  
		Size: 798.3 MB (798259527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5027043cff02beaa792c47ebae2fb5961aa8d9260a32e23190083229128386f3`  
		Last Modified: Wed, 22 Jul 2026 22:22:15 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e972e29be52df4be7f3bcc98a9056ce41f2b9da62485d4bc69a216e7ef6b73b7`  
		Last Modified: Wed, 22 Jul 2026 22:22:15 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:496df7e649af5e782f7d020c95a0c78062aa124ab8ccfb23b0486ade142a9dc2`  
		Last Modified: Wed, 22 Jul 2026 22:22:15 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.0.29`

**does not exist** (yet?)

## `mongo:8.0.29-nanoserver`

**does not exist** (yet?)

## `mongo:8.0.29-nanoserver-ltsc2022`

**does not exist** (yet?)

## `mongo:8.0.29-noble`

**does not exist** (yet?)

## `mongo:8.0.29-windowsservercore`

**does not exist** (yet?)

## `mongo:8.0.29-windowsservercore-ltsc2022`

**does not exist** (yet?)

## `mongo:8.0.29-windowsservercore-ltsc2025`

**does not exist** (yet?)

## `mongo:8.3`

```console
$ docker pull mongo@sha256:2f02e2184c6d91c3208e5ab75a0707d1386a05377b20fdaf49a314815774d863
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `mongo:8.3` - linux; amd64

```console
$ docker pull mongo@sha256:4d47ba9b801505f591671aaa0848c20f929910c03e4a559b01ee8ffffe06ab79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.1 MB (300061206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:480725a1f2d54ff75e0c51b16ac3615247d73a3496ddd90cb73d6b3cec311d5d`
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
# Tue, 04 Aug 2026 01:41:56 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 04 Aug 2026 01:42:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:42:19 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 01:42:19 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 04 Aug 2026 01:42:19 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 04 Aug 2026 01:42:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-8.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor '4B0752C1BCA238C0B4EE14DC41DE058A4E7DCA05' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 01:42:19 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:42:19 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 04 Aug 2026 01:42:19 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 04 Aug 2026 01:42:19 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 04 Aug 2026 01:42:19 GMT
ENV MONGO_MAJOR=8.3
# Tue, 04 Aug 2026 01:42:19 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu noble/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 04 Aug 2026 01:42:19 GMT
ENV MONGO_VERSION=8.3.7
# Tue, 04 Aug 2026 01:42:39 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 04 Aug 2026 01:42:39 GMT
VOLUME [/data/db /data/configdb]
# Tue, 04 Aug 2026 01:42:39 GMT
ENV HOME=/data/db
# Tue, 04 Aug 2026 01:42:39 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Tue, 04 Aug 2026 01:42:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:42:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:42:39 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 04 Aug 2026 01:42:39 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ff47add410aef5970f8bdfd0c0255463170799816efdcb89c84ed22c1d36c5c`  
		Last Modified: Tue, 04 Aug 2026 01:43:12 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32d74650127d430a2220667587898b5b5025d1dedce0f9dd7f8a41897bddedd2`  
		Last Modified: Tue, 04 Aug 2026 01:43:13 GMT  
		Size: 3.9 MB (3876602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6f6c711879b08a6cfff489520e7bec35f27c9dd9713061d89ef87feb3399eed`  
		Last Modified: Tue, 04 Aug 2026 01:43:13 GMT  
		Size: 934.2 KB (934238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9b5a09abf4f97720fb58f873cb83517f40da95da0d6d95c26d880bdcf517e48`  
		Last Modified: Tue, 04 Aug 2026 01:43:13 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e174993013f48b85e6d371252511a539a11c32638654a452c7a7c0db1ad8322f`  
		Last Modified: Tue, 04 Aug 2026 01:43:14 GMT  
		Size: 262.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1aa14b82481cd85737f0788b273521463ff5797aa334694274b5421199284dd`  
		Last Modified: Tue, 04 Aug 2026 01:43:19 GMT  
		Size: 265.5 MB (265492661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9615b591156c1a466c68a81bfedb7f4e5bb8f4627962af4b20d5950b73f7ebc`  
		Last Modified: Tue, 04 Aug 2026 01:43:14 GMT  
		Size: 5.0 KB (5004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:8.3` - unknown; unknown

```console
$ docker pull mongo@sha256:b98760b36405196989b928ea5cdf6fb004a7a7cdbcba02d8a1b4cd81316703be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2670603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6c7fb16ba73151110dc502bcac5d097b267f3d323a5a1ef0dfe5670f42d6d85`

```dockerfile
```

-	Layers:
	-	`sha256:3591b36d0ba5303252a40050a478761be41523ecb1aef0d42f818c86a77afb5f`  
		Last Modified: Tue, 04 Aug 2026 01:43:13 GMT  
		Size: 2.6 MB (2643041 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:510cc9c4aebb3177a9cf6c8d5d835ece196ded45a99b2d49690b6adc5492504a`  
		Last Modified: Tue, 04 Aug 2026 01:43:13 GMT  
		Size: 27.6 KB (27562 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:8.3` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:ba257955e87599f369f37495004a8e5411d2ec61ffe960ba31c4591b1119721b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.0 MB (283998846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6285ae7ce4648634b93894bb21de0784ff81d109b3350b64f1f4331717f5c783`
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
# Tue, 04 Aug 2026 01:41:57 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 04 Aug 2026 01:42:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:42:17 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 01:42:17 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 04 Aug 2026 01:42:17 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 04 Aug 2026 01:42:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-8.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor '4B0752C1BCA238C0B4EE14DC41DE058A4E7DCA05' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 01:42:17 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:42:17 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 04 Aug 2026 01:42:17 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 04 Aug 2026 01:42:17 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 04 Aug 2026 01:42:17 GMT
ENV MONGO_MAJOR=8.3
# Tue, 04 Aug 2026 01:42:17 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu noble/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 04 Aug 2026 01:42:17 GMT
ENV MONGO_VERSION=8.3.7
# Tue, 04 Aug 2026 01:42:33 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 04 Aug 2026 01:42:33 GMT
VOLUME [/data/db /data/configdb]
# Tue, 04 Aug 2026 01:42:33 GMT
ENV HOME=/data/db
# Tue, 04 Aug 2026 01:42:33 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Tue, 04 Aug 2026 01:42:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:42:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:42:33 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 04 Aug 2026 01:42:33 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67ffcfbe0720ba2955941ab105b09c89757802dcce033a12161ae4405b2f2eff`  
		Last Modified: Tue, 04 Aug 2026 01:43:03 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70024f307f3715a56370f405ff8c509e4029f316790e972e3b0eebca5c7637f9`  
		Last Modified: Tue, 04 Aug 2026 01:43:03 GMT  
		Size: 1.5 MB (1451836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01c152e3b85ef5b2d33234fa05bd6e132df063c20b1d5baab716657135781cb6`  
		Last Modified: Tue, 04 Aug 2026 01:43:03 GMT  
		Size: 886.5 KB (886458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7371d5e7e1326afed7243bc675820ff6dea1664991d2d64a311a4b941138d75a`  
		Last Modified: Tue, 04 Aug 2026 01:43:03 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e089755ce9d53f706c72a98395a668a5bc99132df12dc4c56fa6b765eb85422`  
		Last Modified: Tue, 04 Aug 2026 01:43:04 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f314cef88a8f159cfa99326a49ea003a8805e05bec7a38c2868c561956dfb68a`  
		Last Modified: Tue, 04 Aug 2026 01:43:08 GMT  
		Size: 252.8 MB (252767136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c43d534b72545db99e19469f268a580da4b43cf70378434a484a02f917bc383`  
		Last Modified: Tue, 04 Aug 2026 01:43:04 GMT  
		Size: 5.0 KB (5004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:8.3` - unknown; unknown

```console
$ docker pull mongo@sha256:d90695daffd9611afe05fdddf13d1ba91f62eed6977d0d069762c966a8052d68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2671870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79cb2ad881814baaa1b7e38d38462223d6b333905fe1bc7f95779b0d4af5a4b0`

```dockerfile
```

-	Layers:
	-	`sha256:e93cacd3cf7120cfcedb263b186a770d0d53dd5dcd422500db52a52a8218a4d4`  
		Last Modified: Tue, 04 Aug 2026 01:43:03 GMT  
		Size: 2.6 MB (2644129 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8c4da8b1a055ab04de8d93ab24879a66121b9e20f08d596c2ed6d90f15bb037`  
		Last Modified: Tue, 04 Aug 2026 01:43:03 GMT  
		Size: 27.7 KB (27741 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:8.3` - windows version 10.0.26100.33158; amd64

```console
$ docker pull mongo@sha256:f5941b9a9ae08fd484b81ee91eb63cf0156f555e2c4f64102d091caed43240ff
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3277053241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dbc96a69500b716cb72d751adc9b4be9b407de9a85045251af0f25061e73610`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Wed, 22 Jul 2026 22:15:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 22 Jul 2026 22:16:00 GMT
ENV MONGO_VERSION=8.3.7
# Wed, 22 Jul 2026 22:16:01 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.3.7-signed.msi
# Wed, 22 Jul 2026 22:16:05 GMT
ENV MONGO_DOWNLOAD_SHA256=3e91c0a69f9cf20bfceaa7c8bc714d63ffbb8f0834a6e7043a734efacc97a8db
# Wed, 22 Jul 2026 22:20:36 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 22 Jul 2026 22:20:37 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 22 Jul 2026 22:20:38 GMT
EXPOSE 27017
# Wed, 22 Jul 2026 22:20:38 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24b28706e4e5f31fae7935e5a79e6df5d7a2eb3e69c8c19ca723f41f0b45f6f`  
		Last Modified: Tue, 14 Jul 2026 17:58:20 GMT  
		Size: 831.9 MB (831948874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d172116a401c329316c09cacb64e70e4ddbe775ad2969e9bfa4e44e0ad789f8a`  
		Last Modified: Wed, 22 Jul 2026 22:20:45 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12d62fb2fcd2db0fca01dd57f9448c2ea981a226061994666d58fd6d7aebd5b0`  
		Last Modified: Wed, 22 Jul 2026 22:20:45 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1191d5f87dfb91e15d01d227256157775b7ddf557e29d94bcb5fa1c514a2399d`  
		Last Modified: Wed, 22 Jul 2026 22:20:44 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f88acd34b97e85bec05d9ab24d09c5c5b95e5d547e48ac9958b402178f8b675`  
		Last Modified: Wed, 22 Jul 2026 22:20:43 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:292b329ba3e04c158dd2d2ba7f531e00fd14e8465eef27f2adc90c9225038792`  
		Last Modified: Wed, 22 Jul 2026 22:21:55 GMT  
		Size: 922.0 MB (922035949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5168c14c25b7a8a7c718c7d17989ead106d5fac519b58dbdf6f7310c132698c8`  
		Last Modified: Wed, 22 Jul 2026 22:20:43 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d526ca2c0856a4fdd920f1f99567a0e3fb431d99dc844aabe9d4ded868c3ddfb`  
		Last Modified: Wed, 22 Jul 2026 22:20:43 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bebba46ce333d7586e112be880ed88128d779044835e98f79647140096a5b95`  
		Last Modified: Wed, 22 Jul 2026 22:20:43 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:8.3` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:7007b84420d9e8cdbc7836f8f164005a0ed5e0f893f4e6fb1bc85e3090c16305
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 GB (3079705264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b9dcb8964aed6080b81980832d89e38f0ba2f976a3d4309bf817f2dc07e50b7`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Wed, 22 Jul 2026 22:16:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 22 Jul 2026 22:16:28 GMT
ENV MONGO_VERSION=8.3.7
# Wed, 22 Jul 2026 22:16:30 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.3.7-signed.msi
# Wed, 22 Jul 2026 22:16:31 GMT
ENV MONGO_DOWNLOAD_SHA256=3e91c0a69f9cf20bfceaa7c8bc714d63ffbb8f0834a6e7043a734efacc97a8db
# Wed, 22 Jul 2026 22:19:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 22 Jul 2026 22:19:49 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 22 Jul 2026 22:19:49 GMT
EXPOSE 27017
# Wed, 22 Jul 2026 22:19:51 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0675e37b24741ccc9e6ff6dda8512e3be78ba3519c8af33b04872e4738349249`  
		Last Modified: Tue, 14 Jul 2026 18:09:28 GMT  
		Size: 668.5 MB (668534031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5584867de281a2beafa0d0a1138b88207a1e1e0e9ab733516f82467f87abade`  
		Last Modified: Wed, 22 Jul 2026 22:20:03 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a99ce542b5356c54fcf84253f0f23fe50e2170955fe147ed284245eeb29556`  
		Last Modified: Wed, 22 Jul 2026 22:20:03 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9cac244b7dd1e182690cd85b14260e9166699741c04ff734e8965ecc80b1e3d`  
		Last Modified: Wed, 22 Jul 2026 22:20:03 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fdb9e5026ea672d16b3ba0d922a75ef45faaf43592792f45822752b0513a7e0`  
		Last Modified: Wed, 22 Jul 2026 22:20:01 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e190edb59aee5b5207214043e9baa5bb9fb15410e31e696d8672480b0337d50`  
		Last Modified: Wed, 22 Jul 2026 22:21:11 GMT  
		Size: 922.1 MB (922142979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e0f369ee92cf8e9c7c4ac19bde65088e1f3e5c4ac6e1134fcd14d088a92b1e`  
		Last Modified: Wed, 22 Jul 2026 22:20:01 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:866f2237493ccec05b499d4ac17b3285f9ef4487de7924dec913557db398483b`  
		Last Modified: Wed, 22 Jul 2026 22:20:01 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b1cf0b9b8753d8cb3b115d41c37f580682beddb4590f5e51abc27f7f52a34c`  
		Last Modified: Wed, 22 Jul 2026 22:20:01 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.3-nanoserver`

```console
$ docker pull mongo@sha256:7854f197d421e970ccc6198007ea9f977e87e481f5ca457c7d1100c338518ec1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `mongo:8.3-nanoserver` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:236ce95abd40ce4e6060d242fe83bda9e858ccaaafc58e1c9b0af43a43c4caee
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1045390881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab62eba52ff806ed6dbed8286cb8ef2ef834b4dfac2287a1a667733234efb3fe`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Wed, 22 Jul 2026 23:13:56 GMT
SHELL [cmd /S /C]
# Wed, 22 Jul 2026 23:13:57 GMT
USER ContainerAdministrator
# Wed, 22 Jul 2026 23:14:13 GMT
RUN setx /m PATH "C:\mongodb\bin;%PATH%"
# Wed, 22 Jul 2026 23:14:14 GMT
USER ContainerUser
# Wed, 22 Jul 2026 23:14:17 GMT
COPY multi:edf1670f741f0c0f034ec218dc51015484becee19afd9d4d712d1a864fd379ff in C:\Windows\System32\ 
# Wed, 22 Jul 2026 23:14:18 GMT
ENV MONGO_VERSION=8.3.7
# Wed, 22 Jul 2026 23:14:56 GMT
COPY dir:5739d5fd58fa5b638e66272113d3a2221851dfd2422fb0b837aa48acb42c440a in C:\mongodb 
# Wed, 22 Jul 2026 23:15:29 GMT
RUN mongod --version
# Wed, 22 Jul 2026 23:15:29 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 22 Jul 2026 23:15:29 GMT
EXPOSE 27017
# Wed, 22 Jul 2026 23:15:30 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c26678dc3a52b2a129f0cd4d3078b1e458348014de6e72f99571635c8c2b26a4`  
		Last Modified: Wed, 22 Jul 2026 23:15:37 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50fb562446c0f358a4e15787944fa05973945826a1012f2b13d5d12ca2ad771c`  
		Last Modified: Wed, 22 Jul 2026 23:15:38 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c33bfbdac54fabf51d60d1a49280b7831c19f1b66e48e15947119220269270e`  
		Last Modified: Wed, 22 Jul 2026 23:15:36 GMT  
		Size: 85.8 KB (85760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd05a26054383e9b127c4c7f9e876281a22ac9d9bbb02beea7f170fccdccc45b`  
		Last Modified: Wed, 22 Jul 2026 23:15:36 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38b643d4ec22c527782695ff8981f111da6cd0c95f607c8fd007f900bdebbaef`  
		Last Modified: Wed, 22 Jul 2026 23:15:36 GMT  
		Size: 300.4 KB (300408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44075c9cfc2bfcd7c6f741aaaa2722687a70712856a833ba04e013f128f439c5`  
		Last Modified: Wed, 22 Jul 2026 23:15:36 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f5d9f25b5e46dbd321a6b0c89c601670ef058e2b2ed625530570e7db009662`  
		Last Modified: Wed, 22 Jul 2026 23:16:50 GMT  
		Size: 920.8 MB (920805904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7587627087ba343c59d24561fde508e75090756d66378cb45cc7fa3e6143503d`  
		Last Modified: Wed, 22 Jul 2026 23:15:34 GMT  
		Size: 88.3 KB (88273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3edc5d4c5f107bcfb27893b3f58fd8c253ae30228b759a0bd9e0f049ea2d465`  
		Last Modified: Wed, 22 Jul 2026 23:15:34 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64d4075a4b26d50607572d01c055b1350ed64e3e5d2e5ee92bcda8a92b11633f`  
		Last Modified: Wed, 22 Jul 2026 23:15:34 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f395204d5b4b71ab036b791b1dd359ff722a45e3aade220aa90524ad970a58`  
		Last Modified: Wed, 22 Jul 2026 23:15:34 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.3-nanoserver-ltsc2022`

```console
$ docker pull mongo@sha256:7854f197d421e970ccc6198007ea9f977e87e481f5ca457c7d1100c338518ec1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `mongo:8.3-nanoserver-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:236ce95abd40ce4e6060d242fe83bda9e858ccaaafc58e1c9b0af43a43c4caee
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1045390881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab62eba52ff806ed6dbed8286cb8ef2ef834b4dfac2287a1a667733234efb3fe`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Wed, 22 Jul 2026 23:13:56 GMT
SHELL [cmd /S /C]
# Wed, 22 Jul 2026 23:13:57 GMT
USER ContainerAdministrator
# Wed, 22 Jul 2026 23:14:13 GMT
RUN setx /m PATH "C:\mongodb\bin;%PATH%"
# Wed, 22 Jul 2026 23:14:14 GMT
USER ContainerUser
# Wed, 22 Jul 2026 23:14:17 GMT
COPY multi:edf1670f741f0c0f034ec218dc51015484becee19afd9d4d712d1a864fd379ff in C:\Windows\System32\ 
# Wed, 22 Jul 2026 23:14:18 GMT
ENV MONGO_VERSION=8.3.7
# Wed, 22 Jul 2026 23:14:56 GMT
COPY dir:5739d5fd58fa5b638e66272113d3a2221851dfd2422fb0b837aa48acb42c440a in C:\mongodb 
# Wed, 22 Jul 2026 23:15:29 GMT
RUN mongod --version
# Wed, 22 Jul 2026 23:15:29 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 22 Jul 2026 23:15:29 GMT
EXPOSE 27017
# Wed, 22 Jul 2026 23:15:30 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c26678dc3a52b2a129f0cd4d3078b1e458348014de6e72f99571635c8c2b26a4`  
		Last Modified: Wed, 22 Jul 2026 23:15:37 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50fb562446c0f358a4e15787944fa05973945826a1012f2b13d5d12ca2ad771c`  
		Last Modified: Wed, 22 Jul 2026 23:15:38 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c33bfbdac54fabf51d60d1a49280b7831c19f1b66e48e15947119220269270e`  
		Last Modified: Wed, 22 Jul 2026 23:15:36 GMT  
		Size: 85.8 KB (85760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd05a26054383e9b127c4c7f9e876281a22ac9d9bbb02beea7f170fccdccc45b`  
		Last Modified: Wed, 22 Jul 2026 23:15:36 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38b643d4ec22c527782695ff8981f111da6cd0c95f607c8fd007f900bdebbaef`  
		Last Modified: Wed, 22 Jul 2026 23:15:36 GMT  
		Size: 300.4 KB (300408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44075c9cfc2bfcd7c6f741aaaa2722687a70712856a833ba04e013f128f439c5`  
		Last Modified: Wed, 22 Jul 2026 23:15:36 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f5d9f25b5e46dbd321a6b0c89c601670ef058e2b2ed625530570e7db009662`  
		Last Modified: Wed, 22 Jul 2026 23:16:50 GMT  
		Size: 920.8 MB (920805904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7587627087ba343c59d24561fde508e75090756d66378cb45cc7fa3e6143503d`  
		Last Modified: Wed, 22 Jul 2026 23:15:34 GMT  
		Size: 88.3 KB (88273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3edc5d4c5f107bcfb27893b3f58fd8c253ae30228b759a0bd9e0f049ea2d465`  
		Last Modified: Wed, 22 Jul 2026 23:15:34 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64d4075a4b26d50607572d01c055b1350ed64e3e5d2e5ee92bcda8a92b11633f`  
		Last Modified: Wed, 22 Jul 2026 23:15:34 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f395204d5b4b71ab036b791b1dd359ff722a45e3aade220aa90524ad970a58`  
		Last Modified: Wed, 22 Jul 2026 23:15:34 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.3-noble`

```console
$ docker pull mongo@sha256:d9ffa32eda48816bd52af3b703d02ff3939f8ef2a11df44cb216c6ba1caa4fa6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mongo:8.3-noble` - linux; amd64

```console
$ docker pull mongo@sha256:4d47ba9b801505f591671aaa0848c20f929910c03e4a559b01ee8ffffe06ab79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.1 MB (300061206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:480725a1f2d54ff75e0c51b16ac3615247d73a3496ddd90cb73d6b3cec311d5d`
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
# Tue, 04 Aug 2026 01:41:56 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 04 Aug 2026 01:42:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:42:19 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 01:42:19 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 04 Aug 2026 01:42:19 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 04 Aug 2026 01:42:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-8.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor '4B0752C1BCA238C0B4EE14DC41DE058A4E7DCA05' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 01:42:19 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:42:19 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 04 Aug 2026 01:42:19 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 04 Aug 2026 01:42:19 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 04 Aug 2026 01:42:19 GMT
ENV MONGO_MAJOR=8.3
# Tue, 04 Aug 2026 01:42:19 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu noble/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 04 Aug 2026 01:42:19 GMT
ENV MONGO_VERSION=8.3.7
# Tue, 04 Aug 2026 01:42:39 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 04 Aug 2026 01:42:39 GMT
VOLUME [/data/db /data/configdb]
# Tue, 04 Aug 2026 01:42:39 GMT
ENV HOME=/data/db
# Tue, 04 Aug 2026 01:42:39 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Tue, 04 Aug 2026 01:42:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:42:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:42:39 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 04 Aug 2026 01:42:39 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ff47add410aef5970f8bdfd0c0255463170799816efdcb89c84ed22c1d36c5c`  
		Last Modified: Tue, 04 Aug 2026 01:43:12 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32d74650127d430a2220667587898b5b5025d1dedce0f9dd7f8a41897bddedd2`  
		Last Modified: Tue, 04 Aug 2026 01:43:13 GMT  
		Size: 3.9 MB (3876602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6f6c711879b08a6cfff489520e7bec35f27c9dd9713061d89ef87feb3399eed`  
		Last Modified: Tue, 04 Aug 2026 01:43:13 GMT  
		Size: 934.2 KB (934238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9b5a09abf4f97720fb58f873cb83517f40da95da0d6d95c26d880bdcf517e48`  
		Last Modified: Tue, 04 Aug 2026 01:43:13 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e174993013f48b85e6d371252511a539a11c32638654a452c7a7c0db1ad8322f`  
		Last Modified: Tue, 04 Aug 2026 01:43:14 GMT  
		Size: 262.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1aa14b82481cd85737f0788b273521463ff5797aa334694274b5421199284dd`  
		Last Modified: Tue, 04 Aug 2026 01:43:19 GMT  
		Size: 265.5 MB (265492661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9615b591156c1a466c68a81bfedb7f4e5bb8f4627962af4b20d5950b73f7ebc`  
		Last Modified: Tue, 04 Aug 2026 01:43:14 GMT  
		Size: 5.0 KB (5004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:8.3-noble` - unknown; unknown

```console
$ docker pull mongo@sha256:b98760b36405196989b928ea5cdf6fb004a7a7cdbcba02d8a1b4cd81316703be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2670603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6c7fb16ba73151110dc502bcac5d097b267f3d323a5a1ef0dfe5670f42d6d85`

```dockerfile
```

-	Layers:
	-	`sha256:3591b36d0ba5303252a40050a478761be41523ecb1aef0d42f818c86a77afb5f`  
		Last Modified: Tue, 04 Aug 2026 01:43:13 GMT  
		Size: 2.6 MB (2643041 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:510cc9c4aebb3177a9cf6c8d5d835ece196ded45a99b2d49690b6adc5492504a`  
		Last Modified: Tue, 04 Aug 2026 01:43:13 GMT  
		Size: 27.6 KB (27562 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:8.3-noble` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:ba257955e87599f369f37495004a8e5411d2ec61ffe960ba31c4591b1119721b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.0 MB (283998846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6285ae7ce4648634b93894bb21de0784ff81d109b3350b64f1f4331717f5c783`
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
# Tue, 04 Aug 2026 01:41:57 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 04 Aug 2026 01:42:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:42:17 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 01:42:17 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 04 Aug 2026 01:42:17 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 04 Aug 2026 01:42:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-8.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor '4B0752C1BCA238C0B4EE14DC41DE058A4E7DCA05' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 01:42:17 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:42:17 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 04 Aug 2026 01:42:17 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 04 Aug 2026 01:42:17 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 04 Aug 2026 01:42:17 GMT
ENV MONGO_MAJOR=8.3
# Tue, 04 Aug 2026 01:42:17 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu noble/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 04 Aug 2026 01:42:17 GMT
ENV MONGO_VERSION=8.3.7
# Tue, 04 Aug 2026 01:42:33 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 04 Aug 2026 01:42:33 GMT
VOLUME [/data/db /data/configdb]
# Tue, 04 Aug 2026 01:42:33 GMT
ENV HOME=/data/db
# Tue, 04 Aug 2026 01:42:33 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Tue, 04 Aug 2026 01:42:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:42:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:42:33 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 04 Aug 2026 01:42:33 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67ffcfbe0720ba2955941ab105b09c89757802dcce033a12161ae4405b2f2eff`  
		Last Modified: Tue, 04 Aug 2026 01:43:03 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70024f307f3715a56370f405ff8c509e4029f316790e972e3b0eebca5c7637f9`  
		Last Modified: Tue, 04 Aug 2026 01:43:03 GMT  
		Size: 1.5 MB (1451836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01c152e3b85ef5b2d33234fa05bd6e132df063c20b1d5baab716657135781cb6`  
		Last Modified: Tue, 04 Aug 2026 01:43:03 GMT  
		Size: 886.5 KB (886458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7371d5e7e1326afed7243bc675820ff6dea1664991d2d64a311a4b941138d75a`  
		Last Modified: Tue, 04 Aug 2026 01:43:03 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e089755ce9d53f706c72a98395a668a5bc99132df12dc4c56fa6b765eb85422`  
		Last Modified: Tue, 04 Aug 2026 01:43:04 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f314cef88a8f159cfa99326a49ea003a8805e05bec7a38c2868c561956dfb68a`  
		Last Modified: Tue, 04 Aug 2026 01:43:08 GMT  
		Size: 252.8 MB (252767136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c43d534b72545db99e19469f268a580da4b43cf70378434a484a02f917bc383`  
		Last Modified: Tue, 04 Aug 2026 01:43:04 GMT  
		Size: 5.0 KB (5004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:8.3-noble` - unknown; unknown

```console
$ docker pull mongo@sha256:d90695daffd9611afe05fdddf13d1ba91f62eed6977d0d069762c966a8052d68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2671870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79cb2ad881814baaa1b7e38d38462223d6b333905fe1bc7f95779b0d4af5a4b0`

```dockerfile
```

-	Layers:
	-	`sha256:e93cacd3cf7120cfcedb263b186a770d0d53dd5dcd422500db52a52a8218a4d4`  
		Last Modified: Tue, 04 Aug 2026 01:43:03 GMT  
		Size: 2.6 MB (2644129 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8c4da8b1a055ab04de8d93ab24879a66121b9e20f08d596c2ed6d90f15bb037`  
		Last Modified: Tue, 04 Aug 2026 01:43:03 GMT  
		Size: 27.7 KB (27741 bytes)  
		MIME: application/vnd.in-toto+json

## `mongo:8.3-windowsservercore`

```console
$ docker pull mongo@sha256:ebc109fe7203346ed0d94fa6c2f2cc009269808fec88b1f7da1721554c2c88a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `mongo:8.3-windowsservercore` - windows version 10.0.26100.33158; amd64

```console
$ docker pull mongo@sha256:f5941b9a9ae08fd484b81ee91eb63cf0156f555e2c4f64102d091caed43240ff
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3277053241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dbc96a69500b716cb72d751adc9b4be9b407de9a85045251af0f25061e73610`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Wed, 22 Jul 2026 22:15:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 22 Jul 2026 22:16:00 GMT
ENV MONGO_VERSION=8.3.7
# Wed, 22 Jul 2026 22:16:01 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.3.7-signed.msi
# Wed, 22 Jul 2026 22:16:05 GMT
ENV MONGO_DOWNLOAD_SHA256=3e91c0a69f9cf20bfceaa7c8bc714d63ffbb8f0834a6e7043a734efacc97a8db
# Wed, 22 Jul 2026 22:20:36 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 22 Jul 2026 22:20:37 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 22 Jul 2026 22:20:38 GMT
EXPOSE 27017
# Wed, 22 Jul 2026 22:20:38 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24b28706e4e5f31fae7935e5a79e6df5d7a2eb3e69c8c19ca723f41f0b45f6f`  
		Last Modified: Tue, 14 Jul 2026 17:58:20 GMT  
		Size: 831.9 MB (831948874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d172116a401c329316c09cacb64e70e4ddbe775ad2969e9bfa4e44e0ad789f8a`  
		Last Modified: Wed, 22 Jul 2026 22:20:45 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12d62fb2fcd2db0fca01dd57f9448c2ea981a226061994666d58fd6d7aebd5b0`  
		Last Modified: Wed, 22 Jul 2026 22:20:45 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1191d5f87dfb91e15d01d227256157775b7ddf557e29d94bcb5fa1c514a2399d`  
		Last Modified: Wed, 22 Jul 2026 22:20:44 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f88acd34b97e85bec05d9ab24d09c5c5b95e5d547e48ac9958b402178f8b675`  
		Last Modified: Wed, 22 Jul 2026 22:20:43 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:292b329ba3e04c158dd2d2ba7f531e00fd14e8465eef27f2adc90c9225038792`  
		Last Modified: Wed, 22 Jul 2026 22:21:55 GMT  
		Size: 922.0 MB (922035949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5168c14c25b7a8a7c718c7d17989ead106d5fac519b58dbdf6f7310c132698c8`  
		Last Modified: Wed, 22 Jul 2026 22:20:43 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d526ca2c0856a4fdd920f1f99567a0e3fb431d99dc844aabe9d4ded868c3ddfb`  
		Last Modified: Wed, 22 Jul 2026 22:20:43 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bebba46ce333d7586e112be880ed88128d779044835e98f79647140096a5b95`  
		Last Modified: Wed, 22 Jul 2026 22:20:43 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:8.3-windowsservercore` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:7007b84420d9e8cdbc7836f8f164005a0ed5e0f893f4e6fb1bc85e3090c16305
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 GB (3079705264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b9dcb8964aed6080b81980832d89e38f0ba2f976a3d4309bf817f2dc07e50b7`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Wed, 22 Jul 2026 22:16:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 22 Jul 2026 22:16:28 GMT
ENV MONGO_VERSION=8.3.7
# Wed, 22 Jul 2026 22:16:30 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.3.7-signed.msi
# Wed, 22 Jul 2026 22:16:31 GMT
ENV MONGO_DOWNLOAD_SHA256=3e91c0a69f9cf20bfceaa7c8bc714d63ffbb8f0834a6e7043a734efacc97a8db
# Wed, 22 Jul 2026 22:19:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 22 Jul 2026 22:19:49 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 22 Jul 2026 22:19:49 GMT
EXPOSE 27017
# Wed, 22 Jul 2026 22:19:51 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0675e37b24741ccc9e6ff6dda8512e3be78ba3519c8af33b04872e4738349249`  
		Last Modified: Tue, 14 Jul 2026 18:09:28 GMT  
		Size: 668.5 MB (668534031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5584867de281a2beafa0d0a1138b88207a1e1e0e9ab733516f82467f87abade`  
		Last Modified: Wed, 22 Jul 2026 22:20:03 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a99ce542b5356c54fcf84253f0f23fe50e2170955fe147ed284245eeb29556`  
		Last Modified: Wed, 22 Jul 2026 22:20:03 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9cac244b7dd1e182690cd85b14260e9166699741c04ff734e8965ecc80b1e3d`  
		Last Modified: Wed, 22 Jul 2026 22:20:03 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fdb9e5026ea672d16b3ba0d922a75ef45faaf43592792f45822752b0513a7e0`  
		Last Modified: Wed, 22 Jul 2026 22:20:01 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e190edb59aee5b5207214043e9baa5bb9fb15410e31e696d8672480b0337d50`  
		Last Modified: Wed, 22 Jul 2026 22:21:11 GMT  
		Size: 922.1 MB (922142979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e0f369ee92cf8e9c7c4ac19bde65088e1f3e5c4ac6e1134fcd14d088a92b1e`  
		Last Modified: Wed, 22 Jul 2026 22:20:01 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:866f2237493ccec05b499d4ac17b3285f9ef4487de7924dec913557db398483b`  
		Last Modified: Wed, 22 Jul 2026 22:20:01 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b1cf0b9b8753d8cb3b115d41c37f580682beddb4590f5e51abc27f7f52a34c`  
		Last Modified: Wed, 22 Jul 2026 22:20:01 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.3-windowsservercore-ltsc2022`

```console
$ docker pull mongo@sha256:eef0fbd7b6415b02780b4b4c7068a8e9455e8ddd399716e33f73ff5daa069f89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `mongo:8.3-windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:7007b84420d9e8cdbc7836f8f164005a0ed5e0f893f4e6fb1bc85e3090c16305
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 GB (3079705264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b9dcb8964aed6080b81980832d89e38f0ba2f976a3d4309bf817f2dc07e50b7`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Wed, 22 Jul 2026 22:16:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 22 Jul 2026 22:16:28 GMT
ENV MONGO_VERSION=8.3.7
# Wed, 22 Jul 2026 22:16:30 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.3.7-signed.msi
# Wed, 22 Jul 2026 22:16:31 GMT
ENV MONGO_DOWNLOAD_SHA256=3e91c0a69f9cf20bfceaa7c8bc714d63ffbb8f0834a6e7043a734efacc97a8db
# Wed, 22 Jul 2026 22:19:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 22 Jul 2026 22:19:49 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 22 Jul 2026 22:19:49 GMT
EXPOSE 27017
# Wed, 22 Jul 2026 22:19:51 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0675e37b24741ccc9e6ff6dda8512e3be78ba3519c8af33b04872e4738349249`  
		Last Modified: Tue, 14 Jul 2026 18:09:28 GMT  
		Size: 668.5 MB (668534031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5584867de281a2beafa0d0a1138b88207a1e1e0e9ab733516f82467f87abade`  
		Last Modified: Wed, 22 Jul 2026 22:20:03 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a99ce542b5356c54fcf84253f0f23fe50e2170955fe147ed284245eeb29556`  
		Last Modified: Wed, 22 Jul 2026 22:20:03 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9cac244b7dd1e182690cd85b14260e9166699741c04ff734e8965ecc80b1e3d`  
		Last Modified: Wed, 22 Jul 2026 22:20:03 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fdb9e5026ea672d16b3ba0d922a75ef45faaf43592792f45822752b0513a7e0`  
		Last Modified: Wed, 22 Jul 2026 22:20:01 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e190edb59aee5b5207214043e9baa5bb9fb15410e31e696d8672480b0337d50`  
		Last Modified: Wed, 22 Jul 2026 22:21:11 GMT  
		Size: 922.1 MB (922142979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e0f369ee92cf8e9c7c4ac19bde65088e1f3e5c4ac6e1134fcd14d088a92b1e`  
		Last Modified: Wed, 22 Jul 2026 22:20:01 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:866f2237493ccec05b499d4ac17b3285f9ef4487de7924dec913557db398483b`  
		Last Modified: Wed, 22 Jul 2026 22:20:01 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b1cf0b9b8753d8cb3b115d41c37f580682beddb4590f5e51abc27f7f52a34c`  
		Last Modified: Wed, 22 Jul 2026 22:20:01 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.3-windowsservercore-ltsc2025`

```console
$ docker pull mongo@sha256:13d126102451cdb0feed7378cbe098c7f501935884f9c970ff6d74807b690cbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `mongo:8.3-windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull mongo@sha256:f5941b9a9ae08fd484b81ee91eb63cf0156f555e2c4f64102d091caed43240ff
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3277053241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dbc96a69500b716cb72d751adc9b4be9b407de9a85045251af0f25061e73610`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Wed, 22 Jul 2026 22:15:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 22 Jul 2026 22:16:00 GMT
ENV MONGO_VERSION=8.3.7
# Wed, 22 Jul 2026 22:16:01 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.3.7-signed.msi
# Wed, 22 Jul 2026 22:16:05 GMT
ENV MONGO_DOWNLOAD_SHA256=3e91c0a69f9cf20bfceaa7c8bc714d63ffbb8f0834a6e7043a734efacc97a8db
# Wed, 22 Jul 2026 22:20:36 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 22 Jul 2026 22:20:37 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 22 Jul 2026 22:20:38 GMT
EXPOSE 27017
# Wed, 22 Jul 2026 22:20:38 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24b28706e4e5f31fae7935e5a79e6df5d7a2eb3e69c8c19ca723f41f0b45f6f`  
		Last Modified: Tue, 14 Jul 2026 17:58:20 GMT  
		Size: 831.9 MB (831948874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d172116a401c329316c09cacb64e70e4ddbe775ad2969e9bfa4e44e0ad789f8a`  
		Last Modified: Wed, 22 Jul 2026 22:20:45 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12d62fb2fcd2db0fca01dd57f9448c2ea981a226061994666d58fd6d7aebd5b0`  
		Last Modified: Wed, 22 Jul 2026 22:20:45 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1191d5f87dfb91e15d01d227256157775b7ddf557e29d94bcb5fa1c514a2399d`  
		Last Modified: Wed, 22 Jul 2026 22:20:44 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f88acd34b97e85bec05d9ab24d09c5c5b95e5d547e48ac9958b402178f8b675`  
		Last Modified: Wed, 22 Jul 2026 22:20:43 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:292b329ba3e04c158dd2d2ba7f531e00fd14e8465eef27f2adc90c9225038792`  
		Last Modified: Wed, 22 Jul 2026 22:21:55 GMT  
		Size: 922.0 MB (922035949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5168c14c25b7a8a7c718c7d17989ead106d5fac519b58dbdf6f7310c132698c8`  
		Last Modified: Wed, 22 Jul 2026 22:20:43 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d526ca2c0856a4fdd920f1f99567a0e3fb431d99dc844aabe9d4ded868c3ddfb`  
		Last Modified: Wed, 22 Jul 2026 22:20:43 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bebba46ce333d7586e112be880ed88128d779044835e98f79647140096a5b95`  
		Last Modified: Wed, 22 Jul 2026 22:20:43 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.3.8`

**does not exist** (yet?)

## `mongo:8.3.8-nanoserver`

**does not exist** (yet?)

## `mongo:8.3.8-nanoserver-ltsc2022`

**does not exist** (yet?)

## `mongo:8.3.8-noble`

**does not exist** (yet?)

## `mongo:8.3.8-windowsservercore`

**does not exist** (yet?)

## `mongo:8.3.8-windowsservercore-ltsc2022`

**does not exist** (yet?)

## `mongo:8.3.8-windowsservercore-ltsc2025`

**does not exist** (yet?)
