## `mongo:7-jammy`

```console
$ docker pull mongo@sha256:e0da75c955723fb6918111a60e3249079e5ea082c70038dcbc2f5fa32e29ab8c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mongo:7-jammy` - linux; amd64

```console
$ docker pull mongo@sha256:b0a2eaadfed52aa4dab7b84d324f8d7ca3c6989793695aa9e05c81fe282642b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.4 MB (301351334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11426daab9bc9efd469d663da0bd9cf10320e42cb25058f7219a6f513aeaae80`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:24:23 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Fri, 20 Nov 2026 03:24:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:24:38 GMT
ENV GOSU_VERSION=1.19
# Fri, 20 Nov 2026 03:24:38 GMT
ENV JSYAML_VERSION=3.13.1
# Fri, 20 Nov 2026 03:24:38 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Fri, 20 Nov 2026 03:24:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-7.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor 'E58830201F7DD82CD808AA84160D26BB1785BA38' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 20 Nov 2026 03:24:38 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:24:38 GMT
ARG MONGO_PACKAGE=mongodb-org
# Fri, 20 Nov 2026 03:24:38 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 20 Nov 2026 03:24:38 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Fri, 20 Nov 2026 03:24:38 GMT
ENV MONGO_MAJOR=7.0
# Fri, 20 Nov 2026 03:24:38 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu jammy/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Fri, 20 Nov 2026 03:24:38 GMT
ENV MONGO_VERSION=7.0.48
# Fri, 20 Nov 2026 03:24:57 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Fri, 20 Nov 2026 03:24:57 GMT
VOLUME [/data/db /data/configdb]
# Fri, 20 Nov 2026 03:24:57 GMT
ENV HOME=/data/db
# Fri, 20 Nov 2026 03:24:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 20 Nov 2026 03:24:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Nov 2026 03:24:57 GMT
EXPOSE map[27017/tcp:{}]
# Fri, 20 Nov 2026 03:24:57 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ea409122e19804d626fd3543109448561a40e2105af29dafa1264b3e4dd1208`  
		Last Modified: Fri, 20 Nov 2026 03:25:29 GMT  
		Size: 1.8 KB (1779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3315360f1e3979358c78e61f15b027dc264521e6402743d2ae5326cd54a1c935`  
		Last Modified: Fri, 20 Nov 2026 03:25:29 GMT  
		Size: 1.5 MB (1470304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4112fed2e0faf02a4b8ca0188d0820b739baf7d7df6c8aebdc25c7bbd080b0f5`  
		Last Modified: Fri, 20 Nov 2026 03:25:29 GMT  
		Size: 898.8 KB (898795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d73fe992c92674fd1ba855c702d385c9f32ce98d2b6e69c67e643cb774adbbdb`  
		Last Modified: Fri, 20 Nov 2026 03:25:29 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:524da04abc093b081ab26931b4b832fd2562cf5ce7d2a2e1387c82c2c835113d`  
		Last Modified: Fri, 20 Nov 2026 03:25:30 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64a5be57bd8f43cbfc540cb07a15e59d3d1ac280883155bf1aeaf32e28094601`  
		Last Modified: Fri, 20 Nov 2026 03:25:36 GMT  
		Size: 268.9 MB (268905258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caf983e1c3744da9cfa8c8f75b43af2ab78f3fa5ef76c5dc5df595d74f8adedd`  
		Last Modified: Fri, 20 Nov 2026 03:25:30 GMT  
		Size: 5.0 KB (5003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:7-jammy` - unknown; unknown

```console
$ docker pull mongo@sha256:ea5a87e067404b51bef57e76233e2c13b0c58cc6552430fb2bc4c3576e12b60e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3227116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbab37e2c162d2630a68bdecf061c6d83d2410e17667251b7d7d03a31ee127ce`

```dockerfile
```

-	Layers:
	-	`sha256:2935ee5bd93abc2ec14458e4d4c33f3123f69449083da6a67466b0dfb25c71c9`  
		Last Modified: Fri, 20 Nov 2026 03:25:29 GMT  
		Size: 3.2 MB (3199229 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3cf077bfadf04ec309bc99c01460ba90ed1952289f7cee53e94ed6fab38523e`  
		Last Modified: Fri, 20 Nov 2026 03:25:29 GMT  
		Size: 27.9 KB (27887 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:7-jammy` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:73833ef4e14bb6838e0225c081ce83c38f6d9e604fc608929010ccd54a0a0818
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.7 MB (287681687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:229821a627e24b0707b316a8cf78d90f95fe071a2237739b4b06c5498977213b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:24:58 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Fri, 20 Nov 2026 03:25:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:25:16 GMT
ENV GOSU_VERSION=1.19
# Fri, 20 Nov 2026 03:25:16 GMT
ENV JSYAML_VERSION=3.13.1
# Fri, 20 Nov 2026 03:25:16 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Fri, 20 Nov 2026 03:25:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-7.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor 'E58830201F7DD82CD808AA84160D26BB1785BA38' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 20 Nov 2026 03:25:17 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:25:17 GMT
ARG MONGO_PACKAGE=mongodb-org
# Fri, 20 Nov 2026 03:25:17 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 20 Nov 2026 03:25:17 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Fri, 20 Nov 2026 03:25:17 GMT
ENV MONGO_MAJOR=7.0
# Fri, 20 Nov 2026 03:25:17 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu jammy/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Fri, 20 Nov 2026 03:25:17 GMT
ENV MONGO_VERSION=7.0.48
# Fri, 20 Nov 2026 03:25:36 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Fri, 20 Nov 2026 03:25:36 GMT
VOLUME [/data/db /data/configdb]
# Fri, 20 Nov 2026 03:25:36 GMT
ENV HOME=/data/db
# Fri, 20 Nov 2026 03:25:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 20 Nov 2026 03:25:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Nov 2026 03:25:36 GMT
EXPOSE map[27017/tcp:{}]
# Fri, 20 Nov 2026 03:25:36 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5ed0f66749973318586231aabfa103008e57320cf2ec4bee2b9b2716709f372`  
		Last Modified: Fri, 20 Nov 2026 03:26:07 GMT  
		Size: 1.8 KB (1782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e092b83388a9fb7f31a81a8634b24ee959fa6efd5d484d24af0bd3c753151aa2`  
		Last Modified: Fri, 20 Nov 2026 03:26:07 GMT  
		Size: 1.4 MB (1437924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77864af5d0e20d9ca4956fa46b30dd491f0071c3c8340b4d9bd1e88ab7b755b1`  
		Last Modified: Fri, 20 Nov 2026 03:26:07 GMT  
		Size: 851.2 KB (851209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df1009b622ff1d74623f985f29a41962dc64fb87121891ab4c7efa3d8d92d954`  
		Last Modified: Fri, 20 Nov 2026 03:26:07 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cd2d5ff7309fb9cc31bab88b292f88ac149c5779e6e0515ba526562c1611772`  
		Last Modified: Fri, 20 Nov 2026 03:26:08 GMT  
		Size: 265.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c6d38513c5d7358b82079136d9e8cdf6e602e33350032392c2f49c1db677c98`  
		Last Modified: Fri, 20 Nov 2026 03:26:13 GMT  
		Size: 257.4 MB (257383988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fdecea930c46d390ebaf6384e9c1aeb037454a4d842baacd66babcbf8afea83`  
		Last Modified: Fri, 20 Nov 2026 03:26:08 GMT  
		Size: 5.0 KB (5002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:7-jammy` - unknown; unknown

```console
$ docker pull mongo@sha256:61326df485e6a4dfdd2e577d3887d956dc099514434f114198eec0fb992109dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3227638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbe92ea5055ffcf8cf78d1849bcb2e43a0c4375bb29412e8759b2d9801d9d031`

```dockerfile
```

-	Layers:
	-	`sha256:7f61ac204c939e48b66b6728a10cd249b20ff951a824468e54a0dd4963fee025`  
		Last Modified: Fri, 20 Nov 2026 03:26:07 GMT  
		Size: 3.2 MB (3199548 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b56f425ba429ced640d7fb15f482d8b24397c73de8b3625fcf4f9dcfd29b3e6`  
		Last Modified: Fri, 20 Nov 2026 03:26:07 GMT  
		Size: 28.1 KB (28090 bytes)  
		MIME: application/vnd.in-toto+json
