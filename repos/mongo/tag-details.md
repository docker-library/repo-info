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
$ docker pull mongo@sha256:444d798458e5aa40f3667230a9c631974fa169c32ae4a2d924658ac72b753122
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
$ docker pull mongo@sha256:8ef27524b4cde51b9f07bb0827a56d02c6d3b148d0b7d0ca8ff4dfd57351ff4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.6 MB (293639420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a030dda9d77eb55c4fbaea286ef0f6aede00b8d261ae1ad36b6a99a4f0da2578`
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
# Tue, 11 Aug 2026 18:31:39 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 11 Aug 2026 18:31:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 18:32:02 GMT
ENV GOSU_VERSION=1.19
# Tue, 11 Aug 2026 18:32:02 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 11 Aug 2026 18:32:02 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 11 Aug 2026 18:32:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-7.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor 'E58830201F7DD82CD808AA84160D26BB1785BA38' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 11 Aug 2026 18:32:02 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 11 Aug 2026 18:32:02 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 11 Aug 2026 18:32:02 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 18:32:02 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 18:32:02 GMT
ENV MONGO_MAJOR=7.0
# Tue, 11 Aug 2026 18:32:02 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu jammy/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 11 Aug 2026 18:32:02 GMT
ENV MONGO_VERSION=7.0.40
# Tue, 11 Aug 2026 18:32:22 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 11 Aug 2026 18:32:22 GMT
VOLUME [/data/db /data/configdb]
# Tue, 11 Aug 2026 18:32:22 GMT
ENV HOME=/data/db
# Tue, 11 Aug 2026 18:32:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 11 Aug 2026 18:32:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Aug 2026 18:32:22 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 11 Aug 2026 18:32:22 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c215a94a9ca0ff826d99a83aa4b9ffa0a27b2fce64fe321fbee586425db0457`  
		Last Modified: Tue, 11 Aug 2026 18:32:54 GMT  
		Size: 1.8 KB (1778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db139b86933336e48b289faeeec868f650e41722408d6a394b57208e3eb6ee38`  
		Last Modified: Tue, 11 Aug 2026 18:32:55 GMT  
		Size: 1.5 MB (1472704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41a4112edf8a72ddf930dafe71f0cd504ee08565fccdf9db88b1453f338c26e3`  
		Last Modified: Tue, 11 Aug 2026 18:32:54 GMT  
		Size: 898.4 KB (898357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c1a9c72e790fb6f796e864240b5f44ea4ec29544ee96d7e826899c9c11541ee`  
		Last Modified: Tue, 11 Aug 2026 18:32:54 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a866bd8245eea5407b64d49f3ba66a9c3476da3122d6fb335244db7b32dde1f`  
		Last Modified: Tue, 11 Aug 2026 18:32:55 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b18e3baa9d1783ba65a06f89a3bc0982af96758503cfa8af00dcf4c3f1483c9`  
		Last Modified: Tue, 11 Aug 2026 18:33:01 GMT  
		Size: 261.5 MB (261524681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:899e1423f9d83d049d0bbed509be329870661c921057c881bfc1de05ee46ca41`  
		Last Modified: Tue, 11 Aug 2026 18:32:56 GMT  
		Size: 5.0 KB (5003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:7` - unknown; unknown

```console
$ docker pull mongo@sha256:797d42aa8c77fc7ca4c2e398207ee8cdfa57a34b6c377c902df2df722bb907b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3229627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ea16f6fe8b43f999c94c2d2b8fc3d31f5743640281c02af1ff06e395b17749a`

```dockerfile
```

-	Layers:
	-	`sha256:c425af47c9c47858757fc117d172d5de1bd1f3801780f0e840feded95f10051f`  
		Last Modified: Tue, 11 Aug 2026 18:32:54 GMT  
		Size: 3.2 MB (3201740 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4be0ebae6f47c90668a988cc76130082ddf666e4c3a0ce9ba95016dbfa9daaa9`  
		Last Modified: Tue, 11 Aug 2026 18:32:54 GMT  
		Size: 27.9 KB (27887 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:7` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:fd08932ce14f6c8e34f565782c60fdd6cac00b4f00fb08a6ca6301bcd3324cd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.7 MB (279712781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a168e8f2d7aa10052cebf6dbb8ec465757cb64f84de3dd50c49173cb05d335b`
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
# Tue, 11 Aug 2026 19:07:45 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 11 Aug 2026 19:07:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 19:08:05 GMT
ENV GOSU_VERSION=1.19
# Tue, 11 Aug 2026 19:08:05 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 11 Aug 2026 19:08:05 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 11 Aug 2026 19:08:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-7.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor 'E58830201F7DD82CD808AA84160D26BB1785BA38' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 11 Aug 2026 19:08:05 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 11 Aug 2026 19:08:05 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 11 Aug 2026 19:08:05 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 19:08:05 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 19:08:05 GMT
ENV MONGO_MAJOR=7.0
# Tue, 11 Aug 2026 19:08:05 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu jammy/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 11 Aug 2026 19:08:05 GMT
ENV MONGO_VERSION=7.0.40
# Tue, 11 Aug 2026 19:08:26 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 11 Aug 2026 19:08:26 GMT
VOLUME [/data/db /data/configdb]
# Tue, 11 Aug 2026 19:08:26 GMT
ENV HOME=/data/db
# Tue, 11 Aug 2026 19:08:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 11 Aug 2026 19:08:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Aug 2026 19:08:26 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 11 Aug 2026 19:08:26 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f3963a30c9001e23422a447630404805ea06c2000fd318457b847294f4c8edd`  
		Last Modified: Tue, 11 Aug 2026 19:08:56 GMT  
		Size: 1.8 KB (1784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd981a98767ab61e3e6fd0e4b413952115f12fa06a7da8e919a941cf54a850be`  
		Last Modified: Tue, 11 Aug 2026 19:08:56 GMT  
		Size: 1.4 MB (1438918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5093cdb11bf29720dcec4cdf1b3739b4c432e9b9b6fb4040693fdfb1a75c9e57`  
		Last Modified: Tue, 11 Aug 2026 19:08:57 GMT  
		Size: 850.7 KB (850699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a76acfe152b85e59ad4cd574559aa5a320670b506aabf8cdf2e371e39a72976f`  
		Last Modified: Tue, 11 Aug 2026 19:08:56 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0acd02647944b905ea7611e92c9d2e80e401b68069d9b66ef9d44b5d5b8e976`  
		Last Modified: Tue, 11 Aug 2026 19:08:58 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4111a05f60a597ceba5a970f2da68fd16636369f2a3437c2e29f1494154efb57`  
		Last Modified: Tue, 11 Aug 2026 19:09:02 GMT  
		Size: 249.8 MB (249795965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51e40981198a1d513a1a682fc494f58132d5eb2bff02ab7f37731658c20cd501`  
		Last Modified: Tue, 11 Aug 2026 19:08:58 GMT  
		Size: 5.0 KB (5004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:7` - unknown; unknown

```console
$ docker pull mongo@sha256:1c41726a3caa294944d969d66d007817c37439c78e2d5c24383c49afad1e6465
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3230149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7566c38ddb2fcaa851d8fda4b86e6c5e61b81a911db8ed4064a626a993d9311`

```dockerfile
```

-	Layers:
	-	`sha256:c3cff38c0a73e616801c5f6e1cc78c00ca25cef34b51175f981b82b97b4a8c5f`  
		Last Modified: Tue, 11 Aug 2026 19:08:56 GMT  
		Size: 3.2 MB (3202059 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef8967ed1c20980f7c31078cd97ef8a42559e34edb7a8606b51a364c1ef08602`  
		Last Modified: Tue, 11 Aug 2026 19:08:56 GMT  
		Size: 28.1 KB (28090 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:7` - windows version 10.0.26100.33158; amd64

```console
$ docker pull mongo@sha256:33243883bfba1b5df7619fbb3a66d714ef65bc77309f94a2b7f224a165229891
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 GB (2980723537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d48fdf56e353394ff078d4f811f5fa45af4aab23cd61ca387bc6f06b51c23d10`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Tue, 11 Aug 2026 18:36:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 11 Aug 2026 18:36:03 GMT
ENV MONGO_VERSION=7.0.40
# Tue, 11 Aug 2026 18:36:04 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.40-signed.msi
# Tue, 11 Aug 2026 18:36:05 GMT
ENV MONGO_DOWNLOAD_SHA256=1adfb2c433f6215cfe38ce871b39d6ba2bd3d6d9159b6b251c647a694fd113c7
# Tue, 11 Aug 2026 18:38:23 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 11 Aug 2026 18:38:24 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 18:38:24 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 18:38:25 GMT
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
	-	`sha256:39071bb7ac1f84c67777ddcc188aab82909f2ebb39d2f5965d23db28d2db3842`  
		Last Modified: Tue, 11 Aug 2026 18:38:32 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85de8746215967e7106688e16c8ea1bab8a42216d57afb712b0f40ad03886a1f`  
		Last Modified: Tue, 11 Aug 2026 18:38:32 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2197f75af80bccaf7fed1fabac2d229cc216276c8ce8879ade20c79b22347ad`  
		Last Modified: Tue, 11 Aug 2026 18:38:32 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e81fd18891dd498600a6ec5b51002800b4ae4098d6ee7f2e5f539c7857def6`  
		Last Modified: Tue, 11 Aug 2026 18:38:30 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d347b77c32873f3607f7f1c9fd07a2dac409b132b2e69aa322ed7d491c6ce1e`  
		Last Modified: Tue, 11 Aug 2026 18:39:20 GMT  
		Size: 625.7 MB (625706308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f310896ad365bf8d414c41d89fb309c2c07f4f05fb533dc9fd01025c5a818b7`  
		Last Modified: Tue, 11 Aug 2026 18:38:30 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5dcd4f47a840e39146388a3b7f42735a93f1418ada82a940b22329423c2bac`  
		Last Modified: Tue, 11 Aug 2026 18:38:30 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b142dea787d129c361dc187053c93f182a186ebcc1e73ee86a0cd57bd923e3b`  
		Last Modified: Tue, 11 Aug 2026 18:38:30 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:7` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:72d0ba1251c2cfd7ab29173fd44c70ae26707981ebed1815f486ae586c99392d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2783395072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5717bc6692d7bb557bc076be9a41ee300a19e2471ef7620f25a81691edaab6dc`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Tue, 11 Aug 2026 18:52:56 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 11 Aug 2026 19:13:22 GMT
ENV MONGO_VERSION=7.0.40
# Tue, 11 Aug 2026 19:13:23 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.40-signed.msi
# Tue, 11 Aug 2026 19:13:23 GMT
ENV MONGO_DOWNLOAD_SHA256=1adfb2c433f6215cfe38ce871b39d6ba2bd3d6d9159b6b251c647a694fd113c7
# Tue, 11 Aug 2026 19:15:01 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 11 Aug 2026 19:15:01 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 19:15:02 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 19:15:02 GMT
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
	-	`sha256:f7201a85154c98cb8bd186d77bc1d3f2cca96eb76c61b83f86da43e30a16085d`  
		Last Modified: Tue, 11 Aug 2026 18:58:33 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f596ed9d7c13bfdd014cc1596f48e12da1bb1495209b7f92325918e798bdea8`  
		Last Modified: Tue, 11 Aug 2026 19:15:12 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4137ab151c6c0c97a27866ebf0ff3922468dbc1534ab8d35db041e5e0d72d5b`  
		Last Modified: Tue, 11 Aug 2026 19:15:12 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6237d05106296bc3d1129f8f60d6d7db1864c2c46ddaa8c7719ec92fb2b855f`  
		Last Modified: Tue, 11 Aug 2026 19:15:10 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1236f203578a3a8e24b3dc616ed6338a70b1a3d06cb815ab219936ec61964635`  
		Last Modified: Tue, 11 Aug 2026 19:16:01 GMT  
		Size: 625.8 MB (625832815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:169757a50b42455c3aaa3b3208685b5f7b1086074aacf55dc8c85bb3314bb7ca`  
		Last Modified: Tue, 11 Aug 2026 19:15:10 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef56d6b253c29e9b4f7b3d1781e546fcbe4a1bda7b49881cf677154e16624e8c`  
		Last Modified: Tue, 11 Aug 2026 19:15:10 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eed78f6e77abd7de2ced71a63cd43e4bfae962ec161a14b52aaabe14a5c1de7`  
		Last Modified: Tue, 11 Aug 2026 19:15:11 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:7-jammy`

```console
$ docker pull mongo@sha256:d29d168ee010c2d701720aa909fe44baa86dfc54e6ccc54e3781c518fab525f7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mongo:7-jammy` - linux; amd64

```console
$ docker pull mongo@sha256:8ef27524b4cde51b9f07bb0827a56d02c6d3b148d0b7d0ca8ff4dfd57351ff4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.6 MB (293639420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a030dda9d77eb55c4fbaea286ef0f6aede00b8d261ae1ad36b6a99a4f0da2578`
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
# Tue, 11 Aug 2026 18:31:39 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 11 Aug 2026 18:31:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 18:32:02 GMT
ENV GOSU_VERSION=1.19
# Tue, 11 Aug 2026 18:32:02 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 11 Aug 2026 18:32:02 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 11 Aug 2026 18:32:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-7.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor 'E58830201F7DD82CD808AA84160D26BB1785BA38' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 11 Aug 2026 18:32:02 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 11 Aug 2026 18:32:02 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 11 Aug 2026 18:32:02 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 18:32:02 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 18:32:02 GMT
ENV MONGO_MAJOR=7.0
# Tue, 11 Aug 2026 18:32:02 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu jammy/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 11 Aug 2026 18:32:02 GMT
ENV MONGO_VERSION=7.0.40
# Tue, 11 Aug 2026 18:32:22 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 11 Aug 2026 18:32:22 GMT
VOLUME [/data/db /data/configdb]
# Tue, 11 Aug 2026 18:32:22 GMT
ENV HOME=/data/db
# Tue, 11 Aug 2026 18:32:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 11 Aug 2026 18:32:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Aug 2026 18:32:22 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 11 Aug 2026 18:32:22 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c215a94a9ca0ff826d99a83aa4b9ffa0a27b2fce64fe321fbee586425db0457`  
		Last Modified: Tue, 11 Aug 2026 18:32:54 GMT  
		Size: 1.8 KB (1778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db139b86933336e48b289faeeec868f650e41722408d6a394b57208e3eb6ee38`  
		Last Modified: Tue, 11 Aug 2026 18:32:55 GMT  
		Size: 1.5 MB (1472704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41a4112edf8a72ddf930dafe71f0cd504ee08565fccdf9db88b1453f338c26e3`  
		Last Modified: Tue, 11 Aug 2026 18:32:54 GMT  
		Size: 898.4 KB (898357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c1a9c72e790fb6f796e864240b5f44ea4ec29544ee96d7e826899c9c11541ee`  
		Last Modified: Tue, 11 Aug 2026 18:32:54 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a866bd8245eea5407b64d49f3ba66a9c3476da3122d6fb335244db7b32dde1f`  
		Last Modified: Tue, 11 Aug 2026 18:32:55 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b18e3baa9d1783ba65a06f89a3bc0982af96758503cfa8af00dcf4c3f1483c9`  
		Last Modified: Tue, 11 Aug 2026 18:33:01 GMT  
		Size: 261.5 MB (261524681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:899e1423f9d83d049d0bbed509be329870661c921057c881bfc1de05ee46ca41`  
		Last Modified: Tue, 11 Aug 2026 18:32:56 GMT  
		Size: 5.0 KB (5003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:7-jammy` - unknown; unknown

```console
$ docker pull mongo@sha256:797d42aa8c77fc7ca4c2e398207ee8cdfa57a34b6c377c902df2df722bb907b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3229627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ea16f6fe8b43f999c94c2d2b8fc3d31f5743640281c02af1ff06e395b17749a`

```dockerfile
```

-	Layers:
	-	`sha256:c425af47c9c47858757fc117d172d5de1bd1f3801780f0e840feded95f10051f`  
		Last Modified: Tue, 11 Aug 2026 18:32:54 GMT  
		Size: 3.2 MB (3201740 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4be0ebae6f47c90668a988cc76130082ddf666e4c3a0ce9ba95016dbfa9daaa9`  
		Last Modified: Tue, 11 Aug 2026 18:32:54 GMT  
		Size: 27.9 KB (27887 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:7-jammy` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:fd08932ce14f6c8e34f565782c60fdd6cac00b4f00fb08a6ca6301bcd3324cd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.7 MB (279712781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a168e8f2d7aa10052cebf6dbb8ec465757cb64f84de3dd50c49173cb05d335b`
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
# Tue, 11 Aug 2026 19:07:45 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 11 Aug 2026 19:07:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 19:08:05 GMT
ENV GOSU_VERSION=1.19
# Tue, 11 Aug 2026 19:08:05 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 11 Aug 2026 19:08:05 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 11 Aug 2026 19:08:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-7.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor 'E58830201F7DD82CD808AA84160D26BB1785BA38' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 11 Aug 2026 19:08:05 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 11 Aug 2026 19:08:05 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 11 Aug 2026 19:08:05 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 19:08:05 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 19:08:05 GMT
ENV MONGO_MAJOR=7.0
# Tue, 11 Aug 2026 19:08:05 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu jammy/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 11 Aug 2026 19:08:05 GMT
ENV MONGO_VERSION=7.0.40
# Tue, 11 Aug 2026 19:08:26 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 11 Aug 2026 19:08:26 GMT
VOLUME [/data/db /data/configdb]
# Tue, 11 Aug 2026 19:08:26 GMT
ENV HOME=/data/db
# Tue, 11 Aug 2026 19:08:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 11 Aug 2026 19:08:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Aug 2026 19:08:26 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 11 Aug 2026 19:08:26 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f3963a30c9001e23422a447630404805ea06c2000fd318457b847294f4c8edd`  
		Last Modified: Tue, 11 Aug 2026 19:08:56 GMT  
		Size: 1.8 KB (1784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd981a98767ab61e3e6fd0e4b413952115f12fa06a7da8e919a941cf54a850be`  
		Last Modified: Tue, 11 Aug 2026 19:08:56 GMT  
		Size: 1.4 MB (1438918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5093cdb11bf29720dcec4cdf1b3739b4c432e9b9b6fb4040693fdfb1a75c9e57`  
		Last Modified: Tue, 11 Aug 2026 19:08:57 GMT  
		Size: 850.7 KB (850699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a76acfe152b85e59ad4cd574559aa5a320670b506aabf8cdf2e371e39a72976f`  
		Last Modified: Tue, 11 Aug 2026 19:08:56 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0acd02647944b905ea7611e92c9d2e80e401b68069d9b66ef9d44b5d5b8e976`  
		Last Modified: Tue, 11 Aug 2026 19:08:58 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4111a05f60a597ceba5a970f2da68fd16636369f2a3437c2e29f1494154efb57`  
		Last Modified: Tue, 11 Aug 2026 19:09:02 GMT  
		Size: 249.8 MB (249795965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51e40981198a1d513a1a682fc494f58132d5eb2bff02ab7f37731658c20cd501`  
		Last Modified: Tue, 11 Aug 2026 19:08:58 GMT  
		Size: 5.0 KB (5004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:7-jammy` - unknown; unknown

```console
$ docker pull mongo@sha256:1c41726a3caa294944d969d66d007817c37439c78e2d5c24383c49afad1e6465
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3230149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7566c38ddb2fcaa851d8fda4b86e6c5e61b81a911db8ed4064a626a993d9311`

```dockerfile
```

-	Layers:
	-	`sha256:c3cff38c0a73e616801c5f6e1cc78c00ca25cef34b51175f981b82b97b4a8c5f`  
		Last Modified: Tue, 11 Aug 2026 19:08:56 GMT  
		Size: 3.2 MB (3202059 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef8967ed1c20980f7c31078cd97ef8a42559e34edb7a8606b51a364c1ef08602`  
		Last Modified: Tue, 11 Aug 2026 19:08:56 GMT  
		Size: 28.1 KB (28090 bytes)  
		MIME: application/vnd.in-toto+json

## `mongo:7-nanoserver`

```console
$ docker pull mongo@sha256:dbafd317f0d911ae3a0583b4466826e8ef322c8f58aed6ea5cce357c378159ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `mongo:7-nanoserver` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:1e384123519a1d2a60032d445ca4a2149a3cfbe93b0306162ece1cc217210266
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **749.1 MB (749140816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eddaf33741790998409cc170c9097d6a088fbc923d1e8abb419af442ab859c76`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Tue, 11 Aug 2026 20:13:35 GMT
SHELL [cmd /S /C]
# Tue, 11 Aug 2026 20:13:37 GMT
USER ContainerAdministrator
# Tue, 11 Aug 2026 20:13:49 GMT
RUN setx /m PATH "C:\mongodb\bin;%PATH%"
# Tue, 11 Aug 2026 20:13:49 GMT
USER ContainerUser
# Tue, 11 Aug 2026 20:19:56 GMT
COPY multi:540d6dd70b1e7484f1958dc08b337aeb56cf8a92fe38be4c279dd406990d6935 in C:\Windows\System32\ 
# Tue, 11 Aug 2026 20:19:57 GMT
ENV MONGO_VERSION=7.0.40
# Tue, 11 Aug 2026 20:20:37 GMT
COPY dir:5275c90acc984d2e95da7478ab8f186163bcce4e9272031fdda8ff9e1e70c12e in C:\mongodb 
# Tue, 11 Aug 2026 20:20:56 GMT
RUN mongod --version
# Tue, 11 Aug 2026 20:20:56 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 20:20:57 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 20:20:58 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51a7dc20d84ea0969174d6cf460deb84714d0ebcf12fddacf83338426b264ce1`  
		Last Modified: Tue, 11 Aug 2026 20:17:39 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d30395bc107c24edfe22eba4a5046805438a2247f7aea6cadb67e5893d8e5ce`  
		Last Modified: Tue, 11 Aug 2026 20:17:39 GMT  
		Size: 1.1 KB (1084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b63008a99223a4359d26fc7134ae4e1a902489fa30ff17a3eee11ab0bf7213`  
		Last Modified: Tue, 11 Aug 2026 20:17:37 GMT  
		Size: 70.8 KB (70771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9c96c2777dbad64a838be75204aa5252be0e065c01b0337e298537e0a64d74`  
		Last Modified: Tue, 11 Aug 2026 20:17:37 GMT  
		Size: 1.1 KB (1076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b89e6b1b7f60ec1483803e8c469db003690e14595e21c3409cd5049c8bff21`  
		Last Modified: Tue, 11 Aug 2026 20:21:10 GMT  
		Size: 275.2 KB (275202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5edca4a257f3c07a11133e84591fa139aa6b9e9cb6ae16955e0ea6ceaece584`  
		Last Modified: Tue, 11 Aug 2026 20:21:10 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb52ca13d44e65b36453da546d0ddd3322a71994d2eacb588aff7b7a33a9b490`  
		Last Modified: Tue, 11 Aug 2026 20:22:00 GMT  
		Size: 624.6 MB (624598110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62211dbc0c3fa793c57862ed548e82063f7c915067916480ceff174ef1b71473`  
		Last Modified: Tue, 11 Aug 2026 20:21:08 GMT  
		Size: 86.1 KB (86138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:558874efaf0da5643c01745ea25428aaa073a39ca7b5a83fa6eb849acee012a3`  
		Last Modified: Tue, 11 Aug 2026 20:21:08 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99812be21bec80525a69e2bfb962090f729c31475e7f64ab9ad0a207b415120c`  
		Last Modified: Tue, 11 Aug 2026 20:21:08 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:296a3893654b8483225bb2598c948eeecc8e06884c44830483ff1f27218668fe`  
		Last Modified: Tue, 11 Aug 2026 20:21:08 GMT  
		Size: 1.1 KB (1073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:7-nanoserver-ltsc2022`

```console
$ docker pull mongo@sha256:dbafd317f0d911ae3a0583b4466826e8ef322c8f58aed6ea5cce357c378159ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `mongo:7-nanoserver-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:1e384123519a1d2a60032d445ca4a2149a3cfbe93b0306162ece1cc217210266
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **749.1 MB (749140816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eddaf33741790998409cc170c9097d6a088fbc923d1e8abb419af442ab859c76`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Tue, 11 Aug 2026 20:13:35 GMT
SHELL [cmd /S /C]
# Tue, 11 Aug 2026 20:13:37 GMT
USER ContainerAdministrator
# Tue, 11 Aug 2026 20:13:49 GMT
RUN setx /m PATH "C:\mongodb\bin;%PATH%"
# Tue, 11 Aug 2026 20:13:49 GMT
USER ContainerUser
# Tue, 11 Aug 2026 20:19:56 GMT
COPY multi:540d6dd70b1e7484f1958dc08b337aeb56cf8a92fe38be4c279dd406990d6935 in C:\Windows\System32\ 
# Tue, 11 Aug 2026 20:19:57 GMT
ENV MONGO_VERSION=7.0.40
# Tue, 11 Aug 2026 20:20:37 GMT
COPY dir:5275c90acc984d2e95da7478ab8f186163bcce4e9272031fdda8ff9e1e70c12e in C:\mongodb 
# Tue, 11 Aug 2026 20:20:56 GMT
RUN mongod --version
# Tue, 11 Aug 2026 20:20:56 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 20:20:57 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 20:20:58 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51a7dc20d84ea0969174d6cf460deb84714d0ebcf12fddacf83338426b264ce1`  
		Last Modified: Tue, 11 Aug 2026 20:17:39 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d30395bc107c24edfe22eba4a5046805438a2247f7aea6cadb67e5893d8e5ce`  
		Last Modified: Tue, 11 Aug 2026 20:17:39 GMT  
		Size: 1.1 KB (1084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b63008a99223a4359d26fc7134ae4e1a902489fa30ff17a3eee11ab0bf7213`  
		Last Modified: Tue, 11 Aug 2026 20:17:37 GMT  
		Size: 70.8 KB (70771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9c96c2777dbad64a838be75204aa5252be0e065c01b0337e298537e0a64d74`  
		Last Modified: Tue, 11 Aug 2026 20:17:37 GMT  
		Size: 1.1 KB (1076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b89e6b1b7f60ec1483803e8c469db003690e14595e21c3409cd5049c8bff21`  
		Last Modified: Tue, 11 Aug 2026 20:21:10 GMT  
		Size: 275.2 KB (275202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5edca4a257f3c07a11133e84591fa139aa6b9e9cb6ae16955e0ea6ceaece584`  
		Last Modified: Tue, 11 Aug 2026 20:21:10 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb52ca13d44e65b36453da546d0ddd3322a71994d2eacb588aff7b7a33a9b490`  
		Last Modified: Tue, 11 Aug 2026 20:22:00 GMT  
		Size: 624.6 MB (624598110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62211dbc0c3fa793c57862ed548e82063f7c915067916480ceff174ef1b71473`  
		Last Modified: Tue, 11 Aug 2026 20:21:08 GMT  
		Size: 86.1 KB (86138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:558874efaf0da5643c01745ea25428aaa073a39ca7b5a83fa6eb849acee012a3`  
		Last Modified: Tue, 11 Aug 2026 20:21:08 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99812be21bec80525a69e2bfb962090f729c31475e7f64ab9ad0a207b415120c`  
		Last Modified: Tue, 11 Aug 2026 20:21:08 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:296a3893654b8483225bb2598c948eeecc8e06884c44830483ff1f27218668fe`  
		Last Modified: Tue, 11 Aug 2026 20:21:08 GMT  
		Size: 1.1 KB (1073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:7-windowsservercore`

```console
$ docker pull mongo@sha256:36d30a8757a59414cc609cc4a4aeca778bf6ffcd82d3a448b0d0147209cbd550
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `mongo:7-windowsservercore` - windows version 10.0.26100.33158; amd64

```console
$ docker pull mongo@sha256:33243883bfba1b5df7619fbb3a66d714ef65bc77309f94a2b7f224a165229891
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 GB (2980723537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d48fdf56e353394ff078d4f811f5fa45af4aab23cd61ca387bc6f06b51c23d10`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Tue, 11 Aug 2026 18:36:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 11 Aug 2026 18:36:03 GMT
ENV MONGO_VERSION=7.0.40
# Tue, 11 Aug 2026 18:36:04 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.40-signed.msi
# Tue, 11 Aug 2026 18:36:05 GMT
ENV MONGO_DOWNLOAD_SHA256=1adfb2c433f6215cfe38ce871b39d6ba2bd3d6d9159b6b251c647a694fd113c7
# Tue, 11 Aug 2026 18:38:23 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 11 Aug 2026 18:38:24 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 18:38:24 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 18:38:25 GMT
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
	-	`sha256:39071bb7ac1f84c67777ddcc188aab82909f2ebb39d2f5965d23db28d2db3842`  
		Last Modified: Tue, 11 Aug 2026 18:38:32 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85de8746215967e7106688e16c8ea1bab8a42216d57afb712b0f40ad03886a1f`  
		Last Modified: Tue, 11 Aug 2026 18:38:32 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2197f75af80bccaf7fed1fabac2d229cc216276c8ce8879ade20c79b22347ad`  
		Last Modified: Tue, 11 Aug 2026 18:38:32 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e81fd18891dd498600a6ec5b51002800b4ae4098d6ee7f2e5f539c7857def6`  
		Last Modified: Tue, 11 Aug 2026 18:38:30 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d347b77c32873f3607f7f1c9fd07a2dac409b132b2e69aa322ed7d491c6ce1e`  
		Last Modified: Tue, 11 Aug 2026 18:39:20 GMT  
		Size: 625.7 MB (625706308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f310896ad365bf8d414c41d89fb309c2c07f4f05fb533dc9fd01025c5a818b7`  
		Last Modified: Tue, 11 Aug 2026 18:38:30 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5dcd4f47a840e39146388a3b7f42735a93f1418ada82a940b22329423c2bac`  
		Last Modified: Tue, 11 Aug 2026 18:38:30 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b142dea787d129c361dc187053c93f182a186ebcc1e73ee86a0cd57bd923e3b`  
		Last Modified: Tue, 11 Aug 2026 18:38:30 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:7-windowsservercore` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:72d0ba1251c2cfd7ab29173fd44c70ae26707981ebed1815f486ae586c99392d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2783395072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5717bc6692d7bb557bc076be9a41ee300a19e2471ef7620f25a81691edaab6dc`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Tue, 11 Aug 2026 18:52:56 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 11 Aug 2026 19:13:22 GMT
ENV MONGO_VERSION=7.0.40
# Tue, 11 Aug 2026 19:13:23 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.40-signed.msi
# Tue, 11 Aug 2026 19:13:23 GMT
ENV MONGO_DOWNLOAD_SHA256=1adfb2c433f6215cfe38ce871b39d6ba2bd3d6d9159b6b251c647a694fd113c7
# Tue, 11 Aug 2026 19:15:01 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 11 Aug 2026 19:15:01 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 19:15:02 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 19:15:02 GMT
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
	-	`sha256:f7201a85154c98cb8bd186d77bc1d3f2cca96eb76c61b83f86da43e30a16085d`  
		Last Modified: Tue, 11 Aug 2026 18:58:33 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f596ed9d7c13bfdd014cc1596f48e12da1bb1495209b7f92325918e798bdea8`  
		Last Modified: Tue, 11 Aug 2026 19:15:12 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4137ab151c6c0c97a27866ebf0ff3922468dbc1534ab8d35db041e5e0d72d5b`  
		Last Modified: Tue, 11 Aug 2026 19:15:12 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6237d05106296bc3d1129f8f60d6d7db1864c2c46ddaa8c7719ec92fb2b855f`  
		Last Modified: Tue, 11 Aug 2026 19:15:10 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1236f203578a3a8e24b3dc616ed6338a70b1a3d06cb815ab219936ec61964635`  
		Last Modified: Tue, 11 Aug 2026 19:16:01 GMT  
		Size: 625.8 MB (625832815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:169757a50b42455c3aaa3b3208685b5f7b1086074aacf55dc8c85bb3314bb7ca`  
		Last Modified: Tue, 11 Aug 2026 19:15:10 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef56d6b253c29e9b4f7b3d1781e546fcbe4a1bda7b49881cf677154e16624e8c`  
		Last Modified: Tue, 11 Aug 2026 19:15:10 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eed78f6e77abd7de2ced71a63cd43e4bfae962ec161a14b52aaabe14a5c1de7`  
		Last Modified: Tue, 11 Aug 2026 19:15:11 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:7-windowsservercore-ltsc2022`

```console
$ docker pull mongo@sha256:ab00e49cd5e0a8d3799aa254e99f9d945a51a1de845a80e000ee7a9f1b80dea0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `mongo:7-windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:72d0ba1251c2cfd7ab29173fd44c70ae26707981ebed1815f486ae586c99392d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2783395072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5717bc6692d7bb557bc076be9a41ee300a19e2471ef7620f25a81691edaab6dc`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Tue, 11 Aug 2026 18:52:56 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 11 Aug 2026 19:13:22 GMT
ENV MONGO_VERSION=7.0.40
# Tue, 11 Aug 2026 19:13:23 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.40-signed.msi
# Tue, 11 Aug 2026 19:13:23 GMT
ENV MONGO_DOWNLOAD_SHA256=1adfb2c433f6215cfe38ce871b39d6ba2bd3d6d9159b6b251c647a694fd113c7
# Tue, 11 Aug 2026 19:15:01 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 11 Aug 2026 19:15:01 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 19:15:02 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 19:15:02 GMT
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
	-	`sha256:f7201a85154c98cb8bd186d77bc1d3f2cca96eb76c61b83f86da43e30a16085d`  
		Last Modified: Tue, 11 Aug 2026 18:58:33 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f596ed9d7c13bfdd014cc1596f48e12da1bb1495209b7f92325918e798bdea8`  
		Last Modified: Tue, 11 Aug 2026 19:15:12 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4137ab151c6c0c97a27866ebf0ff3922468dbc1534ab8d35db041e5e0d72d5b`  
		Last Modified: Tue, 11 Aug 2026 19:15:12 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6237d05106296bc3d1129f8f60d6d7db1864c2c46ddaa8c7719ec92fb2b855f`  
		Last Modified: Tue, 11 Aug 2026 19:15:10 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1236f203578a3a8e24b3dc616ed6338a70b1a3d06cb815ab219936ec61964635`  
		Last Modified: Tue, 11 Aug 2026 19:16:01 GMT  
		Size: 625.8 MB (625832815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:169757a50b42455c3aaa3b3208685b5f7b1086074aacf55dc8c85bb3314bb7ca`  
		Last Modified: Tue, 11 Aug 2026 19:15:10 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef56d6b253c29e9b4f7b3d1781e546fcbe4a1bda7b49881cf677154e16624e8c`  
		Last Modified: Tue, 11 Aug 2026 19:15:10 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eed78f6e77abd7de2ced71a63cd43e4bfae962ec161a14b52aaabe14a5c1de7`  
		Last Modified: Tue, 11 Aug 2026 19:15:11 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:7-windowsservercore-ltsc2025`

```console
$ docker pull mongo@sha256:8185f1623e8e8a392a0d7b750eaade9d19c1bb2b72ada7d3f3daf6cd611aa5aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `mongo:7-windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull mongo@sha256:33243883bfba1b5df7619fbb3a66d714ef65bc77309f94a2b7f224a165229891
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 GB (2980723537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d48fdf56e353394ff078d4f811f5fa45af4aab23cd61ca387bc6f06b51c23d10`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Tue, 11 Aug 2026 18:36:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 11 Aug 2026 18:36:03 GMT
ENV MONGO_VERSION=7.0.40
# Tue, 11 Aug 2026 18:36:04 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.40-signed.msi
# Tue, 11 Aug 2026 18:36:05 GMT
ENV MONGO_DOWNLOAD_SHA256=1adfb2c433f6215cfe38ce871b39d6ba2bd3d6d9159b6b251c647a694fd113c7
# Tue, 11 Aug 2026 18:38:23 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 11 Aug 2026 18:38:24 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 18:38:24 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 18:38:25 GMT
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
	-	`sha256:39071bb7ac1f84c67777ddcc188aab82909f2ebb39d2f5965d23db28d2db3842`  
		Last Modified: Tue, 11 Aug 2026 18:38:32 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85de8746215967e7106688e16c8ea1bab8a42216d57afb712b0f40ad03886a1f`  
		Last Modified: Tue, 11 Aug 2026 18:38:32 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2197f75af80bccaf7fed1fabac2d229cc216276c8ce8879ade20c79b22347ad`  
		Last Modified: Tue, 11 Aug 2026 18:38:32 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e81fd18891dd498600a6ec5b51002800b4ae4098d6ee7f2e5f539c7857def6`  
		Last Modified: Tue, 11 Aug 2026 18:38:30 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d347b77c32873f3607f7f1c9fd07a2dac409b132b2e69aa322ed7d491c6ce1e`  
		Last Modified: Tue, 11 Aug 2026 18:39:20 GMT  
		Size: 625.7 MB (625706308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f310896ad365bf8d414c41d89fb309c2c07f4f05fb533dc9fd01025c5a818b7`  
		Last Modified: Tue, 11 Aug 2026 18:38:30 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5dcd4f47a840e39146388a3b7f42735a93f1418ada82a940b22329423c2bac`  
		Last Modified: Tue, 11 Aug 2026 18:38:30 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b142dea787d129c361dc187053c93f182a186ebcc1e73ee86a0cd57bd923e3b`  
		Last Modified: Tue, 11 Aug 2026 18:38:30 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:7.0`

```console
$ docker pull mongo@sha256:444d798458e5aa40f3667230a9c631974fa169c32ae4a2d924658ac72b753122
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
$ docker pull mongo@sha256:8ef27524b4cde51b9f07bb0827a56d02c6d3b148d0b7d0ca8ff4dfd57351ff4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.6 MB (293639420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a030dda9d77eb55c4fbaea286ef0f6aede00b8d261ae1ad36b6a99a4f0da2578`
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
# Tue, 11 Aug 2026 18:31:39 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 11 Aug 2026 18:31:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 18:32:02 GMT
ENV GOSU_VERSION=1.19
# Tue, 11 Aug 2026 18:32:02 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 11 Aug 2026 18:32:02 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 11 Aug 2026 18:32:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-7.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor 'E58830201F7DD82CD808AA84160D26BB1785BA38' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 11 Aug 2026 18:32:02 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 11 Aug 2026 18:32:02 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 11 Aug 2026 18:32:02 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 18:32:02 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 18:32:02 GMT
ENV MONGO_MAJOR=7.0
# Tue, 11 Aug 2026 18:32:02 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu jammy/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 11 Aug 2026 18:32:02 GMT
ENV MONGO_VERSION=7.0.40
# Tue, 11 Aug 2026 18:32:22 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 11 Aug 2026 18:32:22 GMT
VOLUME [/data/db /data/configdb]
# Tue, 11 Aug 2026 18:32:22 GMT
ENV HOME=/data/db
# Tue, 11 Aug 2026 18:32:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 11 Aug 2026 18:32:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Aug 2026 18:32:22 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 11 Aug 2026 18:32:22 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c215a94a9ca0ff826d99a83aa4b9ffa0a27b2fce64fe321fbee586425db0457`  
		Last Modified: Tue, 11 Aug 2026 18:32:54 GMT  
		Size: 1.8 KB (1778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db139b86933336e48b289faeeec868f650e41722408d6a394b57208e3eb6ee38`  
		Last Modified: Tue, 11 Aug 2026 18:32:55 GMT  
		Size: 1.5 MB (1472704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41a4112edf8a72ddf930dafe71f0cd504ee08565fccdf9db88b1453f338c26e3`  
		Last Modified: Tue, 11 Aug 2026 18:32:54 GMT  
		Size: 898.4 KB (898357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c1a9c72e790fb6f796e864240b5f44ea4ec29544ee96d7e826899c9c11541ee`  
		Last Modified: Tue, 11 Aug 2026 18:32:54 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a866bd8245eea5407b64d49f3ba66a9c3476da3122d6fb335244db7b32dde1f`  
		Last Modified: Tue, 11 Aug 2026 18:32:55 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b18e3baa9d1783ba65a06f89a3bc0982af96758503cfa8af00dcf4c3f1483c9`  
		Last Modified: Tue, 11 Aug 2026 18:33:01 GMT  
		Size: 261.5 MB (261524681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:899e1423f9d83d049d0bbed509be329870661c921057c881bfc1de05ee46ca41`  
		Last Modified: Tue, 11 Aug 2026 18:32:56 GMT  
		Size: 5.0 KB (5003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:7.0` - unknown; unknown

```console
$ docker pull mongo@sha256:797d42aa8c77fc7ca4c2e398207ee8cdfa57a34b6c377c902df2df722bb907b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3229627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ea16f6fe8b43f999c94c2d2b8fc3d31f5743640281c02af1ff06e395b17749a`

```dockerfile
```

-	Layers:
	-	`sha256:c425af47c9c47858757fc117d172d5de1bd1f3801780f0e840feded95f10051f`  
		Last Modified: Tue, 11 Aug 2026 18:32:54 GMT  
		Size: 3.2 MB (3201740 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4be0ebae6f47c90668a988cc76130082ddf666e4c3a0ce9ba95016dbfa9daaa9`  
		Last Modified: Tue, 11 Aug 2026 18:32:54 GMT  
		Size: 27.9 KB (27887 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:7.0` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:fd08932ce14f6c8e34f565782c60fdd6cac00b4f00fb08a6ca6301bcd3324cd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.7 MB (279712781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a168e8f2d7aa10052cebf6dbb8ec465757cb64f84de3dd50c49173cb05d335b`
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
# Tue, 11 Aug 2026 19:07:45 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 11 Aug 2026 19:07:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 19:08:05 GMT
ENV GOSU_VERSION=1.19
# Tue, 11 Aug 2026 19:08:05 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 11 Aug 2026 19:08:05 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 11 Aug 2026 19:08:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-7.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor 'E58830201F7DD82CD808AA84160D26BB1785BA38' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 11 Aug 2026 19:08:05 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 11 Aug 2026 19:08:05 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 11 Aug 2026 19:08:05 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 19:08:05 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 19:08:05 GMT
ENV MONGO_MAJOR=7.0
# Tue, 11 Aug 2026 19:08:05 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu jammy/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 11 Aug 2026 19:08:05 GMT
ENV MONGO_VERSION=7.0.40
# Tue, 11 Aug 2026 19:08:26 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 11 Aug 2026 19:08:26 GMT
VOLUME [/data/db /data/configdb]
# Tue, 11 Aug 2026 19:08:26 GMT
ENV HOME=/data/db
# Tue, 11 Aug 2026 19:08:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 11 Aug 2026 19:08:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Aug 2026 19:08:26 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 11 Aug 2026 19:08:26 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f3963a30c9001e23422a447630404805ea06c2000fd318457b847294f4c8edd`  
		Last Modified: Tue, 11 Aug 2026 19:08:56 GMT  
		Size: 1.8 KB (1784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd981a98767ab61e3e6fd0e4b413952115f12fa06a7da8e919a941cf54a850be`  
		Last Modified: Tue, 11 Aug 2026 19:08:56 GMT  
		Size: 1.4 MB (1438918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5093cdb11bf29720dcec4cdf1b3739b4c432e9b9b6fb4040693fdfb1a75c9e57`  
		Last Modified: Tue, 11 Aug 2026 19:08:57 GMT  
		Size: 850.7 KB (850699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a76acfe152b85e59ad4cd574559aa5a320670b506aabf8cdf2e371e39a72976f`  
		Last Modified: Tue, 11 Aug 2026 19:08:56 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0acd02647944b905ea7611e92c9d2e80e401b68069d9b66ef9d44b5d5b8e976`  
		Last Modified: Tue, 11 Aug 2026 19:08:58 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4111a05f60a597ceba5a970f2da68fd16636369f2a3437c2e29f1494154efb57`  
		Last Modified: Tue, 11 Aug 2026 19:09:02 GMT  
		Size: 249.8 MB (249795965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51e40981198a1d513a1a682fc494f58132d5eb2bff02ab7f37731658c20cd501`  
		Last Modified: Tue, 11 Aug 2026 19:08:58 GMT  
		Size: 5.0 KB (5004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:7.0` - unknown; unknown

```console
$ docker pull mongo@sha256:1c41726a3caa294944d969d66d007817c37439c78e2d5c24383c49afad1e6465
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3230149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7566c38ddb2fcaa851d8fda4b86e6c5e61b81a911db8ed4064a626a993d9311`

```dockerfile
```

-	Layers:
	-	`sha256:c3cff38c0a73e616801c5f6e1cc78c00ca25cef34b51175f981b82b97b4a8c5f`  
		Last Modified: Tue, 11 Aug 2026 19:08:56 GMT  
		Size: 3.2 MB (3202059 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef8967ed1c20980f7c31078cd97ef8a42559e34edb7a8606b51a364c1ef08602`  
		Last Modified: Tue, 11 Aug 2026 19:08:56 GMT  
		Size: 28.1 KB (28090 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:7.0` - windows version 10.0.26100.33158; amd64

```console
$ docker pull mongo@sha256:33243883bfba1b5df7619fbb3a66d714ef65bc77309f94a2b7f224a165229891
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 GB (2980723537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d48fdf56e353394ff078d4f811f5fa45af4aab23cd61ca387bc6f06b51c23d10`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Tue, 11 Aug 2026 18:36:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 11 Aug 2026 18:36:03 GMT
ENV MONGO_VERSION=7.0.40
# Tue, 11 Aug 2026 18:36:04 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.40-signed.msi
# Tue, 11 Aug 2026 18:36:05 GMT
ENV MONGO_DOWNLOAD_SHA256=1adfb2c433f6215cfe38ce871b39d6ba2bd3d6d9159b6b251c647a694fd113c7
# Tue, 11 Aug 2026 18:38:23 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 11 Aug 2026 18:38:24 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 18:38:24 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 18:38:25 GMT
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
	-	`sha256:39071bb7ac1f84c67777ddcc188aab82909f2ebb39d2f5965d23db28d2db3842`  
		Last Modified: Tue, 11 Aug 2026 18:38:32 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85de8746215967e7106688e16c8ea1bab8a42216d57afb712b0f40ad03886a1f`  
		Last Modified: Tue, 11 Aug 2026 18:38:32 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2197f75af80bccaf7fed1fabac2d229cc216276c8ce8879ade20c79b22347ad`  
		Last Modified: Tue, 11 Aug 2026 18:38:32 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e81fd18891dd498600a6ec5b51002800b4ae4098d6ee7f2e5f539c7857def6`  
		Last Modified: Tue, 11 Aug 2026 18:38:30 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d347b77c32873f3607f7f1c9fd07a2dac409b132b2e69aa322ed7d491c6ce1e`  
		Last Modified: Tue, 11 Aug 2026 18:39:20 GMT  
		Size: 625.7 MB (625706308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f310896ad365bf8d414c41d89fb309c2c07f4f05fb533dc9fd01025c5a818b7`  
		Last Modified: Tue, 11 Aug 2026 18:38:30 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5dcd4f47a840e39146388a3b7f42735a93f1418ada82a940b22329423c2bac`  
		Last Modified: Tue, 11 Aug 2026 18:38:30 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b142dea787d129c361dc187053c93f182a186ebcc1e73ee86a0cd57bd923e3b`  
		Last Modified: Tue, 11 Aug 2026 18:38:30 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:7.0` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:72d0ba1251c2cfd7ab29173fd44c70ae26707981ebed1815f486ae586c99392d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2783395072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5717bc6692d7bb557bc076be9a41ee300a19e2471ef7620f25a81691edaab6dc`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Tue, 11 Aug 2026 18:52:56 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 11 Aug 2026 19:13:22 GMT
ENV MONGO_VERSION=7.0.40
# Tue, 11 Aug 2026 19:13:23 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.40-signed.msi
# Tue, 11 Aug 2026 19:13:23 GMT
ENV MONGO_DOWNLOAD_SHA256=1adfb2c433f6215cfe38ce871b39d6ba2bd3d6d9159b6b251c647a694fd113c7
# Tue, 11 Aug 2026 19:15:01 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 11 Aug 2026 19:15:01 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 19:15:02 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 19:15:02 GMT
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
	-	`sha256:f7201a85154c98cb8bd186d77bc1d3f2cca96eb76c61b83f86da43e30a16085d`  
		Last Modified: Tue, 11 Aug 2026 18:58:33 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f596ed9d7c13bfdd014cc1596f48e12da1bb1495209b7f92325918e798bdea8`  
		Last Modified: Tue, 11 Aug 2026 19:15:12 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4137ab151c6c0c97a27866ebf0ff3922468dbc1534ab8d35db041e5e0d72d5b`  
		Last Modified: Tue, 11 Aug 2026 19:15:12 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6237d05106296bc3d1129f8f60d6d7db1864c2c46ddaa8c7719ec92fb2b855f`  
		Last Modified: Tue, 11 Aug 2026 19:15:10 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1236f203578a3a8e24b3dc616ed6338a70b1a3d06cb815ab219936ec61964635`  
		Last Modified: Tue, 11 Aug 2026 19:16:01 GMT  
		Size: 625.8 MB (625832815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:169757a50b42455c3aaa3b3208685b5f7b1086074aacf55dc8c85bb3314bb7ca`  
		Last Modified: Tue, 11 Aug 2026 19:15:10 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef56d6b253c29e9b4f7b3d1781e546fcbe4a1bda7b49881cf677154e16624e8c`  
		Last Modified: Tue, 11 Aug 2026 19:15:10 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eed78f6e77abd7de2ced71a63cd43e4bfae962ec161a14b52aaabe14a5c1de7`  
		Last Modified: Tue, 11 Aug 2026 19:15:11 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:7.0-jammy`

```console
$ docker pull mongo@sha256:d29d168ee010c2d701720aa909fe44baa86dfc54e6ccc54e3781c518fab525f7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mongo:7.0-jammy` - linux; amd64

```console
$ docker pull mongo@sha256:8ef27524b4cde51b9f07bb0827a56d02c6d3b148d0b7d0ca8ff4dfd57351ff4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.6 MB (293639420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a030dda9d77eb55c4fbaea286ef0f6aede00b8d261ae1ad36b6a99a4f0da2578`
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
# Tue, 11 Aug 2026 18:31:39 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 11 Aug 2026 18:31:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 18:32:02 GMT
ENV GOSU_VERSION=1.19
# Tue, 11 Aug 2026 18:32:02 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 11 Aug 2026 18:32:02 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 11 Aug 2026 18:32:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-7.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor 'E58830201F7DD82CD808AA84160D26BB1785BA38' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 11 Aug 2026 18:32:02 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 11 Aug 2026 18:32:02 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 11 Aug 2026 18:32:02 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 18:32:02 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 18:32:02 GMT
ENV MONGO_MAJOR=7.0
# Tue, 11 Aug 2026 18:32:02 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu jammy/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 11 Aug 2026 18:32:02 GMT
ENV MONGO_VERSION=7.0.40
# Tue, 11 Aug 2026 18:32:22 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 11 Aug 2026 18:32:22 GMT
VOLUME [/data/db /data/configdb]
# Tue, 11 Aug 2026 18:32:22 GMT
ENV HOME=/data/db
# Tue, 11 Aug 2026 18:32:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 11 Aug 2026 18:32:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Aug 2026 18:32:22 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 11 Aug 2026 18:32:22 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c215a94a9ca0ff826d99a83aa4b9ffa0a27b2fce64fe321fbee586425db0457`  
		Last Modified: Tue, 11 Aug 2026 18:32:54 GMT  
		Size: 1.8 KB (1778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db139b86933336e48b289faeeec868f650e41722408d6a394b57208e3eb6ee38`  
		Last Modified: Tue, 11 Aug 2026 18:32:55 GMT  
		Size: 1.5 MB (1472704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41a4112edf8a72ddf930dafe71f0cd504ee08565fccdf9db88b1453f338c26e3`  
		Last Modified: Tue, 11 Aug 2026 18:32:54 GMT  
		Size: 898.4 KB (898357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c1a9c72e790fb6f796e864240b5f44ea4ec29544ee96d7e826899c9c11541ee`  
		Last Modified: Tue, 11 Aug 2026 18:32:54 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a866bd8245eea5407b64d49f3ba66a9c3476da3122d6fb335244db7b32dde1f`  
		Last Modified: Tue, 11 Aug 2026 18:32:55 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b18e3baa9d1783ba65a06f89a3bc0982af96758503cfa8af00dcf4c3f1483c9`  
		Last Modified: Tue, 11 Aug 2026 18:33:01 GMT  
		Size: 261.5 MB (261524681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:899e1423f9d83d049d0bbed509be329870661c921057c881bfc1de05ee46ca41`  
		Last Modified: Tue, 11 Aug 2026 18:32:56 GMT  
		Size: 5.0 KB (5003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:7.0-jammy` - unknown; unknown

```console
$ docker pull mongo@sha256:797d42aa8c77fc7ca4c2e398207ee8cdfa57a34b6c377c902df2df722bb907b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3229627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ea16f6fe8b43f999c94c2d2b8fc3d31f5743640281c02af1ff06e395b17749a`

```dockerfile
```

-	Layers:
	-	`sha256:c425af47c9c47858757fc117d172d5de1bd1f3801780f0e840feded95f10051f`  
		Last Modified: Tue, 11 Aug 2026 18:32:54 GMT  
		Size: 3.2 MB (3201740 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4be0ebae6f47c90668a988cc76130082ddf666e4c3a0ce9ba95016dbfa9daaa9`  
		Last Modified: Tue, 11 Aug 2026 18:32:54 GMT  
		Size: 27.9 KB (27887 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:7.0-jammy` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:fd08932ce14f6c8e34f565782c60fdd6cac00b4f00fb08a6ca6301bcd3324cd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.7 MB (279712781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a168e8f2d7aa10052cebf6dbb8ec465757cb64f84de3dd50c49173cb05d335b`
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
# Tue, 11 Aug 2026 19:07:45 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 11 Aug 2026 19:07:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 19:08:05 GMT
ENV GOSU_VERSION=1.19
# Tue, 11 Aug 2026 19:08:05 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 11 Aug 2026 19:08:05 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 11 Aug 2026 19:08:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-7.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor 'E58830201F7DD82CD808AA84160D26BB1785BA38' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 11 Aug 2026 19:08:05 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 11 Aug 2026 19:08:05 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 11 Aug 2026 19:08:05 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 19:08:05 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 19:08:05 GMT
ENV MONGO_MAJOR=7.0
# Tue, 11 Aug 2026 19:08:05 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu jammy/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 11 Aug 2026 19:08:05 GMT
ENV MONGO_VERSION=7.0.40
# Tue, 11 Aug 2026 19:08:26 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 11 Aug 2026 19:08:26 GMT
VOLUME [/data/db /data/configdb]
# Tue, 11 Aug 2026 19:08:26 GMT
ENV HOME=/data/db
# Tue, 11 Aug 2026 19:08:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 11 Aug 2026 19:08:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Aug 2026 19:08:26 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 11 Aug 2026 19:08:26 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f3963a30c9001e23422a447630404805ea06c2000fd318457b847294f4c8edd`  
		Last Modified: Tue, 11 Aug 2026 19:08:56 GMT  
		Size: 1.8 KB (1784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd981a98767ab61e3e6fd0e4b413952115f12fa06a7da8e919a941cf54a850be`  
		Last Modified: Tue, 11 Aug 2026 19:08:56 GMT  
		Size: 1.4 MB (1438918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5093cdb11bf29720dcec4cdf1b3739b4c432e9b9b6fb4040693fdfb1a75c9e57`  
		Last Modified: Tue, 11 Aug 2026 19:08:57 GMT  
		Size: 850.7 KB (850699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a76acfe152b85e59ad4cd574559aa5a320670b506aabf8cdf2e371e39a72976f`  
		Last Modified: Tue, 11 Aug 2026 19:08:56 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0acd02647944b905ea7611e92c9d2e80e401b68069d9b66ef9d44b5d5b8e976`  
		Last Modified: Tue, 11 Aug 2026 19:08:58 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4111a05f60a597ceba5a970f2da68fd16636369f2a3437c2e29f1494154efb57`  
		Last Modified: Tue, 11 Aug 2026 19:09:02 GMT  
		Size: 249.8 MB (249795965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51e40981198a1d513a1a682fc494f58132d5eb2bff02ab7f37731658c20cd501`  
		Last Modified: Tue, 11 Aug 2026 19:08:58 GMT  
		Size: 5.0 KB (5004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:7.0-jammy` - unknown; unknown

```console
$ docker pull mongo@sha256:1c41726a3caa294944d969d66d007817c37439c78e2d5c24383c49afad1e6465
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3230149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7566c38ddb2fcaa851d8fda4b86e6c5e61b81a911db8ed4064a626a993d9311`

```dockerfile
```

-	Layers:
	-	`sha256:c3cff38c0a73e616801c5f6e1cc78c00ca25cef34b51175f981b82b97b4a8c5f`  
		Last Modified: Tue, 11 Aug 2026 19:08:56 GMT  
		Size: 3.2 MB (3202059 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef8967ed1c20980f7c31078cd97ef8a42559e34edb7a8606b51a364c1ef08602`  
		Last Modified: Tue, 11 Aug 2026 19:08:56 GMT  
		Size: 28.1 KB (28090 bytes)  
		MIME: application/vnd.in-toto+json

## `mongo:7.0-nanoserver`

```console
$ docker pull mongo@sha256:dbafd317f0d911ae3a0583b4466826e8ef322c8f58aed6ea5cce357c378159ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `mongo:7.0-nanoserver` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:1e384123519a1d2a60032d445ca4a2149a3cfbe93b0306162ece1cc217210266
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **749.1 MB (749140816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eddaf33741790998409cc170c9097d6a088fbc923d1e8abb419af442ab859c76`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Tue, 11 Aug 2026 20:13:35 GMT
SHELL [cmd /S /C]
# Tue, 11 Aug 2026 20:13:37 GMT
USER ContainerAdministrator
# Tue, 11 Aug 2026 20:13:49 GMT
RUN setx /m PATH "C:\mongodb\bin;%PATH%"
# Tue, 11 Aug 2026 20:13:49 GMT
USER ContainerUser
# Tue, 11 Aug 2026 20:19:56 GMT
COPY multi:540d6dd70b1e7484f1958dc08b337aeb56cf8a92fe38be4c279dd406990d6935 in C:\Windows\System32\ 
# Tue, 11 Aug 2026 20:19:57 GMT
ENV MONGO_VERSION=7.0.40
# Tue, 11 Aug 2026 20:20:37 GMT
COPY dir:5275c90acc984d2e95da7478ab8f186163bcce4e9272031fdda8ff9e1e70c12e in C:\mongodb 
# Tue, 11 Aug 2026 20:20:56 GMT
RUN mongod --version
# Tue, 11 Aug 2026 20:20:56 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 20:20:57 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 20:20:58 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51a7dc20d84ea0969174d6cf460deb84714d0ebcf12fddacf83338426b264ce1`  
		Last Modified: Tue, 11 Aug 2026 20:17:39 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d30395bc107c24edfe22eba4a5046805438a2247f7aea6cadb67e5893d8e5ce`  
		Last Modified: Tue, 11 Aug 2026 20:17:39 GMT  
		Size: 1.1 KB (1084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b63008a99223a4359d26fc7134ae4e1a902489fa30ff17a3eee11ab0bf7213`  
		Last Modified: Tue, 11 Aug 2026 20:17:37 GMT  
		Size: 70.8 KB (70771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9c96c2777dbad64a838be75204aa5252be0e065c01b0337e298537e0a64d74`  
		Last Modified: Tue, 11 Aug 2026 20:17:37 GMT  
		Size: 1.1 KB (1076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b89e6b1b7f60ec1483803e8c469db003690e14595e21c3409cd5049c8bff21`  
		Last Modified: Tue, 11 Aug 2026 20:21:10 GMT  
		Size: 275.2 KB (275202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5edca4a257f3c07a11133e84591fa139aa6b9e9cb6ae16955e0ea6ceaece584`  
		Last Modified: Tue, 11 Aug 2026 20:21:10 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb52ca13d44e65b36453da546d0ddd3322a71994d2eacb588aff7b7a33a9b490`  
		Last Modified: Tue, 11 Aug 2026 20:22:00 GMT  
		Size: 624.6 MB (624598110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62211dbc0c3fa793c57862ed548e82063f7c915067916480ceff174ef1b71473`  
		Last Modified: Tue, 11 Aug 2026 20:21:08 GMT  
		Size: 86.1 KB (86138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:558874efaf0da5643c01745ea25428aaa073a39ca7b5a83fa6eb849acee012a3`  
		Last Modified: Tue, 11 Aug 2026 20:21:08 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99812be21bec80525a69e2bfb962090f729c31475e7f64ab9ad0a207b415120c`  
		Last Modified: Tue, 11 Aug 2026 20:21:08 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:296a3893654b8483225bb2598c948eeecc8e06884c44830483ff1f27218668fe`  
		Last Modified: Tue, 11 Aug 2026 20:21:08 GMT  
		Size: 1.1 KB (1073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:7.0-nanoserver-ltsc2022`

```console
$ docker pull mongo@sha256:dbafd317f0d911ae3a0583b4466826e8ef322c8f58aed6ea5cce357c378159ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `mongo:7.0-nanoserver-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:1e384123519a1d2a60032d445ca4a2149a3cfbe93b0306162ece1cc217210266
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **749.1 MB (749140816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eddaf33741790998409cc170c9097d6a088fbc923d1e8abb419af442ab859c76`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Tue, 11 Aug 2026 20:13:35 GMT
SHELL [cmd /S /C]
# Tue, 11 Aug 2026 20:13:37 GMT
USER ContainerAdministrator
# Tue, 11 Aug 2026 20:13:49 GMT
RUN setx /m PATH "C:\mongodb\bin;%PATH%"
# Tue, 11 Aug 2026 20:13:49 GMT
USER ContainerUser
# Tue, 11 Aug 2026 20:19:56 GMT
COPY multi:540d6dd70b1e7484f1958dc08b337aeb56cf8a92fe38be4c279dd406990d6935 in C:\Windows\System32\ 
# Tue, 11 Aug 2026 20:19:57 GMT
ENV MONGO_VERSION=7.0.40
# Tue, 11 Aug 2026 20:20:37 GMT
COPY dir:5275c90acc984d2e95da7478ab8f186163bcce4e9272031fdda8ff9e1e70c12e in C:\mongodb 
# Tue, 11 Aug 2026 20:20:56 GMT
RUN mongod --version
# Tue, 11 Aug 2026 20:20:56 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 20:20:57 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 20:20:58 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51a7dc20d84ea0969174d6cf460deb84714d0ebcf12fddacf83338426b264ce1`  
		Last Modified: Tue, 11 Aug 2026 20:17:39 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d30395bc107c24edfe22eba4a5046805438a2247f7aea6cadb67e5893d8e5ce`  
		Last Modified: Tue, 11 Aug 2026 20:17:39 GMT  
		Size: 1.1 KB (1084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b63008a99223a4359d26fc7134ae4e1a902489fa30ff17a3eee11ab0bf7213`  
		Last Modified: Tue, 11 Aug 2026 20:17:37 GMT  
		Size: 70.8 KB (70771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9c96c2777dbad64a838be75204aa5252be0e065c01b0337e298537e0a64d74`  
		Last Modified: Tue, 11 Aug 2026 20:17:37 GMT  
		Size: 1.1 KB (1076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b89e6b1b7f60ec1483803e8c469db003690e14595e21c3409cd5049c8bff21`  
		Last Modified: Tue, 11 Aug 2026 20:21:10 GMT  
		Size: 275.2 KB (275202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5edca4a257f3c07a11133e84591fa139aa6b9e9cb6ae16955e0ea6ceaece584`  
		Last Modified: Tue, 11 Aug 2026 20:21:10 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb52ca13d44e65b36453da546d0ddd3322a71994d2eacb588aff7b7a33a9b490`  
		Last Modified: Tue, 11 Aug 2026 20:22:00 GMT  
		Size: 624.6 MB (624598110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62211dbc0c3fa793c57862ed548e82063f7c915067916480ceff174ef1b71473`  
		Last Modified: Tue, 11 Aug 2026 20:21:08 GMT  
		Size: 86.1 KB (86138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:558874efaf0da5643c01745ea25428aaa073a39ca7b5a83fa6eb849acee012a3`  
		Last Modified: Tue, 11 Aug 2026 20:21:08 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99812be21bec80525a69e2bfb962090f729c31475e7f64ab9ad0a207b415120c`  
		Last Modified: Tue, 11 Aug 2026 20:21:08 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:296a3893654b8483225bb2598c948eeecc8e06884c44830483ff1f27218668fe`  
		Last Modified: Tue, 11 Aug 2026 20:21:08 GMT  
		Size: 1.1 KB (1073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:7.0-windowsservercore`

```console
$ docker pull mongo@sha256:36d30a8757a59414cc609cc4a4aeca778bf6ffcd82d3a448b0d0147209cbd550
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `mongo:7.0-windowsservercore` - windows version 10.0.26100.33158; amd64

```console
$ docker pull mongo@sha256:33243883bfba1b5df7619fbb3a66d714ef65bc77309f94a2b7f224a165229891
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 GB (2980723537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d48fdf56e353394ff078d4f811f5fa45af4aab23cd61ca387bc6f06b51c23d10`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Tue, 11 Aug 2026 18:36:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 11 Aug 2026 18:36:03 GMT
ENV MONGO_VERSION=7.0.40
# Tue, 11 Aug 2026 18:36:04 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.40-signed.msi
# Tue, 11 Aug 2026 18:36:05 GMT
ENV MONGO_DOWNLOAD_SHA256=1adfb2c433f6215cfe38ce871b39d6ba2bd3d6d9159b6b251c647a694fd113c7
# Tue, 11 Aug 2026 18:38:23 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 11 Aug 2026 18:38:24 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 18:38:24 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 18:38:25 GMT
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
	-	`sha256:39071bb7ac1f84c67777ddcc188aab82909f2ebb39d2f5965d23db28d2db3842`  
		Last Modified: Tue, 11 Aug 2026 18:38:32 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85de8746215967e7106688e16c8ea1bab8a42216d57afb712b0f40ad03886a1f`  
		Last Modified: Tue, 11 Aug 2026 18:38:32 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2197f75af80bccaf7fed1fabac2d229cc216276c8ce8879ade20c79b22347ad`  
		Last Modified: Tue, 11 Aug 2026 18:38:32 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e81fd18891dd498600a6ec5b51002800b4ae4098d6ee7f2e5f539c7857def6`  
		Last Modified: Tue, 11 Aug 2026 18:38:30 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d347b77c32873f3607f7f1c9fd07a2dac409b132b2e69aa322ed7d491c6ce1e`  
		Last Modified: Tue, 11 Aug 2026 18:39:20 GMT  
		Size: 625.7 MB (625706308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f310896ad365bf8d414c41d89fb309c2c07f4f05fb533dc9fd01025c5a818b7`  
		Last Modified: Tue, 11 Aug 2026 18:38:30 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5dcd4f47a840e39146388a3b7f42735a93f1418ada82a940b22329423c2bac`  
		Last Modified: Tue, 11 Aug 2026 18:38:30 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b142dea787d129c361dc187053c93f182a186ebcc1e73ee86a0cd57bd923e3b`  
		Last Modified: Tue, 11 Aug 2026 18:38:30 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:7.0-windowsservercore` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:72d0ba1251c2cfd7ab29173fd44c70ae26707981ebed1815f486ae586c99392d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2783395072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5717bc6692d7bb557bc076be9a41ee300a19e2471ef7620f25a81691edaab6dc`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Tue, 11 Aug 2026 18:52:56 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 11 Aug 2026 19:13:22 GMT
ENV MONGO_VERSION=7.0.40
# Tue, 11 Aug 2026 19:13:23 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.40-signed.msi
# Tue, 11 Aug 2026 19:13:23 GMT
ENV MONGO_DOWNLOAD_SHA256=1adfb2c433f6215cfe38ce871b39d6ba2bd3d6d9159b6b251c647a694fd113c7
# Tue, 11 Aug 2026 19:15:01 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 11 Aug 2026 19:15:01 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 19:15:02 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 19:15:02 GMT
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
	-	`sha256:f7201a85154c98cb8bd186d77bc1d3f2cca96eb76c61b83f86da43e30a16085d`  
		Last Modified: Tue, 11 Aug 2026 18:58:33 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f596ed9d7c13bfdd014cc1596f48e12da1bb1495209b7f92325918e798bdea8`  
		Last Modified: Tue, 11 Aug 2026 19:15:12 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4137ab151c6c0c97a27866ebf0ff3922468dbc1534ab8d35db041e5e0d72d5b`  
		Last Modified: Tue, 11 Aug 2026 19:15:12 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6237d05106296bc3d1129f8f60d6d7db1864c2c46ddaa8c7719ec92fb2b855f`  
		Last Modified: Tue, 11 Aug 2026 19:15:10 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1236f203578a3a8e24b3dc616ed6338a70b1a3d06cb815ab219936ec61964635`  
		Last Modified: Tue, 11 Aug 2026 19:16:01 GMT  
		Size: 625.8 MB (625832815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:169757a50b42455c3aaa3b3208685b5f7b1086074aacf55dc8c85bb3314bb7ca`  
		Last Modified: Tue, 11 Aug 2026 19:15:10 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef56d6b253c29e9b4f7b3d1781e546fcbe4a1bda7b49881cf677154e16624e8c`  
		Last Modified: Tue, 11 Aug 2026 19:15:10 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eed78f6e77abd7de2ced71a63cd43e4bfae962ec161a14b52aaabe14a5c1de7`  
		Last Modified: Tue, 11 Aug 2026 19:15:11 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:7.0-windowsservercore-ltsc2022`

```console
$ docker pull mongo@sha256:ab00e49cd5e0a8d3799aa254e99f9d945a51a1de845a80e000ee7a9f1b80dea0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `mongo:7.0-windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:72d0ba1251c2cfd7ab29173fd44c70ae26707981ebed1815f486ae586c99392d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2783395072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5717bc6692d7bb557bc076be9a41ee300a19e2471ef7620f25a81691edaab6dc`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Tue, 11 Aug 2026 18:52:56 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 11 Aug 2026 19:13:22 GMT
ENV MONGO_VERSION=7.0.40
# Tue, 11 Aug 2026 19:13:23 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.40-signed.msi
# Tue, 11 Aug 2026 19:13:23 GMT
ENV MONGO_DOWNLOAD_SHA256=1adfb2c433f6215cfe38ce871b39d6ba2bd3d6d9159b6b251c647a694fd113c7
# Tue, 11 Aug 2026 19:15:01 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 11 Aug 2026 19:15:01 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 19:15:02 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 19:15:02 GMT
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
	-	`sha256:f7201a85154c98cb8bd186d77bc1d3f2cca96eb76c61b83f86da43e30a16085d`  
		Last Modified: Tue, 11 Aug 2026 18:58:33 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f596ed9d7c13bfdd014cc1596f48e12da1bb1495209b7f92325918e798bdea8`  
		Last Modified: Tue, 11 Aug 2026 19:15:12 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4137ab151c6c0c97a27866ebf0ff3922468dbc1534ab8d35db041e5e0d72d5b`  
		Last Modified: Tue, 11 Aug 2026 19:15:12 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6237d05106296bc3d1129f8f60d6d7db1864c2c46ddaa8c7719ec92fb2b855f`  
		Last Modified: Tue, 11 Aug 2026 19:15:10 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1236f203578a3a8e24b3dc616ed6338a70b1a3d06cb815ab219936ec61964635`  
		Last Modified: Tue, 11 Aug 2026 19:16:01 GMT  
		Size: 625.8 MB (625832815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:169757a50b42455c3aaa3b3208685b5f7b1086074aacf55dc8c85bb3314bb7ca`  
		Last Modified: Tue, 11 Aug 2026 19:15:10 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef56d6b253c29e9b4f7b3d1781e546fcbe4a1bda7b49881cf677154e16624e8c`  
		Last Modified: Tue, 11 Aug 2026 19:15:10 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eed78f6e77abd7de2ced71a63cd43e4bfae962ec161a14b52aaabe14a5c1de7`  
		Last Modified: Tue, 11 Aug 2026 19:15:11 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:7.0-windowsservercore-ltsc2025`

```console
$ docker pull mongo@sha256:8185f1623e8e8a392a0d7b750eaade9d19c1bb2b72ada7d3f3daf6cd611aa5aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `mongo:7.0-windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull mongo@sha256:33243883bfba1b5df7619fbb3a66d714ef65bc77309f94a2b7f224a165229891
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 GB (2980723537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d48fdf56e353394ff078d4f811f5fa45af4aab23cd61ca387bc6f06b51c23d10`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Tue, 11 Aug 2026 18:36:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 11 Aug 2026 18:36:03 GMT
ENV MONGO_VERSION=7.0.40
# Tue, 11 Aug 2026 18:36:04 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.40-signed.msi
# Tue, 11 Aug 2026 18:36:05 GMT
ENV MONGO_DOWNLOAD_SHA256=1adfb2c433f6215cfe38ce871b39d6ba2bd3d6d9159b6b251c647a694fd113c7
# Tue, 11 Aug 2026 18:38:23 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 11 Aug 2026 18:38:24 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 18:38:24 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 18:38:25 GMT
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
	-	`sha256:39071bb7ac1f84c67777ddcc188aab82909f2ebb39d2f5965d23db28d2db3842`  
		Last Modified: Tue, 11 Aug 2026 18:38:32 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85de8746215967e7106688e16c8ea1bab8a42216d57afb712b0f40ad03886a1f`  
		Last Modified: Tue, 11 Aug 2026 18:38:32 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2197f75af80bccaf7fed1fabac2d229cc216276c8ce8879ade20c79b22347ad`  
		Last Modified: Tue, 11 Aug 2026 18:38:32 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e81fd18891dd498600a6ec5b51002800b4ae4098d6ee7f2e5f539c7857def6`  
		Last Modified: Tue, 11 Aug 2026 18:38:30 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d347b77c32873f3607f7f1c9fd07a2dac409b132b2e69aa322ed7d491c6ce1e`  
		Last Modified: Tue, 11 Aug 2026 18:39:20 GMT  
		Size: 625.7 MB (625706308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f310896ad365bf8d414c41d89fb309c2c07f4f05fb533dc9fd01025c5a818b7`  
		Last Modified: Tue, 11 Aug 2026 18:38:30 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5dcd4f47a840e39146388a3b7f42735a93f1418ada82a940b22329423c2bac`  
		Last Modified: Tue, 11 Aug 2026 18:38:30 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b142dea787d129c361dc187053c93f182a186ebcc1e73ee86a0cd57bd923e3b`  
		Last Modified: Tue, 11 Aug 2026 18:38:30 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:7.0.40`

```console
$ docker pull mongo@sha256:444d798458e5aa40f3667230a9c631974fa169c32ae4a2d924658ac72b753122
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `mongo:7.0.40` - linux; amd64

```console
$ docker pull mongo@sha256:8ef27524b4cde51b9f07bb0827a56d02c6d3b148d0b7d0ca8ff4dfd57351ff4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.6 MB (293639420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a030dda9d77eb55c4fbaea286ef0f6aede00b8d261ae1ad36b6a99a4f0da2578`
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
# Tue, 11 Aug 2026 18:31:39 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 11 Aug 2026 18:31:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 18:32:02 GMT
ENV GOSU_VERSION=1.19
# Tue, 11 Aug 2026 18:32:02 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 11 Aug 2026 18:32:02 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 11 Aug 2026 18:32:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-7.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor 'E58830201F7DD82CD808AA84160D26BB1785BA38' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 11 Aug 2026 18:32:02 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 11 Aug 2026 18:32:02 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 11 Aug 2026 18:32:02 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 18:32:02 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 18:32:02 GMT
ENV MONGO_MAJOR=7.0
# Tue, 11 Aug 2026 18:32:02 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu jammy/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 11 Aug 2026 18:32:02 GMT
ENV MONGO_VERSION=7.0.40
# Tue, 11 Aug 2026 18:32:22 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 11 Aug 2026 18:32:22 GMT
VOLUME [/data/db /data/configdb]
# Tue, 11 Aug 2026 18:32:22 GMT
ENV HOME=/data/db
# Tue, 11 Aug 2026 18:32:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 11 Aug 2026 18:32:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Aug 2026 18:32:22 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 11 Aug 2026 18:32:22 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c215a94a9ca0ff826d99a83aa4b9ffa0a27b2fce64fe321fbee586425db0457`  
		Last Modified: Tue, 11 Aug 2026 18:32:54 GMT  
		Size: 1.8 KB (1778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db139b86933336e48b289faeeec868f650e41722408d6a394b57208e3eb6ee38`  
		Last Modified: Tue, 11 Aug 2026 18:32:55 GMT  
		Size: 1.5 MB (1472704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41a4112edf8a72ddf930dafe71f0cd504ee08565fccdf9db88b1453f338c26e3`  
		Last Modified: Tue, 11 Aug 2026 18:32:54 GMT  
		Size: 898.4 KB (898357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c1a9c72e790fb6f796e864240b5f44ea4ec29544ee96d7e826899c9c11541ee`  
		Last Modified: Tue, 11 Aug 2026 18:32:54 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a866bd8245eea5407b64d49f3ba66a9c3476da3122d6fb335244db7b32dde1f`  
		Last Modified: Tue, 11 Aug 2026 18:32:55 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b18e3baa9d1783ba65a06f89a3bc0982af96758503cfa8af00dcf4c3f1483c9`  
		Last Modified: Tue, 11 Aug 2026 18:33:01 GMT  
		Size: 261.5 MB (261524681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:899e1423f9d83d049d0bbed509be329870661c921057c881bfc1de05ee46ca41`  
		Last Modified: Tue, 11 Aug 2026 18:32:56 GMT  
		Size: 5.0 KB (5003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:7.0.40` - unknown; unknown

```console
$ docker pull mongo@sha256:797d42aa8c77fc7ca4c2e398207ee8cdfa57a34b6c377c902df2df722bb907b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3229627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ea16f6fe8b43f999c94c2d2b8fc3d31f5743640281c02af1ff06e395b17749a`

```dockerfile
```

-	Layers:
	-	`sha256:c425af47c9c47858757fc117d172d5de1bd1f3801780f0e840feded95f10051f`  
		Last Modified: Tue, 11 Aug 2026 18:32:54 GMT  
		Size: 3.2 MB (3201740 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4be0ebae6f47c90668a988cc76130082ddf666e4c3a0ce9ba95016dbfa9daaa9`  
		Last Modified: Tue, 11 Aug 2026 18:32:54 GMT  
		Size: 27.9 KB (27887 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:7.0.40` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:fd08932ce14f6c8e34f565782c60fdd6cac00b4f00fb08a6ca6301bcd3324cd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.7 MB (279712781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a168e8f2d7aa10052cebf6dbb8ec465757cb64f84de3dd50c49173cb05d335b`
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
# Tue, 11 Aug 2026 19:07:45 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 11 Aug 2026 19:07:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 19:08:05 GMT
ENV GOSU_VERSION=1.19
# Tue, 11 Aug 2026 19:08:05 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 11 Aug 2026 19:08:05 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 11 Aug 2026 19:08:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-7.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor 'E58830201F7DD82CD808AA84160D26BB1785BA38' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 11 Aug 2026 19:08:05 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 11 Aug 2026 19:08:05 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 11 Aug 2026 19:08:05 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 19:08:05 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 19:08:05 GMT
ENV MONGO_MAJOR=7.0
# Tue, 11 Aug 2026 19:08:05 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu jammy/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 11 Aug 2026 19:08:05 GMT
ENV MONGO_VERSION=7.0.40
# Tue, 11 Aug 2026 19:08:26 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 11 Aug 2026 19:08:26 GMT
VOLUME [/data/db /data/configdb]
# Tue, 11 Aug 2026 19:08:26 GMT
ENV HOME=/data/db
# Tue, 11 Aug 2026 19:08:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 11 Aug 2026 19:08:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Aug 2026 19:08:26 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 11 Aug 2026 19:08:26 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f3963a30c9001e23422a447630404805ea06c2000fd318457b847294f4c8edd`  
		Last Modified: Tue, 11 Aug 2026 19:08:56 GMT  
		Size: 1.8 KB (1784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd981a98767ab61e3e6fd0e4b413952115f12fa06a7da8e919a941cf54a850be`  
		Last Modified: Tue, 11 Aug 2026 19:08:56 GMT  
		Size: 1.4 MB (1438918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5093cdb11bf29720dcec4cdf1b3739b4c432e9b9b6fb4040693fdfb1a75c9e57`  
		Last Modified: Tue, 11 Aug 2026 19:08:57 GMT  
		Size: 850.7 KB (850699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a76acfe152b85e59ad4cd574559aa5a320670b506aabf8cdf2e371e39a72976f`  
		Last Modified: Tue, 11 Aug 2026 19:08:56 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0acd02647944b905ea7611e92c9d2e80e401b68069d9b66ef9d44b5d5b8e976`  
		Last Modified: Tue, 11 Aug 2026 19:08:58 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4111a05f60a597ceba5a970f2da68fd16636369f2a3437c2e29f1494154efb57`  
		Last Modified: Tue, 11 Aug 2026 19:09:02 GMT  
		Size: 249.8 MB (249795965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51e40981198a1d513a1a682fc494f58132d5eb2bff02ab7f37731658c20cd501`  
		Last Modified: Tue, 11 Aug 2026 19:08:58 GMT  
		Size: 5.0 KB (5004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:7.0.40` - unknown; unknown

```console
$ docker pull mongo@sha256:1c41726a3caa294944d969d66d007817c37439c78e2d5c24383c49afad1e6465
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3230149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7566c38ddb2fcaa851d8fda4b86e6c5e61b81a911db8ed4064a626a993d9311`

```dockerfile
```

-	Layers:
	-	`sha256:c3cff38c0a73e616801c5f6e1cc78c00ca25cef34b51175f981b82b97b4a8c5f`  
		Last Modified: Tue, 11 Aug 2026 19:08:56 GMT  
		Size: 3.2 MB (3202059 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef8967ed1c20980f7c31078cd97ef8a42559e34edb7a8606b51a364c1ef08602`  
		Last Modified: Tue, 11 Aug 2026 19:08:56 GMT  
		Size: 28.1 KB (28090 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:7.0.40` - windows version 10.0.26100.33158; amd64

```console
$ docker pull mongo@sha256:33243883bfba1b5df7619fbb3a66d714ef65bc77309f94a2b7f224a165229891
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 GB (2980723537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d48fdf56e353394ff078d4f811f5fa45af4aab23cd61ca387bc6f06b51c23d10`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Tue, 11 Aug 2026 18:36:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 11 Aug 2026 18:36:03 GMT
ENV MONGO_VERSION=7.0.40
# Tue, 11 Aug 2026 18:36:04 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.40-signed.msi
# Tue, 11 Aug 2026 18:36:05 GMT
ENV MONGO_DOWNLOAD_SHA256=1adfb2c433f6215cfe38ce871b39d6ba2bd3d6d9159b6b251c647a694fd113c7
# Tue, 11 Aug 2026 18:38:23 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 11 Aug 2026 18:38:24 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 18:38:24 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 18:38:25 GMT
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
	-	`sha256:39071bb7ac1f84c67777ddcc188aab82909f2ebb39d2f5965d23db28d2db3842`  
		Last Modified: Tue, 11 Aug 2026 18:38:32 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85de8746215967e7106688e16c8ea1bab8a42216d57afb712b0f40ad03886a1f`  
		Last Modified: Tue, 11 Aug 2026 18:38:32 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2197f75af80bccaf7fed1fabac2d229cc216276c8ce8879ade20c79b22347ad`  
		Last Modified: Tue, 11 Aug 2026 18:38:32 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e81fd18891dd498600a6ec5b51002800b4ae4098d6ee7f2e5f539c7857def6`  
		Last Modified: Tue, 11 Aug 2026 18:38:30 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d347b77c32873f3607f7f1c9fd07a2dac409b132b2e69aa322ed7d491c6ce1e`  
		Last Modified: Tue, 11 Aug 2026 18:39:20 GMT  
		Size: 625.7 MB (625706308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f310896ad365bf8d414c41d89fb309c2c07f4f05fb533dc9fd01025c5a818b7`  
		Last Modified: Tue, 11 Aug 2026 18:38:30 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5dcd4f47a840e39146388a3b7f42735a93f1418ada82a940b22329423c2bac`  
		Last Modified: Tue, 11 Aug 2026 18:38:30 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b142dea787d129c361dc187053c93f182a186ebcc1e73ee86a0cd57bd923e3b`  
		Last Modified: Tue, 11 Aug 2026 18:38:30 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:7.0.40` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:72d0ba1251c2cfd7ab29173fd44c70ae26707981ebed1815f486ae586c99392d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2783395072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5717bc6692d7bb557bc076be9a41ee300a19e2471ef7620f25a81691edaab6dc`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Tue, 11 Aug 2026 18:52:56 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 11 Aug 2026 19:13:22 GMT
ENV MONGO_VERSION=7.0.40
# Tue, 11 Aug 2026 19:13:23 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.40-signed.msi
# Tue, 11 Aug 2026 19:13:23 GMT
ENV MONGO_DOWNLOAD_SHA256=1adfb2c433f6215cfe38ce871b39d6ba2bd3d6d9159b6b251c647a694fd113c7
# Tue, 11 Aug 2026 19:15:01 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 11 Aug 2026 19:15:01 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 19:15:02 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 19:15:02 GMT
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
	-	`sha256:f7201a85154c98cb8bd186d77bc1d3f2cca96eb76c61b83f86da43e30a16085d`  
		Last Modified: Tue, 11 Aug 2026 18:58:33 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f596ed9d7c13bfdd014cc1596f48e12da1bb1495209b7f92325918e798bdea8`  
		Last Modified: Tue, 11 Aug 2026 19:15:12 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4137ab151c6c0c97a27866ebf0ff3922468dbc1534ab8d35db041e5e0d72d5b`  
		Last Modified: Tue, 11 Aug 2026 19:15:12 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6237d05106296bc3d1129f8f60d6d7db1864c2c46ddaa8c7719ec92fb2b855f`  
		Last Modified: Tue, 11 Aug 2026 19:15:10 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1236f203578a3a8e24b3dc616ed6338a70b1a3d06cb815ab219936ec61964635`  
		Last Modified: Tue, 11 Aug 2026 19:16:01 GMT  
		Size: 625.8 MB (625832815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:169757a50b42455c3aaa3b3208685b5f7b1086074aacf55dc8c85bb3314bb7ca`  
		Last Modified: Tue, 11 Aug 2026 19:15:10 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef56d6b253c29e9b4f7b3d1781e546fcbe4a1bda7b49881cf677154e16624e8c`  
		Last Modified: Tue, 11 Aug 2026 19:15:10 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eed78f6e77abd7de2ced71a63cd43e4bfae962ec161a14b52aaabe14a5c1de7`  
		Last Modified: Tue, 11 Aug 2026 19:15:11 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:7.0.40-jammy`

```console
$ docker pull mongo@sha256:d29d168ee010c2d701720aa909fe44baa86dfc54e6ccc54e3781c518fab525f7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mongo:7.0.40-jammy` - linux; amd64

```console
$ docker pull mongo@sha256:8ef27524b4cde51b9f07bb0827a56d02c6d3b148d0b7d0ca8ff4dfd57351ff4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.6 MB (293639420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a030dda9d77eb55c4fbaea286ef0f6aede00b8d261ae1ad36b6a99a4f0da2578`
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
# Tue, 11 Aug 2026 18:31:39 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 11 Aug 2026 18:31:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 18:32:02 GMT
ENV GOSU_VERSION=1.19
# Tue, 11 Aug 2026 18:32:02 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 11 Aug 2026 18:32:02 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 11 Aug 2026 18:32:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-7.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor 'E58830201F7DD82CD808AA84160D26BB1785BA38' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 11 Aug 2026 18:32:02 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 11 Aug 2026 18:32:02 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 11 Aug 2026 18:32:02 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 18:32:02 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 18:32:02 GMT
ENV MONGO_MAJOR=7.0
# Tue, 11 Aug 2026 18:32:02 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu jammy/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 11 Aug 2026 18:32:02 GMT
ENV MONGO_VERSION=7.0.40
# Tue, 11 Aug 2026 18:32:22 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 11 Aug 2026 18:32:22 GMT
VOLUME [/data/db /data/configdb]
# Tue, 11 Aug 2026 18:32:22 GMT
ENV HOME=/data/db
# Tue, 11 Aug 2026 18:32:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 11 Aug 2026 18:32:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Aug 2026 18:32:22 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 11 Aug 2026 18:32:22 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c215a94a9ca0ff826d99a83aa4b9ffa0a27b2fce64fe321fbee586425db0457`  
		Last Modified: Tue, 11 Aug 2026 18:32:54 GMT  
		Size: 1.8 KB (1778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db139b86933336e48b289faeeec868f650e41722408d6a394b57208e3eb6ee38`  
		Last Modified: Tue, 11 Aug 2026 18:32:55 GMT  
		Size: 1.5 MB (1472704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41a4112edf8a72ddf930dafe71f0cd504ee08565fccdf9db88b1453f338c26e3`  
		Last Modified: Tue, 11 Aug 2026 18:32:54 GMT  
		Size: 898.4 KB (898357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c1a9c72e790fb6f796e864240b5f44ea4ec29544ee96d7e826899c9c11541ee`  
		Last Modified: Tue, 11 Aug 2026 18:32:54 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a866bd8245eea5407b64d49f3ba66a9c3476da3122d6fb335244db7b32dde1f`  
		Last Modified: Tue, 11 Aug 2026 18:32:55 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b18e3baa9d1783ba65a06f89a3bc0982af96758503cfa8af00dcf4c3f1483c9`  
		Last Modified: Tue, 11 Aug 2026 18:33:01 GMT  
		Size: 261.5 MB (261524681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:899e1423f9d83d049d0bbed509be329870661c921057c881bfc1de05ee46ca41`  
		Last Modified: Tue, 11 Aug 2026 18:32:56 GMT  
		Size: 5.0 KB (5003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:7.0.40-jammy` - unknown; unknown

```console
$ docker pull mongo@sha256:797d42aa8c77fc7ca4c2e398207ee8cdfa57a34b6c377c902df2df722bb907b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3229627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ea16f6fe8b43f999c94c2d2b8fc3d31f5743640281c02af1ff06e395b17749a`

```dockerfile
```

-	Layers:
	-	`sha256:c425af47c9c47858757fc117d172d5de1bd1f3801780f0e840feded95f10051f`  
		Last Modified: Tue, 11 Aug 2026 18:32:54 GMT  
		Size: 3.2 MB (3201740 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4be0ebae6f47c90668a988cc76130082ddf666e4c3a0ce9ba95016dbfa9daaa9`  
		Last Modified: Tue, 11 Aug 2026 18:32:54 GMT  
		Size: 27.9 KB (27887 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:7.0.40-jammy` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:fd08932ce14f6c8e34f565782c60fdd6cac00b4f00fb08a6ca6301bcd3324cd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.7 MB (279712781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a168e8f2d7aa10052cebf6dbb8ec465757cb64f84de3dd50c49173cb05d335b`
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
# Tue, 11 Aug 2026 19:07:45 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Tue, 11 Aug 2026 19:07:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 11 Aug 2026 19:08:05 GMT
ENV GOSU_VERSION=1.19
# Tue, 11 Aug 2026 19:08:05 GMT
ENV JSYAML_VERSION=3.13.1
# Tue, 11 Aug 2026 19:08:05 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Tue, 11 Aug 2026 19:08:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-7.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor 'E58830201F7DD82CD808AA84160D26BB1785BA38' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 11 Aug 2026 19:08:05 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 11 Aug 2026 19:08:05 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 11 Aug 2026 19:08:05 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 19:08:05 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 11 Aug 2026 19:08:05 GMT
ENV MONGO_MAJOR=7.0
# Tue, 11 Aug 2026 19:08:05 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu jammy/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Tue, 11 Aug 2026 19:08:05 GMT
ENV MONGO_VERSION=7.0.40
# Tue, 11 Aug 2026 19:08:26 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Tue, 11 Aug 2026 19:08:26 GMT
VOLUME [/data/db /data/configdb]
# Tue, 11 Aug 2026 19:08:26 GMT
ENV HOME=/data/db
# Tue, 11 Aug 2026 19:08:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 11 Aug 2026 19:08:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Aug 2026 19:08:26 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 11 Aug 2026 19:08:26 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f3963a30c9001e23422a447630404805ea06c2000fd318457b847294f4c8edd`  
		Last Modified: Tue, 11 Aug 2026 19:08:56 GMT  
		Size: 1.8 KB (1784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd981a98767ab61e3e6fd0e4b413952115f12fa06a7da8e919a941cf54a850be`  
		Last Modified: Tue, 11 Aug 2026 19:08:56 GMT  
		Size: 1.4 MB (1438918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5093cdb11bf29720dcec4cdf1b3739b4c432e9b9b6fb4040693fdfb1a75c9e57`  
		Last Modified: Tue, 11 Aug 2026 19:08:57 GMT  
		Size: 850.7 KB (850699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a76acfe152b85e59ad4cd574559aa5a320670b506aabf8cdf2e371e39a72976f`  
		Last Modified: Tue, 11 Aug 2026 19:08:56 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0acd02647944b905ea7611e92c9d2e80e401b68069d9b66ef9d44b5d5b8e976`  
		Last Modified: Tue, 11 Aug 2026 19:08:58 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4111a05f60a597ceba5a970f2da68fd16636369f2a3437c2e29f1494154efb57`  
		Last Modified: Tue, 11 Aug 2026 19:09:02 GMT  
		Size: 249.8 MB (249795965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51e40981198a1d513a1a682fc494f58132d5eb2bff02ab7f37731658c20cd501`  
		Last Modified: Tue, 11 Aug 2026 19:08:58 GMT  
		Size: 5.0 KB (5004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:7.0.40-jammy` - unknown; unknown

```console
$ docker pull mongo@sha256:1c41726a3caa294944d969d66d007817c37439c78e2d5c24383c49afad1e6465
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3230149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7566c38ddb2fcaa851d8fda4b86e6c5e61b81a911db8ed4064a626a993d9311`

```dockerfile
```

-	Layers:
	-	`sha256:c3cff38c0a73e616801c5f6e1cc78c00ca25cef34b51175f981b82b97b4a8c5f`  
		Last Modified: Tue, 11 Aug 2026 19:08:56 GMT  
		Size: 3.2 MB (3202059 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef8967ed1c20980f7c31078cd97ef8a42559e34edb7a8606b51a364c1ef08602`  
		Last Modified: Tue, 11 Aug 2026 19:08:56 GMT  
		Size: 28.1 KB (28090 bytes)  
		MIME: application/vnd.in-toto+json

## `mongo:7.0.40-nanoserver`

```console
$ docker pull mongo@sha256:dbafd317f0d911ae3a0583b4466826e8ef322c8f58aed6ea5cce357c378159ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `mongo:7.0.40-nanoserver` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:1e384123519a1d2a60032d445ca4a2149a3cfbe93b0306162ece1cc217210266
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **749.1 MB (749140816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eddaf33741790998409cc170c9097d6a088fbc923d1e8abb419af442ab859c76`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Tue, 11 Aug 2026 20:13:35 GMT
SHELL [cmd /S /C]
# Tue, 11 Aug 2026 20:13:37 GMT
USER ContainerAdministrator
# Tue, 11 Aug 2026 20:13:49 GMT
RUN setx /m PATH "C:\mongodb\bin;%PATH%"
# Tue, 11 Aug 2026 20:13:49 GMT
USER ContainerUser
# Tue, 11 Aug 2026 20:19:56 GMT
COPY multi:540d6dd70b1e7484f1958dc08b337aeb56cf8a92fe38be4c279dd406990d6935 in C:\Windows\System32\ 
# Tue, 11 Aug 2026 20:19:57 GMT
ENV MONGO_VERSION=7.0.40
# Tue, 11 Aug 2026 20:20:37 GMT
COPY dir:5275c90acc984d2e95da7478ab8f186163bcce4e9272031fdda8ff9e1e70c12e in C:\mongodb 
# Tue, 11 Aug 2026 20:20:56 GMT
RUN mongod --version
# Tue, 11 Aug 2026 20:20:56 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 20:20:57 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 20:20:58 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51a7dc20d84ea0969174d6cf460deb84714d0ebcf12fddacf83338426b264ce1`  
		Last Modified: Tue, 11 Aug 2026 20:17:39 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d30395bc107c24edfe22eba4a5046805438a2247f7aea6cadb67e5893d8e5ce`  
		Last Modified: Tue, 11 Aug 2026 20:17:39 GMT  
		Size: 1.1 KB (1084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b63008a99223a4359d26fc7134ae4e1a902489fa30ff17a3eee11ab0bf7213`  
		Last Modified: Tue, 11 Aug 2026 20:17:37 GMT  
		Size: 70.8 KB (70771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9c96c2777dbad64a838be75204aa5252be0e065c01b0337e298537e0a64d74`  
		Last Modified: Tue, 11 Aug 2026 20:17:37 GMT  
		Size: 1.1 KB (1076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b89e6b1b7f60ec1483803e8c469db003690e14595e21c3409cd5049c8bff21`  
		Last Modified: Tue, 11 Aug 2026 20:21:10 GMT  
		Size: 275.2 KB (275202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5edca4a257f3c07a11133e84591fa139aa6b9e9cb6ae16955e0ea6ceaece584`  
		Last Modified: Tue, 11 Aug 2026 20:21:10 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb52ca13d44e65b36453da546d0ddd3322a71994d2eacb588aff7b7a33a9b490`  
		Last Modified: Tue, 11 Aug 2026 20:22:00 GMT  
		Size: 624.6 MB (624598110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62211dbc0c3fa793c57862ed548e82063f7c915067916480ceff174ef1b71473`  
		Last Modified: Tue, 11 Aug 2026 20:21:08 GMT  
		Size: 86.1 KB (86138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:558874efaf0da5643c01745ea25428aaa073a39ca7b5a83fa6eb849acee012a3`  
		Last Modified: Tue, 11 Aug 2026 20:21:08 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99812be21bec80525a69e2bfb962090f729c31475e7f64ab9ad0a207b415120c`  
		Last Modified: Tue, 11 Aug 2026 20:21:08 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:296a3893654b8483225bb2598c948eeecc8e06884c44830483ff1f27218668fe`  
		Last Modified: Tue, 11 Aug 2026 20:21:08 GMT  
		Size: 1.1 KB (1073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:7.0.40-nanoserver-ltsc2022`

```console
$ docker pull mongo@sha256:dbafd317f0d911ae3a0583b4466826e8ef322c8f58aed6ea5cce357c378159ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `mongo:7.0.40-nanoserver-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:1e384123519a1d2a60032d445ca4a2149a3cfbe93b0306162ece1cc217210266
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **749.1 MB (749140816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eddaf33741790998409cc170c9097d6a088fbc923d1e8abb419af442ab859c76`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Tue, 11 Aug 2026 20:13:35 GMT
SHELL [cmd /S /C]
# Tue, 11 Aug 2026 20:13:37 GMT
USER ContainerAdministrator
# Tue, 11 Aug 2026 20:13:49 GMT
RUN setx /m PATH "C:\mongodb\bin;%PATH%"
# Tue, 11 Aug 2026 20:13:49 GMT
USER ContainerUser
# Tue, 11 Aug 2026 20:19:56 GMT
COPY multi:540d6dd70b1e7484f1958dc08b337aeb56cf8a92fe38be4c279dd406990d6935 in C:\Windows\System32\ 
# Tue, 11 Aug 2026 20:19:57 GMT
ENV MONGO_VERSION=7.0.40
# Tue, 11 Aug 2026 20:20:37 GMT
COPY dir:5275c90acc984d2e95da7478ab8f186163bcce4e9272031fdda8ff9e1e70c12e in C:\mongodb 
# Tue, 11 Aug 2026 20:20:56 GMT
RUN mongod --version
# Tue, 11 Aug 2026 20:20:56 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 20:20:57 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 20:20:58 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51a7dc20d84ea0969174d6cf460deb84714d0ebcf12fddacf83338426b264ce1`  
		Last Modified: Tue, 11 Aug 2026 20:17:39 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d30395bc107c24edfe22eba4a5046805438a2247f7aea6cadb67e5893d8e5ce`  
		Last Modified: Tue, 11 Aug 2026 20:17:39 GMT  
		Size: 1.1 KB (1084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b63008a99223a4359d26fc7134ae4e1a902489fa30ff17a3eee11ab0bf7213`  
		Last Modified: Tue, 11 Aug 2026 20:17:37 GMT  
		Size: 70.8 KB (70771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9c96c2777dbad64a838be75204aa5252be0e065c01b0337e298537e0a64d74`  
		Last Modified: Tue, 11 Aug 2026 20:17:37 GMT  
		Size: 1.1 KB (1076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b89e6b1b7f60ec1483803e8c469db003690e14595e21c3409cd5049c8bff21`  
		Last Modified: Tue, 11 Aug 2026 20:21:10 GMT  
		Size: 275.2 KB (275202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5edca4a257f3c07a11133e84591fa139aa6b9e9cb6ae16955e0ea6ceaece584`  
		Last Modified: Tue, 11 Aug 2026 20:21:10 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb52ca13d44e65b36453da546d0ddd3322a71994d2eacb588aff7b7a33a9b490`  
		Last Modified: Tue, 11 Aug 2026 20:22:00 GMT  
		Size: 624.6 MB (624598110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62211dbc0c3fa793c57862ed548e82063f7c915067916480ceff174ef1b71473`  
		Last Modified: Tue, 11 Aug 2026 20:21:08 GMT  
		Size: 86.1 KB (86138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:558874efaf0da5643c01745ea25428aaa073a39ca7b5a83fa6eb849acee012a3`  
		Last Modified: Tue, 11 Aug 2026 20:21:08 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99812be21bec80525a69e2bfb962090f729c31475e7f64ab9ad0a207b415120c`  
		Last Modified: Tue, 11 Aug 2026 20:21:08 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:296a3893654b8483225bb2598c948eeecc8e06884c44830483ff1f27218668fe`  
		Last Modified: Tue, 11 Aug 2026 20:21:08 GMT  
		Size: 1.1 KB (1073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:7.0.40-windowsservercore`

```console
$ docker pull mongo@sha256:36d30a8757a59414cc609cc4a4aeca778bf6ffcd82d3a448b0d0147209cbd550
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `mongo:7.0.40-windowsservercore` - windows version 10.0.26100.33158; amd64

```console
$ docker pull mongo@sha256:33243883bfba1b5df7619fbb3a66d714ef65bc77309f94a2b7f224a165229891
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 GB (2980723537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d48fdf56e353394ff078d4f811f5fa45af4aab23cd61ca387bc6f06b51c23d10`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Tue, 11 Aug 2026 18:36:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 11 Aug 2026 18:36:03 GMT
ENV MONGO_VERSION=7.0.40
# Tue, 11 Aug 2026 18:36:04 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.40-signed.msi
# Tue, 11 Aug 2026 18:36:05 GMT
ENV MONGO_DOWNLOAD_SHA256=1adfb2c433f6215cfe38ce871b39d6ba2bd3d6d9159b6b251c647a694fd113c7
# Tue, 11 Aug 2026 18:38:23 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 11 Aug 2026 18:38:24 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 18:38:24 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 18:38:25 GMT
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
	-	`sha256:39071bb7ac1f84c67777ddcc188aab82909f2ebb39d2f5965d23db28d2db3842`  
		Last Modified: Tue, 11 Aug 2026 18:38:32 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85de8746215967e7106688e16c8ea1bab8a42216d57afb712b0f40ad03886a1f`  
		Last Modified: Tue, 11 Aug 2026 18:38:32 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2197f75af80bccaf7fed1fabac2d229cc216276c8ce8879ade20c79b22347ad`  
		Last Modified: Tue, 11 Aug 2026 18:38:32 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e81fd18891dd498600a6ec5b51002800b4ae4098d6ee7f2e5f539c7857def6`  
		Last Modified: Tue, 11 Aug 2026 18:38:30 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d347b77c32873f3607f7f1c9fd07a2dac409b132b2e69aa322ed7d491c6ce1e`  
		Last Modified: Tue, 11 Aug 2026 18:39:20 GMT  
		Size: 625.7 MB (625706308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f310896ad365bf8d414c41d89fb309c2c07f4f05fb533dc9fd01025c5a818b7`  
		Last Modified: Tue, 11 Aug 2026 18:38:30 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5dcd4f47a840e39146388a3b7f42735a93f1418ada82a940b22329423c2bac`  
		Last Modified: Tue, 11 Aug 2026 18:38:30 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b142dea787d129c361dc187053c93f182a186ebcc1e73ee86a0cd57bd923e3b`  
		Last Modified: Tue, 11 Aug 2026 18:38:30 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:7.0.40-windowsservercore` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:72d0ba1251c2cfd7ab29173fd44c70ae26707981ebed1815f486ae586c99392d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2783395072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5717bc6692d7bb557bc076be9a41ee300a19e2471ef7620f25a81691edaab6dc`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Tue, 11 Aug 2026 18:52:56 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 11 Aug 2026 19:13:22 GMT
ENV MONGO_VERSION=7.0.40
# Tue, 11 Aug 2026 19:13:23 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.40-signed.msi
# Tue, 11 Aug 2026 19:13:23 GMT
ENV MONGO_DOWNLOAD_SHA256=1adfb2c433f6215cfe38ce871b39d6ba2bd3d6d9159b6b251c647a694fd113c7
# Tue, 11 Aug 2026 19:15:01 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 11 Aug 2026 19:15:01 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 19:15:02 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 19:15:02 GMT
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
	-	`sha256:f7201a85154c98cb8bd186d77bc1d3f2cca96eb76c61b83f86da43e30a16085d`  
		Last Modified: Tue, 11 Aug 2026 18:58:33 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f596ed9d7c13bfdd014cc1596f48e12da1bb1495209b7f92325918e798bdea8`  
		Last Modified: Tue, 11 Aug 2026 19:15:12 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4137ab151c6c0c97a27866ebf0ff3922468dbc1534ab8d35db041e5e0d72d5b`  
		Last Modified: Tue, 11 Aug 2026 19:15:12 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6237d05106296bc3d1129f8f60d6d7db1864c2c46ddaa8c7719ec92fb2b855f`  
		Last Modified: Tue, 11 Aug 2026 19:15:10 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1236f203578a3a8e24b3dc616ed6338a70b1a3d06cb815ab219936ec61964635`  
		Last Modified: Tue, 11 Aug 2026 19:16:01 GMT  
		Size: 625.8 MB (625832815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:169757a50b42455c3aaa3b3208685b5f7b1086074aacf55dc8c85bb3314bb7ca`  
		Last Modified: Tue, 11 Aug 2026 19:15:10 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef56d6b253c29e9b4f7b3d1781e546fcbe4a1bda7b49881cf677154e16624e8c`  
		Last Modified: Tue, 11 Aug 2026 19:15:10 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eed78f6e77abd7de2ced71a63cd43e4bfae962ec161a14b52aaabe14a5c1de7`  
		Last Modified: Tue, 11 Aug 2026 19:15:11 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:7.0.40-windowsservercore-ltsc2022`

```console
$ docker pull mongo@sha256:ab00e49cd5e0a8d3799aa254e99f9d945a51a1de845a80e000ee7a9f1b80dea0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `mongo:7.0.40-windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:72d0ba1251c2cfd7ab29173fd44c70ae26707981ebed1815f486ae586c99392d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2783395072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5717bc6692d7bb557bc076be9a41ee300a19e2471ef7620f25a81691edaab6dc`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Tue, 11 Aug 2026 18:52:56 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 11 Aug 2026 19:13:22 GMT
ENV MONGO_VERSION=7.0.40
# Tue, 11 Aug 2026 19:13:23 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.40-signed.msi
# Tue, 11 Aug 2026 19:13:23 GMT
ENV MONGO_DOWNLOAD_SHA256=1adfb2c433f6215cfe38ce871b39d6ba2bd3d6d9159b6b251c647a694fd113c7
# Tue, 11 Aug 2026 19:15:01 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 11 Aug 2026 19:15:01 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 19:15:02 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 19:15:02 GMT
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
	-	`sha256:f7201a85154c98cb8bd186d77bc1d3f2cca96eb76c61b83f86da43e30a16085d`  
		Last Modified: Tue, 11 Aug 2026 18:58:33 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f596ed9d7c13bfdd014cc1596f48e12da1bb1495209b7f92325918e798bdea8`  
		Last Modified: Tue, 11 Aug 2026 19:15:12 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4137ab151c6c0c97a27866ebf0ff3922468dbc1534ab8d35db041e5e0d72d5b`  
		Last Modified: Tue, 11 Aug 2026 19:15:12 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6237d05106296bc3d1129f8f60d6d7db1864c2c46ddaa8c7719ec92fb2b855f`  
		Last Modified: Tue, 11 Aug 2026 19:15:10 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1236f203578a3a8e24b3dc616ed6338a70b1a3d06cb815ab219936ec61964635`  
		Last Modified: Tue, 11 Aug 2026 19:16:01 GMT  
		Size: 625.8 MB (625832815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:169757a50b42455c3aaa3b3208685b5f7b1086074aacf55dc8c85bb3314bb7ca`  
		Last Modified: Tue, 11 Aug 2026 19:15:10 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef56d6b253c29e9b4f7b3d1781e546fcbe4a1bda7b49881cf677154e16624e8c`  
		Last Modified: Tue, 11 Aug 2026 19:15:10 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eed78f6e77abd7de2ced71a63cd43e4bfae962ec161a14b52aaabe14a5c1de7`  
		Last Modified: Tue, 11 Aug 2026 19:15:11 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:7.0.40-windowsservercore-ltsc2025`

```console
$ docker pull mongo@sha256:8185f1623e8e8a392a0d7b750eaade9d19c1bb2b72ada7d3f3daf6cd611aa5aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `mongo:7.0.40-windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull mongo@sha256:33243883bfba1b5df7619fbb3a66d714ef65bc77309f94a2b7f224a165229891
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 GB (2980723537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d48fdf56e353394ff078d4f811f5fa45af4aab23cd61ca387bc6f06b51c23d10`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Tue, 11 Aug 2026 18:36:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 11 Aug 2026 18:36:03 GMT
ENV MONGO_VERSION=7.0.40
# Tue, 11 Aug 2026 18:36:04 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.40-signed.msi
# Tue, 11 Aug 2026 18:36:05 GMT
ENV MONGO_DOWNLOAD_SHA256=1adfb2c433f6215cfe38ce871b39d6ba2bd3d6d9159b6b251c647a694fd113c7
# Tue, 11 Aug 2026 18:38:23 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 11 Aug 2026 18:38:24 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 18:38:24 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 18:38:25 GMT
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
	-	`sha256:39071bb7ac1f84c67777ddcc188aab82909f2ebb39d2f5965d23db28d2db3842`  
		Last Modified: Tue, 11 Aug 2026 18:38:32 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85de8746215967e7106688e16c8ea1bab8a42216d57afb712b0f40ad03886a1f`  
		Last Modified: Tue, 11 Aug 2026 18:38:32 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2197f75af80bccaf7fed1fabac2d229cc216276c8ce8879ade20c79b22347ad`  
		Last Modified: Tue, 11 Aug 2026 18:38:32 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e81fd18891dd498600a6ec5b51002800b4ae4098d6ee7f2e5f539c7857def6`  
		Last Modified: Tue, 11 Aug 2026 18:38:30 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d347b77c32873f3607f7f1c9fd07a2dac409b132b2e69aa322ed7d491c6ce1e`  
		Last Modified: Tue, 11 Aug 2026 18:39:20 GMT  
		Size: 625.7 MB (625706308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f310896ad365bf8d414c41d89fb309c2c07f4f05fb533dc9fd01025c5a818b7`  
		Last Modified: Tue, 11 Aug 2026 18:38:30 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5dcd4f47a840e39146388a3b7f42735a93f1418ada82a940b22329423c2bac`  
		Last Modified: Tue, 11 Aug 2026 18:38:30 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b142dea787d129c361dc187053c93f182a186ebcc1e73ee86a0cd57bd923e3b`  
		Last Modified: Tue, 11 Aug 2026 18:38:30 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.0`

```console
$ docker pull mongo@sha256:29c9d10d63d35eab99e0fa272eebefc551b991f5216bf2a572b1d3f36adc9568
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

### `mongo:8.0` - windows version 10.0.26100.33158; amd64

```console
$ docker pull mongo@sha256:e156dab9b4c6837dceb1147a900bad03b35e538041edf5b4dd098f1ce7666c15
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3153519156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf6a68679ddd99cda4427f1fa735e44e3c338d7ab2fd486fdf04da91580e2121`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Tue, 11 Aug 2026 18:34:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 11 Aug 2026 18:34:56 GMT
ENV MONGO_VERSION=8.0.29
# Tue, 11 Aug 2026 18:34:56 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.0.29-signed.msi
# Tue, 11 Aug 2026 18:34:58 GMT
ENV MONGO_DOWNLOAD_SHA256=7c2a821f6caaffe53da63f3a048ba624e04f37358b749ce0ebe9da1684fdfedc
# Tue, 11 Aug 2026 18:37:50 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 11 Aug 2026 18:37:51 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 18:37:51 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 18:37:52 GMT
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
	-	`sha256:a1d5fff7da34a4f2ad6919c22e918f6e58fe9a1f4a5badf62b615f907c3b2c34`  
		Last Modified: Tue, 11 Aug 2026 18:37:58 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994051e53fc3bc0c15471f8de5325e59a63784d8d56b15265bb4e130bc4e83f9`  
		Last Modified: Tue, 11 Aug 2026 18:37:58 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b765d17cadc234902471d76b68c1ac42a3586223aa470ad864a311f4e43b63f5`  
		Last Modified: Tue, 11 Aug 2026 18:37:58 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c0bc7a941645f654f32a8bb9bfffb04cddaa9ff6c4b5b7af0c6c3ea39f6d396`  
		Last Modified: Tue, 11 Aug 2026 18:37:56 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50ba1dff910800b156c1c0daf72b8b38de1ed2bc27f6b14268a68854ce137e5`  
		Last Modified: Tue, 11 Aug 2026 18:39:05 GMT  
		Size: 798.5 MB (798501991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7783e5b716ad492d398f8aa18dcd2b57f03a3ba4dbc3f88987e7639171cbaad`  
		Last Modified: Tue, 11 Aug 2026 18:37:56 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52ff4dab18cdf0441a149288f5e87feb71643cb8030736149587a7545893bcc8`  
		Last Modified: Tue, 11 Aug 2026 18:37:56 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de6b3a123aa85c6dc8f15b9c98141bc5f12367af07b5ee40c3a8b0a9e2d21996`  
		Last Modified: Tue, 11 Aug 2026 18:37:56 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:8.0` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:267144cdcb16112220da70c339732c81fd280c4b45a130b75df1cea1ae8a799a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 GB (2956177804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21ef4701255b5c0b3a0c81e9c2e320614a3a504974935446adf1a2f01e199c26`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Tue, 11 Aug 2026 18:52:56 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 11 Aug 2026 19:09:38 GMT
ENV MONGO_VERSION=8.0.29
# Tue, 11 Aug 2026 19:09:38 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.0.29-signed.msi
# Tue, 11 Aug 2026 19:09:39 GMT
ENV MONGO_DOWNLOAD_SHA256=7c2a821f6caaffe53da63f3a048ba624e04f37358b749ce0ebe9da1684fdfedc
# Tue, 11 Aug 2026 19:11:55 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 11 Aug 2026 19:11:56 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 19:11:56 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 19:11:57 GMT
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
	-	`sha256:f7201a85154c98cb8bd186d77bc1d3f2cca96eb76c61b83f86da43e30a16085d`  
		Last Modified: Tue, 11 Aug 2026 18:58:33 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cf139d04b5c077b0a34ea96f88d953e1464b3b4472999b64d2170589d4bdc6`  
		Last Modified: Tue, 11 Aug 2026 19:12:02 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a55a8cbf606a93b4263eb694d9098cb94b83ff38c3edf7fb3675c01ae26619`  
		Last Modified: Tue, 11 Aug 2026 19:12:02 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7351cd6a73eb4c9d350297292c9835fd24201363e855a7a04bf7b4d9793cda9`  
		Last Modified: Tue, 11 Aug 2026 19:12:01 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:526b54b48426da921e8794174d5cdeb7f640dbcac4d7c2562b2247f6b488234e`  
		Last Modified: Tue, 11 Aug 2026 19:13:03 GMT  
		Size: 798.6 MB (798615530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9621a20637b27348ed1eafc0281cf414f350dc61d021b50f47e454f5d2788f`  
		Last Modified: Tue, 11 Aug 2026 19:12:01 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c5b43ee2600fe98b3167178f1ec1a48ec84c118899144c228b41c759d8cde1`  
		Last Modified: Tue, 11 Aug 2026 19:12:01 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479329d5f5285c08b588e062922e480dc0d811c7355350e88c6d670bef8a6027`  
		Last Modified: Tue, 11 Aug 2026 19:12:01 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.0-nanoserver`

```console
$ docker pull mongo@sha256:5be925c8fa1e7b30b3ecc8729b2199f112b0e1bc4fd6c1c673cfc7a3b512889c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `mongo:8.0-nanoserver` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:80868a622c85e853606d386b5e6670cb852578a97a642f097bcada1eab61e4a6
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **921.9 MB (921947829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb28bd83bee297b572318d22404caa3a870c62442820e00b437be70f8ca9ab77`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Tue, 11 Aug 2026 20:18:47 GMT
SHELL [cmd /S /C]
# Tue, 11 Aug 2026 20:18:50 GMT
USER ContainerAdministrator
# Tue, 11 Aug 2026 20:19:05 GMT
RUN setx /m PATH "C:\mongodb\bin;%PATH%"
# Tue, 11 Aug 2026 20:19:06 GMT
USER ContainerUser
# Tue, 11 Aug 2026 20:19:11 GMT
COPY multi:540d6dd70b1e7484f1958dc08b337aeb56cf8a92fe38be4c279dd406990d6935 in C:\Windows\System32\ 
# Tue, 11 Aug 2026 20:19:13 GMT
ENV MONGO_VERSION=8.0.29
# Tue, 11 Aug 2026 20:21:31 GMT
COPY dir:a2fa17e7cb290b710f03c3da8b69c45906c7650871c120c86cbc315639b81f57 in C:\mongodb 
# Tue, 11 Aug 2026 20:22:04 GMT
RUN mongod --version
# Tue, 11 Aug 2026 20:22:04 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 20:22:06 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 20:22:07 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efba395631828a282c1dd43357ebe73e8f9859e968636513bfc3426a3fd054a3`  
		Last Modified: Tue, 11 Aug 2026 20:22:15 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4f5b883dd23daf866f02519d9a78f2d8afe2e6330f00954c4abc64eeda190f`  
		Last Modified: Tue, 11 Aug 2026 20:22:15 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e08dc5a4ae6e9d575367b96577b91110010e928adf3bc7833dcb376e9ca97e2`  
		Last Modified: Tue, 11 Aug 2026 20:22:14 GMT  
		Size: 70.8 KB (70796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79df1e28d60b1a3aab2629a149d25f9d2eeb306aec58e2376d591b0ef5c2699c`  
		Last Modified: Tue, 11 Aug 2026 20:22:14 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:128fdf65208bd268bc1f9143be625016d8f1f4e0925e0fe7461b3ca4ed356fb3`  
		Last Modified: Tue, 11 Aug 2026 20:22:14 GMT  
		Size: 275.2 KB (275186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32746a21a9be3ab67d306396d8231be70f6c6669a4d8a32dad0457327d7be4de`  
		Last Modified: Tue, 11 Aug 2026 20:22:13 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82fa850997f7e3ccce02e87f97169aa2559778cd3798ab004d9aef7e21155d0d`  
		Last Modified: Tue, 11 Aug 2026 20:23:20 GMT  
		Size: 797.4 MB (797403860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e7e0063e147390044e073dc5033d25eacf49f26d759fbb09e4558092327497`  
		Last Modified: Tue, 11 Aug 2026 20:22:12 GMT  
		Size: 87.4 KB (87434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:623c844286c8208f1bff7e91752345a12346a2e0b996c2e2a6d483f8c74c0495`  
		Last Modified: Tue, 11 Aug 2026 20:22:12 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e97837eeaee7c007b1ce094d1aa1c2a0ab5a9a799f117b6231abd13a1ab027d`  
		Last Modified: Tue, 11 Aug 2026 20:22:12 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7216aa78eb99874de8b4e8c0bbcbdf7675859d67d51711b4e7a6b14401848260`  
		Last Modified: Tue, 11 Aug 2026 20:22:12 GMT  
		Size: 1.1 KB (1076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.0-nanoserver-ltsc2022`

```console
$ docker pull mongo@sha256:5be925c8fa1e7b30b3ecc8729b2199f112b0e1bc4fd6c1c673cfc7a3b512889c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `mongo:8.0-nanoserver-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:80868a622c85e853606d386b5e6670cb852578a97a642f097bcada1eab61e4a6
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **921.9 MB (921947829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb28bd83bee297b572318d22404caa3a870c62442820e00b437be70f8ca9ab77`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Tue, 11 Aug 2026 20:18:47 GMT
SHELL [cmd /S /C]
# Tue, 11 Aug 2026 20:18:50 GMT
USER ContainerAdministrator
# Tue, 11 Aug 2026 20:19:05 GMT
RUN setx /m PATH "C:\mongodb\bin;%PATH%"
# Tue, 11 Aug 2026 20:19:06 GMT
USER ContainerUser
# Tue, 11 Aug 2026 20:19:11 GMT
COPY multi:540d6dd70b1e7484f1958dc08b337aeb56cf8a92fe38be4c279dd406990d6935 in C:\Windows\System32\ 
# Tue, 11 Aug 2026 20:19:13 GMT
ENV MONGO_VERSION=8.0.29
# Tue, 11 Aug 2026 20:21:31 GMT
COPY dir:a2fa17e7cb290b710f03c3da8b69c45906c7650871c120c86cbc315639b81f57 in C:\mongodb 
# Tue, 11 Aug 2026 20:22:04 GMT
RUN mongod --version
# Tue, 11 Aug 2026 20:22:04 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 20:22:06 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 20:22:07 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efba395631828a282c1dd43357ebe73e8f9859e968636513bfc3426a3fd054a3`  
		Last Modified: Tue, 11 Aug 2026 20:22:15 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4f5b883dd23daf866f02519d9a78f2d8afe2e6330f00954c4abc64eeda190f`  
		Last Modified: Tue, 11 Aug 2026 20:22:15 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e08dc5a4ae6e9d575367b96577b91110010e928adf3bc7833dcb376e9ca97e2`  
		Last Modified: Tue, 11 Aug 2026 20:22:14 GMT  
		Size: 70.8 KB (70796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79df1e28d60b1a3aab2629a149d25f9d2eeb306aec58e2376d591b0ef5c2699c`  
		Last Modified: Tue, 11 Aug 2026 20:22:14 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:128fdf65208bd268bc1f9143be625016d8f1f4e0925e0fe7461b3ca4ed356fb3`  
		Last Modified: Tue, 11 Aug 2026 20:22:14 GMT  
		Size: 275.2 KB (275186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32746a21a9be3ab67d306396d8231be70f6c6669a4d8a32dad0457327d7be4de`  
		Last Modified: Tue, 11 Aug 2026 20:22:13 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82fa850997f7e3ccce02e87f97169aa2559778cd3798ab004d9aef7e21155d0d`  
		Last Modified: Tue, 11 Aug 2026 20:23:20 GMT  
		Size: 797.4 MB (797403860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e7e0063e147390044e073dc5033d25eacf49f26d759fbb09e4558092327497`  
		Last Modified: Tue, 11 Aug 2026 20:22:12 GMT  
		Size: 87.4 KB (87434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:623c844286c8208f1bff7e91752345a12346a2e0b996c2e2a6d483f8c74c0495`  
		Last Modified: Tue, 11 Aug 2026 20:22:12 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e97837eeaee7c007b1ce094d1aa1c2a0ab5a9a799f117b6231abd13a1ab027d`  
		Last Modified: Tue, 11 Aug 2026 20:22:12 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7216aa78eb99874de8b4e8c0bbcbdf7675859d67d51711b4e7a6b14401848260`  
		Last Modified: Tue, 11 Aug 2026 20:22:12 GMT  
		Size: 1.1 KB (1076 bytes)  
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
$ docker pull mongo@sha256:04ced34e9f2937c1a43fca051f4aa865fe74049e5ac65c74dfe8058847130705
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `mongo:8.0-windowsservercore` - windows version 10.0.26100.33158; amd64

```console
$ docker pull mongo@sha256:e156dab9b4c6837dceb1147a900bad03b35e538041edf5b4dd098f1ce7666c15
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3153519156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf6a68679ddd99cda4427f1fa735e44e3c338d7ab2fd486fdf04da91580e2121`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Tue, 11 Aug 2026 18:34:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 11 Aug 2026 18:34:56 GMT
ENV MONGO_VERSION=8.0.29
# Tue, 11 Aug 2026 18:34:56 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.0.29-signed.msi
# Tue, 11 Aug 2026 18:34:58 GMT
ENV MONGO_DOWNLOAD_SHA256=7c2a821f6caaffe53da63f3a048ba624e04f37358b749ce0ebe9da1684fdfedc
# Tue, 11 Aug 2026 18:37:50 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 11 Aug 2026 18:37:51 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 18:37:51 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 18:37:52 GMT
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
	-	`sha256:a1d5fff7da34a4f2ad6919c22e918f6e58fe9a1f4a5badf62b615f907c3b2c34`  
		Last Modified: Tue, 11 Aug 2026 18:37:58 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994051e53fc3bc0c15471f8de5325e59a63784d8d56b15265bb4e130bc4e83f9`  
		Last Modified: Tue, 11 Aug 2026 18:37:58 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b765d17cadc234902471d76b68c1ac42a3586223aa470ad864a311f4e43b63f5`  
		Last Modified: Tue, 11 Aug 2026 18:37:58 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c0bc7a941645f654f32a8bb9bfffb04cddaa9ff6c4b5b7af0c6c3ea39f6d396`  
		Last Modified: Tue, 11 Aug 2026 18:37:56 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50ba1dff910800b156c1c0daf72b8b38de1ed2bc27f6b14268a68854ce137e5`  
		Last Modified: Tue, 11 Aug 2026 18:39:05 GMT  
		Size: 798.5 MB (798501991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7783e5b716ad492d398f8aa18dcd2b57f03a3ba4dbc3f88987e7639171cbaad`  
		Last Modified: Tue, 11 Aug 2026 18:37:56 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52ff4dab18cdf0441a149288f5e87feb71643cb8030736149587a7545893bcc8`  
		Last Modified: Tue, 11 Aug 2026 18:37:56 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de6b3a123aa85c6dc8f15b9c98141bc5f12367af07b5ee40c3a8b0a9e2d21996`  
		Last Modified: Tue, 11 Aug 2026 18:37:56 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:8.0-windowsservercore` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:267144cdcb16112220da70c339732c81fd280c4b45a130b75df1cea1ae8a799a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 GB (2956177804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21ef4701255b5c0b3a0c81e9c2e320614a3a504974935446adf1a2f01e199c26`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Tue, 11 Aug 2026 18:52:56 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 11 Aug 2026 19:09:38 GMT
ENV MONGO_VERSION=8.0.29
# Tue, 11 Aug 2026 19:09:38 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.0.29-signed.msi
# Tue, 11 Aug 2026 19:09:39 GMT
ENV MONGO_DOWNLOAD_SHA256=7c2a821f6caaffe53da63f3a048ba624e04f37358b749ce0ebe9da1684fdfedc
# Tue, 11 Aug 2026 19:11:55 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 11 Aug 2026 19:11:56 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 19:11:56 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 19:11:57 GMT
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
	-	`sha256:f7201a85154c98cb8bd186d77bc1d3f2cca96eb76c61b83f86da43e30a16085d`  
		Last Modified: Tue, 11 Aug 2026 18:58:33 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cf139d04b5c077b0a34ea96f88d953e1464b3b4472999b64d2170589d4bdc6`  
		Last Modified: Tue, 11 Aug 2026 19:12:02 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a55a8cbf606a93b4263eb694d9098cb94b83ff38c3edf7fb3675c01ae26619`  
		Last Modified: Tue, 11 Aug 2026 19:12:02 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7351cd6a73eb4c9d350297292c9835fd24201363e855a7a04bf7b4d9793cda9`  
		Last Modified: Tue, 11 Aug 2026 19:12:01 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:526b54b48426da921e8794174d5cdeb7f640dbcac4d7c2562b2247f6b488234e`  
		Last Modified: Tue, 11 Aug 2026 19:13:03 GMT  
		Size: 798.6 MB (798615530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9621a20637b27348ed1eafc0281cf414f350dc61d021b50f47e454f5d2788f`  
		Last Modified: Tue, 11 Aug 2026 19:12:01 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c5b43ee2600fe98b3167178f1ec1a48ec84c118899144c228b41c759d8cde1`  
		Last Modified: Tue, 11 Aug 2026 19:12:01 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479329d5f5285c08b588e062922e480dc0d811c7355350e88c6d670bef8a6027`  
		Last Modified: Tue, 11 Aug 2026 19:12:01 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.0-windowsservercore-ltsc2022`

```console
$ docker pull mongo@sha256:75c101a92dad68cda9f4053d690c45afbdf6a23bd983c9794d1f3c6d06016451
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `mongo:8.0-windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:267144cdcb16112220da70c339732c81fd280c4b45a130b75df1cea1ae8a799a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 GB (2956177804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21ef4701255b5c0b3a0c81e9c2e320614a3a504974935446adf1a2f01e199c26`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Tue, 11 Aug 2026 18:52:56 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 11 Aug 2026 19:09:38 GMT
ENV MONGO_VERSION=8.0.29
# Tue, 11 Aug 2026 19:09:38 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.0.29-signed.msi
# Tue, 11 Aug 2026 19:09:39 GMT
ENV MONGO_DOWNLOAD_SHA256=7c2a821f6caaffe53da63f3a048ba624e04f37358b749ce0ebe9da1684fdfedc
# Tue, 11 Aug 2026 19:11:55 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 11 Aug 2026 19:11:56 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 19:11:56 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 19:11:57 GMT
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
	-	`sha256:f7201a85154c98cb8bd186d77bc1d3f2cca96eb76c61b83f86da43e30a16085d`  
		Last Modified: Tue, 11 Aug 2026 18:58:33 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cf139d04b5c077b0a34ea96f88d953e1464b3b4472999b64d2170589d4bdc6`  
		Last Modified: Tue, 11 Aug 2026 19:12:02 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a55a8cbf606a93b4263eb694d9098cb94b83ff38c3edf7fb3675c01ae26619`  
		Last Modified: Tue, 11 Aug 2026 19:12:02 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7351cd6a73eb4c9d350297292c9835fd24201363e855a7a04bf7b4d9793cda9`  
		Last Modified: Tue, 11 Aug 2026 19:12:01 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:526b54b48426da921e8794174d5cdeb7f640dbcac4d7c2562b2247f6b488234e`  
		Last Modified: Tue, 11 Aug 2026 19:13:03 GMT  
		Size: 798.6 MB (798615530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9621a20637b27348ed1eafc0281cf414f350dc61d021b50f47e454f5d2788f`  
		Last Modified: Tue, 11 Aug 2026 19:12:01 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c5b43ee2600fe98b3167178f1ec1a48ec84c118899144c228b41c759d8cde1`  
		Last Modified: Tue, 11 Aug 2026 19:12:01 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479329d5f5285c08b588e062922e480dc0d811c7355350e88c6d670bef8a6027`  
		Last Modified: Tue, 11 Aug 2026 19:12:01 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.0-windowsservercore-ltsc2025`

```console
$ docker pull mongo@sha256:88fd3ddb6b4ac7319ea0e2aee80783d87d9790db02d83d5bf5d07e837f3fa186
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `mongo:8.0-windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull mongo@sha256:e156dab9b4c6837dceb1147a900bad03b35e538041edf5b4dd098f1ce7666c15
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3153519156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf6a68679ddd99cda4427f1fa735e44e3c338d7ab2fd486fdf04da91580e2121`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Tue, 11 Aug 2026 18:34:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 11 Aug 2026 18:34:56 GMT
ENV MONGO_VERSION=8.0.29
# Tue, 11 Aug 2026 18:34:56 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.0.29-signed.msi
# Tue, 11 Aug 2026 18:34:58 GMT
ENV MONGO_DOWNLOAD_SHA256=7c2a821f6caaffe53da63f3a048ba624e04f37358b749ce0ebe9da1684fdfedc
# Tue, 11 Aug 2026 18:37:50 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 11 Aug 2026 18:37:51 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 18:37:51 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 18:37:52 GMT
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
	-	`sha256:a1d5fff7da34a4f2ad6919c22e918f6e58fe9a1f4a5badf62b615f907c3b2c34`  
		Last Modified: Tue, 11 Aug 2026 18:37:58 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994051e53fc3bc0c15471f8de5325e59a63784d8d56b15265bb4e130bc4e83f9`  
		Last Modified: Tue, 11 Aug 2026 18:37:58 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b765d17cadc234902471d76b68c1ac42a3586223aa470ad864a311f4e43b63f5`  
		Last Modified: Tue, 11 Aug 2026 18:37:58 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c0bc7a941645f654f32a8bb9bfffb04cddaa9ff6c4b5b7af0c6c3ea39f6d396`  
		Last Modified: Tue, 11 Aug 2026 18:37:56 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50ba1dff910800b156c1c0daf72b8b38de1ed2bc27f6b14268a68854ce137e5`  
		Last Modified: Tue, 11 Aug 2026 18:39:05 GMT  
		Size: 798.5 MB (798501991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7783e5b716ad492d398f8aa18dcd2b57f03a3ba4dbc3f88987e7639171cbaad`  
		Last Modified: Tue, 11 Aug 2026 18:37:56 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52ff4dab18cdf0441a149288f5e87feb71643cb8030736149587a7545893bcc8`  
		Last Modified: Tue, 11 Aug 2026 18:37:56 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de6b3a123aa85c6dc8f15b9c98141bc5f12367af07b5ee40c3a8b0a9e2d21996`  
		Last Modified: Tue, 11 Aug 2026 18:37:56 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.0.29`

```console
$ docker pull mongo@sha256:29c9d10d63d35eab99e0fa272eebefc551b991f5216bf2a572b1d3f36adc9568
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

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

### `mongo:8.0.29` - windows version 10.0.26100.33158; amd64

```console
$ docker pull mongo@sha256:e156dab9b4c6837dceb1147a900bad03b35e538041edf5b4dd098f1ce7666c15
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3153519156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf6a68679ddd99cda4427f1fa735e44e3c338d7ab2fd486fdf04da91580e2121`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Tue, 11 Aug 2026 18:34:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 11 Aug 2026 18:34:56 GMT
ENV MONGO_VERSION=8.0.29
# Tue, 11 Aug 2026 18:34:56 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.0.29-signed.msi
# Tue, 11 Aug 2026 18:34:58 GMT
ENV MONGO_DOWNLOAD_SHA256=7c2a821f6caaffe53da63f3a048ba624e04f37358b749ce0ebe9da1684fdfedc
# Tue, 11 Aug 2026 18:37:50 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 11 Aug 2026 18:37:51 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 18:37:51 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 18:37:52 GMT
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
	-	`sha256:a1d5fff7da34a4f2ad6919c22e918f6e58fe9a1f4a5badf62b615f907c3b2c34`  
		Last Modified: Tue, 11 Aug 2026 18:37:58 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994051e53fc3bc0c15471f8de5325e59a63784d8d56b15265bb4e130bc4e83f9`  
		Last Modified: Tue, 11 Aug 2026 18:37:58 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b765d17cadc234902471d76b68c1ac42a3586223aa470ad864a311f4e43b63f5`  
		Last Modified: Tue, 11 Aug 2026 18:37:58 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c0bc7a941645f654f32a8bb9bfffb04cddaa9ff6c4b5b7af0c6c3ea39f6d396`  
		Last Modified: Tue, 11 Aug 2026 18:37:56 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50ba1dff910800b156c1c0daf72b8b38de1ed2bc27f6b14268a68854ce137e5`  
		Last Modified: Tue, 11 Aug 2026 18:39:05 GMT  
		Size: 798.5 MB (798501991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7783e5b716ad492d398f8aa18dcd2b57f03a3ba4dbc3f88987e7639171cbaad`  
		Last Modified: Tue, 11 Aug 2026 18:37:56 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52ff4dab18cdf0441a149288f5e87feb71643cb8030736149587a7545893bcc8`  
		Last Modified: Tue, 11 Aug 2026 18:37:56 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de6b3a123aa85c6dc8f15b9c98141bc5f12367af07b5ee40c3a8b0a9e2d21996`  
		Last Modified: Tue, 11 Aug 2026 18:37:56 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:8.0.29` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:267144cdcb16112220da70c339732c81fd280c4b45a130b75df1cea1ae8a799a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 GB (2956177804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21ef4701255b5c0b3a0c81e9c2e320614a3a504974935446adf1a2f01e199c26`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Tue, 11 Aug 2026 18:52:56 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 11 Aug 2026 19:09:38 GMT
ENV MONGO_VERSION=8.0.29
# Tue, 11 Aug 2026 19:09:38 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.0.29-signed.msi
# Tue, 11 Aug 2026 19:09:39 GMT
ENV MONGO_DOWNLOAD_SHA256=7c2a821f6caaffe53da63f3a048ba624e04f37358b749ce0ebe9da1684fdfedc
# Tue, 11 Aug 2026 19:11:55 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 11 Aug 2026 19:11:56 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 19:11:56 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 19:11:57 GMT
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
	-	`sha256:f7201a85154c98cb8bd186d77bc1d3f2cca96eb76c61b83f86da43e30a16085d`  
		Last Modified: Tue, 11 Aug 2026 18:58:33 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cf139d04b5c077b0a34ea96f88d953e1464b3b4472999b64d2170589d4bdc6`  
		Last Modified: Tue, 11 Aug 2026 19:12:02 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a55a8cbf606a93b4263eb694d9098cb94b83ff38c3edf7fb3675c01ae26619`  
		Last Modified: Tue, 11 Aug 2026 19:12:02 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7351cd6a73eb4c9d350297292c9835fd24201363e855a7a04bf7b4d9793cda9`  
		Last Modified: Tue, 11 Aug 2026 19:12:01 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:526b54b48426da921e8794174d5cdeb7f640dbcac4d7c2562b2247f6b488234e`  
		Last Modified: Tue, 11 Aug 2026 19:13:03 GMT  
		Size: 798.6 MB (798615530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9621a20637b27348ed1eafc0281cf414f350dc61d021b50f47e454f5d2788f`  
		Last Modified: Tue, 11 Aug 2026 19:12:01 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c5b43ee2600fe98b3167178f1ec1a48ec84c118899144c228b41c759d8cde1`  
		Last Modified: Tue, 11 Aug 2026 19:12:01 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479329d5f5285c08b588e062922e480dc0d811c7355350e88c6d670bef8a6027`  
		Last Modified: Tue, 11 Aug 2026 19:12:01 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.0.29-nanoserver`

```console
$ docker pull mongo@sha256:5be925c8fa1e7b30b3ecc8729b2199f112b0e1bc4fd6c1c673cfc7a3b512889c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `mongo:8.0.29-nanoserver` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:80868a622c85e853606d386b5e6670cb852578a97a642f097bcada1eab61e4a6
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **921.9 MB (921947829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb28bd83bee297b572318d22404caa3a870c62442820e00b437be70f8ca9ab77`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Tue, 11 Aug 2026 20:18:47 GMT
SHELL [cmd /S /C]
# Tue, 11 Aug 2026 20:18:50 GMT
USER ContainerAdministrator
# Tue, 11 Aug 2026 20:19:05 GMT
RUN setx /m PATH "C:\mongodb\bin;%PATH%"
# Tue, 11 Aug 2026 20:19:06 GMT
USER ContainerUser
# Tue, 11 Aug 2026 20:19:11 GMT
COPY multi:540d6dd70b1e7484f1958dc08b337aeb56cf8a92fe38be4c279dd406990d6935 in C:\Windows\System32\ 
# Tue, 11 Aug 2026 20:19:13 GMT
ENV MONGO_VERSION=8.0.29
# Tue, 11 Aug 2026 20:21:31 GMT
COPY dir:a2fa17e7cb290b710f03c3da8b69c45906c7650871c120c86cbc315639b81f57 in C:\mongodb 
# Tue, 11 Aug 2026 20:22:04 GMT
RUN mongod --version
# Tue, 11 Aug 2026 20:22:04 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 20:22:06 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 20:22:07 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efba395631828a282c1dd43357ebe73e8f9859e968636513bfc3426a3fd054a3`  
		Last Modified: Tue, 11 Aug 2026 20:22:15 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4f5b883dd23daf866f02519d9a78f2d8afe2e6330f00954c4abc64eeda190f`  
		Last Modified: Tue, 11 Aug 2026 20:22:15 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e08dc5a4ae6e9d575367b96577b91110010e928adf3bc7833dcb376e9ca97e2`  
		Last Modified: Tue, 11 Aug 2026 20:22:14 GMT  
		Size: 70.8 KB (70796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79df1e28d60b1a3aab2629a149d25f9d2eeb306aec58e2376d591b0ef5c2699c`  
		Last Modified: Tue, 11 Aug 2026 20:22:14 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:128fdf65208bd268bc1f9143be625016d8f1f4e0925e0fe7461b3ca4ed356fb3`  
		Last Modified: Tue, 11 Aug 2026 20:22:14 GMT  
		Size: 275.2 KB (275186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32746a21a9be3ab67d306396d8231be70f6c6669a4d8a32dad0457327d7be4de`  
		Last Modified: Tue, 11 Aug 2026 20:22:13 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82fa850997f7e3ccce02e87f97169aa2559778cd3798ab004d9aef7e21155d0d`  
		Last Modified: Tue, 11 Aug 2026 20:23:20 GMT  
		Size: 797.4 MB (797403860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e7e0063e147390044e073dc5033d25eacf49f26d759fbb09e4558092327497`  
		Last Modified: Tue, 11 Aug 2026 20:22:12 GMT  
		Size: 87.4 KB (87434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:623c844286c8208f1bff7e91752345a12346a2e0b996c2e2a6d483f8c74c0495`  
		Last Modified: Tue, 11 Aug 2026 20:22:12 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e97837eeaee7c007b1ce094d1aa1c2a0ab5a9a799f117b6231abd13a1ab027d`  
		Last Modified: Tue, 11 Aug 2026 20:22:12 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7216aa78eb99874de8b4e8c0bbcbdf7675859d67d51711b4e7a6b14401848260`  
		Last Modified: Tue, 11 Aug 2026 20:22:12 GMT  
		Size: 1.1 KB (1076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.0.29-nanoserver-ltsc2022`

```console
$ docker pull mongo@sha256:5be925c8fa1e7b30b3ecc8729b2199f112b0e1bc4fd6c1c673cfc7a3b512889c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `mongo:8.0.29-nanoserver-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:80868a622c85e853606d386b5e6670cb852578a97a642f097bcada1eab61e4a6
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **921.9 MB (921947829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb28bd83bee297b572318d22404caa3a870c62442820e00b437be70f8ca9ab77`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Tue, 11 Aug 2026 20:18:47 GMT
SHELL [cmd /S /C]
# Tue, 11 Aug 2026 20:18:50 GMT
USER ContainerAdministrator
# Tue, 11 Aug 2026 20:19:05 GMT
RUN setx /m PATH "C:\mongodb\bin;%PATH%"
# Tue, 11 Aug 2026 20:19:06 GMT
USER ContainerUser
# Tue, 11 Aug 2026 20:19:11 GMT
COPY multi:540d6dd70b1e7484f1958dc08b337aeb56cf8a92fe38be4c279dd406990d6935 in C:\Windows\System32\ 
# Tue, 11 Aug 2026 20:19:13 GMT
ENV MONGO_VERSION=8.0.29
# Tue, 11 Aug 2026 20:21:31 GMT
COPY dir:a2fa17e7cb290b710f03c3da8b69c45906c7650871c120c86cbc315639b81f57 in C:\mongodb 
# Tue, 11 Aug 2026 20:22:04 GMT
RUN mongod --version
# Tue, 11 Aug 2026 20:22:04 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 20:22:06 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 20:22:07 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efba395631828a282c1dd43357ebe73e8f9859e968636513bfc3426a3fd054a3`  
		Last Modified: Tue, 11 Aug 2026 20:22:15 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4f5b883dd23daf866f02519d9a78f2d8afe2e6330f00954c4abc64eeda190f`  
		Last Modified: Tue, 11 Aug 2026 20:22:15 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e08dc5a4ae6e9d575367b96577b91110010e928adf3bc7833dcb376e9ca97e2`  
		Last Modified: Tue, 11 Aug 2026 20:22:14 GMT  
		Size: 70.8 KB (70796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79df1e28d60b1a3aab2629a149d25f9d2eeb306aec58e2376d591b0ef5c2699c`  
		Last Modified: Tue, 11 Aug 2026 20:22:14 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:128fdf65208bd268bc1f9143be625016d8f1f4e0925e0fe7461b3ca4ed356fb3`  
		Last Modified: Tue, 11 Aug 2026 20:22:14 GMT  
		Size: 275.2 KB (275186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32746a21a9be3ab67d306396d8231be70f6c6669a4d8a32dad0457327d7be4de`  
		Last Modified: Tue, 11 Aug 2026 20:22:13 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82fa850997f7e3ccce02e87f97169aa2559778cd3798ab004d9aef7e21155d0d`  
		Last Modified: Tue, 11 Aug 2026 20:23:20 GMT  
		Size: 797.4 MB (797403860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e7e0063e147390044e073dc5033d25eacf49f26d759fbb09e4558092327497`  
		Last Modified: Tue, 11 Aug 2026 20:22:12 GMT  
		Size: 87.4 KB (87434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:623c844286c8208f1bff7e91752345a12346a2e0b996c2e2a6d483f8c74c0495`  
		Last Modified: Tue, 11 Aug 2026 20:22:12 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e97837eeaee7c007b1ce094d1aa1c2a0ab5a9a799f117b6231abd13a1ab027d`  
		Last Modified: Tue, 11 Aug 2026 20:22:12 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7216aa78eb99874de8b4e8c0bbcbdf7675859d67d51711b4e7a6b14401848260`  
		Last Modified: Tue, 11 Aug 2026 20:22:12 GMT  
		Size: 1.1 KB (1076 bytes)  
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
$ docker pull mongo@sha256:04ced34e9f2937c1a43fca051f4aa865fe74049e5ac65c74dfe8058847130705
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `mongo:8.0.29-windowsservercore` - windows version 10.0.26100.33158; amd64

```console
$ docker pull mongo@sha256:e156dab9b4c6837dceb1147a900bad03b35e538041edf5b4dd098f1ce7666c15
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3153519156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf6a68679ddd99cda4427f1fa735e44e3c338d7ab2fd486fdf04da91580e2121`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Tue, 11 Aug 2026 18:34:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 11 Aug 2026 18:34:56 GMT
ENV MONGO_VERSION=8.0.29
# Tue, 11 Aug 2026 18:34:56 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.0.29-signed.msi
# Tue, 11 Aug 2026 18:34:58 GMT
ENV MONGO_DOWNLOAD_SHA256=7c2a821f6caaffe53da63f3a048ba624e04f37358b749ce0ebe9da1684fdfedc
# Tue, 11 Aug 2026 18:37:50 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 11 Aug 2026 18:37:51 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 18:37:51 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 18:37:52 GMT
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
	-	`sha256:a1d5fff7da34a4f2ad6919c22e918f6e58fe9a1f4a5badf62b615f907c3b2c34`  
		Last Modified: Tue, 11 Aug 2026 18:37:58 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994051e53fc3bc0c15471f8de5325e59a63784d8d56b15265bb4e130bc4e83f9`  
		Last Modified: Tue, 11 Aug 2026 18:37:58 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b765d17cadc234902471d76b68c1ac42a3586223aa470ad864a311f4e43b63f5`  
		Last Modified: Tue, 11 Aug 2026 18:37:58 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c0bc7a941645f654f32a8bb9bfffb04cddaa9ff6c4b5b7af0c6c3ea39f6d396`  
		Last Modified: Tue, 11 Aug 2026 18:37:56 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50ba1dff910800b156c1c0daf72b8b38de1ed2bc27f6b14268a68854ce137e5`  
		Last Modified: Tue, 11 Aug 2026 18:39:05 GMT  
		Size: 798.5 MB (798501991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7783e5b716ad492d398f8aa18dcd2b57f03a3ba4dbc3f88987e7639171cbaad`  
		Last Modified: Tue, 11 Aug 2026 18:37:56 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52ff4dab18cdf0441a149288f5e87feb71643cb8030736149587a7545893bcc8`  
		Last Modified: Tue, 11 Aug 2026 18:37:56 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de6b3a123aa85c6dc8f15b9c98141bc5f12367af07b5ee40c3a8b0a9e2d21996`  
		Last Modified: Tue, 11 Aug 2026 18:37:56 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:8.0.29-windowsservercore` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:267144cdcb16112220da70c339732c81fd280c4b45a130b75df1cea1ae8a799a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 GB (2956177804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21ef4701255b5c0b3a0c81e9c2e320614a3a504974935446adf1a2f01e199c26`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Tue, 11 Aug 2026 18:52:56 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 11 Aug 2026 19:09:38 GMT
ENV MONGO_VERSION=8.0.29
# Tue, 11 Aug 2026 19:09:38 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.0.29-signed.msi
# Tue, 11 Aug 2026 19:09:39 GMT
ENV MONGO_DOWNLOAD_SHA256=7c2a821f6caaffe53da63f3a048ba624e04f37358b749ce0ebe9da1684fdfedc
# Tue, 11 Aug 2026 19:11:55 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 11 Aug 2026 19:11:56 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 19:11:56 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 19:11:57 GMT
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
	-	`sha256:f7201a85154c98cb8bd186d77bc1d3f2cca96eb76c61b83f86da43e30a16085d`  
		Last Modified: Tue, 11 Aug 2026 18:58:33 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cf139d04b5c077b0a34ea96f88d953e1464b3b4472999b64d2170589d4bdc6`  
		Last Modified: Tue, 11 Aug 2026 19:12:02 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a55a8cbf606a93b4263eb694d9098cb94b83ff38c3edf7fb3675c01ae26619`  
		Last Modified: Tue, 11 Aug 2026 19:12:02 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7351cd6a73eb4c9d350297292c9835fd24201363e855a7a04bf7b4d9793cda9`  
		Last Modified: Tue, 11 Aug 2026 19:12:01 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:526b54b48426da921e8794174d5cdeb7f640dbcac4d7c2562b2247f6b488234e`  
		Last Modified: Tue, 11 Aug 2026 19:13:03 GMT  
		Size: 798.6 MB (798615530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9621a20637b27348ed1eafc0281cf414f350dc61d021b50f47e454f5d2788f`  
		Last Modified: Tue, 11 Aug 2026 19:12:01 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c5b43ee2600fe98b3167178f1ec1a48ec84c118899144c228b41c759d8cde1`  
		Last Modified: Tue, 11 Aug 2026 19:12:01 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479329d5f5285c08b588e062922e480dc0d811c7355350e88c6d670bef8a6027`  
		Last Modified: Tue, 11 Aug 2026 19:12:01 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.0.29-windowsservercore-ltsc2022`

```console
$ docker pull mongo@sha256:75c101a92dad68cda9f4053d690c45afbdf6a23bd983c9794d1f3c6d06016451
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `mongo:8.0.29-windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:267144cdcb16112220da70c339732c81fd280c4b45a130b75df1cea1ae8a799a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 GB (2956177804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21ef4701255b5c0b3a0c81e9c2e320614a3a504974935446adf1a2f01e199c26`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Tue, 11 Aug 2026 18:52:56 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 11 Aug 2026 19:09:38 GMT
ENV MONGO_VERSION=8.0.29
# Tue, 11 Aug 2026 19:09:38 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.0.29-signed.msi
# Tue, 11 Aug 2026 19:09:39 GMT
ENV MONGO_DOWNLOAD_SHA256=7c2a821f6caaffe53da63f3a048ba624e04f37358b749ce0ebe9da1684fdfedc
# Tue, 11 Aug 2026 19:11:55 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 11 Aug 2026 19:11:56 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 19:11:56 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 19:11:57 GMT
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
	-	`sha256:f7201a85154c98cb8bd186d77bc1d3f2cca96eb76c61b83f86da43e30a16085d`  
		Last Modified: Tue, 11 Aug 2026 18:58:33 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cf139d04b5c077b0a34ea96f88d953e1464b3b4472999b64d2170589d4bdc6`  
		Last Modified: Tue, 11 Aug 2026 19:12:02 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a55a8cbf606a93b4263eb694d9098cb94b83ff38c3edf7fb3675c01ae26619`  
		Last Modified: Tue, 11 Aug 2026 19:12:02 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7351cd6a73eb4c9d350297292c9835fd24201363e855a7a04bf7b4d9793cda9`  
		Last Modified: Tue, 11 Aug 2026 19:12:01 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:526b54b48426da921e8794174d5cdeb7f640dbcac4d7c2562b2247f6b488234e`  
		Last Modified: Tue, 11 Aug 2026 19:13:03 GMT  
		Size: 798.6 MB (798615530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9621a20637b27348ed1eafc0281cf414f350dc61d021b50f47e454f5d2788f`  
		Last Modified: Tue, 11 Aug 2026 19:12:01 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c5b43ee2600fe98b3167178f1ec1a48ec84c118899144c228b41c759d8cde1`  
		Last Modified: Tue, 11 Aug 2026 19:12:01 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479329d5f5285c08b588e062922e480dc0d811c7355350e88c6d670bef8a6027`  
		Last Modified: Tue, 11 Aug 2026 19:12:01 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.0.29-windowsservercore-ltsc2025`

```console
$ docker pull mongo@sha256:88fd3ddb6b4ac7319ea0e2aee80783d87d9790db02d83d5bf5d07e837f3fa186
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `mongo:8.0.29-windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull mongo@sha256:e156dab9b4c6837dceb1147a900bad03b35e538041edf5b4dd098f1ce7666c15
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3153519156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf6a68679ddd99cda4427f1fa735e44e3c338d7ab2fd486fdf04da91580e2121`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Tue, 11 Aug 2026 18:34:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 11 Aug 2026 18:34:56 GMT
ENV MONGO_VERSION=8.0.29
# Tue, 11 Aug 2026 18:34:56 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.0.29-signed.msi
# Tue, 11 Aug 2026 18:34:58 GMT
ENV MONGO_DOWNLOAD_SHA256=7c2a821f6caaffe53da63f3a048ba624e04f37358b749ce0ebe9da1684fdfedc
# Tue, 11 Aug 2026 18:37:50 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 11 Aug 2026 18:37:51 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 18:37:51 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 18:37:52 GMT
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
	-	`sha256:a1d5fff7da34a4f2ad6919c22e918f6e58fe9a1f4a5badf62b615f907c3b2c34`  
		Last Modified: Tue, 11 Aug 2026 18:37:58 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994051e53fc3bc0c15471f8de5325e59a63784d8d56b15265bb4e130bc4e83f9`  
		Last Modified: Tue, 11 Aug 2026 18:37:58 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b765d17cadc234902471d76b68c1ac42a3586223aa470ad864a311f4e43b63f5`  
		Last Modified: Tue, 11 Aug 2026 18:37:58 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c0bc7a941645f654f32a8bb9bfffb04cddaa9ff6c4b5b7af0c6c3ea39f6d396`  
		Last Modified: Tue, 11 Aug 2026 18:37:56 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50ba1dff910800b156c1c0daf72b8b38de1ed2bc27f6b14268a68854ce137e5`  
		Last Modified: Tue, 11 Aug 2026 18:39:05 GMT  
		Size: 798.5 MB (798501991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7783e5b716ad492d398f8aa18dcd2b57f03a3ba4dbc3f88987e7639171cbaad`  
		Last Modified: Tue, 11 Aug 2026 18:37:56 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52ff4dab18cdf0441a149288f5e87feb71643cb8030736149587a7545893bcc8`  
		Last Modified: Tue, 11 Aug 2026 18:37:56 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de6b3a123aa85c6dc8f15b9c98141bc5f12367af07b5ee40c3a8b0a9e2d21996`  
		Last Modified: Tue, 11 Aug 2026 18:37:56 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.3`

```console
$ docker pull mongo@sha256:4e81cd5857d7a087db95c6c1c2d8fd9feddfef58d1bf5b754356d20f583744d1
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

### `mongo:8.3` - windows version 10.0.26100.33158; amd64

```console
$ docker pull mongo@sha256:6002091593dfe45170718bc7147d409e59c082d237edbe3bb7163117940b29f3
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3277553584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca043f3ff8647ac060ca0f4f0c8f7d24f6527abeee6d24ed7b08a37064c01b88`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Tue, 11 Aug 2026 18:33:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 11 Aug 2026 18:33:33 GMT
ENV MONGO_VERSION=8.3.8
# Tue, 11 Aug 2026 18:33:34 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.3.8-signed.msi
# Tue, 11 Aug 2026 18:33:35 GMT
ENV MONGO_DOWNLOAD_SHA256=d938c6dbc75f9ccdd0880ef91612364ba5f3c08f3640b4ee28a2cd95d4c99861
# Tue, 11 Aug 2026 18:36:54 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 11 Aug 2026 18:36:55 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 18:36:56 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 18:36:56 GMT
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
	-	`sha256:e2b07c0ef28ff6e03cd05ebc2217995d5a76df5794d03b88c9137337573c377a`  
		Last Modified: Tue, 11 Aug 2026 18:37:06 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1374f542eb5ffd2ad93ebcfabd18115fcb87e862faa85b16b2fb880579408bc7`  
		Last Modified: Tue, 11 Aug 2026 18:37:06 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76273252aaf0bfbab11dc23bea7e7bb62b53de2acea376a0ef55f18aa7a7c206`  
		Last Modified: Tue, 11 Aug 2026 18:37:06 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6842876e86908853a8d60fa0b97bec632f5281f0d918ea90e86f795ed2fedc2c`  
		Last Modified: Tue, 11 Aug 2026 18:37:04 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de128c3734758356c213316737c82e5e06ae9c2cafea4d46db8080707ebcc699`  
		Last Modified: Tue, 11 Aug 2026 18:38:20 GMT  
		Size: 922.5 MB (922536270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e48ed53457d1e5533b044077a9124f5c3b46b13fe3316fe0eed352266f813658`  
		Last Modified: Tue, 11 Aug 2026 18:37:04 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65804c99c6aa62e0925011bcd2df0045ac111f48c8a71bffbd39f28a7838751`  
		Last Modified: Tue, 11 Aug 2026 18:37:04 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7e3fd100c028c6e3ceb45cdc8e5240ae013b8d96af2ea9549a5a94ae406314`  
		Last Modified: Tue, 11 Aug 2026 18:37:04 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:8.3` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:ccd5b15d3281429354eee7797f917b8aa6a34811f554b4772df51d33adee19c5
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 GB (3080204576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad19d02b41cce4411e9fd779fac9248165b5f79371a95327d01e4ebffe857cb3`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Tue, 11 Aug 2026 18:52:56 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 11 Aug 2026 18:52:59 GMT
ENV MONGO_VERSION=8.3.8
# Tue, 11 Aug 2026 18:53:00 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.3.8-signed.msi
# Tue, 11 Aug 2026 18:53:02 GMT
ENV MONGO_DOWNLOAD_SHA256=d938c6dbc75f9ccdd0880ef91612364ba5f3c08f3640b4ee28a2cd95d4c99861
# Tue, 11 Aug 2026 18:58:16 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 11 Aug 2026 18:58:17 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 18:58:18 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 18:58:18 GMT
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
	-	`sha256:f7201a85154c98cb8bd186d77bc1d3f2cca96eb76c61b83f86da43e30a16085d`  
		Last Modified: Tue, 11 Aug 2026 18:58:33 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9545e86c6ffefbd96a33697de88508f6141fd391a572a7cb5a8d15ce3eff95db`  
		Last Modified: Tue, 11 Aug 2026 18:58:33 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1f149478d44a700937ba7ef9a9e6d257c57a95c6199edbe7872b84ffc582e40`  
		Last Modified: Tue, 11 Aug 2026 18:58:32 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76137d16f0a661f0229be6841e2af9581f35bf8fe88fc852044f3512cbad2d3e`  
		Last Modified: Tue, 11 Aug 2026 18:58:31 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a255bbc8478847a111302e95c44ac90960ab3122a450ca6cc54d5ec09fc65c8d`  
		Last Modified: Tue, 11 Aug 2026 18:59:41 GMT  
		Size: 922.6 MB (922642279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d8c3b686d6520fac69adb2bc478d6f374463dd6db72bf16b8e09072b05e362`  
		Last Modified: Tue, 11 Aug 2026 18:58:31 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37410f0eb08ac6d5be2a9d2eb5651441f13fcf88b7246787c00dde5f4249fa5a`  
		Last Modified: Tue, 11 Aug 2026 18:58:31 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20356e3874e7da6b35ae6d0504e7cd1cc14ac9b96a023cf354dbb297c0687ab7`  
		Last Modified: Tue, 11 Aug 2026 18:58:31 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.3-nanoserver`

```console
$ docker pull mongo@sha256:bc01418051e264cdd593539d2e62864c1183f128f72dd7d74595de9779f19072
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `mongo:8.3-nanoserver` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:26fb1ad4d271221e7d0ea3f635d5563475ae183b928e50aaa85dd85fef208aa5
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1045908327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:497698ce6a92f85d35de27f90d52de8fff837f5ef9ccfb677f9c163843a79eb2`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Tue, 11 Aug 2026 20:13:35 GMT
SHELL [cmd /S /C]
# Tue, 11 Aug 2026 20:13:37 GMT
USER ContainerAdministrator
# Tue, 11 Aug 2026 20:13:49 GMT
RUN setx /m PATH "C:\mongodb\bin;%PATH%"
# Tue, 11 Aug 2026 20:13:49 GMT
USER ContainerUser
# Tue, 11 Aug 2026 20:13:52 GMT
COPY multi:edf1670f741f0c0f034ec218dc51015484becee19afd9d4d712d1a864fd379ff in C:\Windows\System32\ 
# Tue, 11 Aug 2026 20:13:53 GMT
ENV MONGO_VERSION=8.3.8
# Tue, 11 Aug 2026 20:16:56 GMT
COPY dir:ab77c6d81d0785876e1421f184877c7fedc2c701e07d5fc54386b3eabb2260f7 in C:\mongodb 
# Tue, 11 Aug 2026 20:17:29 GMT
RUN mongod --version
# Tue, 11 Aug 2026 20:17:30 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 20:17:31 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 20:17:31 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51a7dc20d84ea0969174d6cf460deb84714d0ebcf12fddacf83338426b264ce1`  
		Last Modified: Tue, 11 Aug 2026 20:17:39 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d30395bc107c24edfe22eba4a5046805438a2247f7aea6cadb67e5893d8e5ce`  
		Last Modified: Tue, 11 Aug 2026 20:17:39 GMT  
		Size: 1.1 KB (1084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b63008a99223a4359d26fc7134ae4e1a902489fa30ff17a3eee11ab0bf7213`  
		Last Modified: Tue, 11 Aug 2026 20:17:37 GMT  
		Size: 70.8 KB (70771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9c96c2777dbad64a838be75204aa5252be0e065c01b0337e298537e0a64d74`  
		Last Modified: Tue, 11 Aug 2026 20:17:37 GMT  
		Size: 1.1 KB (1076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb05bd4e4b15e491e081fe625fe8b76e76205f895d0671cff4c92abb8977c20a`  
		Last Modified: Tue, 11 Aug 2026 20:17:37 GMT  
		Size: 300.4 KB (300362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4123fc6729583fd50ffbe7b11b927c375c41ffe4565bdf77f7e1276adcd6cb18`  
		Last Modified: Tue, 11 Aug 2026 20:17:37 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7055523157509534626e6ca549fd1091db62a45df6123de43f011a1605263c05`  
		Last Modified: Tue, 11 Aug 2026 20:18:48 GMT  
		Size: 921.3 MB (921339022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8484b10723e5cdb7533522f7179e483c577876c599d3cfc7554a249080466bc6`  
		Last Modified: Tue, 11 Aug 2026 20:17:35 GMT  
		Size: 87.5 KB (87537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143efcd2b437ab4cfd4a9dbd5343d0f9d6493cba40d87b5e84a3922205dbef40`  
		Last Modified: Tue, 11 Aug 2026 20:17:36 GMT  
		Size: 1.1 KB (1082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a27cf8f3146b6b2a36d6d5bf7fc826708d302531ac4c839c60ab82cc2ee730c`  
		Last Modified: Tue, 11 Aug 2026 20:17:35 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57b809cc945405c2021de9b81fbe0de01b0148bb95eee18fc0d59dd1b7f361d`  
		Last Modified: Tue, 11 Aug 2026 20:17:35 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.3-nanoserver-ltsc2022`

```console
$ docker pull mongo@sha256:bc01418051e264cdd593539d2e62864c1183f128f72dd7d74595de9779f19072
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `mongo:8.3-nanoserver-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:26fb1ad4d271221e7d0ea3f635d5563475ae183b928e50aaa85dd85fef208aa5
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1045908327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:497698ce6a92f85d35de27f90d52de8fff837f5ef9ccfb677f9c163843a79eb2`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Tue, 11 Aug 2026 20:13:35 GMT
SHELL [cmd /S /C]
# Tue, 11 Aug 2026 20:13:37 GMT
USER ContainerAdministrator
# Tue, 11 Aug 2026 20:13:49 GMT
RUN setx /m PATH "C:\mongodb\bin;%PATH%"
# Tue, 11 Aug 2026 20:13:49 GMT
USER ContainerUser
# Tue, 11 Aug 2026 20:13:52 GMT
COPY multi:edf1670f741f0c0f034ec218dc51015484becee19afd9d4d712d1a864fd379ff in C:\Windows\System32\ 
# Tue, 11 Aug 2026 20:13:53 GMT
ENV MONGO_VERSION=8.3.8
# Tue, 11 Aug 2026 20:16:56 GMT
COPY dir:ab77c6d81d0785876e1421f184877c7fedc2c701e07d5fc54386b3eabb2260f7 in C:\mongodb 
# Tue, 11 Aug 2026 20:17:29 GMT
RUN mongod --version
# Tue, 11 Aug 2026 20:17:30 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 20:17:31 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 20:17:31 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51a7dc20d84ea0969174d6cf460deb84714d0ebcf12fddacf83338426b264ce1`  
		Last Modified: Tue, 11 Aug 2026 20:17:39 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d30395bc107c24edfe22eba4a5046805438a2247f7aea6cadb67e5893d8e5ce`  
		Last Modified: Tue, 11 Aug 2026 20:17:39 GMT  
		Size: 1.1 KB (1084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b63008a99223a4359d26fc7134ae4e1a902489fa30ff17a3eee11ab0bf7213`  
		Last Modified: Tue, 11 Aug 2026 20:17:37 GMT  
		Size: 70.8 KB (70771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9c96c2777dbad64a838be75204aa5252be0e065c01b0337e298537e0a64d74`  
		Last Modified: Tue, 11 Aug 2026 20:17:37 GMT  
		Size: 1.1 KB (1076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb05bd4e4b15e491e081fe625fe8b76e76205f895d0671cff4c92abb8977c20a`  
		Last Modified: Tue, 11 Aug 2026 20:17:37 GMT  
		Size: 300.4 KB (300362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4123fc6729583fd50ffbe7b11b927c375c41ffe4565bdf77f7e1276adcd6cb18`  
		Last Modified: Tue, 11 Aug 2026 20:17:37 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7055523157509534626e6ca549fd1091db62a45df6123de43f011a1605263c05`  
		Last Modified: Tue, 11 Aug 2026 20:18:48 GMT  
		Size: 921.3 MB (921339022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8484b10723e5cdb7533522f7179e483c577876c599d3cfc7554a249080466bc6`  
		Last Modified: Tue, 11 Aug 2026 20:17:35 GMT  
		Size: 87.5 KB (87537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143efcd2b437ab4cfd4a9dbd5343d0f9d6493cba40d87b5e84a3922205dbef40`  
		Last Modified: Tue, 11 Aug 2026 20:17:36 GMT  
		Size: 1.1 KB (1082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a27cf8f3146b6b2a36d6d5bf7fc826708d302531ac4c839c60ab82cc2ee730c`  
		Last Modified: Tue, 11 Aug 2026 20:17:35 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57b809cc945405c2021de9b81fbe0de01b0148bb95eee18fc0d59dd1b7f361d`  
		Last Modified: Tue, 11 Aug 2026 20:17:35 GMT  
		Size: 1.1 KB (1075 bytes)  
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
$ docker pull mongo@sha256:c36c8226ba8dd1a5ea85b835f51111f305a057a175dc2dacfda842e97629c038
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `mongo:8.3-windowsservercore` - windows version 10.0.26100.33158; amd64

```console
$ docker pull mongo@sha256:6002091593dfe45170718bc7147d409e59c082d237edbe3bb7163117940b29f3
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3277553584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca043f3ff8647ac060ca0f4f0c8f7d24f6527abeee6d24ed7b08a37064c01b88`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Tue, 11 Aug 2026 18:33:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 11 Aug 2026 18:33:33 GMT
ENV MONGO_VERSION=8.3.8
# Tue, 11 Aug 2026 18:33:34 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.3.8-signed.msi
# Tue, 11 Aug 2026 18:33:35 GMT
ENV MONGO_DOWNLOAD_SHA256=d938c6dbc75f9ccdd0880ef91612364ba5f3c08f3640b4ee28a2cd95d4c99861
# Tue, 11 Aug 2026 18:36:54 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 11 Aug 2026 18:36:55 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 18:36:56 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 18:36:56 GMT
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
	-	`sha256:e2b07c0ef28ff6e03cd05ebc2217995d5a76df5794d03b88c9137337573c377a`  
		Last Modified: Tue, 11 Aug 2026 18:37:06 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1374f542eb5ffd2ad93ebcfabd18115fcb87e862faa85b16b2fb880579408bc7`  
		Last Modified: Tue, 11 Aug 2026 18:37:06 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76273252aaf0bfbab11dc23bea7e7bb62b53de2acea376a0ef55f18aa7a7c206`  
		Last Modified: Tue, 11 Aug 2026 18:37:06 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6842876e86908853a8d60fa0b97bec632f5281f0d918ea90e86f795ed2fedc2c`  
		Last Modified: Tue, 11 Aug 2026 18:37:04 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de128c3734758356c213316737c82e5e06ae9c2cafea4d46db8080707ebcc699`  
		Last Modified: Tue, 11 Aug 2026 18:38:20 GMT  
		Size: 922.5 MB (922536270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e48ed53457d1e5533b044077a9124f5c3b46b13fe3316fe0eed352266f813658`  
		Last Modified: Tue, 11 Aug 2026 18:37:04 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65804c99c6aa62e0925011bcd2df0045ac111f48c8a71bffbd39f28a7838751`  
		Last Modified: Tue, 11 Aug 2026 18:37:04 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7e3fd100c028c6e3ceb45cdc8e5240ae013b8d96af2ea9549a5a94ae406314`  
		Last Modified: Tue, 11 Aug 2026 18:37:04 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:8.3-windowsservercore` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:ccd5b15d3281429354eee7797f917b8aa6a34811f554b4772df51d33adee19c5
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 GB (3080204576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad19d02b41cce4411e9fd779fac9248165b5f79371a95327d01e4ebffe857cb3`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Tue, 11 Aug 2026 18:52:56 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 11 Aug 2026 18:52:59 GMT
ENV MONGO_VERSION=8.3.8
# Tue, 11 Aug 2026 18:53:00 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.3.8-signed.msi
# Tue, 11 Aug 2026 18:53:02 GMT
ENV MONGO_DOWNLOAD_SHA256=d938c6dbc75f9ccdd0880ef91612364ba5f3c08f3640b4ee28a2cd95d4c99861
# Tue, 11 Aug 2026 18:58:16 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 11 Aug 2026 18:58:17 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 18:58:18 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 18:58:18 GMT
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
	-	`sha256:f7201a85154c98cb8bd186d77bc1d3f2cca96eb76c61b83f86da43e30a16085d`  
		Last Modified: Tue, 11 Aug 2026 18:58:33 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9545e86c6ffefbd96a33697de88508f6141fd391a572a7cb5a8d15ce3eff95db`  
		Last Modified: Tue, 11 Aug 2026 18:58:33 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1f149478d44a700937ba7ef9a9e6d257c57a95c6199edbe7872b84ffc582e40`  
		Last Modified: Tue, 11 Aug 2026 18:58:32 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76137d16f0a661f0229be6841e2af9581f35bf8fe88fc852044f3512cbad2d3e`  
		Last Modified: Tue, 11 Aug 2026 18:58:31 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a255bbc8478847a111302e95c44ac90960ab3122a450ca6cc54d5ec09fc65c8d`  
		Last Modified: Tue, 11 Aug 2026 18:59:41 GMT  
		Size: 922.6 MB (922642279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d8c3b686d6520fac69adb2bc478d6f374463dd6db72bf16b8e09072b05e362`  
		Last Modified: Tue, 11 Aug 2026 18:58:31 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37410f0eb08ac6d5be2a9d2eb5651441f13fcf88b7246787c00dde5f4249fa5a`  
		Last Modified: Tue, 11 Aug 2026 18:58:31 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20356e3874e7da6b35ae6d0504e7cd1cc14ac9b96a023cf354dbb297c0687ab7`  
		Last Modified: Tue, 11 Aug 2026 18:58:31 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.3-windowsservercore-ltsc2022`

```console
$ docker pull mongo@sha256:f463b2a227bc83a38018de145a8bbdedea3bdca47fd21a8647cce66c5dac0b2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `mongo:8.3-windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:ccd5b15d3281429354eee7797f917b8aa6a34811f554b4772df51d33adee19c5
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 GB (3080204576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad19d02b41cce4411e9fd779fac9248165b5f79371a95327d01e4ebffe857cb3`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Tue, 11 Aug 2026 18:52:56 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 11 Aug 2026 18:52:59 GMT
ENV MONGO_VERSION=8.3.8
# Tue, 11 Aug 2026 18:53:00 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.3.8-signed.msi
# Tue, 11 Aug 2026 18:53:02 GMT
ENV MONGO_DOWNLOAD_SHA256=d938c6dbc75f9ccdd0880ef91612364ba5f3c08f3640b4ee28a2cd95d4c99861
# Tue, 11 Aug 2026 18:58:16 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 11 Aug 2026 18:58:17 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 18:58:18 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 18:58:18 GMT
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
	-	`sha256:f7201a85154c98cb8bd186d77bc1d3f2cca96eb76c61b83f86da43e30a16085d`  
		Last Modified: Tue, 11 Aug 2026 18:58:33 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9545e86c6ffefbd96a33697de88508f6141fd391a572a7cb5a8d15ce3eff95db`  
		Last Modified: Tue, 11 Aug 2026 18:58:33 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1f149478d44a700937ba7ef9a9e6d257c57a95c6199edbe7872b84ffc582e40`  
		Last Modified: Tue, 11 Aug 2026 18:58:32 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76137d16f0a661f0229be6841e2af9581f35bf8fe88fc852044f3512cbad2d3e`  
		Last Modified: Tue, 11 Aug 2026 18:58:31 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a255bbc8478847a111302e95c44ac90960ab3122a450ca6cc54d5ec09fc65c8d`  
		Last Modified: Tue, 11 Aug 2026 18:59:41 GMT  
		Size: 922.6 MB (922642279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d8c3b686d6520fac69adb2bc478d6f374463dd6db72bf16b8e09072b05e362`  
		Last Modified: Tue, 11 Aug 2026 18:58:31 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37410f0eb08ac6d5be2a9d2eb5651441f13fcf88b7246787c00dde5f4249fa5a`  
		Last Modified: Tue, 11 Aug 2026 18:58:31 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20356e3874e7da6b35ae6d0504e7cd1cc14ac9b96a023cf354dbb297c0687ab7`  
		Last Modified: Tue, 11 Aug 2026 18:58:31 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.3-windowsservercore-ltsc2025`

```console
$ docker pull mongo@sha256:22ddcd3b7f1727f72ff3d492bfbd9af99b30f7008d411086d0c438a2c4ef227a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `mongo:8.3-windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull mongo@sha256:6002091593dfe45170718bc7147d409e59c082d237edbe3bb7163117940b29f3
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3277553584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca043f3ff8647ac060ca0f4f0c8f7d24f6527abeee6d24ed7b08a37064c01b88`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Tue, 11 Aug 2026 18:33:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 11 Aug 2026 18:33:33 GMT
ENV MONGO_VERSION=8.3.8
# Tue, 11 Aug 2026 18:33:34 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.3.8-signed.msi
# Tue, 11 Aug 2026 18:33:35 GMT
ENV MONGO_DOWNLOAD_SHA256=d938c6dbc75f9ccdd0880ef91612364ba5f3c08f3640b4ee28a2cd95d4c99861
# Tue, 11 Aug 2026 18:36:54 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 11 Aug 2026 18:36:55 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 18:36:56 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 18:36:56 GMT
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
	-	`sha256:e2b07c0ef28ff6e03cd05ebc2217995d5a76df5794d03b88c9137337573c377a`  
		Last Modified: Tue, 11 Aug 2026 18:37:06 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1374f542eb5ffd2ad93ebcfabd18115fcb87e862faa85b16b2fb880579408bc7`  
		Last Modified: Tue, 11 Aug 2026 18:37:06 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76273252aaf0bfbab11dc23bea7e7bb62b53de2acea376a0ef55f18aa7a7c206`  
		Last Modified: Tue, 11 Aug 2026 18:37:06 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6842876e86908853a8d60fa0b97bec632f5281f0d918ea90e86f795ed2fedc2c`  
		Last Modified: Tue, 11 Aug 2026 18:37:04 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de128c3734758356c213316737c82e5e06ae9c2cafea4d46db8080707ebcc699`  
		Last Modified: Tue, 11 Aug 2026 18:38:20 GMT  
		Size: 922.5 MB (922536270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e48ed53457d1e5533b044077a9124f5c3b46b13fe3316fe0eed352266f813658`  
		Last Modified: Tue, 11 Aug 2026 18:37:04 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65804c99c6aa62e0925011bcd2df0045ac111f48c8a71bffbd39f28a7838751`  
		Last Modified: Tue, 11 Aug 2026 18:37:04 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7e3fd100c028c6e3ceb45cdc8e5240ae013b8d96af2ea9549a5a94ae406314`  
		Last Modified: Tue, 11 Aug 2026 18:37:04 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.3.8`

```console
$ docker pull mongo@sha256:4e81cd5857d7a087db95c6c1c2d8fd9feddfef58d1bf5b754356d20f583744d1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

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

### `mongo:8.3.8` - windows version 10.0.26100.33158; amd64

```console
$ docker pull mongo@sha256:6002091593dfe45170718bc7147d409e59c082d237edbe3bb7163117940b29f3
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3277553584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca043f3ff8647ac060ca0f4f0c8f7d24f6527abeee6d24ed7b08a37064c01b88`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Tue, 11 Aug 2026 18:33:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 11 Aug 2026 18:33:33 GMT
ENV MONGO_VERSION=8.3.8
# Tue, 11 Aug 2026 18:33:34 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.3.8-signed.msi
# Tue, 11 Aug 2026 18:33:35 GMT
ENV MONGO_DOWNLOAD_SHA256=d938c6dbc75f9ccdd0880ef91612364ba5f3c08f3640b4ee28a2cd95d4c99861
# Tue, 11 Aug 2026 18:36:54 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 11 Aug 2026 18:36:55 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 18:36:56 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 18:36:56 GMT
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
	-	`sha256:e2b07c0ef28ff6e03cd05ebc2217995d5a76df5794d03b88c9137337573c377a`  
		Last Modified: Tue, 11 Aug 2026 18:37:06 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1374f542eb5ffd2ad93ebcfabd18115fcb87e862faa85b16b2fb880579408bc7`  
		Last Modified: Tue, 11 Aug 2026 18:37:06 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76273252aaf0bfbab11dc23bea7e7bb62b53de2acea376a0ef55f18aa7a7c206`  
		Last Modified: Tue, 11 Aug 2026 18:37:06 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6842876e86908853a8d60fa0b97bec632f5281f0d918ea90e86f795ed2fedc2c`  
		Last Modified: Tue, 11 Aug 2026 18:37:04 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de128c3734758356c213316737c82e5e06ae9c2cafea4d46db8080707ebcc699`  
		Last Modified: Tue, 11 Aug 2026 18:38:20 GMT  
		Size: 922.5 MB (922536270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e48ed53457d1e5533b044077a9124f5c3b46b13fe3316fe0eed352266f813658`  
		Last Modified: Tue, 11 Aug 2026 18:37:04 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65804c99c6aa62e0925011bcd2df0045ac111f48c8a71bffbd39f28a7838751`  
		Last Modified: Tue, 11 Aug 2026 18:37:04 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7e3fd100c028c6e3ceb45cdc8e5240ae013b8d96af2ea9549a5a94ae406314`  
		Last Modified: Tue, 11 Aug 2026 18:37:04 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:8.3.8` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:ccd5b15d3281429354eee7797f917b8aa6a34811f554b4772df51d33adee19c5
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 GB (3080204576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad19d02b41cce4411e9fd779fac9248165b5f79371a95327d01e4ebffe857cb3`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Tue, 11 Aug 2026 18:52:56 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 11 Aug 2026 18:52:59 GMT
ENV MONGO_VERSION=8.3.8
# Tue, 11 Aug 2026 18:53:00 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.3.8-signed.msi
# Tue, 11 Aug 2026 18:53:02 GMT
ENV MONGO_DOWNLOAD_SHA256=d938c6dbc75f9ccdd0880ef91612364ba5f3c08f3640b4ee28a2cd95d4c99861
# Tue, 11 Aug 2026 18:58:16 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 11 Aug 2026 18:58:17 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 18:58:18 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 18:58:18 GMT
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
	-	`sha256:f7201a85154c98cb8bd186d77bc1d3f2cca96eb76c61b83f86da43e30a16085d`  
		Last Modified: Tue, 11 Aug 2026 18:58:33 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9545e86c6ffefbd96a33697de88508f6141fd391a572a7cb5a8d15ce3eff95db`  
		Last Modified: Tue, 11 Aug 2026 18:58:33 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1f149478d44a700937ba7ef9a9e6d257c57a95c6199edbe7872b84ffc582e40`  
		Last Modified: Tue, 11 Aug 2026 18:58:32 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76137d16f0a661f0229be6841e2af9581f35bf8fe88fc852044f3512cbad2d3e`  
		Last Modified: Tue, 11 Aug 2026 18:58:31 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a255bbc8478847a111302e95c44ac90960ab3122a450ca6cc54d5ec09fc65c8d`  
		Last Modified: Tue, 11 Aug 2026 18:59:41 GMT  
		Size: 922.6 MB (922642279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d8c3b686d6520fac69adb2bc478d6f374463dd6db72bf16b8e09072b05e362`  
		Last Modified: Tue, 11 Aug 2026 18:58:31 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37410f0eb08ac6d5be2a9d2eb5651441f13fcf88b7246787c00dde5f4249fa5a`  
		Last Modified: Tue, 11 Aug 2026 18:58:31 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20356e3874e7da6b35ae6d0504e7cd1cc14ac9b96a023cf354dbb297c0687ab7`  
		Last Modified: Tue, 11 Aug 2026 18:58:31 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.3.8-nanoserver`

```console
$ docker pull mongo@sha256:bc01418051e264cdd593539d2e62864c1183f128f72dd7d74595de9779f19072
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `mongo:8.3.8-nanoserver` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:26fb1ad4d271221e7d0ea3f635d5563475ae183b928e50aaa85dd85fef208aa5
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1045908327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:497698ce6a92f85d35de27f90d52de8fff837f5ef9ccfb677f9c163843a79eb2`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Tue, 11 Aug 2026 20:13:35 GMT
SHELL [cmd /S /C]
# Tue, 11 Aug 2026 20:13:37 GMT
USER ContainerAdministrator
# Tue, 11 Aug 2026 20:13:49 GMT
RUN setx /m PATH "C:\mongodb\bin;%PATH%"
# Tue, 11 Aug 2026 20:13:49 GMT
USER ContainerUser
# Tue, 11 Aug 2026 20:13:52 GMT
COPY multi:edf1670f741f0c0f034ec218dc51015484becee19afd9d4d712d1a864fd379ff in C:\Windows\System32\ 
# Tue, 11 Aug 2026 20:13:53 GMT
ENV MONGO_VERSION=8.3.8
# Tue, 11 Aug 2026 20:16:56 GMT
COPY dir:ab77c6d81d0785876e1421f184877c7fedc2c701e07d5fc54386b3eabb2260f7 in C:\mongodb 
# Tue, 11 Aug 2026 20:17:29 GMT
RUN mongod --version
# Tue, 11 Aug 2026 20:17:30 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 20:17:31 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 20:17:31 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51a7dc20d84ea0969174d6cf460deb84714d0ebcf12fddacf83338426b264ce1`  
		Last Modified: Tue, 11 Aug 2026 20:17:39 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d30395bc107c24edfe22eba4a5046805438a2247f7aea6cadb67e5893d8e5ce`  
		Last Modified: Tue, 11 Aug 2026 20:17:39 GMT  
		Size: 1.1 KB (1084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b63008a99223a4359d26fc7134ae4e1a902489fa30ff17a3eee11ab0bf7213`  
		Last Modified: Tue, 11 Aug 2026 20:17:37 GMT  
		Size: 70.8 KB (70771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9c96c2777dbad64a838be75204aa5252be0e065c01b0337e298537e0a64d74`  
		Last Modified: Tue, 11 Aug 2026 20:17:37 GMT  
		Size: 1.1 KB (1076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb05bd4e4b15e491e081fe625fe8b76e76205f895d0671cff4c92abb8977c20a`  
		Last Modified: Tue, 11 Aug 2026 20:17:37 GMT  
		Size: 300.4 KB (300362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4123fc6729583fd50ffbe7b11b927c375c41ffe4565bdf77f7e1276adcd6cb18`  
		Last Modified: Tue, 11 Aug 2026 20:17:37 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7055523157509534626e6ca549fd1091db62a45df6123de43f011a1605263c05`  
		Last Modified: Tue, 11 Aug 2026 20:18:48 GMT  
		Size: 921.3 MB (921339022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8484b10723e5cdb7533522f7179e483c577876c599d3cfc7554a249080466bc6`  
		Last Modified: Tue, 11 Aug 2026 20:17:35 GMT  
		Size: 87.5 KB (87537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143efcd2b437ab4cfd4a9dbd5343d0f9d6493cba40d87b5e84a3922205dbef40`  
		Last Modified: Tue, 11 Aug 2026 20:17:36 GMT  
		Size: 1.1 KB (1082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a27cf8f3146b6b2a36d6d5bf7fc826708d302531ac4c839c60ab82cc2ee730c`  
		Last Modified: Tue, 11 Aug 2026 20:17:35 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57b809cc945405c2021de9b81fbe0de01b0148bb95eee18fc0d59dd1b7f361d`  
		Last Modified: Tue, 11 Aug 2026 20:17:35 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.3.8-nanoserver-ltsc2022`

```console
$ docker pull mongo@sha256:bc01418051e264cdd593539d2e62864c1183f128f72dd7d74595de9779f19072
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `mongo:8.3.8-nanoserver-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:26fb1ad4d271221e7d0ea3f635d5563475ae183b928e50aaa85dd85fef208aa5
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1045908327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:497698ce6a92f85d35de27f90d52de8fff837f5ef9ccfb677f9c163843a79eb2`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Tue, 11 Aug 2026 20:13:35 GMT
SHELL [cmd /S /C]
# Tue, 11 Aug 2026 20:13:37 GMT
USER ContainerAdministrator
# Tue, 11 Aug 2026 20:13:49 GMT
RUN setx /m PATH "C:\mongodb\bin;%PATH%"
# Tue, 11 Aug 2026 20:13:49 GMT
USER ContainerUser
# Tue, 11 Aug 2026 20:13:52 GMT
COPY multi:edf1670f741f0c0f034ec218dc51015484becee19afd9d4d712d1a864fd379ff in C:\Windows\System32\ 
# Tue, 11 Aug 2026 20:13:53 GMT
ENV MONGO_VERSION=8.3.8
# Tue, 11 Aug 2026 20:16:56 GMT
COPY dir:ab77c6d81d0785876e1421f184877c7fedc2c701e07d5fc54386b3eabb2260f7 in C:\mongodb 
# Tue, 11 Aug 2026 20:17:29 GMT
RUN mongod --version
# Tue, 11 Aug 2026 20:17:30 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 20:17:31 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 20:17:31 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51a7dc20d84ea0969174d6cf460deb84714d0ebcf12fddacf83338426b264ce1`  
		Last Modified: Tue, 11 Aug 2026 20:17:39 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d30395bc107c24edfe22eba4a5046805438a2247f7aea6cadb67e5893d8e5ce`  
		Last Modified: Tue, 11 Aug 2026 20:17:39 GMT  
		Size: 1.1 KB (1084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b63008a99223a4359d26fc7134ae4e1a902489fa30ff17a3eee11ab0bf7213`  
		Last Modified: Tue, 11 Aug 2026 20:17:37 GMT  
		Size: 70.8 KB (70771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9c96c2777dbad64a838be75204aa5252be0e065c01b0337e298537e0a64d74`  
		Last Modified: Tue, 11 Aug 2026 20:17:37 GMT  
		Size: 1.1 KB (1076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb05bd4e4b15e491e081fe625fe8b76e76205f895d0671cff4c92abb8977c20a`  
		Last Modified: Tue, 11 Aug 2026 20:17:37 GMT  
		Size: 300.4 KB (300362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4123fc6729583fd50ffbe7b11b927c375c41ffe4565bdf77f7e1276adcd6cb18`  
		Last Modified: Tue, 11 Aug 2026 20:17:37 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7055523157509534626e6ca549fd1091db62a45df6123de43f011a1605263c05`  
		Last Modified: Tue, 11 Aug 2026 20:18:48 GMT  
		Size: 921.3 MB (921339022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8484b10723e5cdb7533522f7179e483c577876c599d3cfc7554a249080466bc6`  
		Last Modified: Tue, 11 Aug 2026 20:17:35 GMT  
		Size: 87.5 KB (87537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143efcd2b437ab4cfd4a9dbd5343d0f9d6493cba40d87b5e84a3922205dbef40`  
		Last Modified: Tue, 11 Aug 2026 20:17:36 GMT  
		Size: 1.1 KB (1082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a27cf8f3146b6b2a36d6d5bf7fc826708d302531ac4c839c60ab82cc2ee730c`  
		Last Modified: Tue, 11 Aug 2026 20:17:35 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57b809cc945405c2021de9b81fbe0de01b0148bb95eee18fc0d59dd1b7f361d`  
		Last Modified: Tue, 11 Aug 2026 20:17:35 GMT  
		Size: 1.1 KB (1075 bytes)  
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
$ docker pull mongo@sha256:c36c8226ba8dd1a5ea85b835f51111f305a057a175dc2dacfda842e97629c038
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `mongo:8.3.8-windowsservercore` - windows version 10.0.26100.33158; amd64

```console
$ docker pull mongo@sha256:6002091593dfe45170718bc7147d409e59c082d237edbe3bb7163117940b29f3
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3277553584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca043f3ff8647ac060ca0f4f0c8f7d24f6527abeee6d24ed7b08a37064c01b88`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Tue, 11 Aug 2026 18:33:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 11 Aug 2026 18:33:33 GMT
ENV MONGO_VERSION=8.3.8
# Tue, 11 Aug 2026 18:33:34 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.3.8-signed.msi
# Tue, 11 Aug 2026 18:33:35 GMT
ENV MONGO_DOWNLOAD_SHA256=d938c6dbc75f9ccdd0880ef91612364ba5f3c08f3640b4ee28a2cd95d4c99861
# Tue, 11 Aug 2026 18:36:54 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 11 Aug 2026 18:36:55 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 18:36:56 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 18:36:56 GMT
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
	-	`sha256:e2b07c0ef28ff6e03cd05ebc2217995d5a76df5794d03b88c9137337573c377a`  
		Last Modified: Tue, 11 Aug 2026 18:37:06 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1374f542eb5ffd2ad93ebcfabd18115fcb87e862faa85b16b2fb880579408bc7`  
		Last Modified: Tue, 11 Aug 2026 18:37:06 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76273252aaf0bfbab11dc23bea7e7bb62b53de2acea376a0ef55f18aa7a7c206`  
		Last Modified: Tue, 11 Aug 2026 18:37:06 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6842876e86908853a8d60fa0b97bec632f5281f0d918ea90e86f795ed2fedc2c`  
		Last Modified: Tue, 11 Aug 2026 18:37:04 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de128c3734758356c213316737c82e5e06ae9c2cafea4d46db8080707ebcc699`  
		Last Modified: Tue, 11 Aug 2026 18:38:20 GMT  
		Size: 922.5 MB (922536270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e48ed53457d1e5533b044077a9124f5c3b46b13fe3316fe0eed352266f813658`  
		Last Modified: Tue, 11 Aug 2026 18:37:04 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65804c99c6aa62e0925011bcd2df0045ac111f48c8a71bffbd39f28a7838751`  
		Last Modified: Tue, 11 Aug 2026 18:37:04 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7e3fd100c028c6e3ceb45cdc8e5240ae013b8d96af2ea9549a5a94ae406314`  
		Last Modified: Tue, 11 Aug 2026 18:37:04 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:8.3.8-windowsservercore` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:ccd5b15d3281429354eee7797f917b8aa6a34811f554b4772df51d33adee19c5
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 GB (3080204576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad19d02b41cce4411e9fd779fac9248165b5f79371a95327d01e4ebffe857cb3`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Tue, 11 Aug 2026 18:52:56 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 11 Aug 2026 18:52:59 GMT
ENV MONGO_VERSION=8.3.8
# Tue, 11 Aug 2026 18:53:00 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.3.8-signed.msi
# Tue, 11 Aug 2026 18:53:02 GMT
ENV MONGO_DOWNLOAD_SHA256=d938c6dbc75f9ccdd0880ef91612364ba5f3c08f3640b4ee28a2cd95d4c99861
# Tue, 11 Aug 2026 18:58:16 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 11 Aug 2026 18:58:17 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 18:58:18 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 18:58:18 GMT
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
	-	`sha256:f7201a85154c98cb8bd186d77bc1d3f2cca96eb76c61b83f86da43e30a16085d`  
		Last Modified: Tue, 11 Aug 2026 18:58:33 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9545e86c6ffefbd96a33697de88508f6141fd391a572a7cb5a8d15ce3eff95db`  
		Last Modified: Tue, 11 Aug 2026 18:58:33 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1f149478d44a700937ba7ef9a9e6d257c57a95c6199edbe7872b84ffc582e40`  
		Last Modified: Tue, 11 Aug 2026 18:58:32 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76137d16f0a661f0229be6841e2af9581f35bf8fe88fc852044f3512cbad2d3e`  
		Last Modified: Tue, 11 Aug 2026 18:58:31 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a255bbc8478847a111302e95c44ac90960ab3122a450ca6cc54d5ec09fc65c8d`  
		Last Modified: Tue, 11 Aug 2026 18:59:41 GMT  
		Size: 922.6 MB (922642279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d8c3b686d6520fac69adb2bc478d6f374463dd6db72bf16b8e09072b05e362`  
		Last Modified: Tue, 11 Aug 2026 18:58:31 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37410f0eb08ac6d5be2a9d2eb5651441f13fcf88b7246787c00dde5f4249fa5a`  
		Last Modified: Tue, 11 Aug 2026 18:58:31 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20356e3874e7da6b35ae6d0504e7cd1cc14ac9b96a023cf354dbb297c0687ab7`  
		Last Modified: Tue, 11 Aug 2026 18:58:31 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.3.8-windowsservercore-ltsc2022`

```console
$ docker pull mongo@sha256:f463b2a227bc83a38018de145a8bbdedea3bdca47fd21a8647cce66c5dac0b2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `mongo:8.3.8-windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull mongo@sha256:ccd5b15d3281429354eee7797f917b8aa6a34811f554b4772df51d33adee19c5
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 GB (3080204576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad19d02b41cce4411e9fd779fac9248165b5f79371a95327d01e4ebffe857cb3`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Tue, 11 Aug 2026 18:52:56 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 11 Aug 2026 18:52:59 GMT
ENV MONGO_VERSION=8.3.8
# Tue, 11 Aug 2026 18:53:00 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.3.8-signed.msi
# Tue, 11 Aug 2026 18:53:02 GMT
ENV MONGO_DOWNLOAD_SHA256=d938c6dbc75f9ccdd0880ef91612364ba5f3c08f3640b4ee28a2cd95d4c99861
# Tue, 11 Aug 2026 18:58:16 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 11 Aug 2026 18:58:17 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 18:58:18 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 18:58:18 GMT
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
	-	`sha256:f7201a85154c98cb8bd186d77bc1d3f2cca96eb76c61b83f86da43e30a16085d`  
		Last Modified: Tue, 11 Aug 2026 18:58:33 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9545e86c6ffefbd96a33697de88508f6141fd391a572a7cb5a8d15ce3eff95db`  
		Last Modified: Tue, 11 Aug 2026 18:58:33 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1f149478d44a700937ba7ef9a9e6d257c57a95c6199edbe7872b84ffc582e40`  
		Last Modified: Tue, 11 Aug 2026 18:58:32 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76137d16f0a661f0229be6841e2af9581f35bf8fe88fc852044f3512cbad2d3e`  
		Last Modified: Tue, 11 Aug 2026 18:58:31 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a255bbc8478847a111302e95c44ac90960ab3122a450ca6cc54d5ec09fc65c8d`  
		Last Modified: Tue, 11 Aug 2026 18:59:41 GMT  
		Size: 922.6 MB (922642279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d8c3b686d6520fac69adb2bc478d6f374463dd6db72bf16b8e09072b05e362`  
		Last Modified: Tue, 11 Aug 2026 18:58:31 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37410f0eb08ac6d5be2a9d2eb5651441f13fcf88b7246787c00dde5f4249fa5a`  
		Last Modified: Tue, 11 Aug 2026 18:58:31 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20356e3874e7da6b35ae6d0504e7cd1cc14ac9b96a023cf354dbb297c0687ab7`  
		Last Modified: Tue, 11 Aug 2026 18:58:31 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:8.3.8-windowsservercore-ltsc2025`

```console
$ docker pull mongo@sha256:22ddcd3b7f1727f72ff3d492bfbd9af99b30f7008d411086d0c438a2c4ef227a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `mongo:8.3.8-windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull mongo@sha256:6002091593dfe45170718bc7147d409e59c082d237edbe3bb7163117940b29f3
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3277553584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca043f3ff8647ac060ca0f4f0c8f7d24f6527abeee6d24ed7b08a37064c01b88`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Tue, 11 Aug 2026 18:33:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 11 Aug 2026 18:33:33 GMT
ENV MONGO_VERSION=8.3.8
# Tue, 11 Aug 2026 18:33:34 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.3.8-signed.msi
# Tue, 11 Aug 2026 18:33:35 GMT
ENV MONGO_DOWNLOAD_SHA256=d938c6dbc75f9ccdd0880ef91612364ba5f3c08f3640b4ee28a2cd95d4c99861
# Tue, 11 Aug 2026 18:36:54 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 11 Aug 2026 18:36:55 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 11 Aug 2026 18:36:56 GMT
EXPOSE 27017
# Tue, 11 Aug 2026 18:36:56 GMT
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
	-	`sha256:e2b07c0ef28ff6e03cd05ebc2217995d5a76df5794d03b88c9137337573c377a`  
		Last Modified: Tue, 11 Aug 2026 18:37:06 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1374f542eb5ffd2ad93ebcfabd18115fcb87e862faa85b16b2fb880579408bc7`  
		Last Modified: Tue, 11 Aug 2026 18:37:06 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76273252aaf0bfbab11dc23bea7e7bb62b53de2acea376a0ef55f18aa7a7c206`  
		Last Modified: Tue, 11 Aug 2026 18:37:06 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6842876e86908853a8d60fa0b97bec632f5281f0d918ea90e86f795ed2fedc2c`  
		Last Modified: Tue, 11 Aug 2026 18:37:04 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de128c3734758356c213316737c82e5e06ae9c2cafea4d46db8080707ebcc699`  
		Last Modified: Tue, 11 Aug 2026 18:38:20 GMT  
		Size: 922.5 MB (922536270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e48ed53457d1e5533b044077a9124f5c3b46b13fe3316fe0eed352266f813658`  
		Last Modified: Tue, 11 Aug 2026 18:37:04 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65804c99c6aa62e0925011bcd2df0045ac111f48c8a71bffbd39f28a7838751`  
		Last Modified: Tue, 11 Aug 2026 18:37:04 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7e3fd100c028c6e3ceb45cdc8e5240ae013b8d96af2ea9549a5a94ae406314`  
		Last Modified: Tue, 11 Aug 2026 18:37:04 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
