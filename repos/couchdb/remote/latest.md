## `couchdb:latest`

```console
$ docker pull couchdb@sha256:1fa2569a55cd51bc9fe994871ab6caf2692883f456ce5ca93516b9ccb08f414b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `couchdb:latest` - linux; amd64

```console
$ docker pull couchdb@sha256:78ffa88e089b41dfb70438811e3dd0133a640c2b0eed08c9a6bbb656c96333b6
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.2 MB (91153677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:147072b51b95ae9cfea0fbb4fd7de63e2136134b531f28ebd40ef9ee65a461b0`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:44 GMT
ADD file:e2398d0bf516084b2b37ba1bb76b86d56e66999831df692461679fbd6a5d8eb6 in / 
# Wed, 11 Jan 2023 02:34:44 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:42:06 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 11 Jan 2023 03:42:07 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb
# Wed, 11 Jan 2023 03:42:14 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:42:18 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends gosu tini;     rm -rf /var/lib/apt/lists/*;     gosu nobody true;     tini --version
# Wed, 11 Jan 2023 03:42:18 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 11 Jan 2023 03:42:24 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt-key list;     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/*
# Thu, 12 Jan 2023 02:10:28 GMT
ENV COUCHDB_VERSION=3.3.1
# Thu, 12 Jan 2023 02:10:28 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null
# Thu, 12 Jan 2023 02:10:42 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages             couchdb="$COUCHDB_VERSION"~bullseye     ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*;
# Thu, 12 Jan 2023 02:10:43 GMT
COPY --chown=couchdb:couchdbfile:459581cb8ff69dbc1cb246db7b488d5b6127e57fcbb0d0df1288722b5cd25111 in /opt/couchdb/etc/default.d/ 
# Thu, 12 Jan 2023 02:10:43 GMT
COPY --chown=couchdb:couchdbfile:ef998123ee941cb75b9e8f8c244fd9e244aff7d6394013d8db7515f50882f0cd in /opt/couchdb/etc/ 
# Thu, 12 Jan 2023 02:10:43 GMT
COPY file:0a26a859e55e89f8409b5ab4022d28cfe05edddfe16a742ba28c73ecdbcff9c1 in /usr/local/bin 
# Thu, 12 Jan 2023 02:10:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Thu, 12 Jan 2023 02:10:44 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Thu, 12 Jan 2023 02:10:44 GMT
VOLUME [/opt/couchdb/data]
# Thu, 12 Jan 2023 02:10:44 GMT
EXPOSE 4369 5984 9100
# Thu, 12 Jan 2023 02:10:44 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:8740c948ffd4c816ea7ca963f99ca52f4788baa23f228da9581a9ea2edd3fcd7`  
		Last Modified: Wed, 11 Jan 2023 02:39:07 GMT  
		Size: 31.4 MB (31396972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b54fc1f41d9e17df7d49c1f5111f508dcb398b5196ebba6d187873dc3480ac6`  
		Last Modified: Wed, 11 Jan 2023 03:44:34 GMT  
		Size: 3.4 KB (3407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb927a4266fd4cede9f246cd7618acfdc3616eb4317e9cb36336d6c1cc6fd06`  
		Last Modified: Wed, 11 Jan 2023 03:44:33 GMT  
		Size: 5.2 MB (5224274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a4e44b11124abc70dfa0c6427e095db1f27f6dde701d1f7189b11da9493502c`  
		Last Modified: Wed, 11 Jan 2023 03:44:32 GMT  
		Size: 1.6 MB (1553321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef2a9c48048ec5db36fe98ca1615725d8b2ffae3208912b30f46d66350d567c`  
		Last Modified: Wed, 11 Jan 2023 03:44:32 GMT  
		Size: 295.6 KB (295572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f666b5cf8a228d02c23a3a9005b06e8d354237cf8fcb7d548d3cf736ce280e12`  
		Last Modified: Thu, 12 Jan 2023 02:11:08 GMT  
		Size: 275.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87694cf2a8089087908478dcd211c727523476024471bd27c6fe3e11ea227166`  
		Last Modified: Thu, 12 Jan 2023 02:11:12 GMT  
		Size: 52.7 MB (52676174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33704cab9fd409df219447631dbe54b790b108d6e1f31b07085505a8fc9d9f3`  
		Last Modified: Thu, 12 Jan 2023 02:11:07 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea49efab2202fe5d2a81ad4232cf355c6b55b74abe1cadda8e196c02d683ad72`  
		Last Modified: Thu, 12 Jan 2023 02:11:06 GMT  
		Size: 998.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da670266347699f9e8a9b59b36e01421651b77f0bcfc107722bdf438c8c6d667`  
		Last Modified: Thu, 12 Jan 2023 02:11:06 GMT  
		Size: 2.2 KB (2183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f62adba66bab33de6c84d28715ebcbc3d6b5e7fa55660efa47aaa876f67a216d`  
		Last Modified: Thu, 12 Jan 2023 02:11:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `couchdb:latest` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:ed00ba73f951d5f496355f043a50b0c1d28169ff66e1383605c87cd5b26c6144
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.5 MB (89524742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b855eaae40b75dc29eb937b8f1d1a345f679ef01cbf689fa45b0637fa2e139c9`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:34 GMT
ADD file:92cf2c9ffaaea1a6bc1baa7b681303b1029dfd6ddbfef1792be8b21aaf09235c in / 
# Wed, 11 Jan 2023 02:57:35 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:57:35 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 11 Jan 2023 03:57:36 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb
# Wed, 11 Jan 2023 03:57:42 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:57:45 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends gosu tini;     rm -rf /var/lib/apt/lists/*;     gosu nobody true;     tini --version
# Wed, 11 Jan 2023 03:57:45 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 11 Jan 2023 03:57:50 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt-key list;     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 22:08:39 GMT
ENV COUCHDB_VERSION=3.3.1
# Wed, 11 Jan 2023 22:08:40 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null
# Wed, 11 Jan 2023 22:08:52 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages             couchdb="$COUCHDB_VERSION"~bullseye     ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*;
# Wed, 11 Jan 2023 22:08:52 GMT
COPY --chown=couchdb:couchdbfile:459581cb8ff69dbc1cb246db7b488d5b6127e57fcbb0d0df1288722b5cd25111 in /opt/couchdb/etc/default.d/ 
# Wed, 11 Jan 2023 22:08:52 GMT
COPY --chown=couchdb:couchdbfile:ef998123ee941cb75b9e8f8c244fd9e244aff7d6394013d8db7515f50882f0cd in /opt/couchdb/etc/ 
# Wed, 11 Jan 2023 22:08:53 GMT
COPY file:0a26a859e55e89f8409b5ab4022d28cfe05edddfe16a742ba28c73ecdbcff9c1 in /usr/local/bin 
# Wed, 11 Jan 2023 22:08:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Wed, 11 Jan 2023 22:08:53 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 11 Jan 2023 22:08:53 GMT
VOLUME [/opt/couchdb/data]
# Wed, 11 Jan 2023 22:08:53 GMT
EXPOSE 4369 5984 9100
# Wed, 11 Jan 2023 22:08:53 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:934ce60d1040c5d4922bae5879321a398777457b7514de02ef69ece49e6aa907`  
		Last Modified: Wed, 11 Jan 2023 03:01:19 GMT  
		Size: 30.0 MB (30044814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:961831464917d8a5133f3840f3e3d15b6bb840593a5cbb857f67c46f39d73546`  
		Last Modified: Wed, 11 Jan 2023 03:59:34 GMT  
		Size: 3.4 KB (3436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ba419ee6c06e64643e7104acf6aaa7133d872e801ba6d5559cf58a005e1d13`  
		Last Modified: Wed, 11 Jan 2023 03:59:33 GMT  
		Size: 5.2 MB (5209470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d2fd7db3c36ccb6f388d0be04337eaf1c4c0b32352e9a7d95b4ae708024cdbd`  
		Last Modified: Wed, 11 Jan 2023 03:59:32 GMT  
		Size: 1.4 MB (1435925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae7fbb1ce521b1b1a114c87f3991a7a9de1562c8be484357ddc8d03f2f2c1404`  
		Last Modified: Wed, 11 Jan 2023 03:59:32 GMT  
		Size: 295.5 KB (295517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df5bcd70f03fefccc3314c5bd804107f5ca7ec891100c2e85d481e9b84f377c3`  
		Last Modified: Wed, 11 Jan 2023 22:09:15 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a54b1952a30cff448a907d4f82fbbac930beeb1bc452c05e9270fef7a3b056e`  
		Last Modified: Wed, 11 Jan 2023 22:09:18 GMT  
		Size: 52.5 MB (52531616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0782ea0b803ce74bf6e5d05e1a11776e25001beb73576a0c42faa330c238eda0`  
		Last Modified: Wed, 11 Jan 2023 22:09:13 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d347329aa65d9c4b005d93d848c27e025f14d6cb638099fafbecd04dbd43c4f7`  
		Last Modified: Wed, 11 Jan 2023 22:09:13 GMT  
		Size: 998.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0736c691206ce54706b7761f838f3cedd9a8c8f72b933d6ee58c55070659bfb5`  
		Last Modified: Wed, 11 Jan 2023 22:09:14 GMT  
		Size: 2.2 KB (2186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b0d0ee154aca0d4270a4eced51b0e6de35a1d7336bb1dc51549889432ea5afc`  
		Last Modified: Wed, 11 Jan 2023 22:09:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `couchdb:latest` - linux; ppc64le

```console
$ docker pull couchdb@sha256:3dbe27c0954f5bc9b14c9addd991ccbc014bf2a1f4208be2ac38945d575fc7e6
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.7 MB (96659339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71245c02d57bea6de896825db5b96fc126473b2cc688ae84d4c67d18f26645b1`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Wed, 11 Jan 2023 03:49:30 GMT
ADD file:3c7553fb5eda606d574ff6c08bc2213f9e6a68910043fe3087e4c1a04b65a18e in / 
# Wed, 11 Jan 2023 03:49:32 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 04:17:48 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 11 Jan 2023 04:17:49 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb
# Wed, 11 Jan 2023 04:18:03 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 04:18:11 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends gosu tini;     rm -rf /var/lib/apt/lists/*;     gosu nobody true;     tini --version
# Wed, 11 Jan 2023 04:18:11 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 11 Jan 2023 04:18:22 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt-key list;     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/*
# Thu, 12 Jan 2023 00:33:57 GMT
ENV COUCHDB_VERSION=3.3.1
# Thu, 12 Jan 2023 00:33:59 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null
# Thu, 12 Jan 2023 00:34:21 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages             couchdb="$COUCHDB_VERSION"~bullseye     ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*;
# Thu, 12 Jan 2023 00:34:23 GMT
COPY --chown=couchdb:couchdbfile:459581cb8ff69dbc1cb246db7b488d5b6127e57fcbb0d0df1288722b5cd25111 in /opt/couchdb/etc/default.d/ 
# Thu, 12 Jan 2023 00:34:23 GMT
COPY --chown=couchdb:couchdbfile:ef998123ee941cb75b9e8f8c244fd9e244aff7d6394013d8db7515f50882f0cd in /opt/couchdb/etc/ 
# Thu, 12 Jan 2023 00:34:24 GMT
COPY file:0a26a859e55e89f8409b5ab4022d28cfe05edddfe16a742ba28c73ecdbcff9c1 in /usr/local/bin 
# Thu, 12 Jan 2023 00:34:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat
# Thu, 12 Jan 2023 00:34:26 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Thu, 12 Jan 2023 00:34:26 GMT
VOLUME [/opt/couchdb/data]
# Thu, 12 Jan 2023 00:34:27 GMT
EXPOSE 4369 5984 9100
# Thu, 12 Jan 2023 00:34:27 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:bbf81328aca90b7ddb122fc175443f5323674a9e51bbb00d5b1d683ef0b858f4`  
		Last Modified: Wed, 11 Jan 2023 03:55:33 GMT  
		Size: 35.3 MB (35268773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d4b7dfde57dc3b711e2273da5a61a5829a57b9d58474f1d5ffd21634458f5e`  
		Last Modified: Wed, 11 Jan 2023 04:19:54 GMT  
		Size: 3.4 KB (3411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8e0b83a7c039dc80fa7b1d8424d0c1a059fbd972e127d4bb4845181526ca907`  
		Last Modified: Wed, 11 Jan 2023 04:19:54 GMT  
		Size: 6.0 MB (6043874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2673661962247aa7e2f981fd8bfb91ba790a2cf92ab3c5c63e6e1340e5f5bc5b`  
		Last Modified: Wed, 11 Jan 2023 04:19:52 GMT  
		Size: 1.5 MB (1509211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88c497897d6b3b0e80026e3b729b1d0d01cb112a46c93249841c7394cb4930e3`  
		Last Modified: Wed, 11 Jan 2023 04:19:52 GMT  
		Size: 295.5 KB (295534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9403f4fb1966638fa28ea0a446b686e49577dbfd672df1c2fc26adc93e2723d3`  
		Last Modified: Thu, 12 Jan 2023 00:34:54 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237e765bcf056085764037f970126bbcc67ba3b2f2dde82444c2e655f8d1861c`  
		Last Modified: Thu, 12 Jan 2023 00:35:02 GMT  
		Size: 53.5 MB (53534567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d1aae2f6ff7bde8cf74ca73321c82a6189d241ccbc9052c71a2407faac1aefa`  
		Last Modified: Thu, 12 Jan 2023 00:34:52 GMT  
		Size: 382.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:002f4c990614acc994cd24eecdeafacfef50d95b0b818ccb9490e1790166836f`  
		Last Modified: Thu, 12 Jan 2023 00:34:52 GMT  
		Size: 1000.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b190d63784e2313a291d286c994d2f03ec625274dd5376ae377e89d0181d414f`  
		Last Modified: Thu, 12 Jan 2023 00:34:52 GMT  
		Size: 2.2 KB (2187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61c9cd39999ec300f570c4b8cc5ad8af05fd227d5efbb382c416c3fb0d301c89`  
		Last Modified: Thu, 12 Jan 2023 00:34:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
