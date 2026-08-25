<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `couchdb`

-	[`couchdb:3`](#couchdb3)
-	[`couchdb:3-nouveau`](#couchdb3-nouveau)
-	[`couchdb:3.4`](#couchdb34)
-	[`couchdb:3.4-nouveau`](#couchdb34-nouveau)
-	[`couchdb:3.4.3`](#couchdb343)
-	[`couchdb:3.4.3-nouveau`](#couchdb343-nouveau)
-	[`couchdb:3.5`](#couchdb35)
-	[`couchdb:3.5-nouveau`](#couchdb35-nouveau)
-	[`couchdb:3.5.2`](#couchdb352)
-	[`couchdb:3.5.2-nouveau`](#couchdb352-nouveau)
-	[`couchdb:3.5.2.1`](#couchdb3521)
-	[`couchdb:3.5.2.1-nouveau`](#couchdb3521-nouveau)
-	[`couchdb:latest`](#couchdblatest)

## `couchdb:3`

```console
$ docker pull couchdb@sha256:9ea24cbd76522fe845d1c32c7fd1dcfc8a3ba73dcc4817d62f8a7f7f1dfaffe3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3` - linux; amd64

```console
$ docker pull couchdb@sha256:199ff89f9a930df6032a216570ae0169fcc36c449bb02b40fafeb6efecdb606f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.9 MB (148851534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1dc96c1aa5fb3bce81e88ea68bea50e27c01709a6296e3574579ef24263c18f`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:59 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 25 Aug 2026 00:50:59 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Tue, 25 Aug 2026 00:51:06 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:09 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 25 Aug 2026 00:51:09 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 25 Aug 2026 00:51:15 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:15 GMT
ENV COUCHDB_VERSION=3.5.2.1
# Tue, 25 Aug 2026 00:51:15 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 25 Aug 2026 00:51:29 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 25 Aug 2026 00:51:29 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Tue, 25 Aug 2026 00:51:29 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Tue, 25 Aug 2026 00:51:29 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 25 Aug 2026 00:51:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:51:29 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:51:29 GMT
VOLUME [/opt/couchdb/data]
# Tue, 25 Aug 2026 00:51:29 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Tue, 25 Aug 2026 00:51:29 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ab234e62f046177281a5513ca941cba1a426d7c892a028d5cbc94cca9eaa856`  
		Last Modified: Tue, 25 Aug 2026 00:51:42 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9084865ad728bd279b67de879f8b97ddc1b7d4719e6dd1035e9f8004cc58c6c8`  
		Last Modified: Tue, 25 Aug 2026 00:51:42 GMT  
		Size: 7.5 MB (7492122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ee552c45507c5650c37dbd137f81e202e01ee5d2ca76656b64ad2cbdae999ce`  
		Last Modified: Tue, 25 Aug 2026 00:51:42 GMT  
		Size: 417.6 KB (417591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa748742e839fbc0865a60021f97645c7918f1584de9e87915db400ed0ca4775`  
		Last Modified: Tue, 25 Aug 2026 00:51:42 GMT  
		Size: 338.6 KB (338585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1c83f2bc7d6261d80188a106728987b41aba53c110af251a2f0470238e5e4d3`  
		Last Modified: Tue, 25 Aug 2026 00:51:43 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b63ee188c3ec94b2fd403ee353b0c18bf2d3de51501e3e5911fc71c6814ce5e`  
		Last Modified: Tue, 25 Aug 2026 00:51:46 GMT  
		Size: 110.8 MB (110805142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41d739519592c76787bad9ed62ca7b92616efc1a7a02df1293d3ff2914b42b5d`  
		Last Modified: Tue, 25 Aug 2026 00:51:43 GMT  
		Size: 380.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d4686f7c3ba92beab9fd6d1cc97bad811c449d1969a0bd5b643eb9c1420ee5e`  
		Last Modified: Tue, 25 Aug 2026 00:51:43 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cbe4b92b478b8205e57c2117e89979f17b4f85b1b9051611e18f7c333103bc0`  
		Last Modified: Tue, 25 Aug 2026 00:51:44 GMT  
		Size: 2.2 KB (2229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db6f63234f947a740cbe844d575f6ca362aceef938d8aa1df4e3463e8eb2b8df`  
		Last Modified: Tue, 25 Aug 2026 00:51:44 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3` - unknown; unknown

```console
$ docker pull couchdb@sha256:b7aedfae489ec2c0942058c166cc0363420c4f0053c3a77db40017b170a9b83d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4212352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68e4297e4e3023095efb11c9e9cfe9df0b6d4a3b36fb538d8b15598dbfebfabb`

```dockerfile
```

-	Layers:
	-	`sha256:ac7ea6a2215d8e04abe2718701ff962e82907f8859ad9424cf9d267bd13d4145`  
		Last Modified: Tue, 25 Aug 2026 00:51:42 GMT  
		Size: 4.2 MB (4180677 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09148676ac7c399dee20b338c2ee4f915b86c4517accb24ff771ca18ea4de7ba`  
		Last Modified: Tue, 25 Aug 2026 00:51:42 GMT  
		Size: 31.7 KB (31675 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:e28078002aac09a753d839e929b251066fe98b3bb0660e70871728e8030452e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.6 MB (148622949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af9c0748839d2ed941c3909962e94f05a0321642684da82707e8d3904e118591`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:02 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 25 Aug 2026 00:53:02 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Tue, 25 Aug 2026 00:53:10 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:14 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 25 Aug 2026 00:53:14 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 25 Aug 2026 00:53:21 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:21 GMT
ENV COUCHDB_VERSION=3.5.2.1
# Tue, 25 Aug 2026 00:53:21 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 25 Aug 2026 00:53:35 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 25 Aug 2026 00:53:35 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Tue, 25 Aug 2026 00:53:35 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Tue, 25 Aug 2026 00:53:35 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 25 Aug 2026 00:53:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:53:35 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:53:35 GMT
VOLUME [/opt/couchdb/data]
# Tue, 25 Aug 2026 00:53:35 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Tue, 25 Aug 2026 00:53:35 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35e2e599777a5bf1499cdaa5d1fc828b6b22f909dc467e7b69e4bcc24e080636`  
		Last Modified: Tue, 25 Aug 2026 00:53:48 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:168c54f2ad78ebd3f837e33d70cafbe8f73686b22dbd4aec51d4ba7c3f0ad9b7`  
		Last Modified: Tue, 25 Aug 2026 00:53:49 GMT  
		Size: 7.3 MB (7261100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:180f7a98d4edd83890ef0fd9501f9d4a61e9b3e8bed7b1bf79878ae75b701ef2`  
		Last Modified: Tue, 25 Aug 2026 00:53:48 GMT  
		Size: 382.6 KB (382619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e91af6d2d7723b071f73f5c039ed05e4089dcc22031baabc8469dac3b393d113`  
		Last Modified: Tue, 25 Aug 2026 00:53:48 GMT  
		Size: 338.7 KB (338742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32ef3242fcbc49f4848b0f32ef8c6fe6a5e60b205982a79f5dff2a820c3b4cf5`  
		Last Modified: Tue, 25 Aug 2026 00:53:49 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdc2f20338bcedfdf7b2f2f87c5158364a27064f15dc496f4ec84ae939161c76`  
		Last Modified: Tue, 25 Aug 2026 00:53:52 GMT  
		Size: 110.5 MB (110475463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9f7a94be9eaa34d2df6b11cfa188be3ebd9d9fa151b823d37400826cfbb1d55`  
		Last Modified: Tue, 25 Aug 2026 00:53:50 GMT  
		Size: 380.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95ebdf2fb85868f55822952096d9451ebb9835953a408db132d7bc7a2d2bd22d`  
		Last Modified: Tue, 25 Aug 2026 00:53:50 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af3d48dd58f7c5ab40284a34b8e7906b9443311d01689a09fad76ace4e96eaeb`  
		Last Modified: Tue, 25 Aug 2026 00:53:50 GMT  
		Size: 2.2 KB (2229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4b4a6d88608958d15998359e89d84e0a2b2fc5344ca8a10b191271a9dc92127`  
		Last Modified: Tue, 25 Aug 2026 00:53:51 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3` - unknown; unknown

```console
$ docker pull couchdb@sha256:152035015ecdeb2fcbdbe0a3cea3b0793ee0a05b9885ccc7d43aab397558d6d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4212867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b990d7a678b2f513952f0b0a13d19e43f1bc62b97fa651453e2593849ca40d6f`

```dockerfile
```

-	Layers:
	-	`sha256:32c3b31256bf6ea426ff31515a31a5bdf58ca754800f84327e66d531258cadb9`  
		Last Modified: Tue, 25 Aug 2026 00:53:48 GMT  
		Size: 4.2 MB (4180985 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c343d80f29a3d23856c569a8aed5731a85c7fe2210366f96a078331d91e20d0`  
		Last Modified: Tue, 25 Aug 2026 00:53:48 GMT  
		Size: 31.9 KB (31882 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3-nouveau`

```console
$ docker pull couchdb@sha256:9a33e9274650c9046921bd9bcd903f388ea87d2965ca90b10330ba8703b9f50f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3-nouveau` - linux; amd64

```console
$ docker pull couchdb@sha256:4c792e275316e1ff60bb14d2b34f357e20626077906375d2b44b16e8771a7e4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.9 MB (150928836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da3172bafdcdfcae651ba49fe401c8824bf2eef1850d5d1b94b1c24dcba052c2`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:51:10 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 25 Aug 2026 00:51:10 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Tue, 25 Aug 2026 00:51:17 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:22 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:24 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 25 Aug 2026 00:51:24 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 25 Aug 2026 00:51:30 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:30 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 25 Aug 2026 00:51:36 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends couchdb-nouveau=3.5.2.1~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Tue, 25 Aug 2026 00:51:36 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Tue, 25 Aug 2026 00:51:36 GMT
VOLUME [/opt/nouveau/data]
# Tue, 25 Aug 2026 00:51:36 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Tue, 25 Aug 2026 00:51:36 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6220db655eb5cfad58e6cea6f371998f9810f086d94cd4e96ad8c2fd4939512f`  
		Last Modified: Tue, 25 Aug 2026 00:51:50 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f305d31ef66152cfb78c749367cda0d54b286308c620c9bc030e1476594313b9`  
		Last Modified: Tue, 25 Aug 2026 00:51:51 GMT  
		Size: 7.5 MB (7492101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e41ad4187d379a5e8b70deade3410dc4537517262d155dcf4a807f481020b0e`  
		Last Modified: Tue, 25 Aug 2026 00:51:52 GMT  
		Size: 70.1 MB (70053111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a57e96f22062f22245361542e136a321fc2ecff0455f0d0e019a8bbfd12d20`  
		Last Modified: Tue, 25 Aug 2026 00:51:50 GMT  
		Size: 426.0 KB (425958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0382069f332ca22afe04f55fea3c2e76fb960aaa0f57465168190c7f4cb2f67`  
		Last Modified: Tue, 25 Aug 2026 00:51:51 GMT  
		Size: 347.4 KB (347382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e614322cf10c9ad9b2f22c1de047c868329ed87382100b12520d47c43f6473f`  
		Last Modified: Tue, 25 Aug 2026 00:51:51 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:386c582ceba2469998fa196939d721bd362a99e00984c724288cd7e1da4cc4c6`  
		Last Modified: Tue, 25 Aug 2026 00:51:53 GMT  
		Size: 42.8 MB (42815741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97c902d93e874921a22a616c3638e345447e2d3766394d49b5c3fd516b6fdb6a`  
		Last Modified: Tue, 25 Aug 2026 00:51:53 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:a55e8b53516b5585de96dbc1ce75ea876df31051ce45117d27246201389915da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3389496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03dd94d7400af799966f66a05eaf7e9e215eccab2a509bf2ab104233ea8e5ace`

```dockerfile
```

-	Layers:
	-	`sha256:264df13473d1595a9b188ce6731f877bb62df1337389ee578c4bd79327e33fb6`  
		Last Modified: Tue, 25 Aug 2026 00:51:50 GMT  
		Size: 3.4 MB (3364981 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f7531fa581f00b486c1d45854665c9da9548120f66362b89494314100ccaf60`  
		Last Modified: Tue, 25 Aug 2026 00:51:50 GMT  
		Size: 24.5 KB (24515 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3-nouveau` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:36eb634e2257c96c9367ab8bdddaeee0eeb06cf3cd8f1c51a9553b66804aa7eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150085198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3393b9b980641ff31a6e7606f005e3e2400cf9876813b92c05d476562efb36e`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:03 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 25 Aug 2026 00:53:03 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Tue, 25 Aug 2026 00:53:11 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:16 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:20 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 25 Aug 2026 00:53:20 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 25 Aug 2026 00:53:25 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:25 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 25 Aug 2026 00:53:31 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends couchdb-nouveau=3.5.2.1~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Tue, 25 Aug 2026 00:53:31 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Tue, 25 Aug 2026 00:53:31 GMT
VOLUME [/opt/nouveau/data]
# Tue, 25 Aug 2026 00:53:31 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Tue, 25 Aug 2026 00:53:31 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfbc5e6712e40110685cfbdfc2b0e0e3f5211cd9ca097a0d51ae45237c4119b0`  
		Last Modified: Tue, 25 Aug 2026 00:53:45 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f212a5c291ef49006cb3696c15cc5ca4b9fdc78e315d5dcdc41cfaab225071b0`  
		Last Modified: Tue, 25 Aug 2026 00:53:46 GMT  
		Size: 7.3 MB (7261072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0960ba14e97394faf1e4b81be247aa41f9e46d7258c10265894f7fb03dc9afe4`  
		Last Modified: Tue, 25 Aug 2026 00:53:48 GMT  
		Size: 69.2 MB (69193028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1c50850cc1b24484b026c4aa686b24b541895540f7e543f940e059c541dbd7c`  
		Last Modified: Tue, 25 Aug 2026 00:53:46 GMT  
		Size: 390.2 KB (390231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fbb5f0f4acb73827fa21ed0289956bc3274eb8499be7182e14d8dfb40f96082`  
		Last Modified: Tue, 25 Aug 2026 00:53:47 GMT  
		Size: 347.4 KB (347421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afe0e8d210af2c4f2b7fa147c21c9cb8cd0dfa1f395aef802b1f4701882e3dba`  
		Last Modified: Tue, 25 Aug 2026 00:53:47 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc3ffa7adc539df11d73e996242e6cc40fb7bee9ef74a6ccc9d6b99cb68c8a97`  
		Last Modified: Tue, 25 Aug 2026 00:53:48 GMT  
		Size: 42.7 MB (42731982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:022deef880fa1009ff68bdee5cdcdeb81e154388831372de7e8eb018aae5b1e0`  
		Last Modified: Tue, 25 Aug 2026 00:53:48 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:ac28bc12ebcd841f8664d6fa17801dc9ce597e3315cb1ae503a0bcc4e5d9d96f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3388343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14d00a700b780b4254534938eb412971eb781f8af0098b999900e3afe14af5cd`

```dockerfile
```

-	Layers:
	-	`sha256:edb9e5a311568558ebc95e88f3a88b228d1f8fc45bff5857d3596a8e9017d1d1`  
		Last Modified: Tue, 25 Aug 2026 00:53:46 GMT  
		Size: 3.4 MB (3363634 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c80b286b7645743d57124c087d2c568c446a16b7ceea964b42f6a3a78f9fb44`  
		Last Modified: Tue, 25 Aug 2026 00:53:45 GMT  
		Size: 24.7 KB (24709 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.4`

```console
$ docker pull couchdb@sha256:628c4952c1cf668489fb668fbd24013bf61ff25add0a3643253dde0d47cae449
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `couchdb:3.4` - linux; amd64

```console
$ docker pull couchdb@sha256:76f91b552e3d1e193950bfd64f30c709d6d2fa5b89f612670be06641fcc63068
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.0 MB (139029410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09e2ad78211b1ac60618f2946b275db66b793a80e7af79515d68126e0b3d0366`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:06 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 25 Aug 2026 00:51:06 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Tue, 25 Aug 2026 00:51:13 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:15 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 25 Aug 2026 00:51:15 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 25 Aug 2026 00:51:21 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt-key list;     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:21 GMT
ENV COUCHDB_VERSION=3.4.3
# Tue, 25 Aug 2026 00:51:21 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 25 Aug 2026 00:51:34 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages             couchdb="$COUCHDB_VERSION"~bookworm     ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 25 Aug 2026 00:51:34 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Tue, 25 Aug 2026 00:51:34 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Tue, 25 Aug 2026 00:51:34 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 25 Aug 2026 00:51:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:51:35 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:51:35 GMT
VOLUME [/opt/couchdb/data]
# Tue, 25 Aug 2026 00:51:35 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Tue, 25 Aug 2026 00:51:35 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b4e14c4a3562675049c98799ee241bbf2e2d6d741d0da64d629a4d7f3d2b805`  
		Last Modified: Tue, 25 Aug 2026 00:51:47 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4165b0655c0a5309d9fe29f94cbf51a95ec8f4ffc8845c437a7be297a2b2d40`  
		Last Modified: Tue, 25 Aug 2026 00:51:47 GMT  
		Size: 7.9 MB (7891955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e4c4e9952ed50492235db3cfbd4d7b299cb87ef196d2e1f4fe0a083325c2e83`  
		Last Modified: Tue, 25 Aug 2026 00:51:47 GMT  
		Size: 401.8 KB (401770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8ea2a8c506d3a99d5f7f819ee4c285cba99c1e861f0ac1933284ec1378890a0`  
		Last Modified: Tue, 25 Aug 2026 00:51:47 GMT  
		Size: 76.5 KB (76511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d87ae72b6cce63d677e2c1b6551fc868cb1569b652911d65dc0acc933befc8f`  
		Last Modified: Tue, 25 Aug 2026 00:51:48 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e872a84e9c6c06b177dd0258c8ec36e2f47420442846a192830cf9f21837999`  
		Last Modified: Tue, 25 Aug 2026 00:51:51 GMT  
		Size: 102.4 MB (102421089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4984626b182a5408ec65d0db8b3d6eafe1d0a160f482ea8c1cc0eb542cafbf63`  
		Last Modified: Tue, 25 Aug 2026 00:51:48 GMT  
		Size: 377.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f21c59417ccd484475445d1dd8f968ff33f5753f8939c12f3ef0a35d9a714da`  
		Last Modified: Tue, 25 Aug 2026 00:51:49 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77aa24ab5c1be6716dbcca723c313648830c1801d0a6ede92783efc5436ecc75`  
		Last Modified: Tue, 25 Aug 2026 00:51:49 GMT  
		Size: 2.2 KB (2225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cc4b4bdae75ecb8531c5204108ff88d940306c86b22a1068e85afa577c6207a`  
		Last Modified: Tue, 25 Aug 2026 00:51:50 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4` - unknown; unknown

```console
$ docker pull couchdb@sha256:c5262f972e50ca1e6301f2ed371efb009f422dabdf784b2abe8da2828c6fe281
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4161818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1dd5ea44a7d73a8cf915dfca2eb396f4880419aa5b1eacece171234cd3294db`

```dockerfile
```

-	Layers:
	-	`sha256:9494c11a73feef492f595d384e0bb5d132af6ae84c29bb259287612f1228d993`  
		Last Modified: Tue, 25 Aug 2026 00:51:47 GMT  
		Size: 4.1 MB (4130670 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9b29298925ba7d668d88da06e57ab1449f5eb2d44bdb134c9823ae3a5281166`  
		Last Modified: Tue, 25 Aug 2026 00:51:47 GMT  
		Size: 31.1 KB (31148 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.4` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:3bac78dd231508280c69b2901655b7541a3983b68587c29d0516ab822ee0a01d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.5 MB (138450690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f0285b8a2dcff2446e5f58b6e94bc46502e27212bbc922bd464910bcef58bbf`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:53:12 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 25 Aug 2026 00:53:12 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Tue, 25 Aug 2026 00:53:17 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:20 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 25 Aug 2026 00:53:20 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 25 Aug 2026 00:53:25 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt-key list;     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:25 GMT
ENV COUCHDB_VERSION=3.4.3
# Tue, 25 Aug 2026 00:53:25 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 25 Aug 2026 00:53:37 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages             couchdb="$COUCHDB_VERSION"~bookworm     ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 25 Aug 2026 00:53:37 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Tue, 25 Aug 2026 00:53:37 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Tue, 25 Aug 2026 00:53:37 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 25 Aug 2026 00:53:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:53:37 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:53:37 GMT
VOLUME [/opt/couchdb/data]
# Tue, 25 Aug 2026 00:53:37 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Tue, 25 Aug 2026 00:53:37 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8b9e1308331b04842ed4945b2d002d0840216a8f75b298f0bb219731119c1e2`  
		Last Modified: Tue, 25 Aug 2026 00:53:51 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85e16f6e9792bef1c8f95034fc915992d989691e1820808a2b821b8b42335961`  
		Last Modified: Tue, 25 Aug 2026 00:53:51 GMT  
		Size: 7.7 MB (7710013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ca3651b9d06e80417092c91a877cfb6c38f8ad0b76f5befa6fe598b62388a0f`  
		Last Modified: Tue, 25 Aug 2026 00:53:51 GMT  
		Size: 370.6 KB (370555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7ecc11a494650f31f44edd7f5aff62089c134ba931b2ce7607cfe65ff1cd4a7`  
		Last Modified: Tue, 25 Aug 2026 00:53:51 GMT  
		Size: 76.5 KB (76543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70b92699a3b6a65b0c313a52d344d0a437db77dc36834ef84ef772021f3baeca`  
		Last Modified: Tue, 25 Aug 2026 00:53:52 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6555bb06365ff672ee437d3ced44cefd474de316770554abe077f773d698c23f`  
		Last Modified: Tue, 25 Aug 2026 00:53:55 GMT  
		Size: 102.2 MB (102170856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c55c66c7c24ae60416162b0457e2240ce4a3f50a78e21deaee9d7078d5e9e61`  
		Last Modified: Tue, 25 Aug 2026 00:53:52 GMT  
		Size: 380.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17f9be9593c6aea914ad26ae658e87cc3fe8382d7d9ecb9aaa51dc6a3a621839`  
		Last Modified: Tue, 25 Aug 2026 00:53:53 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddad86ee441864b5ed0bab8b21c3f9a30b8f8376d918f4173108125389b63c61`  
		Last Modified: Tue, 25 Aug 2026 00:53:53 GMT  
		Size: 2.2 KB (2227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca7cfb3f2a881e79ab20120b7728d878654daf1528b75ed16d952d2a125d29fd`  
		Last Modified: Tue, 25 Aug 2026 00:53:54 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4` - unknown; unknown

```console
$ docker pull couchdb@sha256:50e41c2a5070c9b8e388e766fb3fe11ae31b222eb30dccea8218713e17f84442
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4162257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de27f2f344a003caf4c081ad52b8f6aae5f3aeb1eb586a5f7369d6fb3fc572f7`

```dockerfile
```

-	Layers:
	-	`sha256:5a2f70f17a003b00ed5fc7a6f531c2ad00985febbbed3357047c409836d582a4`  
		Last Modified: Tue, 25 Aug 2026 00:53:51 GMT  
		Size: 4.1 MB (4130939 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83dff9941e6fac1903c1bdc199430d1c3000c4e1f412b5b51257d360ca7b585e`  
		Last Modified: Tue, 25 Aug 2026 00:53:51 GMT  
		Size: 31.3 KB (31318 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.4` - linux; s390x

```console
$ docker pull couchdb@sha256:216b4376c42f0034fbf698860a513827dff0da2a6a08cbc50f3a97d61cd48f71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.8 MB (135799230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a69e784bd8b21ebd16636f1921444df4cb85434deabad33505f61a15085e0fc0`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 03:07:54 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 14 Jul 2026 03:07:54 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Tue, 14 Jul 2026 03:08:00 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:08:03 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 14 Jul 2026 03:08:03 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 14 Jul 2026 03:08:08 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt-key list;     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:08:08 GMT
ENV COUCHDB_VERSION=3.4.3
# Tue, 14 Jul 2026 03:08:08 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 14 Jul 2026 03:08:26 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages             couchdb="$COUCHDB_VERSION"~bookworm     ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 14 Jul 2026 03:08:27 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Tue, 14 Jul 2026 03:08:27 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Tue, 14 Jul 2026 03:08:27 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 14 Jul 2026 03:08:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Tue, 14 Jul 2026 03:08:27 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 14 Jul 2026 03:08:27 GMT
VOLUME [/opt/couchdb/data]
# Tue, 14 Jul 2026 03:08:27 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Tue, 14 Jul 2026 03:08:27 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0041eb2ba89367c9532f3c4355fc67b4a35c95a410a01dcb0888d959a896646`  
		Last Modified: Tue, 14 Jul 2026 03:08:48 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e259961b072c6e2627f539c3ac5aca9c1af865ba92d304030c0c81f239d95b1`  
		Last Modified: Tue, 14 Jul 2026 03:08:48 GMT  
		Size: 7.4 MB (7400124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1ddc11c44da42d64c28179110bd3b029c19ea01d44a56d0ea8da99696cfa822`  
		Last Modified: Tue, 14 Jul 2026 03:08:48 GMT  
		Size: 372.2 KB (372178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fbe66dd179ff3b4d163c403a41d80baa176b06320b76c243c8088111d358cc4`  
		Last Modified: Tue, 14 Jul 2026 03:08:48 GMT  
		Size: 76.5 KB (76546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8755416f58f85c35730892cc8ce439a0785b2b0a2c40f8adfe769a72d35b10d7`  
		Last Modified: Tue, 14 Jul 2026 03:08:49 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcbe7f12cd76185f9143a22a2445b33170b918e8968bdd7933958147f2d91a46`  
		Last Modified: Tue, 14 Jul 2026 03:08:51 GMT  
		Size: 101.1 MB (101056681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7db2b0b04cd4cc85d50e24bbd3563d6e68744c9a6c2c3f6fd36a64a220580c19`  
		Last Modified: Tue, 14 Jul 2026 03:08:49 GMT  
		Size: 382.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f18bc7748a6f0c014d5b004f067b7c3c9681902a75859375d6f7e2269fa183b`  
		Last Modified: Tue, 14 Jul 2026 03:08:49 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1171e0c37df078d117cfc26c85393a3badf0e3719fc77d5c8742a2bf249f2287`  
		Last Modified: Tue, 14 Jul 2026 03:08:50 GMT  
		Size: 2.2 KB (2226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6b22337c5e347bd31f1c293eb40531527aeeaef7dbe5a1b36575abce4e825c9`  
		Last Modified: Tue, 14 Jul 2026 03:08:50 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4` - unknown; unknown

```console
$ docker pull couchdb@sha256:a0ef56dabcb9f293c01db376adb73b36134a8959ed830fee49da90e7842e1263
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4152811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e9aca74a54c087e7ea7f5de83e531ffab4ef7edb93b12e3829a4d4404196ea2`

```dockerfile
```

-	Layers:
	-	`sha256:4d1e8ca037a653f354fd9499e72fac7a496c7e9484602d6ce3402d471d116653`  
		Last Modified: Tue, 14 Jul 2026 03:08:48 GMT  
		Size: 4.1 MB (4121663 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd8efe209af3db2dd872b7224fa260a9e26ca79a76b7f7a30090cae5bf48298e`  
		Last Modified: Tue, 14 Jul 2026 03:08:48 GMT  
		Size: 31.1 KB (31148 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.4-nouveau`

```console
$ docker pull couchdb@sha256:e9677551bc5cdd8cdbdc91caec302b4481c2bab7e63010e168ee57205b0396f6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `couchdb:3.4-nouveau` - linux; amd64

```console
$ docker pull couchdb@sha256:9bd8e9fb83055c80c6c67e4bc68cc26fba8b3d2b60b5db0c2175227da6450a8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.6 MB (156576354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d71f3f35371efe06e1faf0b5801549014dd7050c4fef5d1ba93265e92977823`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:08 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 25 Aug 2026 00:51:08 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Tue, 25 Aug 2026 00:51:14 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:21 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-17-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:23 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 25 Aug 2026 00:51:23 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 25 Aug 2026 00:51:27 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt-key list;    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:27 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ bookworm main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 25 Aug 2026 00:51:31 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages --no-install-recommends             couchdb-nouveau=3.4.3~bookworm;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Tue, 25 Aug 2026 00:51:31 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Tue, 25 Aug 2026 00:51:31 GMT
VOLUME [/opt/nouveau/data]
# Tue, 25 Aug 2026 00:51:31 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Tue, 25 Aug 2026 00:51:31 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1012663d6be594c800721fb470f463f1fa7c31a6c1ea02b371258f9d6facc10`  
		Last Modified: Tue, 25 Aug 2026 00:51:46 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50034515d8197d1ab8363be4844c5be295aa281f5a7897f1e46a66fe485e66ed`  
		Last Modified: Tue, 25 Aug 2026 00:51:46 GMT  
		Size: 7.9 MB (7891946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b51eac662e8bbb9f138cfe5d144f6426d59c7d2de98d39ec1a881771d380b23a`  
		Last Modified: Tue, 25 Aug 2026 00:51:48 GMT  
		Size: 77.5 MB (77488852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85b62d6bcd1505909c49036fa196b00758525652f28e9987a5461ee1010334d8`  
		Last Modified: Tue, 25 Aug 2026 00:51:46 GMT  
		Size: 424.2 KB (424245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8872629af03fc50a0ffca058c33d3d006e31df3f2c3c733400bcd85a01553d8f`  
		Last Modified: Tue, 25 Aug 2026 00:51:47 GMT  
		Size: 99.7 KB (99709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2da4f60bda553cb3eae252e3f95e5a139eef0eef450ce7810c6f74b83dbce2b3`  
		Last Modified: Tue, 25 Aug 2026 00:51:47 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a09287ca890d3452295bc1c6983b4d523311475edc36d5c43039b52a3048a2f`  
		Last Modified: Tue, 25 Aug 2026 00:51:48 GMT  
		Size: 42.4 MB (42437063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0d23e9d0098ba9ffd107facc6578ebfae17d87077ba0cfcc40b937f715e2d90`  
		Last Modified: Tue, 25 Aug 2026 00:51:48 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:00b4d3b13b29afa4b689862f6ddb2404b8efb830338b1ac9e4fa949f5a891187
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3688157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec0d70ad37e36930b23a02c4a7d4651bea4c259820634a5c4da94c21c4480ad1`

```dockerfile
```

-	Layers:
	-	`sha256:4443d185f4302e5c9fb1324270ac8a8aab69312ff1b399df8f2415bc4e2baa41`  
		Last Modified: Tue, 25 Aug 2026 00:51:46 GMT  
		Size: 3.7 MB (3663942 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9245299fd8d38b22da8f1629fe3a311ad6c7d6308e987799d5afb6891b43900b`  
		Last Modified: Tue, 25 Aug 2026 00:51:46 GMT  
		Size: 24.2 KB (24215 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.4-nouveau` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:332b294504814a2f985d36f42bf0d86346df064fb1b71a82dccbad3212348d0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.5 MB (155463455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cafe779a245967952efbd3e5559ef71650d1c84501f3e2f4bc19436cdb69f25`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:53:22 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 25 Aug 2026 00:53:22 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Tue, 25 Aug 2026 00:53:28 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:36 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-17-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:38 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 25 Aug 2026 00:53:38 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 25 Aug 2026 00:53:43 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt-key list;    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:43 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ bookworm main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 25 Aug 2026 00:53:48 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages --no-install-recommends             couchdb-nouveau=3.4.3~bookworm;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Tue, 25 Aug 2026 00:53:48 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Tue, 25 Aug 2026 00:53:48 GMT
VOLUME [/opt/nouveau/data]
# Tue, 25 Aug 2026 00:53:48 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Tue, 25 Aug 2026 00:53:48 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c751acf3ef338b708aa5a770ffcf41854f8803eb7eeea1af36c710005e6d139f`  
		Last Modified: Tue, 25 Aug 2026 00:54:04 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:409330ba81da1552a2df89ddd7f31c76e6d8155e6c5323d48c505d5720ac0ac6`  
		Last Modified: Tue, 25 Aug 2026 00:54:05 GMT  
		Size: 7.7 MB (7710104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaa8c469d291bd4158e2ea4843be1744825b66cc8b4b4270ca7ba87dc56d29c0`  
		Last Modified: Tue, 25 Aug 2026 00:54:10 GMT  
		Size: 76.8 MB (76802442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7969e347661b355e3e127bba4f32baf8b469cf0b673e13b782ff2382fdf922ec`  
		Last Modified: Tue, 25 Aug 2026 00:54:04 GMT  
		Size: 392.9 KB (392936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb715c482b657323c47da2a0fd207462b2bbe15bb2f6f7093e0734d6f40a0a9c`  
		Last Modified: Tue, 25 Aug 2026 00:54:06 GMT  
		Size: 99.7 KB (99678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8c8c6f0af54789f8dbd39df64f4213dc8f2c119b457e3f6ef1f2594c690c8a8`  
		Last Modified: Tue, 25 Aug 2026 00:54:06 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee9aea33081cef9cf0b332bb1a7c768054ff0a91173277b313b34d8431b5ef9c`  
		Last Modified: Tue, 25 Aug 2026 00:54:10 GMT  
		Size: 42.3 MB (42339122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fef00635997dd3c6a3f8ee0af2ebc82ff82b80b82d91e190af3475cf399685a5`  
		Last Modified: Tue, 25 Aug 2026 00:54:07 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:191a541484c1290ce650e457cdd0033321e95d8b8d6cd7c7a11516ec30c4873e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3686995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b88c70a6105c06d24b23689f9c1bf43dc2c113bb1cf9e96e202e16df6fb7dd22`

```dockerfile
```

-	Layers:
	-	`sha256:7ac47c20771c6f4aa20dcc94ca08b0a392e344631e1067f683f6730561a80d4e`  
		Last Modified: Tue, 25 Aug 2026 00:54:04 GMT  
		Size: 3.7 MB (3662610 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4fe59abc3bd5f0e75bc76d5f46830fb68e6a86b95bfd538f4bc035c6dfe72fba`  
		Last Modified: Tue, 25 Aug 2026 00:54:04 GMT  
		Size: 24.4 KB (24385 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.4-nouveau` - linux; s390x

```console
$ docker pull couchdb@sha256:440567a03339e9bb826860e8a4d29405062a62811923bc9fe369875bf0d297ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.2 MB (150171998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4406bf676f5ad13413cb6afd613479cef739d18711a3af3c28daedd6e99e76b8`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 03:07:59 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 14 Jul 2026 03:07:59 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Tue, 14 Jul 2026 03:08:06 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:08:14 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-17-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:08:17 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 14 Jul 2026 03:08:17 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 14 Jul 2026 03:08:22 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt-key list;    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:08:22 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ bookworm main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 14 Jul 2026 03:08:31 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages --no-install-recommends             couchdb-nouveau=3.4.3~bookworm;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Tue, 14 Jul 2026 03:08:31 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Tue, 14 Jul 2026 03:08:31 GMT
VOLUME [/opt/nouveau/data]
# Tue, 14 Jul 2026 03:08:31 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Tue, 14 Jul 2026 03:08:31 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72362babb0546a843bcd11693baece3655b842957ef73b866e7cebe0596d3402`  
		Last Modified: Tue, 14 Jul 2026 03:08:56 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d2c89a1d03a2db93fc2f2b941bc9a0eb7a5728b933ab3efec45022dae16e0b1`  
		Last Modified: Tue, 14 Jul 2026 03:08:56 GMT  
		Size: 7.4 MB (7400129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30fec5970e3f2edd1407278629a89b0487f0ddf44bbc5d563927190e08b19111`  
		Last Modified: Tue, 14 Jul 2026 03:08:57 GMT  
		Size: 73.2 MB (73224647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0cdf1b7beac877f0867536b257b175f5165a4317a98371f229f09cf0cae8cbd`  
		Last Modified: Tue, 14 Jul 2026 03:08:55 GMT  
		Size: 394.6 KB (394569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e5f12fe7d350eac3fd2464f7b5434fddf6e96f7097f33afd6023e90a9cdc8a1`  
		Last Modified: Tue, 14 Jul 2026 03:08:56 GMT  
		Size: 99.7 KB (99715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccdd2f8939eb1397e6027b41a7c17aa8978f9cf3e8698fec8d802ca92624a125`  
		Last Modified: Tue, 14 Jul 2026 03:08:57 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb452920e8463d50242953cf7e9dad6aa4c7082fbaa795d283c9787dc851de68`  
		Last Modified: Tue, 14 Jul 2026 03:08:58 GMT  
		Size: 42.2 MB (42162792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1d95ea0d5c82eb5cc5b7ebeba39571a9541bc798047417aed14813cd7592f98`  
		Last Modified: Tue, 14 Jul 2026 03:08:58 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:89b8808ef47ec1690727ab96502cefc1f8c911078c749e91a12129e92ca25636
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3673491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b11151beb126e8cc4b5104833d1a36b091ce7524b9fd8cee5aad4f040e02c1f`

```dockerfile
```

-	Layers:
	-	`sha256:22a7d7b29b585523b595e49941fc6a3918dc0f5654987cfd685f01830c25b105`  
		Last Modified: Tue, 14 Jul 2026 03:08:56 GMT  
		Size: 3.6 MB (3649276 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53ba0c20f4ada0a1892725d9818a86207b04b4506caa34d4a49af7f44362d904`  
		Last Modified: Tue, 14 Jul 2026 03:08:56 GMT  
		Size: 24.2 KB (24215 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.4.3`

```console
$ docker pull couchdb@sha256:628c4952c1cf668489fb668fbd24013bf61ff25add0a3643253dde0d47cae449
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `couchdb:3.4.3` - linux; amd64

```console
$ docker pull couchdb@sha256:76f91b552e3d1e193950bfd64f30c709d6d2fa5b89f612670be06641fcc63068
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.0 MB (139029410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09e2ad78211b1ac60618f2946b275db66b793a80e7af79515d68126e0b3d0366`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:06 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 25 Aug 2026 00:51:06 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Tue, 25 Aug 2026 00:51:13 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:15 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 25 Aug 2026 00:51:15 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 25 Aug 2026 00:51:21 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt-key list;     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:21 GMT
ENV COUCHDB_VERSION=3.4.3
# Tue, 25 Aug 2026 00:51:21 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 25 Aug 2026 00:51:34 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages             couchdb="$COUCHDB_VERSION"~bookworm     ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 25 Aug 2026 00:51:34 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Tue, 25 Aug 2026 00:51:34 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Tue, 25 Aug 2026 00:51:34 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 25 Aug 2026 00:51:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:51:35 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:51:35 GMT
VOLUME [/opt/couchdb/data]
# Tue, 25 Aug 2026 00:51:35 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Tue, 25 Aug 2026 00:51:35 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b4e14c4a3562675049c98799ee241bbf2e2d6d741d0da64d629a4d7f3d2b805`  
		Last Modified: Tue, 25 Aug 2026 00:51:47 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4165b0655c0a5309d9fe29f94cbf51a95ec8f4ffc8845c437a7be297a2b2d40`  
		Last Modified: Tue, 25 Aug 2026 00:51:47 GMT  
		Size: 7.9 MB (7891955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e4c4e9952ed50492235db3cfbd4d7b299cb87ef196d2e1f4fe0a083325c2e83`  
		Last Modified: Tue, 25 Aug 2026 00:51:47 GMT  
		Size: 401.8 KB (401770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8ea2a8c506d3a99d5f7f819ee4c285cba99c1e861f0ac1933284ec1378890a0`  
		Last Modified: Tue, 25 Aug 2026 00:51:47 GMT  
		Size: 76.5 KB (76511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d87ae72b6cce63d677e2c1b6551fc868cb1569b652911d65dc0acc933befc8f`  
		Last Modified: Tue, 25 Aug 2026 00:51:48 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e872a84e9c6c06b177dd0258c8ec36e2f47420442846a192830cf9f21837999`  
		Last Modified: Tue, 25 Aug 2026 00:51:51 GMT  
		Size: 102.4 MB (102421089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4984626b182a5408ec65d0db8b3d6eafe1d0a160f482ea8c1cc0eb542cafbf63`  
		Last Modified: Tue, 25 Aug 2026 00:51:48 GMT  
		Size: 377.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f21c59417ccd484475445d1dd8f968ff33f5753f8939c12f3ef0a35d9a714da`  
		Last Modified: Tue, 25 Aug 2026 00:51:49 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77aa24ab5c1be6716dbcca723c313648830c1801d0a6ede92783efc5436ecc75`  
		Last Modified: Tue, 25 Aug 2026 00:51:49 GMT  
		Size: 2.2 KB (2225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cc4b4bdae75ecb8531c5204108ff88d940306c86b22a1068e85afa577c6207a`  
		Last Modified: Tue, 25 Aug 2026 00:51:50 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4.3` - unknown; unknown

```console
$ docker pull couchdb@sha256:c5262f972e50ca1e6301f2ed371efb009f422dabdf784b2abe8da2828c6fe281
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4161818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1dd5ea44a7d73a8cf915dfca2eb396f4880419aa5b1eacece171234cd3294db`

```dockerfile
```

-	Layers:
	-	`sha256:9494c11a73feef492f595d384e0bb5d132af6ae84c29bb259287612f1228d993`  
		Last Modified: Tue, 25 Aug 2026 00:51:47 GMT  
		Size: 4.1 MB (4130670 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9b29298925ba7d668d88da06e57ab1449f5eb2d44bdb134c9823ae3a5281166`  
		Last Modified: Tue, 25 Aug 2026 00:51:47 GMT  
		Size: 31.1 KB (31148 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.4.3` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:3bac78dd231508280c69b2901655b7541a3983b68587c29d0516ab822ee0a01d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.5 MB (138450690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f0285b8a2dcff2446e5f58b6e94bc46502e27212bbc922bd464910bcef58bbf`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:53:12 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 25 Aug 2026 00:53:12 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Tue, 25 Aug 2026 00:53:17 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:20 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 25 Aug 2026 00:53:20 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 25 Aug 2026 00:53:25 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt-key list;     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:25 GMT
ENV COUCHDB_VERSION=3.4.3
# Tue, 25 Aug 2026 00:53:25 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 25 Aug 2026 00:53:37 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages             couchdb="$COUCHDB_VERSION"~bookworm     ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 25 Aug 2026 00:53:37 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Tue, 25 Aug 2026 00:53:37 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Tue, 25 Aug 2026 00:53:37 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 25 Aug 2026 00:53:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:53:37 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:53:37 GMT
VOLUME [/opt/couchdb/data]
# Tue, 25 Aug 2026 00:53:37 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Tue, 25 Aug 2026 00:53:37 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8b9e1308331b04842ed4945b2d002d0840216a8f75b298f0bb219731119c1e2`  
		Last Modified: Tue, 25 Aug 2026 00:53:51 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85e16f6e9792bef1c8f95034fc915992d989691e1820808a2b821b8b42335961`  
		Last Modified: Tue, 25 Aug 2026 00:53:51 GMT  
		Size: 7.7 MB (7710013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ca3651b9d06e80417092c91a877cfb6c38f8ad0b76f5befa6fe598b62388a0f`  
		Last Modified: Tue, 25 Aug 2026 00:53:51 GMT  
		Size: 370.6 KB (370555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7ecc11a494650f31f44edd7f5aff62089c134ba931b2ce7607cfe65ff1cd4a7`  
		Last Modified: Tue, 25 Aug 2026 00:53:51 GMT  
		Size: 76.5 KB (76543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70b92699a3b6a65b0c313a52d344d0a437db77dc36834ef84ef772021f3baeca`  
		Last Modified: Tue, 25 Aug 2026 00:53:52 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6555bb06365ff672ee437d3ced44cefd474de316770554abe077f773d698c23f`  
		Last Modified: Tue, 25 Aug 2026 00:53:55 GMT  
		Size: 102.2 MB (102170856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c55c66c7c24ae60416162b0457e2240ce4a3f50a78e21deaee9d7078d5e9e61`  
		Last Modified: Tue, 25 Aug 2026 00:53:52 GMT  
		Size: 380.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17f9be9593c6aea914ad26ae658e87cc3fe8382d7d9ecb9aaa51dc6a3a621839`  
		Last Modified: Tue, 25 Aug 2026 00:53:53 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddad86ee441864b5ed0bab8b21c3f9a30b8f8376d918f4173108125389b63c61`  
		Last Modified: Tue, 25 Aug 2026 00:53:53 GMT  
		Size: 2.2 KB (2227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca7cfb3f2a881e79ab20120b7728d878654daf1528b75ed16d952d2a125d29fd`  
		Last Modified: Tue, 25 Aug 2026 00:53:54 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4.3` - unknown; unknown

```console
$ docker pull couchdb@sha256:50e41c2a5070c9b8e388e766fb3fe11ae31b222eb30dccea8218713e17f84442
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4162257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de27f2f344a003caf4c081ad52b8f6aae5f3aeb1eb586a5f7369d6fb3fc572f7`

```dockerfile
```

-	Layers:
	-	`sha256:5a2f70f17a003b00ed5fc7a6f531c2ad00985febbbed3357047c409836d582a4`  
		Last Modified: Tue, 25 Aug 2026 00:53:51 GMT  
		Size: 4.1 MB (4130939 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83dff9941e6fac1903c1bdc199430d1c3000c4e1f412b5b51257d360ca7b585e`  
		Last Modified: Tue, 25 Aug 2026 00:53:51 GMT  
		Size: 31.3 KB (31318 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.4.3` - linux; s390x

```console
$ docker pull couchdb@sha256:216b4376c42f0034fbf698860a513827dff0da2a6a08cbc50f3a97d61cd48f71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.8 MB (135799230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a69e784bd8b21ebd16636f1921444df4cb85434deabad33505f61a15085e0fc0`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 03:07:54 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 14 Jul 2026 03:07:54 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Tue, 14 Jul 2026 03:08:00 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:08:03 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 14 Jul 2026 03:08:03 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 14 Jul 2026 03:08:08 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt-key list;     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:08:08 GMT
ENV COUCHDB_VERSION=3.4.3
# Tue, 14 Jul 2026 03:08:08 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 14 Jul 2026 03:08:26 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages             couchdb="$COUCHDB_VERSION"~bookworm     ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 14 Jul 2026 03:08:27 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Tue, 14 Jul 2026 03:08:27 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Tue, 14 Jul 2026 03:08:27 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 14 Jul 2026 03:08:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Tue, 14 Jul 2026 03:08:27 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 14 Jul 2026 03:08:27 GMT
VOLUME [/opt/couchdb/data]
# Tue, 14 Jul 2026 03:08:27 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Tue, 14 Jul 2026 03:08:27 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0041eb2ba89367c9532f3c4355fc67b4a35c95a410a01dcb0888d959a896646`  
		Last Modified: Tue, 14 Jul 2026 03:08:48 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e259961b072c6e2627f539c3ac5aca9c1af865ba92d304030c0c81f239d95b1`  
		Last Modified: Tue, 14 Jul 2026 03:08:48 GMT  
		Size: 7.4 MB (7400124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1ddc11c44da42d64c28179110bd3b029c19ea01d44a56d0ea8da99696cfa822`  
		Last Modified: Tue, 14 Jul 2026 03:08:48 GMT  
		Size: 372.2 KB (372178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fbe66dd179ff3b4d163c403a41d80baa176b06320b76c243c8088111d358cc4`  
		Last Modified: Tue, 14 Jul 2026 03:08:48 GMT  
		Size: 76.5 KB (76546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8755416f58f85c35730892cc8ce439a0785b2b0a2c40f8adfe769a72d35b10d7`  
		Last Modified: Tue, 14 Jul 2026 03:08:49 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcbe7f12cd76185f9143a22a2445b33170b918e8968bdd7933958147f2d91a46`  
		Last Modified: Tue, 14 Jul 2026 03:08:51 GMT  
		Size: 101.1 MB (101056681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7db2b0b04cd4cc85d50e24bbd3563d6e68744c9a6c2c3f6fd36a64a220580c19`  
		Last Modified: Tue, 14 Jul 2026 03:08:49 GMT  
		Size: 382.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f18bc7748a6f0c014d5b004f067b7c3c9681902a75859375d6f7e2269fa183b`  
		Last Modified: Tue, 14 Jul 2026 03:08:49 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1171e0c37df078d117cfc26c85393a3badf0e3719fc77d5c8742a2bf249f2287`  
		Last Modified: Tue, 14 Jul 2026 03:08:50 GMT  
		Size: 2.2 KB (2226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6b22337c5e347bd31f1c293eb40531527aeeaef7dbe5a1b36575abce4e825c9`  
		Last Modified: Tue, 14 Jul 2026 03:08:50 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4.3` - unknown; unknown

```console
$ docker pull couchdb@sha256:a0ef56dabcb9f293c01db376adb73b36134a8959ed830fee49da90e7842e1263
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4152811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e9aca74a54c087e7ea7f5de83e531ffab4ef7edb93b12e3829a4d4404196ea2`

```dockerfile
```

-	Layers:
	-	`sha256:4d1e8ca037a653f354fd9499e72fac7a496c7e9484602d6ce3402d471d116653`  
		Last Modified: Tue, 14 Jul 2026 03:08:48 GMT  
		Size: 4.1 MB (4121663 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd8efe209af3db2dd872b7224fa260a9e26ca79a76b7f7a30090cae5bf48298e`  
		Last Modified: Tue, 14 Jul 2026 03:08:48 GMT  
		Size: 31.1 KB (31148 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.4.3-nouveau`

```console
$ docker pull couchdb@sha256:e9677551bc5cdd8cdbdc91caec302b4481c2bab7e63010e168ee57205b0396f6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `couchdb:3.4.3-nouveau` - linux; amd64

```console
$ docker pull couchdb@sha256:9bd8e9fb83055c80c6c67e4bc68cc26fba8b3d2b60b5db0c2175227da6450a8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.6 MB (156576354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d71f3f35371efe06e1faf0b5801549014dd7050c4fef5d1ba93265e92977823`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:08 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 25 Aug 2026 00:51:08 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Tue, 25 Aug 2026 00:51:14 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:21 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-17-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:23 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 25 Aug 2026 00:51:23 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 25 Aug 2026 00:51:27 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt-key list;    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:27 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ bookworm main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 25 Aug 2026 00:51:31 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages --no-install-recommends             couchdb-nouveau=3.4.3~bookworm;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Tue, 25 Aug 2026 00:51:31 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Tue, 25 Aug 2026 00:51:31 GMT
VOLUME [/opt/nouveau/data]
# Tue, 25 Aug 2026 00:51:31 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Tue, 25 Aug 2026 00:51:31 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1012663d6be594c800721fb470f463f1fa7c31a6c1ea02b371258f9d6facc10`  
		Last Modified: Tue, 25 Aug 2026 00:51:46 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50034515d8197d1ab8363be4844c5be295aa281f5a7897f1e46a66fe485e66ed`  
		Last Modified: Tue, 25 Aug 2026 00:51:46 GMT  
		Size: 7.9 MB (7891946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b51eac662e8bbb9f138cfe5d144f6426d59c7d2de98d39ec1a881771d380b23a`  
		Last Modified: Tue, 25 Aug 2026 00:51:48 GMT  
		Size: 77.5 MB (77488852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85b62d6bcd1505909c49036fa196b00758525652f28e9987a5461ee1010334d8`  
		Last Modified: Tue, 25 Aug 2026 00:51:46 GMT  
		Size: 424.2 KB (424245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8872629af03fc50a0ffca058c33d3d006e31df3f2c3c733400bcd85a01553d8f`  
		Last Modified: Tue, 25 Aug 2026 00:51:47 GMT  
		Size: 99.7 KB (99709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2da4f60bda553cb3eae252e3f95e5a139eef0eef450ce7810c6f74b83dbce2b3`  
		Last Modified: Tue, 25 Aug 2026 00:51:47 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a09287ca890d3452295bc1c6983b4d523311475edc36d5c43039b52a3048a2f`  
		Last Modified: Tue, 25 Aug 2026 00:51:48 GMT  
		Size: 42.4 MB (42437063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0d23e9d0098ba9ffd107facc6578ebfae17d87077ba0cfcc40b937f715e2d90`  
		Last Modified: Tue, 25 Aug 2026 00:51:48 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4.3-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:00b4d3b13b29afa4b689862f6ddb2404b8efb830338b1ac9e4fa949f5a891187
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3688157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec0d70ad37e36930b23a02c4a7d4651bea4c259820634a5c4da94c21c4480ad1`

```dockerfile
```

-	Layers:
	-	`sha256:4443d185f4302e5c9fb1324270ac8a8aab69312ff1b399df8f2415bc4e2baa41`  
		Last Modified: Tue, 25 Aug 2026 00:51:46 GMT  
		Size: 3.7 MB (3663942 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9245299fd8d38b22da8f1629fe3a311ad6c7d6308e987799d5afb6891b43900b`  
		Last Modified: Tue, 25 Aug 2026 00:51:46 GMT  
		Size: 24.2 KB (24215 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.4.3-nouveau` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:332b294504814a2f985d36f42bf0d86346df064fb1b71a82dccbad3212348d0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.5 MB (155463455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cafe779a245967952efbd3e5559ef71650d1c84501f3e2f4bc19436cdb69f25`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:53:22 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 25 Aug 2026 00:53:22 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Tue, 25 Aug 2026 00:53:28 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:36 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-17-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:38 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 25 Aug 2026 00:53:38 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 25 Aug 2026 00:53:43 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt-key list;    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:43 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ bookworm main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 25 Aug 2026 00:53:48 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages --no-install-recommends             couchdb-nouveau=3.4.3~bookworm;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Tue, 25 Aug 2026 00:53:48 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Tue, 25 Aug 2026 00:53:48 GMT
VOLUME [/opt/nouveau/data]
# Tue, 25 Aug 2026 00:53:48 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Tue, 25 Aug 2026 00:53:48 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c751acf3ef338b708aa5a770ffcf41854f8803eb7eeea1af36c710005e6d139f`  
		Last Modified: Tue, 25 Aug 2026 00:54:04 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:409330ba81da1552a2df89ddd7f31c76e6d8155e6c5323d48c505d5720ac0ac6`  
		Last Modified: Tue, 25 Aug 2026 00:54:05 GMT  
		Size: 7.7 MB (7710104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaa8c469d291bd4158e2ea4843be1744825b66cc8b4b4270ca7ba87dc56d29c0`  
		Last Modified: Tue, 25 Aug 2026 00:54:10 GMT  
		Size: 76.8 MB (76802442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7969e347661b355e3e127bba4f32baf8b469cf0b673e13b782ff2382fdf922ec`  
		Last Modified: Tue, 25 Aug 2026 00:54:04 GMT  
		Size: 392.9 KB (392936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb715c482b657323c47da2a0fd207462b2bbe15bb2f6f7093e0734d6f40a0a9c`  
		Last Modified: Tue, 25 Aug 2026 00:54:06 GMT  
		Size: 99.7 KB (99678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8c8c6f0af54789f8dbd39df64f4213dc8f2c119b457e3f6ef1f2594c690c8a8`  
		Last Modified: Tue, 25 Aug 2026 00:54:06 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee9aea33081cef9cf0b332bb1a7c768054ff0a91173277b313b34d8431b5ef9c`  
		Last Modified: Tue, 25 Aug 2026 00:54:10 GMT  
		Size: 42.3 MB (42339122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fef00635997dd3c6a3f8ee0af2ebc82ff82b80b82d91e190af3475cf399685a5`  
		Last Modified: Tue, 25 Aug 2026 00:54:07 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4.3-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:191a541484c1290ce650e457cdd0033321e95d8b8d6cd7c7a11516ec30c4873e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3686995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b88c70a6105c06d24b23689f9c1bf43dc2c113bb1cf9e96e202e16df6fb7dd22`

```dockerfile
```

-	Layers:
	-	`sha256:7ac47c20771c6f4aa20dcc94ca08b0a392e344631e1067f683f6730561a80d4e`  
		Last Modified: Tue, 25 Aug 2026 00:54:04 GMT  
		Size: 3.7 MB (3662610 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4fe59abc3bd5f0e75bc76d5f46830fb68e6a86b95bfd538f4bc035c6dfe72fba`  
		Last Modified: Tue, 25 Aug 2026 00:54:04 GMT  
		Size: 24.4 KB (24385 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.4.3-nouveau` - linux; s390x

```console
$ docker pull couchdb@sha256:440567a03339e9bb826860e8a4d29405062a62811923bc9fe369875bf0d297ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.2 MB (150171998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4406bf676f5ad13413cb6afd613479cef739d18711a3af3c28daedd6e99e76b8`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 03:07:59 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 14 Jul 2026 03:07:59 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Tue, 14 Jul 2026 03:08:06 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:08:14 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-17-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:08:17 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 14 Jul 2026 03:08:17 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 14 Jul 2026 03:08:22 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt-key list;    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:08:22 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ bookworm main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 14 Jul 2026 03:08:31 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages --no-install-recommends             couchdb-nouveau=3.4.3~bookworm;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Tue, 14 Jul 2026 03:08:31 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Tue, 14 Jul 2026 03:08:31 GMT
VOLUME [/opt/nouveau/data]
# Tue, 14 Jul 2026 03:08:31 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Tue, 14 Jul 2026 03:08:31 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72362babb0546a843bcd11693baece3655b842957ef73b866e7cebe0596d3402`  
		Last Modified: Tue, 14 Jul 2026 03:08:56 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d2c89a1d03a2db93fc2f2b941bc9a0eb7a5728b933ab3efec45022dae16e0b1`  
		Last Modified: Tue, 14 Jul 2026 03:08:56 GMT  
		Size: 7.4 MB (7400129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30fec5970e3f2edd1407278629a89b0487f0ddf44bbc5d563927190e08b19111`  
		Last Modified: Tue, 14 Jul 2026 03:08:57 GMT  
		Size: 73.2 MB (73224647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0cdf1b7beac877f0867536b257b175f5165a4317a98371f229f09cf0cae8cbd`  
		Last Modified: Tue, 14 Jul 2026 03:08:55 GMT  
		Size: 394.6 KB (394569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e5f12fe7d350eac3fd2464f7b5434fddf6e96f7097f33afd6023e90a9cdc8a1`  
		Last Modified: Tue, 14 Jul 2026 03:08:56 GMT  
		Size: 99.7 KB (99715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccdd2f8939eb1397e6027b41a7c17aa8978f9cf3e8698fec8d802ca92624a125`  
		Last Modified: Tue, 14 Jul 2026 03:08:57 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb452920e8463d50242953cf7e9dad6aa4c7082fbaa795d283c9787dc851de68`  
		Last Modified: Tue, 14 Jul 2026 03:08:58 GMT  
		Size: 42.2 MB (42162792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1d95ea0d5c82eb5cc5b7ebeba39571a9541bc798047417aed14813cd7592f98`  
		Last Modified: Tue, 14 Jul 2026 03:08:58 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4.3-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:89b8808ef47ec1690727ab96502cefc1f8c911078c749e91a12129e92ca25636
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3673491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b11151beb126e8cc4b5104833d1a36b091ce7524b9fd8cee5aad4f040e02c1f`

```dockerfile
```

-	Layers:
	-	`sha256:22a7d7b29b585523b595e49941fc6a3918dc0f5654987cfd685f01830c25b105`  
		Last Modified: Tue, 14 Jul 2026 03:08:56 GMT  
		Size: 3.6 MB (3649276 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53ba0c20f4ada0a1892725d9818a86207b04b4506caa34d4a49af7f44362d904`  
		Last Modified: Tue, 14 Jul 2026 03:08:56 GMT  
		Size: 24.2 KB (24215 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.5`

```console
$ docker pull couchdb@sha256:9ea24cbd76522fe845d1c32c7fd1dcfc8a3ba73dcc4817d62f8a7f7f1dfaffe3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3.5` - linux; amd64

```console
$ docker pull couchdb@sha256:199ff89f9a930df6032a216570ae0169fcc36c449bb02b40fafeb6efecdb606f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.9 MB (148851534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1dc96c1aa5fb3bce81e88ea68bea50e27c01709a6296e3574579ef24263c18f`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:59 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 25 Aug 2026 00:50:59 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Tue, 25 Aug 2026 00:51:06 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:09 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 25 Aug 2026 00:51:09 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 25 Aug 2026 00:51:15 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:15 GMT
ENV COUCHDB_VERSION=3.5.2.1
# Tue, 25 Aug 2026 00:51:15 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 25 Aug 2026 00:51:29 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 25 Aug 2026 00:51:29 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Tue, 25 Aug 2026 00:51:29 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Tue, 25 Aug 2026 00:51:29 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 25 Aug 2026 00:51:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:51:29 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:51:29 GMT
VOLUME [/opt/couchdb/data]
# Tue, 25 Aug 2026 00:51:29 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Tue, 25 Aug 2026 00:51:29 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ab234e62f046177281a5513ca941cba1a426d7c892a028d5cbc94cca9eaa856`  
		Last Modified: Tue, 25 Aug 2026 00:51:42 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9084865ad728bd279b67de879f8b97ddc1b7d4719e6dd1035e9f8004cc58c6c8`  
		Last Modified: Tue, 25 Aug 2026 00:51:42 GMT  
		Size: 7.5 MB (7492122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ee552c45507c5650c37dbd137f81e202e01ee5d2ca76656b64ad2cbdae999ce`  
		Last Modified: Tue, 25 Aug 2026 00:51:42 GMT  
		Size: 417.6 KB (417591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa748742e839fbc0865a60021f97645c7918f1584de9e87915db400ed0ca4775`  
		Last Modified: Tue, 25 Aug 2026 00:51:42 GMT  
		Size: 338.6 KB (338585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1c83f2bc7d6261d80188a106728987b41aba53c110af251a2f0470238e5e4d3`  
		Last Modified: Tue, 25 Aug 2026 00:51:43 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b63ee188c3ec94b2fd403ee353b0c18bf2d3de51501e3e5911fc71c6814ce5e`  
		Last Modified: Tue, 25 Aug 2026 00:51:46 GMT  
		Size: 110.8 MB (110805142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41d739519592c76787bad9ed62ca7b92616efc1a7a02df1293d3ff2914b42b5d`  
		Last Modified: Tue, 25 Aug 2026 00:51:43 GMT  
		Size: 380.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d4686f7c3ba92beab9fd6d1cc97bad811c449d1969a0bd5b643eb9c1420ee5e`  
		Last Modified: Tue, 25 Aug 2026 00:51:43 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cbe4b92b478b8205e57c2117e89979f17b4f85b1b9051611e18f7c333103bc0`  
		Last Modified: Tue, 25 Aug 2026 00:51:44 GMT  
		Size: 2.2 KB (2229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db6f63234f947a740cbe844d575f6ca362aceef938d8aa1df4e3463e8eb2b8df`  
		Last Modified: Tue, 25 Aug 2026 00:51:44 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5` - unknown; unknown

```console
$ docker pull couchdb@sha256:b7aedfae489ec2c0942058c166cc0363420c4f0053c3a77db40017b170a9b83d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4212352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68e4297e4e3023095efb11c9e9cfe9df0b6d4a3b36fb538d8b15598dbfebfabb`

```dockerfile
```

-	Layers:
	-	`sha256:ac7ea6a2215d8e04abe2718701ff962e82907f8859ad9424cf9d267bd13d4145`  
		Last Modified: Tue, 25 Aug 2026 00:51:42 GMT  
		Size: 4.2 MB (4180677 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09148676ac7c399dee20b338c2ee4f915b86c4517accb24ff771ca18ea4de7ba`  
		Last Modified: Tue, 25 Aug 2026 00:51:42 GMT  
		Size: 31.7 KB (31675 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.5` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:e28078002aac09a753d839e929b251066fe98b3bb0660e70871728e8030452e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.6 MB (148622949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af9c0748839d2ed941c3909962e94f05a0321642684da82707e8d3904e118591`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:02 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 25 Aug 2026 00:53:02 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Tue, 25 Aug 2026 00:53:10 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:14 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 25 Aug 2026 00:53:14 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 25 Aug 2026 00:53:21 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:21 GMT
ENV COUCHDB_VERSION=3.5.2.1
# Tue, 25 Aug 2026 00:53:21 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 25 Aug 2026 00:53:35 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 25 Aug 2026 00:53:35 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Tue, 25 Aug 2026 00:53:35 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Tue, 25 Aug 2026 00:53:35 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 25 Aug 2026 00:53:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:53:35 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:53:35 GMT
VOLUME [/opt/couchdb/data]
# Tue, 25 Aug 2026 00:53:35 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Tue, 25 Aug 2026 00:53:35 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35e2e599777a5bf1499cdaa5d1fc828b6b22f909dc467e7b69e4bcc24e080636`  
		Last Modified: Tue, 25 Aug 2026 00:53:48 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:168c54f2ad78ebd3f837e33d70cafbe8f73686b22dbd4aec51d4ba7c3f0ad9b7`  
		Last Modified: Tue, 25 Aug 2026 00:53:49 GMT  
		Size: 7.3 MB (7261100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:180f7a98d4edd83890ef0fd9501f9d4a61e9b3e8bed7b1bf79878ae75b701ef2`  
		Last Modified: Tue, 25 Aug 2026 00:53:48 GMT  
		Size: 382.6 KB (382619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e91af6d2d7723b071f73f5c039ed05e4089dcc22031baabc8469dac3b393d113`  
		Last Modified: Tue, 25 Aug 2026 00:53:48 GMT  
		Size: 338.7 KB (338742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32ef3242fcbc49f4848b0f32ef8c6fe6a5e60b205982a79f5dff2a820c3b4cf5`  
		Last Modified: Tue, 25 Aug 2026 00:53:49 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdc2f20338bcedfdf7b2f2f87c5158364a27064f15dc496f4ec84ae939161c76`  
		Last Modified: Tue, 25 Aug 2026 00:53:52 GMT  
		Size: 110.5 MB (110475463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9f7a94be9eaa34d2df6b11cfa188be3ebd9d9fa151b823d37400826cfbb1d55`  
		Last Modified: Tue, 25 Aug 2026 00:53:50 GMT  
		Size: 380.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95ebdf2fb85868f55822952096d9451ebb9835953a408db132d7bc7a2d2bd22d`  
		Last Modified: Tue, 25 Aug 2026 00:53:50 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af3d48dd58f7c5ab40284a34b8e7906b9443311d01689a09fad76ace4e96eaeb`  
		Last Modified: Tue, 25 Aug 2026 00:53:50 GMT  
		Size: 2.2 KB (2229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4b4a6d88608958d15998359e89d84e0a2b2fc5344ca8a10b191271a9dc92127`  
		Last Modified: Tue, 25 Aug 2026 00:53:51 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5` - unknown; unknown

```console
$ docker pull couchdb@sha256:152035015ecdeb2fcbdbe0a3cea3b0793ee0a05b9885ccc7d43aab397558d6d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4212867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b990d7a678b2f513952f0b0a13d19e43f1bc62b97fa651453e2593849ca40d6f`

```dockerfile
```

-	Layers:
	-	`sha256:32c3b31256bf6ea426ff31515a31a5bdf58ca754800f84327e66d531258cadb9`  
		Last Modified: Tue, 25 Aug 2026 00:53:48 GMT  
		Size: 4.2 MB (4180985 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c343d80f29a3d23856c569a8aed5731a85c7fe2210366f96a078331d91e20d0`  
		Last Modified: Tue, 25 Aug 2026 00:53:48 GMT  
		Size: 31.9 KB (31882 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.5-nouveau`

```console
$ docker pull couchdb@sha256:9a33e9274650c9046921bd9bcd903f388ea87d2965ca90b10330ba8703b9f50f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3.5-nouveau` - linux; amd64

```console
$ docker pull couchdb@sha256:4c792e275316e1ff60bb14d2b34f357e20626077906375d2b44b16e8771a7e4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.9 MB (150928836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da3172bafdcdfcae651ba49fe401c8824bf2eef1850d5d1b94b1c24dcba052c2`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:51:10 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 25 Aug 2026 00:51:10 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Tue, 25 Aug 2026 00:51:17 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:22 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:24 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 25 Aug 2026 00:51:24 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 25 Aug 2026 00:51:30 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:30 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 25 Aug 2026 00:51:36 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends couchdb-nouveau=3.5.2.1~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Tue, 25 Aug 2026 00:51:36 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Tue, 25 Aug 2026 00:51:36 GMT
VOLUME [/opt/nouveau/data]
# Tue, 25 Aug 2026 00:51:36 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Tue, 25 Aug 2026 00:51:36 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6220db655eb5cfad58e6cea6f371998f9810f086d94cd4e96ad8c2fd4939512f`  
		Last Modified: Tue, 25 Aug 2026 00:51:50 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f305d31ef66152cfb78c749367cda0d54b286308c620c9bc030e1476594313b9`  
		Last Modified: Tue, 25 Aug 2026 00:51:51 GMT  
		Size: 7.5 MB (7492101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e41ad4187d379a5e8b70deade3410dc4537517262d155dcf4a807f481020b0e`  
		Last Modified: Tue, 25 Aug 2026 00:51:52 GMT  
		Size: 70.1 MB (70053111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a57e96f22062f22245361542e136a321fc2ecff0455f0d0e019a8bbfd12d20`  
		Last Modified: Tue, 25 Aug 2026 00:51:50 GMT  
		Size: 426.0 KB (425958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0382069f332ca22afe04f55fea3c2e76fb960aaa0f57465168190c7f4cb2f67`  
		Last Modified: Tue, 25 Aug 2026 00:51:51 GMT  
		Size: 347.4 KB (347382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e614322cf10c9ad9b2f22c1de047c868329ed87382100b12520d47c43f6473f`  
		Last Modified: Tue, 25 Aug 2026 00:51:51 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:386c582ceba2469998fa196939d721bd362a99e00984c724288cd7e1da4cc4c6`  
		Last Modified: Tue, 25 Aug 2026 00:51:53 GMT  
		Size: 42.8 MB (42815741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97c902d93e874921a22a616c3638e345447e2d3766394d49b5c3fd516b6fdb6a`  
		Last Modified: Tue, 25 Aug 2026 00:51:53 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:a55e8b53516b5585de96dbc1ce75ea876df31051ce45117d27246201389915da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3389496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03dd94d7400af799966f66a05eaf7e9e215eccab2a509bf2ab104233ea8e5ace`

```dockerfile
```

-	Layers:
	-	`sha256:264df13473d1595a9b188ce6731f877bb62df1337389ee578c4bd79327e33fb6`  
		Last Modified: Tue, 25 Aug 2026 00:51:50 GMT  
		Size: 3.4 MB (3364981 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f7531fa581f00b486c1d45854665c9da9548120f66362b89494314100ccaf60`  
		Last Modified: Tue, 25 Aug 2026 00:51:50 GMT  
		Size: 24.5 KB (24515 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.5-nouveau` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:36eb634e2257c96c9367ab8bdddaeee0eeb06cf3cd8f1c51a9553b66804aa7eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150085198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3393b9b980641ff31a6e7606f005e3e2400cf9876813b92c05d476562efb36e`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:03 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 25 Aug 2026 00:53:03 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Tue, 25 Aug 2026 00:53:11 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:16 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:20 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 25 Aug 2026 00:53:20 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 25 Aug 2026 00:53:25 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:25 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 25 Aug 2026 00:53:31 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends couchdb-nouveau=3.5.2.1~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Tue, 25 Aug 2026 00:53:31 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Tue, 25 Aug 2026 00:53:31 GMT
VOLUME [/opt/nouveau/data]
# Tue, 25 Aug 2026 00:53:31 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Tue, 25 Aug 2026 00:53:31 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfbc5e6712e40110685cfbdfc2b0e0e3f5211cd9ca097a0d51ae45237c4119b0`  
		Last Modified: Tue, 25 Aug 2026 00:53:45 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f212a5c291ef49006cb3696c15cc5ca4b9fdc78e315d5dcdc41cfaab225071b0`  
		Last Modified: Tue, 25 Aug 2026 00:53:46 GMT  
		Size: 7.3 MB (7261072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0960ba14e97394faf1e4b81be247aa41f9e46d7258c10265894f7fb03dc9afe4`  
		Last Modified: Tue, 25 Aug 2026 00:53:48 GMT  
		Size: 69.2 MB (69193028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1c50850cc1b24484b026c4aa686b24b541895540f7e543f940e059c541dbd7c`  
		Last Modified: Tue, 25 Aug 2026 00:53:46 GMT  
		Size: 390.2 KB (390231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fbb5f0f4acb73827fa21ed0289956bc3274eb8499be7182e14d8dfb40f96082`  
		Last Modified: Tue, 25 Aug 2026 00:53:47 GMT  
		Size: 347.4 KB (347421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afe0e8d210af2c4f2b7fa147c21c9cb8cd0dfa1f395aef802b1f4701882e3dba`  
		Last Modified: Tue, 25 Aug 2026 00:53:47 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc3ffa7adc539df11d73e996242e6cc40fb7bee9ef74a6ccc9d6b99cb68c8a97`  
		Last Modified: Tue, 25 Aug 2026 00:53:48 GMT  
		Size: 42.7 MB (42731982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:022deef880fa1009ff68bdee5cdcdeb81e154388831372de7e8eb018aae5b1e0`  
		Last Modified: Tue, 25 Aug 2026 00:53:48 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:ac28bc12ebcd841f8664d6fa17801dc9ce597e3315cb1ae503a0bcc4e5d9d96f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3388343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14d00a700b780b4254534938eb412971eb781f8af0098b999900e3afe14af5cd`

```dockerfile
```

-	Layers:
	-	`sha256:edb9e5a311568558ebc95e88f3a88b228d1f8fc45bff5857d3596a8e9017d1d1`  
		Last Modified: Tue, 25 Aug 2026 00:53:46 GMT  
		Size: 3.4 MB (3363634 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c80b286b7645743d57124c087d2c568c446a16b7ceea964b42f6a3a78f9fb44`  
		Last Modified: Tue, 25 Aug 2026 00:53:45 GMT  
		Size: 24.7 KB (24709 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.5.2`

```console
$ docker pull couchdb@sha256:9ea24cbd76522fe845d1c32c7fd1dcfc8a3ba73dcc4817d62f8a7f7f1dfaffe3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3.5.2` - linux; amd64

```console
$ docker pull couchdb@sha256:199ff89f9a930df6032a216570ae0169fcc36c449bb02b40fafeb6efecdb606f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.9 MB (148851534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1dc96c1aa5fb3bce81e88ea68bea50e27c01709a6296e3574579ef24263c18f`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:59 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 25 Aug 2026 00:50:59 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Tue, 25 Aug 2026 00:51:06 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:09 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 25 Aug 2026 00:51:09 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 25 Aug 2026 00:51:15 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:15 GMT
ENV COUCHDB_VERSION=3.5.2.1
# Tue, 25 Aug 2026 00:51:15 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 25 Aug 2026 00:51:29 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 25 Aug 2026 00:51:29 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Tue, 25 Aug 2026 00:51:29 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Tue, 25 Aug 2026 00:51:29 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 25 Aug 2026 00:51:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:51:29 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:51:29 GMT
VOLUME [/opt/couchdb/data]
# Tue, 25 Aug 2026 00:51:29 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Tue, 25 Aug 2026 00:51:29 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ab234e62f046177281a5513ca941cba1a426d7c892a028d5cbc94cca9eaa856`  
		Last Modified: Tue, 25 Aug 2026 00:51:42 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9084865ad728bd279b67de879f8b97ddc1b7d4719e6dd1035e9f8004cc58c6c8`  
		Last Modified: Tue, 25 Aug 2026 00:51:42 GMT  
		Size: 7.5 MB (7492122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ee552c45507c5650c37dbd137f81e202e01ee5d2ca76656b64ad2cbdae999ce`  
		Last Modified: Tue, 25 Aug 2026 00:51:42 GMT  
		Size: 417.6 KB (417591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa748742e839fbc0865a60021f97645c7918f1584de9e87915db400ed0ca4775`  
		Last Modified: Tue, 25 Aug 2026 00:51:42 GMT  
		Size: 338.6 KB (338585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1c83f2bc7d6261d80188a106728987b41aba53c110af251a2f0470238e5e4d3`  
		Last Modified: Tue, 25 Aug 2026 00:51:43 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b63ee188c3ec94b2fd403ee353b0c18bf2d3de51501e3e5911fc71c6814ce5e`  
		Last Modified: Tue, 25 Aug 2026 00:51:46 GMT  
		Size: 110.8 MB (110805142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41d739519592c76787bad9ed62ca7b92616efc1a7a02df1293d3ff2914b42b5d`  
		Last Modified: Tue, 25 Aug 2026 00:51:43 GMT  
		Size: 380.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d4686f7c3ba92beab9fd6d1cc97bad811c449d1969a0bd5b643eb9c1420ee5e`  
		Last Modified: Tue, 25 Aug 2026 00:51:43 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cbe4b92b478b8205e57c2117e89979f17b4f85b1b9051611e18f7c333103bc0`  
		Last Modified: Tue, 25 Aug 2026 00:51:44 GMT  
		Size: 2.2 KB (2229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db6f63234f947a740cbe844d575f6ca362aceef938d8aa1df4e3463e8eb2b8df`  
		Last Modified: Tue, 25 Aug 2026 00:51:44 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5.2` - unknown; unknown

```console
$ docker pull couchdb@sha256:b7aedfae489ec2c0942058c166cc0363420c4f0053c3a77db40017b170a9b83d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4212352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68e4297e4e3023095efb11c9e9cfe9df0b6d4a3b36fb538d8b15598dbfebfabb`

```dockerfile
```

-	Layers:
	-	`sha256:ac7ea6a2215d8e04abe2718701ff962e82907f8859ad9424cf9d267bd13d4145`  
		Last Modified: Tue, 25 Aug 2026 00:51:42 GMT  
		Size: 4.2 MB (4180677 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09148676ac7c399dee20b338c2ee4f915b86c4517accb24ff771ca18ea4de7ba`  
		Last Modified: Tue, 25 Aug 2026 00:51:42 GMT  
		Size: 31.7 KB (31675 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.5.2` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:e28078002aac09a753d839e929b251066fe98b3bb0660e70871728e8030452e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.6 MB (148622949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af9c0748839d2ed941c3909962e94f05a0321642684da82707e8d3904e118591`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:02 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 25 Aug 2026 00:53:02 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Tue, 25 Aug 2026 00:53:10 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:14 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 25 Aug 2026 00:53:14 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 25 Aug 2026 00:53:21 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:21 GMT
ENV COUCHDB_VERSION=3.5.2.1
# Tue, 25 Aug 2026 00:53:21 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 25 Aug 2026 00:53:35 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 25 Aug 2026 00:53:35 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Tue, 25 Aug 2026 00:53:35 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Tue, 25 Aug 2026 00:53:35 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 25 Aug 2026 00:53:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:53:35 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:53:35 GMT
VOLUME [/opt/couchdb/data]
# Tue, 25 Aug 2026 00:53:35 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Tue, 25 Aug 2026 00:53:35 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35e2e599777a5bf1499cdaa5d1fc828b6b22f909dc467e7b69e4bcc24e080636`  
		Last Modified: Tue, 25 Aug 2026 00:53:48 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:168c54f2ad78ebd3f837e33d70cafbe8f73686b22dbd4aec51d4ba7c3f0ad9b7`  
		Last Modified: Tue, 25 Aug 2026 00:53:49 GMT  
		Size: 7.3 MB (7261100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:180f7a98d4edd83890ef0fd9501f9d4a61e9b3e8bed7b1bf79878ae75b701ef2`  
		Last Modified: Tue, 25 Aug 2026 00:53:48 GMT  
		Size: 382.6 KB (382619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e91af6d2d7723b071f73f5c039ed05e4089dcc22031baabc8469dac3b393d113`  
		Last Modified: Tue, 25 Aug 2026 00:53:48 GMT  
		Size: 338.7 KB (338742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32ef3242fcbc49f4848b0f32ef8c6fe6a5e60b205982a79f5dff2a820c3b4cf5`  
		Last Modified: Tue, 25 Aug 2026 00:53:49 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdc2f20338bcedfdf7b2f2f87c5158364a27064f15dc496f4ec84ae939161c76`  
		Last Modified: Tue, 25 Aug 2026 00:53:52 GMT  
		Size: 110.5 MB (110475463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9f7a94be9eaa34d2df6b11cfa188be3ebd9d9fa151b823d37400826cfbb1d55`  
		Last Modified: Tue, 25 Aug 2026 00:53:50 GMT  
		Size: 380.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95ebdf2fb85868f55822952096d9451ebb9835953a408db132d7bc7a2d2bd22d`  
		Last Modified: Tue, 25 Aug 2026 00:53:50 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af3d48dd58f7c5ab40284a34b8e7906b9443311d01689a09fad76ace4e96eaeb`  
		Last Modified: Tue, 25 Aug 2026 00:53:50 GMT  
		Size: 2.2 KB (2229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4b4a6d88608958d15998359e89d84e0a2b2fc5344ca8a10b191271a9dc92127`  
		Last Modified: Tue, 25 Aug 2026 00:53:51 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5.2` - unknown; unknown

```console
$ docker pull couchdb@sha256:152035015ecdeb2fcbdbe0a3cea3b0793ee0a05b9885ccc7d43aab397558d6d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4212867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b990d7a678b2f513952f0b0a13d19e43f1bc62b97fa651453e2593849ca40d6f`

```dockerfile
```

-	Layers:
	-	`sha256:32c3b31256bf6ea426ff31515a31a5bdf58ca754800f84327e66d531258cadb9`  
		Last Modified: Tue, 25 Aug 2026 00:53:48 GMT  
		Size: 4.2 MB (4180985 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c343d80f29a3d23856c569a8aed5731a85c7fe2210366f96a078331d91e20d0`  
		Last Modified: Tue, 25 Aug 2026 00:53:48 GMT  
		Size: 31.9 KB (31882 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.5.2-nouveau`

```console
$ docker pull couchdb@sha256:9a33e9274650c9046921bd9bcd903f388ea87d2965ca90b10330ba8703b9f50f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3.5.2-nouveau` - linux; amd64

```console
$ docker pull couchdb@sha256:4c792e275316e1ff60bb14d2b34f357e20626077906375d2b44b16e8771a7e4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.9 MB (150928836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da3172bafdcdfcae651ba49fe401c8824bf2eef1850d5d1b94b1c24dcba052c2`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:51:10 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 25 Aug 2026 00:51:10 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Tue, 25 Aug 2026 00:51:17 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:22 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:24 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 25 Aug 2026 00:51:24 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 25 Aug 2026 00:51:30 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:30 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 25 Aug 2026 00:51:36 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends couchdb-nouveau=3.5.2.1~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Tue, 25 Aug 2026 00:51:36 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Tue, 25 Aug 2026 00:51:36 GMT
VOLUME [/opt/nouveau/data]
# Tue, 25 Aug 2026 00:51:36 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Tue, 25 Aug 2026 00:51:36 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6220db655eb5cfad58e6cea6f371998f9810f086d94cd4e96ad8c2fd4939512f`  
		Last Modified: Tue, 25 Aug 2026 00:51:50 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f305d31ef66152cfb78c749367cda0d54b286308c620c9bc030e1476594313b9`  
		Last Modified: Tue, 25 Aug 2026 00:51:51 GMT  
		Size: 7.5 MB (7492101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e41ad4187d379a5e8b70deade3410dc4537517262d155dcf4a807f481020b0e`  
		Last Modified: Tue, 25 Aug 2026 00:51:52 GMT  
		Size: 70.1 MB (70053111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a57e96f22062f22245361542e136a321fc2ecff0455f0d0e019a8bbfd12d20`  
		Last Modified: Tue, 25 Aug 2026 00:51:50 GMT  
		Size: 426.0 KB (425958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0382069f332ca22afe04f55fea3c2e76fb960aaa0f57465168190c7f4cb2f67`  
		Last Modified: Tue, 25 Aug 2026 00:51:51 GMT  
		Size: 347.4 KB (347382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e614322cf10c9ad9b2f22c1de047c868329ed87382100b12520d47c43f6473f`  
		Last Modified: Tue, 25 Aug 2026 00:51:51 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:386c582ceba2469998fa196939d721bd362a99e00984c724288cd7e1da4cc4c6`  
		Last Modified: Tue, 25 Aug 2026 00:51:53 GMT  
		Size: 42.8 MB (42815741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97c902d93e874921a22a616c3638e345447e2d3766394d49b5c3fd516b6fdb6a`  
		Last Modified: Tue, 25 Aug 2026 00:51:53 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5.2-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:a55e8b53516b5585de96dbc1ce75ea876df31051ce45117d27246201389915da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3389496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03dd94d7400af799966f66a05eaf7e9e215eccab2a509bf2ab104233ea8e5ace`

```dockerfile
```

-	Layers:
	-	`sha256:264df13473d1595a9b188ce6731f877bb62df1337389ee578c4bd79327e33fb6`  
		Last Modified: Tue, 25 Aug 2026 00:51:50 GMT  
		Size: 3.4 MB (3364981 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f7531fa581f00b486c1d45854665c9da9548120f66362b89494314100ccaf60`  
		Last Modified: Tue, 25 Aug 2026 00:51:50 GMT  
		Size: 24.5 KB (24515 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.5.2-nouveau` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:36eb634e2257c96c9367ab8bdddaeee0eeb06cf3cd8f1c51a9553b66804aa7eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150085198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3393b9b980641ff31a6e7606f005e3e2400cf9876813b92c05d476562efb36e`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:03 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 25 Aug 2026 00:53:03 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Tue, 25 Aug 2026 00:53:11 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:16 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:20 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 25 Aug 2026 00:53:20 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 25 Aug 2026 00:53:25 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:25 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 25 Aug 2026 00:53:31 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends couchdb-nouveau=3.5.2.1~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Tue, 25 Aug 2026 00:53:31 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Tue, 25 Aug 2026 00:53:31 GMT
VOLUME [/opt/nouveau/data]
# Tue, 25 Aug 2026 00:53:31 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Tue, 25 Aug 2026 00:53:31 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfbc5e6712e40110685cfbdfc2b0e0e3f5211cd9ca097a0d51ae45237c4119b0`  
		Last Modified: Tue, 25 Aug 2026 00:53:45 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f212a5c291ef49006cb3696c15cc5ca4b9fdc78e315d5dcdc41cfaab225071b0`  
		Last Modified: Tue, 25 Aug 2026 00:53:46 GMT  
		Size: 7.3 MB (7261072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0960ba14e97394faf1e4b81be247aa41f9e46d7258c10265894f7fb03dc9afe4`  
		Last Modified: Tue, 25 Aug 2026 00:53:48 GMT  
		Size: 69.2 MB (69193028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1c50850cc1b24484b026c4aa686b24b541895540f7e543f940e059c541dbd7c`  
		Last Modified: Tue, 25 Aug 2026 00:53:46 GMT  
		Size: 390.2 KB (390231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fbb5f0f4acb73827fa21ed0289956bc3274eb8499be7182e14d8dfb40f96082`  
		Last Modified: Tue, 25 Aug 2026 00:53:47 GMT  
		Size: 347.4 KB (347421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afe0e8d210af2c4f2b7fa147c21c9cb8cd0dfa1f395aef802b1f4701882e3dba`  
		Last Modified: Tue, 25 Aug 2026 00:53:47 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc3ffa7adc539df11d73e996242e6cc40fb7bee9ef74a6ccc9d6b99cb68c8a97`  
		Last Modified: Tue, 25 Aug 2026 00:53:48 GMT  
		Size: 42.7 MB (42731982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:022deef880fa1009ff68bdee5cdcdeb81e154388831372de7e8eb018aae5b1e0`  
		Last Modified: Tue, 25 Aug 2026 00:53:48 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5.2-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:ac28bc12ebcd841f8664d6fa17801dc9ce597e3315cb1ae503a0bcc4e5d9d96f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3388343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14d00a700b780b4254534938eb412971eb781f8af0098b999900e3afe14af5cd`

```dockerfile
```

-	Layers:
	-	`sha256:edb9e5a311568558ebc95e88f3a88b228d1f8fc45bff5857d3596a8e9017d1d1`  
		Last Modified: Tue, 25 Aug 2026 00:53:46 GMT  
		Size: 3.4 MB (3363634 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c80b286b7645743d57124c087d2c568c446a16b7ceea964b42f6a3a78f9fb44`  
		Last Modified: Tue, 25 Aug 2026 00:53:45 GMT  
		Size: 24.7 KB (24709 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.5.2.1`

```console
$ docker pull couchdb@sha256:9ea24cbd76522fe845d1c32c7fd1dcfc8a3ba73dcc4817d62f8a7f7f1dfaffe3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3.5.2.1` - linux; amd64

```console
$ docker pull couchdb@sha256:199ff89f9a930df6032a216570ae0169fcc36c449bb02b40fafeb6efecdb606f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.9 MB (148851534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1dc96c1aa5fb3bce81e88ea68bea50e27c01709a6296e3574579ef24263c18f`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:59 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 25 Aug 2026 00:50:59 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Tue, 25 Aug 2026 00:51:06 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:09 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 25 Aug 2026 00:51:09 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 25 Aug 2026 00:51:15 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:15 GMT
ENV COUCHDB_VERSION=3.5.2.1
# Tue, 25 Aug 2026 00:51:15 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 25 Aug 2026 00:51:29 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 25 Aug 2026 00:51:29 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Tue, 25 Aug 2026 00:51:29 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Tue, 25 Aug 2026 00:51:29 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 25 Aug 2026 00:51:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:51:29 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:51:29 GMT
VOLUME [/opt/couchdb/data]
# Tue, 25 Aug 2026 00:51:29 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Tue, 25 Aug 2026 00:51:29 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ab234e62f046177281a5513ca941cba1a426d7c892a028d5cbc94cca9eaa856`  
		Last Modified: Tue, 25 Aug 2026 00:51:42 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9084865ad728bd279b67de879f8b97ddc1b7d4719e6dd1035e9f8004cc58c6c8`  
		Last Modified: Tue, 25 Aug 2026 00:51:42 GMT  
		Size: 7.5 MB (7492122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ee552c45507c5650c37dbd137f81e202e01ee5d2ca76656b64ad2cbdae999ce`  
		Last Modified: Tue, 25 Aug 2026 00:51:42 GMT  
		Size: 417.6 KB (417591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa748742e839fbc0865a60021f97645c7918f1584de9e87915db400ed0ca4775`  
		Last Modified: Tue, 25 Aug 2026 00:51:42 GMT  
		Size: 338.6 KB (338585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1c83f2bc7d6261d80188a106728987b41aba53c110af251a2f0470238e5e4d3`  
		Last Modified: Tue, 25 Aug 2026 00:51:43 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b63ee188c3ec94b2fd403ee353b0c18bf2d3de51501e3e5911fc71c6814ce5e`  
		Last Modified: Tue, 25 Aug 2026 00:51:46 GMT  
		Size: 110.8 MB (110805142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41d739519592c76787bad9ed62ca7b92616efc1a7a02df1293d3ff2914b42b5d`  
		Last Modified: Tue, 25 Aug 2026 00:51:43 GMT  
		Size: 380.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d4686f7c3ba92beab9fd6d1cc97bad811c449d1969a0bd5b643eb9c1420ee5e`  
		Last Modified: Tue, 25 Aug 2026 00:51:43 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cbe4b92b478b8205e57c2117e89979f17b4f85b1b9051611e18f7c333103bc0`  
		Last Modified: Tue, 25 Aug 2026 00:51:44 GMT  
		Size: 2.2 KB (2229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db6f63234f947a740cbe844d575f6ca362aceef938d8aa1df4e3463e8eb2b8df`  
		Last Modified: Tue, 25 Aug 2026 00:51:44 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5.2.1` - unknown; unknown

```console
$ docker pull couchdb@sha256:b7aedfae489ec2c0942058c166cc0363420c4f0053c3a77db40017b170a9b83d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4212352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68e4297e4e3023095efb11c9e9cfe9df0b6d4a3b36fb538d8b15598dbfebfabb`

```dockerfile
```

-	Layers:
	-	`sha256:ac7ea6a2215d8e04abe2718701ff962e82907f8859ad9424cf9d267bd13d4145`  
		Last Modified: Tue, 25 Aug 2026 00:51:42 GMT  
		Size: 4.2 MB (4180677 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09148676ac7c399dee20b338c2ee4f915b86c4517accb24ff771ca18ea4de7ba`  
		Last Modified: Tue, 25 Aug 2026 00:51:42 GMT  
		Size: 31.7 KB (31675 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.5.2.1` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:e28078002aac09a753d839e929b251066fe98b3bb0660e70871728e8030452e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.6 MB (148622949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af9c0748839d2ed941c3909962e94f05a0321642684da82707e8d3904e118591`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:02 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 25 Aug 2026 00:53:02 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Tue, 25 Aug 2026 00:53:10 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:14 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 25 Aug 2026 00:53:14 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 25 Aug 2026 00:53:21 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:21 GMT
ENV COUCHDB_VERSION=3.5.2.1
# Tue, 25 Aug 2026 00:53:21 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 25 Aug 2026 00:53:35 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 25 Aug 2026 00:53:35 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Tue, 25 Aug 2026 00:53:35 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Tue, 25 Aug 2026 00:53:35 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 25 Aug 2026 00:53:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:53:35 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:53:35 GMT
VOLUME [/opt/couchdb/data]
# Tue, 25 Aug 2026 00:53:35 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Tue, 25 Aug 2026 00:53:35 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35e2e599777a5bf1499cdaa5d1fc828b6b22f909dc467e7b69e4bcc24e080636`  
		Last Modified: Tue, 25 Aug 2026 00:53:48 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:168c54f2ad78ebd3f837e33d70cafbe8f73686b22dbd4aec51d4ba7c3f0ad9b7`  
		Last Modified: Tue, 25 Aug 2026 00:53:49 GMT  
		Size: 7.3 MB (7261100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:180f7a98d4edd83890ef0fd9501f9d4a61e9b3e8bed7b1bf79878ae75b701ef2`  
		Last Modified: Tue, 25 Aug 2026 00:53:48 GMT  
		Size: 382.6 KB (382619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e91af6d2d7723b071f73f5c039ed05e4089dcc22031baabc8469dac3b393d113`  
		Last Modified: Tue, 25 Aug 2026 00:53:48 GMT  
		Size: 338.7 KB (338742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32ef3242fcbc49f4848b0f32ef8c6fe6a5e60b205982a79f5dff2a820c3b4cf5`  
		Last Modified: Tue, 25 Aug 2026 00:53:49 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdc2f20338bcedfdf7b2f2f87c5158364a27064f15dc496f4ec84ae939161c76`  
		Last Modified: Tue, 25 Aug 2026 00:53:52 GMT  
		Size: 110.5 MB (110475463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9f7a94be9eaa34d2df6b11cfa188be3ebd9d9fa151b823d37400826cfbb1d55`  
		Last Modified: Tue, 25 Aug 2026 00:53:50 GMT  
		Size: 380.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95ebdf2fb85868f55822952096d9451ebb9835953a408db132d7bc7a2d2bd22d`  
		Last Modified: Tue, 25 Aug 2026 00:53:50 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af3d48dd58f7c5ab40284a34b8e7906b9443311d01689a09fad76ace4e96eaeb`  
		Last Modified: Tue, 25 Aug 2026 00:53:50 GMT  
		Size: 2.2 KB (2229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4b4a6d88608958d15998359e89d84e0a2b2fc5344ca8a10b191271a9dc92127`  
		Last Modified: Tue, 25 Aug 2026 00:53:51 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5.2.1` - unknown; unknown

```console
$ docker pull couchdb@sha256:152035015ecdeb2fcbdbe0a3cea3b0793ee0a05b9885ccc7d43aab397558d6d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4212867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b990d7a678b2f513952f0b0a13d19e43f1bc62b97fa651453e2593849ca40d6f`

```dockerfile
```

-	Layers:
	-	`sha256:32c3b31256bf6ea426ff31515a31a5bdf58ca754800f84327e66d531258cadb9`  
		Last Modified: Tue, 25 Aug 2026 00:53:48 GMT  
		Size: 4.2 MB (4180985 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c343d80f29a3d23856c569a8aed5731a85c7fe2210366f96a078331d91e20d0`  
		Last Modified: Tue, 25 Aug 2026 00:53:48 GMT  
		Size: 31.9 KB (31882 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.5.2.1-nouveau`

```console
$ docker pull couchdb@sha256:9a33e9274650c9046921bd9bcd903f388ea87d2965ca90b10330ba8703b9f50f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3.5.2.1-nouveau` - linux; amd64

```console
$ docker pull couchdb@sha256:4c792e275316e1ff60bb14d2b34f357e20626077906375d2b44b16e8771a7e4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.9 MB (150928836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da3172bafdcdfcae651ba49fe401c8824bf2eef1850d5d1b94b1c24dcba052c2`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:51:10 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 25 Aug 2026 00:51:10 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Tue, 25 Aug 2026 00:51:17 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:22 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:24 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 25 Aug 2026 00:51:24 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 25 Aug 2026 00:51:30 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:30 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 25 Aug 2026 00:51:36 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends couchdb-nouveau=3.5.2.1~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Tue, 25 Aug 2026 00:51:36 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Tue, 25 Aug 2026 00:51:36 GMT
VOLUME [/opt/nouveau/data]
# Tue, 25 Aug 2026 00:51:36 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Tue, 25 Aug 2026 00:51:36 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6220db655eb5cfad58e6cea6f371998f9810f086d94cd4e96ad8c2fd4939512f`  
		Last Modified: Tue, 25 Aug 2026 00:51:50 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f305d31ef66152cfb78c749367cda0d54b286308c620c9bc030e1476594313b9`  
		Last Modified: Tue, 25 Aug 2026 00:51:51 GMT  
		Size: 7.5 MB (7492101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e41ad4187d379a5e8b70deade3410dc4537517262d155dcf4a807f481020b0e`  
		Last Modified: Tue, 25 Aug 2026 00:51:52 GMT  
		Size: 70.1 MB (70053111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a57e96f22062f22245361542e136a321fc2ecff0455f0d0e019a8bbfd12d20`  
		Last Modified: Tue, 25 Aug 2026 00:51:50 GMT  
		Size: 426.0 KB (425958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0382069f332ca22afe04f55fea3c2e76fb960aaa0f57465168190c7f4cb2f67`  
		Last Modified: Tue, 25 Aug 2026 00:51:51 GMT  
		Size: 347.4 KB (347382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e614322cf10c9ad9b2f22c1de047c868329ed87382100b12520d47c43f6473f`  
		Last Modified: Tue, 25 Aug 2026 00:51:51 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:386c582ceba2469998fa196939d721bd362a99e00984c724288cd7e1da4cc4c6`  
		Last Modified: Tue, 25 Aug 2026 00:51:53 GMT  
		Size: 42.8 MB (42815741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97c902d93e874921a22a616c3638e345447e2d3766394d49b5c3fd516b6fdb6a`  
		Last Modified: Tue, 25 Aug 2026 00:51:53 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5.2.1-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:a55e8b53516b5585de96dbc1ce75ea876df31051ce45117d27246201389915da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3389496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03dd94d7400af799966f66a05eaf7e9e215eccab2a509bf2ab104233ea8e5ace`

```dockerfile
```

-	Layers:
	-	`sha256:264df13473d1595a9b188ce6731f877bb62df1337389ee578c4bd79327e33fb6`  
		Last Modified: Tue, 25 Aug 2026 00:51:50 GMT  
		Size: 3.4 MB (3364981 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f7531fa581f00b486c1d45854665c9da9548120f66362b89494314100ccaf60`  
		Last Modified: Tue, 25 Aug 2026 00:51:50 GMT  
		Size: 24.5 KB (24515 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.5.2.1-nouveau` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:36eb634e2257c96c9367ab8bdddaeee0eeb06cf3cd8f1c51a9553b66804aa7eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150085198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3393b9b980641ff31a6e7606f005e3e2400cf9876813b92c05d476562efb36e`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:03 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 25 Aug 2026 00:53:03 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Tue, 25 Aug 2026 00:53:11 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:16 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:20 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 25 Aug 2026 00:53:20 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 25 Aug 2026 00:53:25 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:25 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 25 Aug 2026 00:53:31 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends couchdb-nouveau=3.5.2.1~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Tue, 25 Aug 2026 00:53:31 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Tue, 25 Aug 2026 00:53:31 GMT
VOLUME [/opt/nouveau/data]
# Tue, 25 Aug 2026 00:53:31 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Tue, 25 Aug 2026 00:53:31 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfbc5e6712e40110685cfbdfc2b0e0e3f5211cd9ca097a0d51ae45237c4119b0`  
		Last Modified: Tue, 25 Aug 2026 00:53:45 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f212a5c291ef49006cb3696c15cc5ca4b9fdc78e315d5dcdc41cfaab225071b0`  
		Last Modified: Tue, 25 Aug 2026 00:53:46 GMT  
		Size: 7.3 MB (7261072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0960ba14e97394faf1e4b81be247aa41f9e46d7258c10265894f7fb03dc9afe4`  
		Last Modified: Tue, 25 Aug 2026 00:53:48 GMT  
		Size: 69.2 MB (69193028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1c50850cc1b24484b026c4aa686b24b541895540f7e543f940e059c541dbd7c`  
		Last Modified: Tue, 25 Aug 2026 00:53:46 GMT  
		Size: 390.2 KB (390231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fbb5f0f4acb73827fa21ed0289956bc3274eb8499be7182e14d8dfb40f96082`  
		Last Modified: Tue, 25 Aug 2026 00:53:47 GMT  
		Size: 347.4 KB (347421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afe0e8d210af2c4f2b7fa147c21c9cb8cd0dfa1f395aef802b1f4701882e3dba`  
		Last Modified: Tue, 25 Aug 2026 00:53:47 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc3ffa7adc539df11d73e996242e6cc40fb7bee9ef74a6ccc9d6b99cb68c8a97`  
		Last Modified: Tue, 25 Aug 2026 00:53:48 GMT  
		Size: 42.7 MB (42731982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:022deef880fa1009ff68bdee5cdcdeb81e154388831372de7e8eb018aae5b1e0`  
		Last Modified: Tue, 25 Aug 2026 00:53:48 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5.2.1-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:ac28bc12ebcd841f8664d6fa17801dc9ce597e3315cb1ae503a0bcc4e5d9d96f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3388343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14d00a700b780b4254534938eb412971eb781f8af0098b999900e3afe14af5cd`

```dockerfile
```

-	Layers:
	-	`sha256:edb9e5a311568558ebc95e88f3a88b228d1f8fc45bff5857d3596a8e9017d1d1`  
		Last Modified: Tue, 25 Aug 2026 00:53:46 GMT  
		Size: 3.4 MB (3363634 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c80b286b7645743d57124c087d2c568c446a16b7ceea964b42f6a3a78f9fb44`  
		Last Modified: Tue, 25 Aug 2026 00:53:45 GMT  
		Size: 24.7 KB (24709 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:latest`

```console
$ docker pull couchdb@sha256:9ea24cbd76522fe845d1c32c7fd1dcfc8a3ba73dcc4817d62f8a7f7f1dfaffe3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:latest` - linux; amd64

```console
$ docker pull couchdb@sha256:199ff89f9a930df6032a216570ae0169fcc36c449bb02b40fafeb6efecdb606f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.9 MB (148851534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1dc96c1aa5fb3bce81e88ea68bea50e27c01709a6296e3574579ef24263c18f`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:59 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 25 Aug 2026 00:50:59 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Tue, 25 Aug 2026 00:51:06 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:09 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 25 Aug 2026 00:51:09 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 25 Aug 2026 00:51:15 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:51:15 GMT
ENV COUCHDB_VERSION=3.5.2.1
# Tue, 25 Aug 2026 00:51:15 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 25 Aug 2026 00:51:29 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 25 Aug 2026 00:51:29 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Tue, 25 Aug 2026 00:51:29 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Tue, 25 Aug 2026 00:51:29 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 25 Aug 2026 00:51:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:51:29 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:51:29 GMT
VOLUME [/opt/couchdb/data]
# Tue, 25 Aug 2026 00:51:29 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Tue, 25 Aug 2026 00:51:29 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ab234e62f046177281a5513ca941cba1a426d7c892a028d5cbc94cca9eaa856`  
		Last Modified: Tue, 25 Aug 2026 00:51:42 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9084865ad728bd279b67de879f8b97ddc1b7d4719e6dd1035e9f8004cc58c6c8`  
		Last Modified: Tue, 25 Aug 2026 00:51:42 GMT  
		Size: 7.5 MB (7492122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ee552c45507c5650c37dbd137f81e202e01ee5d2ca76656b64ad2cbdae999ce`  
		Last Modified: Tue, 25 Aug 2026 00:51:42 GMT  
		Size: 417.6 KB (417591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa748742e839fbc0865a60021f97645c7918f1584de9e87915db400ed0ca4775`  
		Last Modified: Tue, 25 Aug 2026 00:51:42 GMT  
		Size: 338.6 KB (338585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1c83f2bc7d6261d80188a106728987b41aba53c110af251a2f0470238e5e4d3`  
		Last Modified: Tue, 25 Aug 2026 00:51:43 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b63ee188c3ec94b2fd403ee353b0c18bf2d3de51501e3e5911fc71c6814ce5e`  
		Last Modified: Tue, 25 Aug 2026 00:51:46 GMT  
		Size: 110.8 MB (110805142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41d739519592c76787bad9ed62ca7b92616efc1a7a02df1293d3ff2914b42b5d`  
		Last Modified: Tue, 25 Aug 2026 00:51:43 GMT  
		Size: 380.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d4686f7c3ba92beab9fd6d1cc97bad811c449d1969a0bd5b643eb9c1420ee5e`  
		Last Modified: Tue, 25 Aug 2026 00:51:43 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cbe4b92b478b8205e57c2117e89979f17b4f85b1b9051611e18f7c333103bc0`  
		Last Modified: Tue, 25 Aug 2026 00:51:44 GMT  
		Size: 2.2 KB (2229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db6f63234f947a740cbe844d575f6ca362aceef938d8aa1df4e3463e8eb2b8df`  
		Last Modified: Tue, 25 Aug 2026 00:51:44 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:latest` - unknown; unknown

```console
$ docker pull couchdb@sha256:b7aedfae489ec2c0942058c166cc0363420c4f0053c3a77db40017b170a9b83d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4212352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68e4297e4e3023095efb11c9e9cfe9df0b6d4a3b36fb538d8b15598dbfebfabb`

```dockerfile
```

-	Layers:
	-	`sha256:ac7ea6a2215d8e04abe2718701ff962e82907f8859ad9424cf9d267bd13d4145`  
		Last Modified: Tue, 25 Aug 2026 00:51:42 GMT  
		Size: 4.2 MB (4180677 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09148676ac7c399dee20b338c2ee4f915b86c4517accb24ff771ca18ea4de7ba`  
		Last Modified: Tue, 25 Aug 2026 00:51:42 GMT  
		Size: 31.7 KB (31675 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:latest` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:e28078002aac09a753d839e929b251066fe98b3bb0660e70871728e8030452e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.6 MB (148622949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af9c0748839d2ed941c3909962e94f05a0321642684da82707e8d3904e118591`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:02 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 25 Aug 2026 00:53:02 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Tue, 25 Aug 2026 00:53:10 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:14 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 25 Aug 2026 00:53:14 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 25 Aug 2026 00:53:21 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:21 GMT
ENV COUCHDB_VERSION=3.5.2.1
# Tue, 25 Aug 2026 00:53:21 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 25 Aug 2026 00:53:35 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 25 Aug 2026 00:53:35 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Tue, 25 Aug 2026 00:53:35 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Tue, 25 Aug 2026 00:53:35 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 25 Aug 2026 00:53:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Tue, 25 Aug 2026 00:53:35 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:53:35 GMT
VOLUME [/opt/couchdb/data]
# Tue, 25 Aug 2026 00:53:35 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Tue, 25 Aug 2026 00:53:35 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35e2e599777a5bf1499cdaa5d1fc828b6b22f909dc467e7b69e4bcc24e080636`  
		Last Modified: Tue, 25 Aug 2026 00:53:48 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:168c54f2ad78ebd3f837e33d70cafbe8f73686b22dbd4aec51d4ba7c3f0ad9b7`  
		Last Modified: Tue, 25 Aug 2026 00:53:49 GMT  
		Size: 7.3 MB (7261100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:180f7a98d4edd83890ef0fd9501f9d4a61e9b3e8bed7b1bf79878ae75b701ef2`  
		Last Modified: Tue, 25 Aug 2026 00:53:48 GMT  
		Size: 382.6 KB (382619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e91af6d2d7723b071f73f5c039ed05e4089dcc22031baabc8469dac3b393d113`  
		Last Modified: Tue, 25 Aug 2026 00:53:48 GMT  
		Size: 338.7 KB (338742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32ef3242fcbc49f4848b0f32ef8c6fe6a5e60b205982a79f5dff2a820c3b4cf5`  
		Last Modified: Tue, 25 Aug 2026 00:53:49 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdc2f20338bcedfdf7b2f2f87c5158364a27064f15dc496f4ec84ae939161c76`  
		Last Modified: Tue, 25 Aug 2026 00:53:52 GMT  
		Size: 110.5 MB (110475463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9f7a94be9eaa34d2df6b11cfa188be3ebd9d9fa151b823d37400826cfbb1d55`  
		Last Modified: Tue, 25 Aug 2026 00:53:50 GMT  
		Size: 380.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95ebdf2fb85868f55822952096d9451ebb9835953a408db132d7bc7a2d2bd22d`  
		Last Modified: Tue, 25 Aug 2026 00:53:50 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af3d48dd58f7c5ab40284a34b8e7906b9443311d01689a09fad76ace4e96eaeb`  
		Last Modified: Tue, 25 Aug 2026 00:53:50 GMT  
		Size: 2.2 KB (2229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4b4a6d88608958d15998359e89d84e0a2b2fc5344ca8a10b191271a9dc92127`  
		Last Modified: Tue, 25 Aug 2026 00:53:51 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:latest` - unknown; unknown

```console
$ docker pull couchdb@sha256:152035015ecdeb2fcbdbe0a3cea3b0793ee0a05b9885ccc7d43aab397558d6d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4212867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b990d7a678b2f513952f0b0a13d19e43f1bc62b97fa651453e2593849ca40d6f`

```dockerfile
```

-	Layers:
	-	`sha256:32c3b31256bf6ea426ff31515a31a5bdf58ca754800f84327e66d531258cadb9`  
		Last Modified: Tue, 25 Aug 2026 00:53:48 GMT  
		Size: 4.2 MB (4180985 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c343d80f29a3d23856c569a8aed5731a85c7fe2210366f96a078331d91e20d0`  
		Last Modified: Tue, 25 Aug 2026 00:53:48 GMT  
		Size: 31.9 KB (31882 bytes)  
		MIME: application/vnd.in-toto+json
