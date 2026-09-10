## `mongo:latest`

```console
$ docker pull mongo@sha256:81a1c8842a09589fc8d5f285266f3340bf4abdf66700ba22988f14cc9b2b3118
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `mongo:latest` - linux; amd64

```console
$ docker pull mongo@sha256:454138dc673c1706fc51a4d242dfc087fdfbe83e01ee7fd26052290bfe0d57f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.8 MB (299827011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70f32e4d286cc1f63ac4c2826536ed06ac417b4581fd6deaba3b094679b6f7cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:33:23 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Wed, 09 Sep 2026 02:33:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:35:21 GMT
ENV GOSU_VERSION=1.19
# Wed, 09 Sep 2026 02:35:21 GMT
ENV JSYAML_VERSION=3.13.1
# Wed, 09 Sep 2026 02:35:21 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Wed, 09 Sep 2026 02:35:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-8.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor '4B0752C1BCA238C0B4EE14DC41DE058A4E7DCA05' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 09 Sep 2026 02:35:21 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 02:35:21 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 09 Sep 2026 02:35:21 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 09 Sep 2026 02:35:21 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 09 Sep 2026 02:35:21 GMT
ENV MONGO_MAJOR=8.3
# Wed, 09 Sep 2026 02:35:21 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu noble/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Wed, 09 Sep 2026 02:35:21 GMT
ENV MONGO_VERSION=8.3.9
# Wed, 09 Sep 2026 02:35:37 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Wed, 09 Sep 2026 02:35:37 GMT
VOLUME [/data/db /data/configdb]
# Wed, 09 Sep 2026 02:35:37 GMT
ENV HOME=/data/db
# Wed, 09 Sep 2026 02:35:37 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Wed, 09 Sep 2026 02:35:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 09 Sep 2026 02:35:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Sep 2026 02:35:37 GMT
EXPOSE map[27017/tcp:{}]
# Wed, 09 Sep 2026 02:35:37 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22162ee7e0f4a8bbfe3188578cb236baeba7e6483f35874bbbf195dbf5bfc52b`  
		Last Modified: Wed, 09 Sep 2026 02:36:08 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4fa99b53d50de6c1c960de26b372358fa156cd05d5e7c1d70303db769917fa0`  
		Last Modified: Wed, 09 Sep 2026 02:36:08 GMT  
		Size: 1.5 MB (1470844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eab9745ab22ab55ff2983f957817b628711d2edc735e412f16bf7b175a5ffb07`  
		Last Modified: Wed, 09 Sep 2026 02:36:08 GMT  
		Size: 934.2 KB (934195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d28c396e819a74bb1be80cb8b10e0518e0c2328ffe02f2b8c97385400d8cbf0`  
		Last Modified: Wed, 09 Sep 2026 02:36:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:303aa69e7f650409c997724991029aaf9e72c190b9feb675920d247737535358`  
		Last Modified: Wed, 09 Sep 2026 02:36:09 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f85889cc36deaef7a4cf5c33c2a447052ff45669b8bed0a8f70a611000abd6b`  
		Last Modified: Wed, 09 Sep 2026 02:36:15 GMT  
		Size: 267.7 MB (267652118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86f574a611a0ad3211bffe343b8fedaef9d1b2fa23ae559353334e48a5ebef2d`  
		Last Modified: Wed, 09 Sep 2026 02:36:10 GMT  
		Size: 5.0 KB (5005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:latest` - unknown; unknown

```console
$ docker pull mongo@sha256:3d982922ef50508df920a88af48204cf091bea7e41eed2cbd42b0c7d02543d41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2675556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b2808f94de4f39f288a9a95e359e56689cda38e44ed9992646121a9fd8f7155`

```dockerfile
```

-	Layers:
	-	`sha256:94efa6af4a6d5df966ad5df83b411ffc0761f0b75e900adb39993a14afb2f54a`  
		Last Modified: Wed, 09 Sep 2026 02:36:08 GMT  
		Size: 2.6 MB (2646820 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca403ee5cf79fa0f179ab8b8632ab36b5ee9c1e39c15750ddc18ed54ac685e83`  
		Last Modified: Wed, 09 Sep 2026 02:36:08 GMT  
		Size: 28.7 KB (28736 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:latest` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:0b096540cee7ec1404a09ef2da1d8efc34bc5654212ba95c0b68f9291838e0a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.9 MB (286880810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68e148b0614fb75da8afcb65409e3bddef2b1c4a6581c29e9d695f806fa1f14f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:29:55 GMT
RUN set -eux; 	groupadd --gid 999 --system mongodb; 	useradd --uid 999 --system --gid mongodb --home-dir /data/db mongodb; 	mkdir -p /data/db /data/configdb; 	chown -R mongodb:mongodb /data/db /data/configdb # buildkit
# Wed, 09 Sep 2026 02:30:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:30:14 GMT
ENV GOSU_VERSION=1.19
# Wed, 09 Sep 2026 02:30:14 GMT
ENV JSYAML_VERSION=3.13.1
# Wed, 09 Sep 2026 02:30:14 GMT
ENV JSYAML_CHECKSUM=662e32319bdd378e91f67578e56a34954b0a2e33aca11d70ab9f4826af24b941
# Wed, 09 Sep 2026 02:30:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		mkdir -p /opt/js-yaml/; 	wget -O /opt/js-yaml/js-yaml.tgz https://registry.npmjs.org/js-yaml/-/js-yaml-${JSYAML_VERSION}.tgz; 	echo "$JSYAML_CHECKSUM */opt/js-yaml/js-yaml.tgz" | sha256sum -c -; 	tar -xz --strip-components=1 -f /opt/js-yaml/js-yaml.tgz -C /opt/js-yaml package/dist/js-yaml.js package/package.json; 	rm /opt/js-yaml/js-yaml.tgz; 	ln -s /opt/js-yaml/dist/js-yaml.js /js-yaml.js; 		export GNUPGHOME="$(mktemp -d)"; 	wget -O KEYS 'https://pgp.mongodb.com/server-8.0.asc'; 	gpg --batch --import KEYS; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export --armor '4B0752C1BCA238C0B4EE14DC41DE058A4E7DCA05' > /etc/apt/keyrings/mongodb.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" KEYS; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 09 Sep 2026 02:30:14 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 02:30:14 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 09 Sep 2026 02:30:14 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 09 Sep 2026 02:30:14 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 09 Sep 2026 02:30:14 GMT
ENV MONGO_MAJOR=8.3
# Wed, 09 Sep 2026 02:30:14 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN echo "deb [ signed-by=/etc/apt/keyrings/mongodb.asc ] http://$MONGO_REPO/apt/ubuntu noble/$MONGO_PACKAGE/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/$MONGO_PACKAGE.list" # buildkit
# Wed, 09 Sep 2026 02:30:14 GMT
ENV MONGO_VERSION=8.3.9
# Wed, 09 Sep 2026 02:30:29 GMT
# ARGS: MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
RUN set -x 	&& export DEBIAN_FRONTEND=noninteractive 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 		${MONGO_PACKAGE}-database=$MONGO_VERSION 		${MONGO_PACKAGE}-database-tools-extra=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig # buildkit
# Wed, 09 Sep 2026 02:30:29 GMT
VOLUME [/data/db /data/configdb]
# Wed, 09 Sep 2026 02:30:29 GMT
ENV HOME=/data/db
# Wed, 09 Sep 2026 02:30:29 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Wed, 09 Sep 2026 02:30:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 09 Sep 2026 02:30:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Sep 2026 02:30:29 GMT
EXPOSE map[27017/tcp:{}]
# Wed, 09 Sep 2026 02:30:29 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae311fb0b28591f00f7364d5a088c378762e752e924cd9b5a11850d8131db574`  
		Last Modified: Wed, 09 Sep 2026 02:30:59 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc23361d1878716c8593e183d7b5393016ce8a6257d9b49aabdb17fafec7e30a`  
		Last Modified: Wed, 09 Sep 2026 02:31:00 GMT  
		Size: 1.5 MB (1451933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb1fdcd5213f9784b10e6d962d76e60d9f171e16d5a26e6c07e18ffd5e22f3d0`  
		Last Modified: Wed, 09 Sep 2026 02:31:00 GMT  
		Size: 886.5 KB (886501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b8ad59537cfaa39aa132d41d620d60d772ef7ae825ad6accbd82bceea8879f5`  
		Last Modified: Wed, 09 Sep 2026 02:31:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f403d14f259c77ad43830b712a3bfd6ab9b75bccb3840e90d451aad7ee4fe4a`  
		Last Modified: Wed, 09 Sep 2026 02:31:00 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9952e002d57099d17d0d8e48bdef29e7afb5829da057be79c35c983ab93dec09`  
		Last Modified: Wed, 09 Sep 2026 02:31:06 GMT  
		Size: 255.6 MB (255595768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49946cbc5ba853f8e2d125aa2f865347467d0b95f25ff6a172cf28572f8c248b`  
		Last Modified: Wed, 09 Sep 2026 02:31:01 GMT  
		Size: 5.0 KB (5002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mongo:latest` - unknown; unknown

```console
$ docker pull mongo@sha256:89c8855ee8e6976940fdaab9b04832a3c1361d16796ed8cb1046a39a6c742008
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2676917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af579861464e0f1c06a4c91b1df8e6f638f419ea019b7ee1382965e61d8dbf4b`

```dockerfile
```

-	Layers:
	-	`sha256:c53628a51b268e566df0e08c298ec472168f40000522e7a1e63bcf8294ada60b`  
		Last Modified: Wed, 09 Sep 2026 02:31:00 GMT  
		Size: 2.6 MB (2647956 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3e48054dedea2ad9fa271277ba4ea08798d4164fc2108c7dfa861a84be1d9183`  
		Last Modified: Wed, 09 Sep 2026 02:30:59 GMT  
		Size: 29.0 KB (28961 bytes)  
		MIME: application/vnd.in-toto+json

### `mongo:latest` - windows version 10.0.26100.33438; amd64

```console
$ docker pull mongo@sha256:b2938d700e08f22809db0c040d05750e9c4d65bc0a33501a16df581ced3f87dc
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 GB (3380964051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36580158c4cd6861e5f66a1ab8edf31ac55ef15ad71d0367a5af7b6afbf6357f`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Wed, 09 Sep 2026 22:46:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 09 Sep 2026 22:46:03 GMT
ENV MONGO_VERSION=8.3.9
# Wed, 09 Sep 2026 22:46:04 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.3.9-signed.msi
# Wed, 09 Sep 2026 22:46:05 GMT
ENV MONGO_DOWNLOAD_SHA256=349ac0c10d204d014c97bb2ae03de61b8955f69d6c81f01f4a91f3823663589b
# Wed, 09 Sep 2026 22:48:09 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 09 Sep 2026 22:48:10 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 09 Sep 2026 22:48:10 GMT
EXPOSE 27017
# Wed, 09 Sep 2026 22:48:11 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ad760a8a0dac5abb352847ef76295f82b76df46372259a4df2102ad3adf78b`  
		Last Modified: Tue, 08 Sep 2026 17:45:23 GMT  
		Size: 934.6 MB (934570301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df388835cc36f9a773575ca419789f7cd987bdcfcbbd5d9832f8c0d63a6c31fc`  
		Last Modified: Wed, 09 Sep 2026 22:48:20 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf4632903b40eb906c034d4d017d868f24eb0581b2ead6927cb21f7d5d9429a4`  
		Last Modified: Wed, 09 Sep 2026 22:48:20 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:355a056e0156f34c44fdc93ebc601a3f6288b04d3c73b4379a9a9bac8260d870`  
		Last Modified: Wed, 09 Sep 2026 22:48:20 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9a9160cba7816390ba601b8127859467a1bab61aff054aa26b6e4a7ef3219bd`  
		Last Modified: Wed, 09 Sep 2026 22:48:19 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9cf8846f6d151d395e704ab79da806a99159ae00589dde3b95704e35559c867`  
		Last Modified: Wed, 09 Sep 2026 22:49:25 GMT  
		Size: 923.3 MB (923325390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ef1458fd81e77fd6fb8c1b4eb2a4daf2fd3de5725dafcee86f711d616dd160`  
		Last Modified: Wed, 09 Sep 2026 22:48:19 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e07cf2582897c72337d033d555de961eab3a6d468f7172687efcdf73f3314d`  
		Last Modified: Wed, 09 Sep 2026 22:48:19 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94dd78e77015dcd444477072a5381d91b00f8ab73c92865bb4a9c37b10f8905b`  
		Last Modified: Wed, 09 Sep 2026 22:48:19 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:latest` - windows version 10.0.20348.5622; amd64

```console
$ docker pull mongo@sha256:57062aac2389c789a97011d3ebc383df82ee5b24c8a9a0d61010ac222492f6d1
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 GB (3142795910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f31569a51db1ec3937e0279d10d6aae07237cd482529ca53c1495f20a74354fd`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 09 Sep 2026 22:48:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 09 Sep 2026 22:48:25 GMT
ENV MONGO_VERSION=8.3.9
# Wed, 09 Sep 2026 22:48:25 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.3.9-signed.msi
# Wed, 09 Sep 2026 22:48:26 GMT
ENV MONGO_DOWNLOAD_SHA256=349ac0c10d204d014c97bb2ae03de61b8955f69d6c81f01f4a91f3823663589b
# Wed, 09 Sep 2026 22:51:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 09 Sep 2026 22:51:03 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 09 Sep 2026 22:51:04 GMT
EXPOSE 27017
# Wed, 09 Sep 2026 22:51:04 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59dcba8d1645e77be693b8cc5bf0b5f09544976e199ac8abf658d25d2bdd328b`  
		Last Modified: Wed, 09 Sep 2026 22:51:23 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e8e4216e0c6155dd07b29ef930d0c0e0a85f01447f56f9b9dbcf0797b625c0`  
		Last Modified: Wed, 09 Sep 2026 22:51:23 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ffa118fa3addd0d9e6388f0906315003c54efb5a6d16b68cf3ea302420cdb01`  
		Last Modified: Wed, 09 Sep 2026 22:51:23 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c224c354e9f41c1caed9aa139f7670a3086b8d99a1c58644118899cca8fe9c4b`  
		Last Modified: Wed, 09 Sep 2026 22:51:21 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91c3a0f70a67de34a4563ac987803e83b0a3ce104ed17a22384c0c945a3b259`  
		Last Modified: Wed, 09 Sep 2026 22:52:36 GMT  
		Size: 923.3 MB (923298060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afe42205f82269828b4eae326b695988bcc17ace35dfbc345e09fe02e255de90`  
		Last Modified: Wed, 09 Sep 2026 22:51:21 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7af23900c877f09f780fe1e654bfd1512105bf38228871c71a7d1c28864de95e`  
		Last Modified: Wed, 09 Sep 2026 22:51:21 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13864310e3b86c8ba98ac635fc3e5fec6ac7e89f3e09c6eafe92fee7cb6f5d69`  
		Last Modified: Wed, 09 Sep 2026 22:51:21 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
