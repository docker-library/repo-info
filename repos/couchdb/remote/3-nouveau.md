## `couchdb:3-nouveau`

```console
$ docker pull couchdb@sha256:d0f84a6cec4a21bdf4fc034cfd823864359eed8acb9635ddb4d5ea01aa384975
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3-nouveau` - linux; amd64

```console
$ docker pull couchdb@sha256:4a1d430e71db8e0cf08c8d2846f7253ea47c56f92ce1151b85837ecbf4029afb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.9 MB (150896403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d60609ccb280b731d2f846ac5c540b5f9f3efd706fac83fa1f0ac1515865402`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:43:49 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 14 Jul 2026 01:43:49 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Tue, 14 Jul 2026 01:43:56 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:44:01 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:44:04 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 14 Jul 2026 01:44:04 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 14 Jul 2026 01:44:09 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:44:10 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 14 Jul 2026 01:44:14 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends couchdb-nouveau=3.5.2.1~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Tue, 14 Jul 2026 01:44:14 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Tue, 14 Jul 2026 01:44:14 GMT
VOLUME [/opt/nouveau/data]
# Tue, 14 Jul 2026 01:44:14 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Tue, 14 Jul 2026 01:44:14 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9acd03a701941e545c1bfdab8feb50744fbd53c9c07a2190572c1bbbdf9273db`  
		Last Modified: Tue, 14 Jul 2026 01:44:28 GMT  
		Size: 1.2 KB (1183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aa3c4f050848b76a65284d3a52b4cbc3d56d5a9d8bddb41507fbad0327e8fe0`  
		Last Modified: Tue, 14 Jul 2026 01:44:28 GMT  
		Size: 7.5 MB (7492152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e509e96b68be6ff494ec724f526ec83ba94c5726fa92bbd15f2dd4ce6e44be9a`  
		Last Modified: Tue, 14 Jul 2026 01:44:30 GMT  
		Size: 70.0 MB (70032478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:276849e9ad419218294f791038086fc098429aafee91659f0f9f119ed8461ae8`  
		Last Modified: Tue, 14 Jul 2026 01:44:28 GMT  
		Size: 426.0 KB (425953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3132fe4a5a887f49b398d0a7277040b2432bd6b3133cad8136de8ab0002710aa`  
		Last Modified: Tue, 14 Jul 2026 01:44:29 GMT  
		Size: 347.4 KB (347406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82bd9732ba84f41f8afec7828961ae6ddb959fce589f2df479cd6cc5e5380240`  
		Last Modified: Tue, 14 Jul 2026 01:44:29 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:395c7ced27be0563d42177b8848122bb8ac620047366c2d88b3155ab6659dd9a`  
		Last Modified: Tue, 14 Jul 2026 01:44:30 GMT  
		Size: 42.8 MB (42815634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e1190b17b72792875f0cb9c36c3965819e6c6d6698cc368478c8370a7c5bd58`  
		Last Modified: Tue, 14 Jul 2026 01:44:30 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:0668ce3eb71e45cd7fa1117625c034f937b531c113ddbdbccf7c53ef4beb5150
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3389224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c50f77803842328f826b38acec12631daed303508dfe6720952b6ba14ebdacbb`

```dockerfile
```

-	Layers:
	-	`sha256:951ef0fddfb0e282f6b1ba51d47784360d8cd0037ff986eb428e973468416f90`  
		Last Modified: Tue, 14 Jul 2026 01:44:28 GMT  
		Size: 3.4 MB (3364709 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7fadca588fef9688e0cc3a76c5bf53a507048be960fdacdc2a441923207b13f`  
		Last Modified: Tue, 14 Jul 2026 01:44:27 GMT  
		Size: 24.5 KB (24515 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3-nouveau` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:9957bbc81d449382e165b225701afd0421380113fb2a6cc36b08011f356a0fdc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150056237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c043f2be854a62370fc2fdcb3454a9d387bbfebc4fe8298adb3543663d051e51`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:47:07 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 14 Jul 2026 01:47:07 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Tue, 14 Jul 2026 01:47:15 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:21 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:25 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 14 Jul 2026 01:47:25 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 14 Jul 2026 01:47:31 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:31 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 14 Jul 2026 01:47:36 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends couchdb-nouveau=3.5.2.1~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Tue, 14 Jul 2026 01:47:36 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Tue, 14 Jul 2026 01:47:36 GMT
VOLUME [/opt/nouveau/data]
# Tue, 14 Jul 2026 01:47:36 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Tue, 14 Jul 2026 01:47:36 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd7e08de04c177f42059309f1c47b15799d06365e7337c691910b0d6ab88bc48`  
		Last Modified: Tue, 14 Jul 2026 01:47:51 GMT  
		Size: 1.2 KB (1183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afa073a2d6732f646e6f3e751f0d36dc188682f8bd5fc60ac7e0e10014c95269`  
		Last Modified: Tue, 14 Jul 2026 01:47:52 GMT  
		Size: 7.3 MB (7261226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55cdb62af357066ed93d3a6ab4d067b35886a48c78410e3f6ef9a8276a2c9edb`  
		Last Modified: Tue, 14 Jul 2026 01:47:53 GMT  
		Size: 69.2 MB (69179616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9f8de52630d0b44383b059bbd5a48db3ce53cb9dc7deda91b464048e7f0f4e3`  
		Last Modified: Tue, 14 Jul 2026 01:47:51 GMT  
		Size: 390.2 KB (390240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78dbc9d836c60c34f5c9b500bf35709e914694325738b5975ec96167a83ab4d9`  
		Last Modified: Tue, 14 Jul 2026 01:47:52 GMT  
		Size: 347.5 KB (347453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecb6c8bc1645faacdeab60e6483429d4f5c50e80c81ee50e9b8f25054a458bfc`  
		Last Modified: Tue, 14 Jul 2026 01:47:53 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c09176c9b3fce4ad8e5d51b04d7986adb669456a239ae9d2261f24c2b5a04f37`  
		Last Modified: Tue, 14 Jul 2026 01:47:54 GMT  
		Size: 42.7 MB (42732123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf7c6a75dae96626555817d0be217bf851b3e7942f45153d8f5953c9823cff87`  
		Last Modified: Tue, 14 Jul 2026 01:47:54 GMT  
		Size: 416.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:51938a165072f86667108401aeb9c10e039c1c2444d65f03bf0cb60c05ecaa58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3388071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8013f1108a060b0e99d9b72211a017a47d6c57bb7b46f6a6b8879d1e9d51a4d4`

```dockerfile
```

-	Layers:
	-	`sha256:aee7abccafd292f7b901514a981164ff70993c21d93a94eac208f3ebc59f5ed4`  
		Last Modified: Tue, 14 Jul 2026 01:47:51 GMT  
		Size: 3.4 MB (3363362 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6054412a034279d49fcb70a1b2be5bee9fea2a77df72d7b17911b94413d1489`  
		Last Modified: Tue, 14 Jul 2026 01:47:51 GMT  
		Size: 24.7 KB (24709 bytes)  
		MIME: application/vnd.in-toto+json
