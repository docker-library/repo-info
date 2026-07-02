## `mongo:latest`

```console
$ docker pull mongo@sha256:b8806ee8207318a30316eca72257da4c146025a80fdcdb4c597e596af9233ee3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	windows version 10.0.26100.32995; amd64
	-	windows version 10.0.20348.5256; amd64

### `mongo:latest` - linux; amd64

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

### `mongo:latest` - unknown; unknown

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

### `mongo:latest` - linux; arm64 variant v8

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

### `mongo:latest` - unknown; unknown

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

### `mongo:latest` - windows version 10.0.26100.32995; amd64

```console
$ docker pull mongo@sha256:faab9c4d30f9de2aa782484b081fbaa5fd55322eb7801498cb2021ad69bf0261
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 GB (3096999304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58edcb477813a39ebcdfc30d1aa7ed732d90191a5385ba7e518a2f01e348331c`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 07 Jun 2026 07:36:39 GMT
RUN Install update 10.0.26100.32995
# Fri, 12 Jun 2026 19:14:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Jun 2026 19:14:33 GMT
ENV MONGO_VERSION=8.2.11
# Fri, 12 Jun 2026 19:14:35 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.2.11-signed.msi
# Fri, 12 Jun 2026 19:14:35 GMT
ENV MONGO_DOWNLOAD_SHA256=564477a3abee2720e78714dd6d2d9757a2d8e5cf24ecd6665cb788be95626c36
# Fri, 12 Jun 2026 19:17:18 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Jun 2026 19:17:19 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Jun 2026 19:17:20 GMT
EXPOSE 27017
# Fri, 12 Jun 2026 19:17:21 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee71d57b2226db82d002abc39a97b7dd144f007db435566364a0285bf115b83`  
		Last Modified: Tue, 09 Jun 2026 18:08:12 GMT  
		Size: 756.1 MB (756083682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef6d3ff2a6a5e2c23962ee1997ba7615305410626743a9be3a64d6d4bd7e583`  
		Last Modified: Fri, 12 Jun 2026 19:17:36 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f7b0b755f344ddc57d9c86cad732456f3ee5269172e76066e5fe7dd48d1bca`  
		Last Modified: Fri, 12 Jun 2026 19:17:36 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab6dcc46ea2eb51fd00d6faf99d2bb3eac1f745f4c9969b3bc5609202e95fcc`  
		Last Modified: Fri, 12 Jun 2026 19:17:36 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d606088cc892b0d406c069dca5df0e87a11f9dce86db0fe500956874fb937675`  
		Last Modified: Fri, 12 Jun 2026 19:17:34 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78154ae0752e563c836607c3ca6b441050065819d3762bcaea3537157c7fd42f`  
		Last Modified: Fri, 12 Jun 2026 19:18:39 GMT  
		Size: 817.8 MB (817847381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8676624d09f3cb8e0bb315e0df9ad371ba1c07a1a8d55f22aa9787cb72e23060`  
		Last Modified: Fri, 12 Jun 2026 19:17:34 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a063c95eb27ec4d3f11e1276d1f49d67826cb25c6762b737fd03157b044a0ecb`  
		Last Modified: Fri, 12 Jun 2026 19:17:34 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cba295ddcc9e5cdd9725853215bdbbd6503b9471e7d9d2da73ad3474701f696c`  
		Last Modified: Fri, 12 Jun 2026 19:17:34 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:latest` - windows version 10.0.20348.5256; amd64

```console
$ docker pull mongo@sha256:a2aba6cdaf6f88889ffc2401cbbb9ecc93b01f3d074b7c054986856114c5903b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 GB (2950137122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5a009c8862931a2607536940d46a59fe97f49693f6d5b12b0211c85b05a852f`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 07 Jun 2026 06:43:23 GMT
RUN Install update 10.0.20348.5256
# Fri, 12 Jun 2026 19:14:56 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Jun 2026 19:14:59 GMT
ENV MONGO_VERSION=8.2.11
# Fri, 12 Jun 2026 19:15:00 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.2.11-signed.msi
# Fri, 12 Jun 2026 19:15:01 GMT
ENV MONGO_DOWNLOAD_SHA256=564477a3abee2720e78714dd6d2d9757a2d8e5cf24ecd6665cb788be95626c36
# Fri, 12 Jun 2026 19:17:55 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 12 Jun 2026 19:17:56 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 12 Jun 2026 19:17:56 GMT
EXPOSE 27017
# Fri, 12 Jun 2026 19:17:56 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6897a04901ec162be0eabd7eb636b5ac50d6e37c880f1db618610f2d777b1ce6`  
		Last Modified: Tue, 09 Jun 2026 18:12:58 GMT  
		Size: 643.1 MB (643106423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52fec8226f0d1c7493bba44ba0fee194ad800249d4d4f21d0e26ac06fef2fcc7`  
		Last Modified: Fri, 12 Jun 2026 19:18:03 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44343a0283267e872253da58810b724a8458284c7901b76ed0665788f392e49a`  
		Last Modified: Fri, 12 Jun 2026 19:18:03 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd066a69638c5e1eaf5c252c6334bca6ce42e1d94fd09307482a89f232e36cf`  
		Last Modified: Fri, 12 Jun 2026 19:18:03 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:738dfc2bc709d2346a04baf7da918ab82135f14c926d69deb76b472692fd4e56`  
		Last Modified: Fri, 12 Jun 2026 19:18:01 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f17eb2eb8806f34be1943286035595996748767d2a6892c1e3599505db1f88b7`  
		Last Modified: Fri, 12 Jun 2026 19:19:18 GMT  
		Size: 818.0 MB (818002369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00608cdafe6f4565621dda9f4f4c07aa5243b8ee846d6e20e1976a3348465ea7`  
		Last Modified: Fri, 12 Jun 2026 19:18:01 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eea30a18b0bf54040ad2da6711acaa2076ad29bf91d4d92d2131d0c6a10fd1c`  
		Last Modified: Fri, 12 Jun 2026 19:18:01 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55cb2e8198a0034686ed25dd2774137e7a6295f2953b475519604d787ff59585`  
		Last Modified: Fri, 12 Jun 2026 19:18:01 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
