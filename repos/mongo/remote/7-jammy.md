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
