<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `couchdb`

-	[`couchdb:3`](#couchdb3)
-	[`couchdb:3-nouveau`](#couchdb3-nouveau)
-	[`couchdb:3.5`](#couchdb35)
-	[`couchdb:3.5-nouveau`](#couchdb35-nouveau)
-	[`couchdb:3.5.3`](#couchdb353)
-	[`couchdb:3.5.3-nouveau`](#couchdb353-nouveau)
-	[`couchdb:latest`](#couchdblatest)

## `couchdb:3`

```console
$ docker pull couchdb@sha256:bed314d10cdf58c0fff63352db4c3f168df58a185a773c0e2295105375c5ef10
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3` - linux; amd64

```console
$ docker pull couchdb@sha256:b7e093419252f0bb3ef41afcacfcf1e0cc7e8d0854871d7545ff57191c906689
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.8 MB (150832630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09a61f2ca67017fb7ab5b05e8b166886d7fda2ce0748b883aef52b116627f548`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:39:54 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 28 Oct 2026 01:39:54 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Wed, 28 Oct 2026 01:40:01 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:40:04 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 28 Oct 2026 01:40:04 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 28 Oct 2026 01:40:10 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:40:10 GMT
ENV COUCHDB_VERSION=3.5.3
# Wed, 28 Oct 2026 01:40:11 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 28 Oct 2026 01:40:24 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Wed, 28 Oct 2026 01:40:24 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Wed, 28 Oct 2026 01:40:24 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Wed, 28 Oct 2026 01:40:24 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 28 Oct 2026 01:40:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:40:24 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:40:24 GMT
VOLUME [/opt/couchdb/data]
# Wed, 28 Oct 2026 01:40:24 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Wed, 28 Oct 2026 01:40:24 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ea33fddfd060c6d5080badc9bdee86777ea70d9666efa20f9ca062302a8303d`  
		Last Modified: Wed, 28 Oct 2026 01:40:38 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c45b200a872633851048f509bcee3f02b9b33b80ca0adb63665c23ba669e95e`  
		Last Modified: Wed, 28 Oct 2026 01:40:38 GMT  
		Size: 7.5 MB (7491295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb0a57e55d63011c8a34750149093390517116dc067f5ebb39a9117094743570`  
		Last Modified: Wed, 28 Oct 2026 01:40:38 GMT  
		Size: 417.5 KB (417487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc7f11e233264ee350cde84e70d0af84631e1bc574974d09414249df6387b033`  
		Last Modified: Wed, 28 Oct 2026 01:40:38 GMT  
		Size: 338.6 KB (338628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32c21d7044221894fa2cc98f99d3bc5487b364cd6750724d65d8ab8a60a4dff0`  
		Last Modified: Wed, 28 Oct 2026 01:40:39 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a688b9d219f63f336b2f93a789c3d2330fea66f9184cd939bdfff5fbd3b4eb7`  
		Last Modified: Wed, 28 Oct 2026 01:40:42 GMT  
		Size: 112.7 MB (112724550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac8d663e8239884785d44ceb5a92d39de8d8bb67ca7133a23015cd1514306d3`  
		Last Modified: Wed, 28 Oct 2026 01:40:39 GMT  
		Size: 378.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dccdfc594d3a4cc013f6cbb003f8798dc3755ad33f31d7e6995daad694d16112`  
		Last Modified: Wed, 28 Oct 2026 01:40:39 GMT  
		Size: 1.2 KB (1242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa67107cde5897660da8ea98314773ac3e8ebf0758f51c6db0be4bd09a8d875`  
		Last Modified: Wed, 28 Oct 2026 01:40:40 GMT  
		Size: 2.2 KB (2229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:112f8bcd139473511c756bb90e057e180c663cd497862c84e93750930f5af44f`  
		Last Modified: Wed, 28 Oct 2026 01:40:40 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3` - unknown; unknown

```console
$ docker pull couchdb@sha256:533bd2685aafd37aed2c72a36d8fed032829a5ad5d05fc3ba9b3d79a2756d0ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4225965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b0ea22f1bf4190c7d07ca06245934c7096326612d5e7521ae206c23052d8fca`

```dockerfile
```

-	Layers:
	-	`sha256:f47d14935175ada75b2e17559281cbb998233b9c055029236c1798f392da2ddd`  
		Last Modified: Wed, 28 Oct 2026 01:40:38 GMT  
		Size: 4.2 MB (4194607 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40a9c525e0444196e95d493095614168f9857249555cb9c9d8731a45b4d49b01`  
		Last Modified: Wed, 28 Oct 2026 01:40:38 GMT  
		Size: 31.4 KB (31358 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:85c1ca31e0c88a00644c23d085a5e76b17dfb041e095703d391b703558f5f3e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.6 MB (150551086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e18c096abfabaea76d92b6727c39f641df462c9f39bf908afbaabd1cb221a28`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:43:21 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 28 Oct 2026 01:43:21 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Wed, 28 Oct 2026 01:43:28 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:43:32 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 28 Oct 2026 01:43:32 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 28 Oct 2026 01:43:38 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:43:38 GMT
ENV COUCHDB_VERSION=3.5.3
# Wed, 28 Oct 2026 01:43:38 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 28 Oct 2026 01:43:52 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Wed, 28 Oct 2026 01:43:52 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Wed, 28 Oct 2026 01:43:52 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Wed, 28 Oct 2026 01:43:52 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 28 Oct 2026 01:43:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:43:52 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:43:52 GMT
VOLUME [/opt/couchdb/data]
# Wed, 28 Oct 2026 01:43:52 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Wed, 28 Oct 2026 01:43:52 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1a7c45b78a60bb97d4422b5d20567a3d1896f03e18c440a7884e6976277966f`  
		Last Modified: Wed, 28 Oct 2026 01:44:06 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db9b8560eee8113e2593f33b2afea48609e4e39bbb42cc24d33d469aaa23440e`  
		Last Modified: Wed, 28 Oct 2026 01:44:06 GMT  
		Size: 7.3 MB (7257537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac5d7a483d0759cade74f9a47fb719e6dafc249213a6bcb4ce1016c7eed7497e`  
		Last Modified: Wed, 28 Oct 2026 01:44:06 GMT  
		Size: 382.5 KB (382457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d1895f128965a7f9ca4104a28eefd2e9cb5f252720d461afe27b0d98c45c48c`  
		Last Modified: Wed, 28 Oct 2026 01:44:06 GMT  
		Size: 338.8 KB (338806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17106561844cc666d7597dd874d513f9646e938b207977b40ebaf77c7c151193`  
		Last Modified: Wed, 28 Oct 2026 01:44:07 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c26a6d1c53db781c9e3b98c566c3e269ee11ea88ce56416567b5ae2fd9c5062`  
		Last Modified: Wed, 28 Oct 2026 01:44:09 GMT  
		Size: 112.4 MB (112353354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c6608dd350fdb0b62bf8d59d14f78e3504a9345fdeac8a730d262c2cea52fcc`  
		Last Modified: Wed, 28 Oct 2026 01:44:07 GMT  
		Size: 379.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:513798ef1edf99611515f74a45813766a900b5b786cd515b9e7f5d7e1da82b5c`  
		Last Modified: Wed, 28 Oct 2026 01:44:07 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12b1dc976c830783b90e88f3d33c3e5335ad42e6bbb9e7db86b93327c6d418bb`  
		Last Modified: Wed, 28 Oct 2026 01:44:08 GMT  
		Size: 2.2 KB (2228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80e8387d2b705b8597918a55de7140deffb8185f55f3a5c5629ea4191e33022e`  
		Last Modified: Wed, 28 Oct 2026 01:44:08 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3` - unknown; unknown

```console
$ docker pull couchdb@sha256:5700468b318617f5297590cb81998193cd06c2c314292d8e59c5b86565defbec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4226455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30b40ce84a1c7e9cae80a5b2d68e06a8dafeca96d14a8ec1730f327ece742258`

```dockerfile
```

-	Layers:
	-	`sha256:3565f368c535a88bcd78deba77235e7ba1a2af3a9662e1e18121b4687bc51a7f`  
		Last Modified: Wed, 28 Oct 2026 01:44:06 GMT  
		Size: 4.2 MB (4194903 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24cba78deb9793485dfe51e7b25293d15d5da429d3236bd5baf81b6551390cd7`  
		Last Modified: Wed, 28 Oct 2026 01:44:05 GMT  
		Size: 31.6 KB (31552 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3-nouveau`

```console
$ docker pull couchdb@sha256:9d0878d86e3bd605554cecc4ffbb16b5ea2a35b7f161a1bbd3112294d035c68a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3-nouveau` - linux; amd64

```console
$ docker pull couchdb@sha256:38056f886a25c08e8d12b19c5ad423efde9a1860fecd3bbd621566632037b40a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.1 MB (151118064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:390f312ab5c489d02e66104b81d4338ff70104c1c3b328ec38b4669d0d18f2ec`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:39:56 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 28 Oct 2026 01:39:56 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Wed, 28 Oct 2026 01:40:03 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:40:08 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:40:10 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 28 Oct 2026 01:40:10 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 28 Oct 2026 01:40:16 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:40:16 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 28 Oct 2026 01:40:21 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends             couchdb-nouveau=3.5.3~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Wed, 28 Oct 2026 01:40:21 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Wed, 28 Oct 2026 01:40:21 GMT
VOLUME [/opt/nouveau/data]
# Wed, 28 Oct 2026 01:40:21 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Wed, 28 Oct 2026 01:40:21 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:440f034c1679f5216374856aad9373b8560fc46ebd1751349a3384ff6a6a1297`  
		Last Modified: Wed, 28 Oct 2026 01:40:34 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:147320dd0074e1feac79a528666dc432664ad3061d2cb0b8e2d43594ee34c40f`  
		Last Modified: Wed, 28 Oct 2026 01:40:35 GMT  
		Size: 7.5 MB (7491329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ad5f202ba930d1a3c1df7c11c6a324e9f8f316de92a363d4203857feb04bdf0`  
		Last Modified: Wed, 28 Oct 2026 01:40:37 GMT  
		Size: 70.2 MB (70187871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eedb1e5073aca8b7aa0aad25523dc7890b72ee997922d3e7cd55ed4df428f595`  
		Last Modified: Wed, 28 Oct 2026 01:40:35 GMT  
		Size: 425.8 KB (425835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5411938ecb6088276578d47ed5cc5578ae9650eefbc4b2f0b05699dc0161b22c`  
		Last Modified: Wed, 28 Oct 2026 01:40:36 GMT  
		Size: 347.4 KB (347379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78c46a451f272b89387c072e45a0dec4347ac55038b78163733a55c5f45bf73f`  
		Last Modified: Wed, 28 Oct 2026 01:40:36 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e589537cf6dfa70fe46251faa3b826eeea68789632756dee82fba7285d0d883`  
		Last Modified: Wed, 28 Oct 2026 01:40:37 GMT  
		Size: 42.8 MB (42808535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a70b92c96db76bb4810058d6370cc295a50627b833fcaff24632bad14465dc7`  
		Last Modified: Wed, 28 Oct 2026 01:40:37 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:80362e0cbd172bee4fd44a4713d65e445067f26224141db63aa7ab99685d6304
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3393333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:331ef5f07578791e5f64abc6f90c737432e74ac191cc39df36bcdfa78941f494`

```dockerfile
```

-	Layers:
	-	`sha256:276c0e40ed25b21301f66f2684b3ed53bfddb792f7ac133036525b171d182d28`  
		Last Modified: Wed, 28 Oct 2026 01:40:35 GMT  
		Size: 3.4 MB (3369076 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2981e526358fdb3f1a1124447cba7bed1bdc212b7dceb1bb596a2da83f3086ea`  
		Last Modified: Wed, 28 Oct 2026 01:40:34 GMT  
		Size: 24.3 KB (24257 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3-nouveau` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:8587b3f32f3a336ee57c206a23382d626af8dd87da7d2fde529ec8d12452c26b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.3 MB (150271272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64a17acf89c962c046120be31ee1c0e0ef80eca9f197fede95a14eb8854a7dc3`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:43:21 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 28 Oct 2026 01:43:21 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Wed, 28 Oct 2026 01:43:29 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:43:36 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:43:40 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 28 Oct 2026 01:43:40 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 28 Oct 2026 01:43:47 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:43:47 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 28 Oct 2026 01:43:53 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends             couchdb-nouveau=3.5.3~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Wed, 28 Oct 2026 01:43:53 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Wed, 28 Oct 2026 01:43:53 GMT
VOLUME [/opt/nouveau/data]
# Wed, 28 Oct 2026 01:43:53 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Wed, 28 Oct 2026 01:43:53 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e02952cc7cd837a201164b035e5eb78a903c09c6a73cea5ac4d3f1ef4e320ba7`  
		Last Modified: Wed, 28 Oct 2026 01:44:07 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb5467fbd32a50f04143f901515e5edf5e89e2209a116f5955610eb92b502778`  
		Last Modified: Wed, 28 Oct 2026 01:44:08 GMT  
		Size: 7.3 MB (7257523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fb2792e081ef20c813fae0fb280910826198ba7ed2130508a72ab9ad1a1d068`  
		Last Modified: Wed, 28 Oct 2026 01:44:10 GMT  
		Size: 69.3 MB (69328245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de49755f173f51b48f81762cc363ee6bc9f554c34b5e94b80c5f8b9a6c5a5d6b`  
		Last Modified: Wed, 28 Oct 2026 01:44:08 GMT  
		Size: 390.2 KB (390193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddaa2e482a9890112ea75f0d977fcd3d588cf70aa00581d68b48ec4e56123ed3`  
		Last Modified: Wed, 28 Oct 2026 01:44:09 GMT  
		Size: 347.5 KB (347469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:813286d69007d39023ab525f7c70b77e9eb1eb7f65d49da08b7780b8fbbc60c4`  
		Last Modified: Wed, 28 Oct 2026 01:44:09 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7255a28cc7348f5e836abeab71893eac9d439b5f53b0b49010936aa6172c16f8`  
		Last Modified: Wed, 28 Oct 2026 01:44:10 GMT  
		Size: 42.7 MB (42732465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a01bd0e8d4001fd81b2d34559588d795da768fb2c4462b2ae376d724b69f1df`  
		Last Modified: Wed, 28 Oct 2026 01:44:10 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:39164332c7b1fcd6507893f475869eec695449436778bfa18f795a8820a1cd1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3392156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b679097bf0ef5dc2d2aa30315025ff88d7d96a433bbcb75d255d5c2b0d532c4e`

```dockerfile
```

-	Layers:
	-	`sha256:247f86defeab56738ba9c5bd205969fb44629c9d0ca2f9de4ce72d3d968909d1`  
		Last Modified: Wed, 28 Oct 2026 01:44:08 GMT  
		Size: 3.4 MB (3367717 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ae39a94e09bc2912e2eab5494d296b695f75978cd9992842c09c409757a090c`  
		Last Modified: Wed, 28 Oct 2026 01:44:07 GMT  
		Size: 24.4 KB (24439 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.5`

```console
$ docker pull couchdb@sha256:bed314d10cdf58c0fff63352db4c3f168df58a185a773c0e2295105375c5ef10
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3.5` - linux; amd64

```console
$ docker pull couchdb@sha256:b7e093419252f0bb3ef41afcacfcf1e0cc7e8d0854871d7545ff57191c906689
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.8 MB (150832630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09a61f2ca67017fb7ab5b05e8b166886d7fda2ce0748b883aef52b116627f548`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:39:54 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 28 Oct 2026 01:39:54 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Wed, 28 Oct 2026 01:40:01 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:40:04 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 28 Oct 2026 01:40:04 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 28 Oct 2026 01:40:10 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:40:10 GMT
ENV COUCHDB_VERSION=3.5.3
# Wed, 28 Oct 2026 01:40:11 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 28 Oct 2026 01:40:24 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Wed, 28 Oct 2026 01:40:24 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Wed, 28 Oct 2026 01:40:24 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Wed, 28 Oct 2026 01:40:24 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 28 Oct 2026 01:40:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:40:24 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:40:24 GMT
VOLUME [/opt/couchdb/data]
# Wed, 28 Oct 2026 01:40:24 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Wed, 28 Oct 2026 01:40:24 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ea33fddfd060c6d5080badc9bdee86777ea70d9666efa20f9ca062302a8303d`  
		Last Modified: Wed, 28 Oct 2026 01:40:38 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c45b200a872633851048f509bcee3f02b9b33b80ca0adb63665c23ba669e95e`  
		Last Modified: Wed, 28 Oct 2026 01:40:38 GMT  
		Size: 7.5 MB (7491295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb0a57e55d63011c8a34750149093390517116dc067f5ebb39a9117094743570`  
		Last Modified: Wed, 28 Oct 2026 01:40:38 GMT  
		Size: 417.5 KB (417487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc7f11e233264ee350cde84e70d0af84631e1bc574974d09414249df6387b033`  
		Last Modified: Wed, 28 Oct 2026 01:40:38 GMT  
		Size: 338.6 KB (338628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32c21d7044221894fa2cc98f99d3bc5487b364cd6750724d65d8ab8a60a4dff0`  
		Last Modified: Wed, 28 Oct 2026 01:40:39 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a688b9d219f63f336b2f93a789c3d2330fea66f9184cd939bdfff5fbd3b4eb7`  
		Last Modified: Wed, 28 Oct 2026 01:40:42 GMT  
		Size: 112.7 MB (112724550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac8d663e8239884785d44ceb5a92d39de8d8bb67ca7133a23015cd1514306d3`  
		Last Modified: Wed, 28 Oct 2026 01:40:39 GMT  
		Size: 378.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dccdfc594d3a4cc013f6cbb003f8798dc3755ad33f31d7e6995daad694d16112`  
		Last Modified: Wed, 28 Oct 2026 01:40:39 GMT  
		Size: 1.2 KB (1242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa67107cde5897660da8ea98314773ac3e8ebf0758f51c6db0be4bd09a8d875`  
		Last Modified: Wed, 28 Oct 2026 01:40:40 GMT  
		Size: 2.2 KB (2229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:112f8bcd139473511c756bb90e057e180c663cd497862c84e93750930f5af44f`  
		Last Modified: Wed, 28 Oct 2026 01:40:40 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5` - unknown; unknown

```console
$ docker pull couchdb@sha256:533bd2685aafd37aed2c72a36d8fed032829a5ad5d05fc3ba9b3d79a2756d0ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4225965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b0ea22f1bf4190c7d07ca06245934c7096326612d5e7521ae206c23052d8fca`

```dockerfile
```

-	Layers:
	-	`sha256:f47d14935175ada75b2e17559281cbb998233b9c055029236c1798f392da2ddd`  
		Last Modified: Wed, 28 Oct 2026 01:40:38 GMT  
		Size: 4.2 MB (4194607 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40a9c525e0444196e95d493095614168f9857249555cb9c9d8731a45b4d49b01`  
		Last Modified: Wed, 28 Oct 2026 01:40:38 GMT  
		Size: 31.4 KB (31358 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.5` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:85c1ca31e0c88a00644c23d085a5e76b17dfb041e095703d391b703558f5f3e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.6 MB (150551086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e18c096abfabaea76d92b6727c39f641df462c9f39bf908afbaabd1cb221a28`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:43:21 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 28 Oct 2026 01:43:21 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Wed, 28 Oct 2026 01:43:28 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:43:32 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 28 Oct 2026 01:43:32 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 28 Oct 2026 01:43:38 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:43:38 GMT
ENV COUCHDB_VERSION=3.5.3
# Wed, 28 Oct 2026 01:43:38 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 28 Oct 2026 01:43:52 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Wed, 28 Oct 2026 01:43:52 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Wed, 28 Oct 2026 01:43:52 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Wed, 28 Oct 2026 01:43:52 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 28 Oct 2026 01:43:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:43:52 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:43:52 GMT
VOLUME [/opt/couchdb/data]
# Wed, 28 Oct 2026 01:43:52 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Wed, 28 Oct 2026 01:43:52 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1a7c45b78a60bb97d4422b5d20567a3d1896f03e18c440a7884e6976277966f`  
		Last Modified: Wed, 28 Oct 2026 01:44:06 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db9b8560eee8113e2593f33b2afea48609e4e39bbb42cc24d33d469aaa23440e`  
		Last Modified: Wed, 28 Oct 2026 01:44:06 GMT  
		Size: 7.3 MB (7257537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac5d7a483d0759cade74f9a47fb719e6dafc249213a6bcb4ce1016c7eed7497e`  
		Last Modified: Wed, 28 Oct 2026 01:44:06 GMT  
		Size: 382.5 KB (382457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d1895f128965a7f9ca4104a28eefd2e9cb5f252720d461afe27b0d98c45c48c`  
		Last Modified: Wed, 28 Oct 2026 01:44:06 GMT  
		Size: 338.8 KB (338806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17106561844cc666d7597dd874d513f9646e938b207977b40ebaf77c7c151193`  
		Last Modified: Wed, 28 Oct 2026 01:44:07 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c26a6d1c53db781c9e3b98c566c3e269ee11ea88ce56416567b5ae2fd9c5062`  
		Last Modified: Wed, 28 Oct 2026 01:44:09 GMT  
		Size: 112.4 MB (112353354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c6608dd350fdb0b62bf8d59d14f78e3504a9345fdeac8a730d262c2cea52fcc`  
		Last Modified: Wed, 28 Oct 2026 01:44:07 GMT  
		Size: 379.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:513798ef1edf99611515f74a45813766a900b5b786cd515b9e7f5d7e1da82b5c`  
		Last Modified: Wed, 28 Oct 2026 01:44:07 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12b1dc976c830783b90e88f3d33c3e5335ad42e6bbb9e7db86b93327c6d418bb`  
		Last Modified: Wed, 28 Oct 2026 01:44:08 GMT  
		Size: 2.2 KB (2228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80e8387d2b705b8597918a55de7140deffb8185f55f3a5c5629ea4191e33022e`  
		Last Modified: Wed, 28 Oct 2026 01:44:08 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5` - unknown; unknown

```console
$ docker pull couchdb@sha256:5700468b318617f5297590cb81998193cd06c2c314292d8e59c5b86565defbec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4226455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30b40ce84a1c7e9cae80a5b2d68e06a8dafeca96d14a8ec1730f327ece742258`

```dockerfile
```

-	Layers:
	-	`sha256:3565f368c535a88bcd78deba77235e7ba1a2af3a9662e1e18121b4687bc51a7f`  
		Last Modified: Wed, 28 Oct 2026 01:44:06 GMT  
		Size: 4.2 MB (4194903 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24cba78deb9793485dfe51e7b25293d15d5da429d3236bd5baf81b6551390cd7`  
		Last Modified: Wed, 28 Oct 2026 01:44:05 GMT  
		Size: 31.6 KB (31552 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.5-nouveau`

```console
$ docker pull couchdb@sha256:9d0878d86e3bd605554cecc4ffbb16b5ea2a35b7f161a1bbd3112294d035c68a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3.5-nouveau` - linux; amd64

```console
$ docker pull couchdb@sha256:38056f886a25c08e8d12b19c5ad423efde9a1860fecd3bbd621566632037b40a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.1 MB (151118064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:390f312ab5c489d02e66104b81d4338ff70104c1c3b328ec38b4669d0d18f2ec`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:39:56 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 28 Oct 2026 01:39:56 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Wed, 28 Oct 2026 01:40:03 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:40:08 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:40:10 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 28 Oct 2026 01:40:10 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 28 Oct 2026 01:40:16 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:40:16 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 28 Oct 2026 01:40:21 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends             couchdb-nouveau=3.5.3~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Wed, 28 Oct 2026 01:40:21 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Wed, 28 Oct 2026 01:40:21 GMT
VOLUME [/opt/nouveau/data]
# Wed, 28 Oct 2026 01:40:21 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Wed, 28 Oct 2026 01:40:21 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:440f034c1679f5216374856aad9373b8560fc46ebd1751349a3384ff6a6a1297`  
		Last Modified: Wed, 28 Oct 2026 01:40:34 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:147320dd0074e1feac79a528666dc432664ad3061d2cb0b8e2d43594ee34c40f`  
		Last Modified: Wed, 28 Oct 2026 01:40:35 GMT  
		Size: 7.5 MB (7491329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ad5f202ba930d1a3c1df7c11c6a324e9f8f316de92a363d4203857feb04bdf0`  
		Last Modified: Wed, 28 Oct 2026 01:40:37 GMT  
		Size: 70.2 MB (70187871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eedb1e5073aca8b7aa0aad25523dc7890b72ee997922d3e7cd55ed4df428f595`  
		Last Modified: Wed, 28 Oct 2026 01:40:35 GMT  
		Size: 425.8 KB (425835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5411938ecb6088276578d47ed5cc5578ae9650eefbc4b2f0b05699dc0161b22c`  
		Last Modified: Wed, 28 Oct 2026 01:40:36 GMT  
		Size: 347.4 KB (347379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78c46a451f272b89387c072e45a0dec4347ac55038b78163733a55c5f45bf73f`  
		Last Modified: Wed, 28 Oct 2026 01:40:36 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e589537cf6dfa70fe46251faa3b826eeea68789632756dee82fba7285d0d883`  
		Last Modified: Wed, 28 Oct 2026 01:40:37 GMT  
		Size: 42.8 MB (42808535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a70b92c96db76bb4810058d6370cc295a50627b833fcaff24632bad14465dc7`  
		Last Modified: Wed, 28 Oct 2026 01:40:37 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:80362e0cbd172bee4fd44a4713d65e445067f26224141db63aa7ab99685d6304
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3393333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:331ef5f07578791e5f64abc6f90c737432e74ac191cc39df36bcdfa78941f494`

```dockerfile
```

-	Layers:
	-	`sha256:276c0e40ed25b21301f66f2684b3ed53bfddb792f7ac133036525b171d182d28`  
		Last Modified: Wed, 28 Oct 2026 01:40:35 GMT  
		Size: 3.4 MB (3369076 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2981e526358fdb3f1a1124447cba7bed1bdc212b7dceb1bb596a2da83f3086ea`  
		Last Modified: Wed, 28 Oct 2026 01:40:34 GMT  
		Size: 24.3 KB (24257 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.5-nouveau` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:8587b3f32f3a336ee57c206a23382d626af8dd87da7d2fde529ec8d12452c26b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.3 MB (150271272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64a17acf89c962c046120be31ee1c0e0ef80eca9f197fede95a14eb8854a7dc3`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:43:21 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 28 Oct 2026 01:43:21 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Wed, 28 Oct 2026 01:43:29 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:43:36 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:43:40 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 28 Oct 2026 01:43:40 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 28 Oct 2026 01:43:47 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:43:47 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 28 Oct 2026 01:43:53 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends             couchdb-nouveau=3.5.3~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Wed, 28 Oct 2026 01:43:53 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Wed, 28 Oct 2026 01:43:53 GMT
VOLUME [/opt/nouveau/data]
# Wed, 28 Oct 2026 01:43:53 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Wed, 28 Oct 2026 01:43:53 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e02952cc7cd837a201164b035e5eb78a903c09c6a73cea5ac4d3f1ef4e320ba7`  
		Last Modified: Wed, 28 Oct 2026 01:44:07 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb5467fbd32a50f04143f901515e5edf5e89e2209a116f5955610eb92b502778`  
		Last Modified: Wed, 28 Oct 2026 01:44:08 GMT  
		Size: 7.3 MB (7257523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fb2792e081ef20c813fae0fb280910826198ba7ed2130508a72ab9ad1a1d068`  
		Last Modified: Wed, 28 Oct 2026 01:44:10 GMT  
		Size: 69.3 MB (69328245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de49755f173f51b48f81762cc363ee6bc9f554c34b5e94b80c5f8b9a6c5a5d6b`  
		Last Modified: Wed, 28 Oct 2026 01:44:08 GMT  
		Size: 390.2 KB (390193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddaa2e482a9890112ea75f0d977fcd3d588cf70aa00581d68b48ec4e56123ed3`  
		Last Modified: Wed, 28 Oct 2026 01:44:09 GMT  
		Size: 347.5 KB (347469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:813286d69007d39023ab525f7c70b77e9eb1eb7f65d49da08b7780b8fbbc60c4`  
		Last Modified: Wed, 28 Oct 2026 01:44:09 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7255a28cc7348f5e836abeab71893eac9d439b5f53b0b49010936aa6172c16f8`  
		Last Modified: Wed, 28 Oct 2026 01:44:10 GMT  
		Size: 42.7 MB (42732465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a01bd0e8d4001fd81b2d34559588d795da768fb2c4462b2ae376d724b69f1df`  
		Last Modified: Wed, 28 Oct 2026 01:44:10 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:39164332c7b1fcd6507893f475869eec695449436778bfa18f795a8820a1cd1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3392156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b679097bf0ef5dc2d2aa30315025ff88d7d96a433bbcb75d255d5c2b0d532c4e`

```dockerfile
```

-	Layers:
	-	`sha256:247f86defeab56738ba9c5bd205969fb44629c9d0ca2f9de4ce72d3d968909d1`  
		Last Modified: Wed, 28 Oct 2026 01:44:08 GMT  
		Size: 3.4 MB (3367717 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ae39a94e09bc2912e2eab5494d296b695f75978cd9992842c09c409757a090c`  
		Last Modified: Wed, 28 Oct 2026 01:44:07 GMT  
		Size: 24.4 KB (24439 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.5.3`

```console
$ docker pull couchdb@sha256:bed314d10cdf58c0fff63352db4c3f168df58a185a773c0e2295105375c5ef10
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3.5.3` - linux; amd64

```console
$ docker pull couchdb@sha256:b7e093419252f0bb3ef41afcacfcf1e0cc7e8d0854871d7545ff57191c906689
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.8 MB (150832630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09a61f2ca67017fb7ab5b05e8b166886d7fda2ce0748b883aef52b116627f548`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:39:54 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 28 Oct 2026 01:39:54 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Wed, 28 Oct 2026 01:40:01 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:40:04 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 28 Oct 2026 01:40:04 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 28 Oct 2026 01:40:10 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:40:10 GMT
ENV COUCHDB_VERSION=3.5.3
# Wed, 28 Oct 2026 01:40:11 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 28 Oct 2026 01:40:24 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Wed, 28 Oct 2026 01:40:24 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Wed, 28 Oct 2026 01:40:24 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Wed, 28 Oct 2026 01:40:24 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 28 Oct 2026 01:40:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:40:24 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:40:24 GMT
VOLUME [/opt/couchdb/data]
# Wed, 28 Oct 2026 01:40:24 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Wed, 28 Oct 2026 01:40:24 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ea33fddfd060c6d5080badc9bdee86777ea70d9666efa20f9ca062302a8303d`  
		Last Modified: Wed, 28 Oct 2026 01:40:38 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c45b200a872633851048f509bcee3f02b9b33b80ca0adb63665c23ba669e95e`  
		Last Modified: Wed, 28 Oct 2026 01:40:38 GMT  
		Size: 7.5 MB (7491295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb0a57e55d63011c8a34750149093390517116dc067f5ebb39a9117094743570`  
		Last Modified: Wed, 28 Oct 2026 01:40:38 GMT  
		Size: 417.5 KB (417487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc7f11e233264ee350cde84e70d0af84631e1bc574974d09414249df6387b033`  
		Last Modified: Wed, 28 Oct 2026 01:40:38 GMT  
		Size: 338.6 KB (338628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32c21d7044221894fa2cc98f99d3bc5487b364cd6750724d65d8ab8a60a4dff0`  
		Last Modified: Wed, 28 Oct 2026 01:40:39 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a688b9d219f63f336b2f93a789c3d2330fea66f9184cd939bdfff5fbd3b4eb7`  
		Last Modified: Wed, 28 Oct 2026 01:40:42 GMT  
		Size: 112.7 MB (112724550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac8d663e8239884785d44ceb5a92d39de8d8bb67ca7133a23015cd1514306d3`  
		Last Modified: Wed, 28 Oct 2026 01:40:39 GMT  
		Size: 378.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dccdfc594d3a4cc013f6cbb003f8798dc3755ad33f31d7e6995daad694d16112`  
		Last Modified: Wed, 28 Oct 2026 01:40:39 GMT  
		Size: 1.2 KB (1242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa67107cde5897660da8ea98314773ac3e8ebf0758f51c6db0be4bd09a8d875`  
		Last Modified: Wed, 28 Oct 2026 01:40:40 GMT  
		Size: 2.2 KB (2229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:112f8bcd139473511c756bb90e057e180c663cd497862c84e93750930f5af44f`  
		Last Modified: Wed, 28 Oct 2026 01:40:40 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5.3` - unknown; unknown

```console
$ docker pull couchdb@sha256:533bd2685aafd37aed2c72a36d8fed032829a5ad5d05fc3ba9b3d79a2756d0ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4225965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b0ea22f1bf4190c7d07ca06245934c7096326612d5e7521ae206c23052d8fca`

```dockerfile
```

-	Layers:
	-	`sha256:f47d14935175ada75b2e17559281cbb998233b9c055029236c1798f392da2ddd`  
		Last Modified: Wed, 28 Oct 2026 01:40:38 GMT  
		Size: 4.2 MB (4194607 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40a9c525e0444196e95d493095614168f9857249555cb9c9d8731a45b4d49b01`  
		Last Modified: Wed, 28 Oct 2026 01:40:38 GMT  
		Size: 31.4 KB (31358 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.5.3` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:85c1ca31e0c88a00644c23d085a5e76b17dfb041e095703d391b703558f5f3e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.6 MB (150551086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e18c096abfabaea76d92b6727c39f641df462c9f39bf908afbaabd1cb221a28`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:43:21 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 28 Oct 2026 01:43:21 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Wed, 28 Oct 2026 01:43:28 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:43:32 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 28 Oct 2026 01:43:32 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 28 Oct 2026 01:43:38 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:43:38 GMT
ENV COUCHDB_VERSION=3.5.3
# Wed, 28 Oct 2026 01:43:38 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 28 Oct 2026 01:43:52 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Wed, 28 Oct 2026 01:43:52 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Wed, 28 Oct 2026 01:43:52 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Wed, 28 Oct 2026 01:43:52 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 28 Oct 2026 01:43:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:43:52 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:43:52 GMT
VOLUME [/opt/couchdb/data]
# Wed, 28 Oct 2026 01:43:52 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Wed, 28 Oct 2026 01:43:52 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1a7c45b78a60bb97d4422b5d20567a3d1896f03e18c440a7884e6976277966f`  
		Last Modified: Wed, 28 Oct 2026 01:44:06 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db9b8560eee8113e2593f33b2afea48609e4e39bbb42cc24d33d469aaa23440e`  
		Last Modified: Wed, 28 Oct 2026 01:44:06 GMT  
		Size: 7.3 MB (7257537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac5d7a483d0759cade74f9a47fb719e6dafc249213a6bcb4ce1016c7eed7497e`  
		Last Modified: Wed, 28 Oct 2026 01:44:06 GMT  
		Size: 382.5 KB (382457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d1895f128965a7f9ca4104a28eefd2e9cb5f252720d461afe27b0d98c45c48c`  
		Last Modified: Wed, 28 Oct 2026 01:44:06 GMT  
		Size: 338.8 KB (338806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17106561844cc666d7597dd874d513f9646e938b207977b40ebaf77c7c151193`  
		Last Modified: Wed, 28 Oct 2026 01:44:07 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c26a6d1c53db781c9e3b98c566c3e269ee11ea88ce56416567b5ae2fd9c5062`  
		Last Modified: Wed, 28 Oct 2026 01:44:09 GMT  
		Size: 112.4 MB (112353354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c6608dd350fdb0b62bf8d59d14f78e3504a9345fdeac8a730d262c2cea52fcc`  
		Last Modified: Wed, 28 Oct 2026 01:44:07 GMT  
		Size: 379.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:513798ef1edf99611515f74a45813766a900b5b786cd515b9e7f5d7e1da82b5c`  
		Last Modified: Wed, 28 Oct 2026 01:44:07 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12b1dc976c830783b90e88f3d33c3e5335ad42e6bbb9e7db86b93327c6d418bb`  
		Last Modified: Wed, 28 Oct 2026 01:44:08 GMT  
		Size: 2.2 KB (2228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80e8387d2b705b8597918a55de7140deffb8185f55f3a5c5629ea4191e33022e`  
		Last Modified: Wed, 28 Oct 2026 01:44:08 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5.3` - unknown; unknown

```console
$ docker pull couchdb@sha256:5700468b318617f5297590cb81998193cd06c2c314292d8e59c5b86565defbec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4226455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30b40ce84a1c7e9cae80a5b2d68e06a8dafeca96d14a8ec1730f327ece742258`

```dockerfile
```

-	Layers:
	-	`sha256:3565f368c535a88bcd78deba77235e7ba1a2af3a9662e1e18121b4687bc51a7f`  
		Last Modified: Wed, 28 Oct 2026 01:44:06 GMT  
		Size: 4.2 MB (4194903 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24cba78deb9793485dfe51e7b25293d15d5da429d3236bd5baf81b6551390cd7`  
		Last Modified: Wed, 28 Oct 2026 01:44:05 GMT  
		Size: 31.6 KB (31552 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.5.3-nouveau`

```console
$ docker pull couchdb@sha256:9d0878d86e3bd605554cecc4ffbb16b5ea2a35b7f161a1bbd3112294d035c68a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3.5.3-nouveau` - linux; amd64

```console
$ docker pull couchdb@sha256:38056f886a25c08e8d12b19c5ad423efde9a1860fecd3bbd621566632037b40a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.1 MB (151118064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:390f312ab5c489d02e66104b81d4338ff70104c1c3b328ec38b4669d0d18f2ec`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:39:56 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 28 Oct 2026 01:39:56 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Wed, 28 Oct 2026 01:40:03 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:40:08 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:40:10 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 28 Oct 2026 01:40:10 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 28 Oct 2026 01:40:16 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:40:16 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 28 Oct 2026 01:40:21 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends             couchdb-nouveau=3.5.3~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Wed, 28 Oct 2026 01:40:21 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Wed, 28 Oct 2026 01:40:21 GMT
VOLUME [/opt/nouveau/data]
# Wed, 28 Oct 2026 01:40:21 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Wed, 28 Oct 2026 01:40:21 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:440f034c1679f5216374856aad9373b8560fc46ebd1751349a3384ff6a6a1297`  
		Last Modified: Wed, 28 Oct 2026 01:40:34 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:147320dd0074e1feac79a528666dc432664ad3061d2cb0b8e2d43594ee34c40f`  
		Last Modified: Wed, 28 Oct 2026 01:40:35 GMT  
		Size: 7.5 MB (7491329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ad5f202ba930d1a3c1df7c11c6a324e9f8f316de92a363d4203857feb04bdf0`  
		Last Modified: Wed, 28 Oct 2026 01:40:37 GMT  
		Size: 70.2 MB (70187871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eedb1e5073aca8b7aa0aad25523dc7890b72ee997922d3e7cd55ed4df428f595`  
		Last Modified: Wed, 28 Oct 2026 01:40:35 GMT  
		Size: 425.8 KB (425835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5411938ecb6088276578d47ed5cc5578ae9650eefbc4b2f0b05699dc0161b22c`  
		Last Modified: Wed, 28 Oct 2026 01:40:36 GMT  
		Size: 347.4 KB (347379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78c46a451f272b89387c072e45a0dec4347ac55038b78163733a55c5f45bf73f`  
		Last Modified: Wed, 28 Oct 2026 01:40:36 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e589537cf6dfa70fe46251faa3b826eeea68789632756dee82fba7285d0d883`  
		Last Modified: Wed, 28 Oct 2026 01:40:37 GMT  
		Size: 42.8 MB (42808535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a70b92c96db76bb4810058d6370cc295a50627b833fcaff24632bad14465dc7`  
		Last Modified: Wed, 28 Oct 2026 01:40:37 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5.3-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:80362e0cbd172bee4fd44a4713d65e445067f26224141db63aa7ab99685d6304
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3393333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:331ef5f07578791e5f64abc6f90c737432e74ac191cc39df36bcdfa78941f494`

```dockerfile
```

-	Layers:
	-	`sha256:276c0e40ed25b21301f66f2684b3ed53bfddb792f7ac133036525b171d182d28`  
		Last Modified: Wed, 28 Oct 2026 01:40:35 GMT  
		Size: 3.4 MB (3369076 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2981e526358fdb3f1a1124447cba7bed1bdc212b7dceb1bb596a2da83f3086ea`  
		Last Modified: Wed, 28 Oct 2026 01:40:34 GMT  
		Size: 24.3 KB (24257 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.5.3-nouveau` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:8587b3f32f3a336ee57c206a23382d626af8dd87da7d2fde529ec8d12452c26b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.3 MB (150271272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64a17acf89c962c046120be31ee1c0e0ef80eca9f197fede95a14eb8854a7dc3`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:43:21 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 28 Oct 2026 01:43:21 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Wed, 28 Oct 2026 01:43:29 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:43:36 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:43:40 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 28 Oct 2026 01:43:40 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 28 Oct 2026 01:43:47 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:43:47 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 28 Oct 2026 01:43:53 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends             couchdb-nouveau=3.5.3~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Wed, 28 Oct 2026 01:43:53 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Wed, 28 Oct 2026 01:43:53 GMT
VOLUME [/opt/nouveau/data]
# Wed, 28 Oct 2026 01:43:53 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Wed, 28 Oct 2026 01:43:53 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e02952cc7cd837a201164b035e5eb78a903c09c6a73cea5ac4d3f1ef4e320ba7`  
		Last Modified: Wed, 28 Oct 2026 01:44:07 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb5467fbd32a50f04143f901515e5edf5e89e2209a116f5955610eb92b502778`  
		Last Modified: Wed, 28 Oct 2026 01:44:08 GMT  
		Size: 7.3 MB (7257523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fb2792e081ef20c813fae0fb280910826198ba7ed2130508a72ab9ad1a1d068`  
		Last Modified: Wed, 28 Oct 2026 01:44:10 GMT  
		Size: 69.3 MB (69328245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de49755f173f51b48f81762cc363ee6bc9f554c34b5e94b80c5f8b9a6c5a5d6b`  
		Last Modified: Wed, 28 Oct 2026 01:44:08 GMT  
		Size: 390.2 KB (390193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddaa2e482a9890112ea75f0d977fcd3d588cf70aa00581d68b48ec4e56123ed3`  
		Last Modified: Wed, 28 Oct 2026 01:44:09 GMT  
		Size: 347.5 KB (347469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:813286d69007d39023ab525f7c70b77e9eb1eb7f65d49da08b7780b8fbbc60c4`  
		Last Modified: Wed, 28 Oct 2026 01:44:09 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7255a28cc7348f5e836abeab71893eac9d439b5f53b0b49010936aa6172c16f8`  
		Last Modified: Wed, 28 Oct 2026 01:44:10 GMT  
		Size: 42.7 MB (42732465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a01bd0e8d4001fd81b2d34559588d795da768fb2c4462b2ae376d724b69f1df`  
		Last Modified: Wed, 28 Oct 2026 01:44:10 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5.3-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:39164332c7b1fcd6507893f475869eec695449436778bfa18f795a8820a1cd1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3392156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b679097bf0ef5dc2d2aa30315025ff88d7d96a433bbcb75d255d5c2b0d532c4e`

```dockerfile
```

-	Layers:
	-	`sha256:247f86defeab56738ba9c5bd205969fb44629c9d0ca2f9de4ce72d3d968909d1`  
		Last Modified: Wed, 28 Oct 2026 01:44:08 GMT  
		Size: 3.4 MB (3367717 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ae39a94e09bc2912e2eab5494d296b695f75978cd9992842c09c409757a090c`  
		Last Modified: Wed, 28 Oct 2026 01:44:07 GMT  
		Size: 24.4 KB (24439 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:latest`

```console
$ docker pull couchdb@sha256:bed314d10cdf58c0fff63352db4c3f168df58a185a773c0e2295105375c5ef10
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:latest` - linux; amd64

```console
$ docker pull couchdb@sha256:b7e093419252f0bb3ef41afcacfcf1e0cc7e8d0854871d7545ff57191c906689
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.8 MB (150832630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09a61f2ca67017fb7ab5b05e8b166886d7fda2ce0748b883aef52b116627f548`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:39:54 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 28 Oct 2026 01:39:54 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Wed, 28 Oct 2026 01:40:01 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:40:04 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 28 Oct 2026 01:40:04 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 28 Oct 2026 01:40:10 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:40:10 GMT
ENV COUCHDB_VERSION=3.5.3
# Wed, 28 Oct 2026 01:40:11 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 28 Oct 2026 01:40:24 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Wed, 28 Oct 2026 01:40:24 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Wed, 28 Oct 2026 01:40:24 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Wed, 28 Oct 2026 01:40:24 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 28 Oct 2026 01:40:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:40:24 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:40:24 GMT
VOLUME [/opt/couchdb/data]
# Wed, 28 Oct 2026 01:40:24 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Wed, 28 Oct 2026 01:40:24 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ea33fddfd060c6d5080badc9bdee86777ea70d9666efa20f9ca062302a8303d`  
		Last Modified: Wed, 28 Oct 2026 01:40:38 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c45b200a872633851048f509bcee3f02b9b33b80ca0adb63665c23ba669e95e`  
		Last Modified: Wed, 28 Oct 2026 01:40:38 GMT  
		Size: 7.5 MB (7491295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb0a57e55d63011c8a34750149093390517116dc067f5ebb39a9117094743570`  
		Last Modified: Wed, 28 Oct 2026 01:40:38 GMT  
		Size: 417.5 KB (417487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc7f11e233264ee350cde84e70d0af84631e1bc574974d09414249df6387b033`  
		Last Modified: Wed, 28 Oct 2026 01:40:38 GMT  
		Size: 338.6 KB (338628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32c21d7044221894fa2cc98f99d3bc5487b364cd6750724d65d8ab8a60a4dff0`  
		Last Modified: Wed, 28 Oct 2026 01:40:39 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a688b9d219f63f336b2f93a789c3d2330fea66f9184cd939bdfff5fbd3b4eb7`  
		Last Modified: Wed, 28 Oct 2026 01:40:42 GMT  
		Size: 112.7 MB (112724550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac8d663e8239884785d44ceb5a92d39de8d8bb67ca7133a23015cd1514306d3`  
		Last Modified: Wed, 28 Oct 2026 01:40:39 GMT  
		Size: 378.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dccdfc594d3a4cc013f6cbb003f8798dc3755ad33f31d7e6995daad694d16112`  
		Last Modified: Wed, 28 Oct 2026 01:40:39 GMT  
		Size: 1.2 KB (1242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa67107cde5897660da8ea98314773ac3e8ebf0758f51c6db0be4bd09a8d875`  
		Last Modified: Wed, 28 Oct 2026 01:40:40 GMT  
		Size: 2.2 KB (2229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:112f8bcd139473511c756bb90e057e180c663cd497862c84e93750930f5af44f`  
		Last Modified: Wed, 28 Oct 2026 01:40:40 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:latest` - unknown; unknown

```console
$ docker pull couchdb@sha256:533bd2685aafd37aed2c72a36d8fed032829a5ad5d05fc3ba9b3d79a2756d0ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4225965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b0ea22f1bf4190c7d07ca06245934c7096326612d5e7521ae206c23052d8fca`

```dockerfile
```

-	Layers:
	-	`sha256:f47d14935175ada75b2e17559281cbb998233b9c055029236c1798f392da2ddd`  
		Last Modified: Wed, 28 Oct 2026 01:40:38 GMT  
		Size: 4.2 MB (4194607 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40a9c525e0444196e95d493095614168f9857249555cb9c9d8731a45b4d49b01`  
		Last Modified: Wed, 28 Oct 2026 01:40:38 GMT  
		Size: 31.4 KB (31358 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:latest` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:85c1ca31e0c88a00644c23d085a5e76b17dfb041e095703d391b703558f5f3e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.6 MB (150551086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e18c096abfabaea76d92b6727c39f641df462c9f39bf908afbaabd1cb221a28`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:43:21 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 28 Oct 2026 01:43:21 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Wed, 28 Oct 2026 01:43:28 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:43:32 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 28 Oct 2026 01:43:32 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 28 Oct 2026 01:43:38 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:43:38 GMT
ENV COUCHDB_VERSION=3.5.3
# Wed, 28 Oct 2026 01:43:38 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 28 Oct 2026 01:43:52 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Wed, 28 Oct 2026 01:43:52 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Wed, 28 Oct 2026 01:43:52 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Wed, 28 Oct 2026 01:43:52 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 28 Oct 2026 01:43:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Wed, 28 Oct 2026 01:43:52 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:43:52 GMT
VOLUME [/opt/couchdb/data]
# Wed, 28 Oct 2026 01:43:52 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Wed, 28 Oct 2026 01:43:52 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1a7c45b78a60bb97d4422b5d20567a3d1896f03e18c440a7884e6976277966f`  
		Last Modified: Wed, 28 Oct 2026 01:44:06 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db9b8560eee8113e2593f33b2afea48609e4e39bbb42cc24d33d469aaa23440e`  
		Last Modified: Wed, 28 Oct 2026 01:44:06 GMT  
		Size: 7.3 MB (7257537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac5d7a483d0759cade74f9a47fb719e6dafc249213a6bcb4ce1016c7eed7497e`  
		Last Modified: Wed, 28 Oct 2026 01:44:06 GMT  
		Size: 382.5 KB (382457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d1895f128965a7f9ca4104a28eefd2e9cb5f252720d461afe27b0d98c45c48c`  
		Last Modified: Wed, 28 Oct 2026 01:44:06 GMT  
		Size: 338.8 KB (338806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17106561844cc666d7597dd874d513f9646e938b207977b40ebaf77c7c151193`  
		Last Modified: Wed, 28 Oct 2026 01:44:07 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c26a6d1c53db781c9e3b98c566c3e269ee11ea88ce56416567b5ae2fd9c5062`  
		Last Modified: Wed, 28 Oct 2026 01:44:09 GMT  
		Size: 112.4 MB (112353354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c6608dd350fdb0b62bf8d59d14f78e3504a9345fdeac8a730d262c2cea52fcc`  
		Last Modified: Wed, 28 Oct 2026 01:44:07 GMT  
		Size: 379.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:513798ef1edf99611515f74a45813766a900b5b786cd515b9e7f5d7e1da82b5c`  
		Last Modified: Wed, 28 Oct 2026 01:44:07 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12b1dc976c830783b90e88f3d33c3e5335ad42e6bbb9e7db86b93327c6d418bb`  
		Last Modified: Wed, 28 Oct 2026 01:44:08 GMT  
		Size: 2.2 KB (2228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80e8387d2b705b8597918a55de7140deffb8185f55f3a5c5629ea4191e33022e`  
		Last Modified: Wed, 28 Oct 2026 01:44:08 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:latest` - unknown; unknown

```console
$ docker pull couchdb@sha256:5700468b318617f5297590cb81998193cd06c2c314292d8e59c5b86565defbec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4226455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30b40ce84a1c7e9cae80a5b2d68e06a8dafeca96d14a8ec1730f327ece742258`

```dockerfile
```

-	Layers:
	-	`sha256:3565f368c535a88bcd78deba77235e7ba1a2af3a9662e1e18121b4687bc51a7f`  
		Last Modified: Wed, 28 Oct 2026 01:44:06 GMT  
		Size: 4.2 MB (4194903 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24cba78deb9793485dfe51e7b25293d15d5da429d3236bd5baf81b6551390cd7`  
		Last Modified: Wed, 28 Oct 2026 01:44:05 GMT  
		Size: 31.6 KB (31552 bytes)  
		MIME: application/vnd.in-toto+json
