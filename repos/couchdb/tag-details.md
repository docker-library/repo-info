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
$ docker pull couchdb@sha256:2e32766e96e08fafed9179d373ef4451866550c8736f3565ba0be3433a962f6f
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
$ docker pull couchdb@sha256:dc4819d8c36c5e9a06ebb5add49bda1fe2c2a3856a7ca42221bdc6e48a913e21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.5 MB (150535706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d083209312b1eccc0f4f9ec845939eca2e7bad3d2cf95e34c72ef13664f7c45`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:49:48 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 21 Oct 2026 00:49:48 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Wed, 21 Oct 2026 00:49:56 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:49:59 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 21 Oct 2026 00:49:59 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 21 Oct 2026 00:50:05 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:50:05 GMT
ENV COUCHDB_VERSION=3.5.3
# Wed, 21 Oct 2026 00:50:05 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 21 Oct 2026 00:50:19 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Wed, 21 Oct 2026 00:50:19 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Wed, 21 Oct 2026 00:50:19 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Wed, 21 Oct 2026 00:50:19 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 00:50:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:50:19 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:50:19 GMT
VOLUME [/opt/couchdb/data]
# Wed, 21 Oct 2026 00:50:19 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Wed, 21 Oct 2026 00:50:19 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c775b05183d7a7fda71dba3713a71d426569bf23bee99f02f378dafcc9bb905d`  
		Last Modified: Wed, 21 Oct 2026 00:50:33 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:033915c41de2cd5181e16789d7001d5d3def9ca5ffb3c4b7fcf4b735466d72f8`  
		Last Modified: Wed, 21 Oct 2026 00:50:33 GMT  
		Size: 7.3 MB (7257544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b46ceed726d9d592446fb154fb979864c4ee4b15e770881ff2b89f3014ab0e4`  
		Last Modified: Wed, 21 Oct 2026 00:50:33 GMT  
		Size: 382.4 KB (382438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53c0f0a33bf9520576df413653ac9b87b113560d457b2196527e1e2ae8b28333`  
		Last Modified: Wed, 21 Oct 2026 00:50:33 GMT  
		Size: 338.8 KB (338804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:956ce338845a031e31ef4214fddac974f36d1c335d3f21bd8e1c48fb8a0494fa`  
		Last Modified: Wed, 21 Oct 2026 00:50:34 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:016a5675f8aeebe5a778916017a3a2e189503f345ced3b42bacb603c883ff115`  
		Last Modified: Wed, 21 Oct 2026 00:50:37 GMT  
		Size: 112.4 MB (112351007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73f7439eb6ff93f0dfa61217cecc7f3d893338a7170315ee70dafcb7aebfdd52`  
		Last Modified: Wed, 21 Oct 2026 00:50:34 GMT  
		Size: 381.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b7aceb964205438fd7ec4c727f75efc9276ef4e21c93a88c902c1c7e70adc1`  
		Last Modified: Wed, 21 Oct 2026 00:50:35 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86c5fb01a76a69ed4f4320e16b115a0d3f72d389916ed0ad6b6c5b0d7d23b61a`  
		Last Modified: Wed, 21 Oct 2026 00:50:35 GMT  
		Size: 2.2 KB (2231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c6180475dd5f3849691543a56024d9332b510d7d779e0a426062eadfa1ae0d0`  
		Last Modified: Wed, 21 Oct 2026 00:50:36 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3` - unknown; unknown

```console
$ docker pull couchdb@sha256:2dbcbba07da4c39065f344fd1b0372a7ce51dde15679a9f37ba15e330402ee18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4226427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20985222d1d1ebd9d2281e6674e4bc62fcee0ca94dc3e5dd8e00ec5182abcd18`

```dockerfile
```

-	Layers:
	-	`sha256:be56875a5cde9e6a749a35f00a1b9c5d431f71c848404d6776728751b3566c1b`  
		Last Modified: Wed, 21 Oct 2026 00:50:33 GMT  
		Size: 4.2 MB (4194875 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eabb96492346c5f1c1f54130dae344c2a876a35b7e9ab603877f6b0467b0cb50`  
		Last Modified: Wed, 21 Oct 2026 00:50:33 GMT  
		Size: 31.6 KB (31552 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3-nouveau`

```console
$ docker pull couchdb@sha256:fd9e43af6165f06f134570ec24adc352c09c4b48c688939856e90fa1ededb3e0
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
$ docker pull couchdb@sha256:2277b689332f45810759f7a99a7621b4ba3271c919b0d776ddf98559ca6e53c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150123508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fac77586ec5630b6b89c1367ccf7ab05bee9ae1fbb90d98de164901894b2a805`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:49:49 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 21 Oct 2026 00:49:49 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Wed, 21 Oct 2026 00:49:56 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:50:02 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:50:05 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 21 Oct 2026 00:50:05 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 21 Oct 2026 00:50:11 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:50:11 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 21 Oct 2026 00:50:17 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends             couchdb-nouveau=3.5.3~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Wed, 21 Oct 2026 00:50:17 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Wed, 21 Oct 2026 00:50:17 GMT
VOLUME [/opt/nouveau/data]
# Wed, 21 Oct 2026 00:50:17 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Wed, 21 Oct 2026 00:50:17 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccfbd78647888bedd51359bcf65a23f604b560e30791e2f204fa8b7d89fc8ec4`  
		Last Modified: Wed, 21 Oct 2026 00:50:32 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12818ea621113d4bc99d592f23d67d9263a75f0b37b885973f21e77ed62be205`  
		Last Modified: Wed, 21 Oct 2026 00:50:33 GMT  
		Size: 7.3 MB (7257534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e5d0ad390f63ec861e904eef738a69c199dff22514de8f8dbb49a6aba47d53c`  
		Last Modified: Wed, 21 Oct 2026 00:50:34 GMT  
		Size: 69.2 MB (69193345 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5026cb0e2cec467946373947b135e08654a5759a3a18a1d0cf3d8461e2ed5b12`  
		Last Modified: Wed, 21 Oct 2026 00:50:32 GMT  
		Size: 390.2 KB (390197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b74697fd496782420c67f2e475507d8e83adf433f33ed840ebc55ca73a39ba37`  
		Last Modified: Wed, 21 Oct 2026 00:50:34 GMT  
		Size: 347.5 KB (347502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76fe699880239620e6a0f9501cdabb2746404a2a37b8b89f4627c83b0064e710`  
		Last Modified: Wed, 21 Oct 2026 00:50:34 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d140fd2d7a7a93fac54e2d841b4ef859a08bf23e6a46b02c876f24b4c85fd05`  
		Last Modified: Wed, 21 Oct 2026 00:50:35 GMT  
		Size: 42.7 MB (42732581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69959d35c55831ebb3c475f35986812bcda668730875ed77233278aaa7824e05`  
		Last Modified: Wed, 21 Oct 2026 00:50:35 GMT  
		Size: 417.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:a2d1dbb66b19fd3b937375617e2fdbf6b1f80ba20c8732529d21140af19639fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3392168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49dddb75292370412083231be348a930446560a6e81142695bde75f3ac376a9d`

```dockerfile
```

-	Layers:
	-	`sha256:853a4474b2e5211699978353468b00e46b6b4cb232dd44dfc7f9d1fe4d3684d3`  
		Last Modified: Wed, 21 Oct 2026 00:50:32 GMT  
		Size: 3.4 MB (3367729 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:593df8a68910b469dbc0b7dc8e0ca7b2c1d1465ecca0018630436a1218d473a2`  
		Last Modified: Wed, 21 Oct 2026 00:50:32 GMT  
		Size: 24.4 KB (24439 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.5`

```console
$ docker pull couchdb@sha256:2e32766e96e08fafed9179d373ef4451866550c8736f3565ba0be3433a962f6f
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
$ docker pull couchdb@sha256:dc4819d8c36c5e9a06ebb5add49bda1fe2c2a3856a7ca42221bdc6e48a913e21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.5 MB (150535706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d083209312b1eccc0f4f9ec845939eca2e7bad3d2cf95e34c72ef13664f7c45`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:49:48 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 21 Oct 2026 00:49:48 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Wed, 21 Oct 2026 00:49:56 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:49:59 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 21 Oct 2026 00:49:59 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 21 Oct 2026 00:50:05 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:50:05 GMT
ENV COUCHDB_VERSION=3.5.3
# Wed, 21 Oct 2026 00:50:05 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 21 Oct 2026 00:50:19 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Wed, 21 Oct 2026 00:50:19 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Wed, 21 Oct 2026 00:50:19 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Wed, 21 Oct 2026 00:50:19 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 00:50:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:50:19 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:50:19 GMT
VOLUME [/opt/couchdb/data]
# Wed, 21 Oct 2026 00:50:19 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Wed, 21 Oct 2026 00:50:19 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c775b05183d7a7fda71dba3713a71d426569bf23bee99f02f378dafcc9bb905d`  
		Last Modified: Wed, 21 Oct 2026 00:50:33 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:033915c41de2cd5181e16789d7001d5d3def9ca5ffb3c4b7fcf4b735466d72f8`  
		Last Modified: Wed, 21 Oct 2026 00:50:33 GMT  
		Size: 7.3 MB (7257544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b46ceed726d9d592446fb154fb979864c4ee4b15e770881ff2b89f3014ab0e4`  
		Last Modified: Wed, 21 Oct 2026 00:50:33 GMT  
		Size: 382.4 KB (382438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53c0f0a33bf9520576df413653ac9b87b113560d457b2196527e1e2ae8b28333`  
		Last Modified: Wed, 21 Oct 2026 00:50:33 GMT  
		Size: 338.8 KB (338804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:956ce338845a031e31ef4214fddac974f36d1c335d3f21bd8e1c48fb8a0494fa`  
		Last Modified: Wed, 21 Oct 2026 00:50:34 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:016a5675f8aeebe5a778916017a3a2e189503f345ced3b42bacb603c883ff115`  
		Last Modified: Wed, 21 Oct 2026 00:50:37 GMT  
		Size: 112.4 MB (112351007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73f7439eb6ff93f0dfa61217cecc7f3d893338a7170315ee70dafcb7aebfdd52`  
		Last Modified: Wed, 21 Oct 2026 00:50:34 GMT  
		Size: 381.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b7aceb964205438fd7ec4c727f75efc9276ef4e21c93a88c902c1c7e70adc1`  
		Last Modified: Wed, 21 Oct 2026 00:50:35 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86c5fb01a76a69ed4f4320e16b115a0d3f72d389916ed0ad6b6c5b0d7d23b61a`  
		Last Modified: Wed, 21 Oct 2026 00:50:35 GMT  
		Size: 2.2 KB (2231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c6180475dd5f3849691543a56024d9332b510d7d779e0a426062eadfa1ae0d0`  
		Last Modified: Wed, 21 Oct 2026 00:50:36 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5` - unknown; unknown

```console
$ docker pull couchdb@sha256:2dbcbba07da4c39065f344fd1b0372a7ce51dde15679a9f37ba15e330402ee18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4226427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20985222d1d1ebd9d2281e6674e4bc62fcee0ca94dc3e5dd8e00ec5182abcd18`

```dockerfile
```

-	Layers:
	-	`sha256:be56875a5cde9e6a749a35f00a1b9c5d431f71c848404d6776728751b3566c1b`  
		Last Modified: Wed, 21 Oct 2026 00:50:33 GMT  
		Size: 4.2 MB (4194875 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eabb96492346c5f1c1f54130dae344c2a876a35b7e9ab603877f6b0467b0cb50`  
		Last Modified: Wed, 21 Oct 2026 00:50:33 GMT  
		Size: 31.6 KB (31552 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.5-nouveau`

```console
$ docker pull couchdb@sha256:fd9e43af6165f06f134570ec24adc352c09c4b48c688939856e90fa1ededb3e0
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
$ docker pull couchdb@sha256:2277b689332f45810759f7a99a7621b4ba3271c919b0d776ddf98559ca6e53c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150123508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fac77586ec5630b6b89c1367ccf7ab05bee9ae1fbb90d98de164901894b2a805`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:49:49 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 21 Oct 2026 00:49:49 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Wed, 21 Oct 2026 00:49:56 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:50:02 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:50:05 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 21 Oct 2026 00:50:05 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 21 Oct 2026 00:50:11 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:50:11 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 21 Oct 2026 00:50:17 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends             couchdb-nouveau=3.5.3~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Wed, 21 Oct 2026 00:50:17 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Wed, 21 Oct 2026 00:50:17 GMT
VOLUME [/opt/nouveau/data]
# Wed, 21 Oct 2026 00:50:17 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Wed, 21 Oct 2026 00:50:17 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccfbd78647888bedd51359bcf65a23f604b560e30791e2f204fa8b7d89fc8ec4`  
		Last Modified: Wed, 21 Oct 2026 00:50:32 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12818ea621113d4bc99d592f23d67d9263a75f0b37b885973f21e77ed62be205`  
		Last Modified: Wed, 21 Oct 2026 00:50:33 GMT  
		Size: 7.3 MB (7257534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e5d0ad390f63ec861e904eef738a69c199dff22514de8f8dbb49a6aba47d53c`  
		Last Modified: Wed, 21 Oct 2026 00:50:34 GMT  
		Size: 69.2 MB (69193345 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5026cb0e2cec467946373947b135e08654a5759a3a18a1d0cf3d8461e2ed5b12`  
		Last Modified: Wed, 21 Oct 2026 00:50:32 GMT  
		Size: 390.2 KB (390197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b74697fd496782420c67f2e475507d8e83adf433f33ed840ebc55ca73a39ba37`  
		Last Modified: Wed, 21 Oct 2026 00:50:34 GMT  
		Size: 347.5 KB (347502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76fe699880239620e6a0f9501cdabb2746404a2a37b8b89f4627c83b0064e710`  
		Last Modified: Wed, 21 Oct 2026 00:50:34 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d140fd2d7a7a93fac54e2d841b4ef859a08bf23e6a46b02c876f24b4c85fd05`  
		Last Modified: Wed, 21 Oct 2026 00:50:35 GMT  
		Size: 42.7 MB (42732581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69959d35c55831ebb3c475f35986812bcda668730875ed77233278aaa7824e05`  
		Last Modified: Wed, 21 Oct 2026 00:50:35 GMT  
		Size: 417.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:a2d1dbb66b19fd3b937375617e2fdbf6b1f80ba20c8732529d21140af19639fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3392168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49dddb75292370412083231be348a930446560a6e81142695bde75f3ac376a9d`

```dockerfile
```

-	Layers:
	-	`sha256:853a4474b2e5211699978353468b00e46b6b4cb232dd44dfc7f9d1fe4d3684d3`  
		Last Modified: Wed, 21 Oct 2026 00:50:32 GMT  
		Size: 3.4 MB (3367729 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:593df8a68910b469dbc0b7dc8e0ca7b2c1d1465ecca0018630436a1218d473a2`  
		Last Modified: Wed, 21 Oct 2026 00:50:32 GMT  
		Size: 24.4 KB (24439 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.5.3`

```console
$ docker pull couchdb@sha256:2e32766e96e08fafed9179d373ef4451866550c8736f3565ba0be3433a962f6f
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
$ docker pull couchdb@sha256:dc4819d8c36c5e9a06ebb5add49bda1fe2c2a3856a7ca42221bdc6e48a913e21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.5 MB (150535706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d083209312b1eccc0f4f9ec845939eca2e7bad3d2cf95e34c72ef13664f7c45`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:49:48 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 21 Oct 2026 00:49:48 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Wed, 21 Oct 2026 00:49:56 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:49:59 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 21 Oct 2026 00:49:59 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 21 Oct 2026 00:50:05 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:50:05 GMT
ENV COUCHDB_VERSION=3.5.3
# Wed, 21 Oct 2026 00:50:05 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 21 Oct 2026 00:50:19 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Wed, 21 Oct 2026 00:50:19 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Wed, 21 Oct 2026 00:50:19 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Wed, 21 Oct 2026 00:50:19 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 00:50:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:50:19 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:50:19 GMT
VOLUME [/opt/couchdb/data]
# Wed, 21 Oct 2026 00:50:19 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Wed, 21 Oct 2026 00:50:19 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c775b05183d7a7fda71dba3713a71d426569bf23bee99f02f378dafcc9bb905d`  
		Last Modified: Wed, 21 Oct 2026 00:50:33 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:033915c41de2cd5181e16789d7001d5d3def9ca5ffb3c4b7fcf4b735466d72f8`  
		Last Modified: Wed, 21 Oct 2026 00:50:33 GMT  
		Size: 7.3 MB (7257544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b46ceed726d9d592446fb154fb979864c4ee4b15e770881ff2b89f3014ab0e4`  
		Last Modified: Wed, 21 Oct 2026 00:50:33 GMT  
		Size: 382.4 KB (382438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53c0f0a33bf9520576df413653ac9b87b113560d457b2196527e1e2ae8b28333`  
		Last Modified: Wed, 21 Oct 2026 00:50:33 GMT  
		Size: 338.8 KB (338804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:956ce338845a031e31ef4214fddac974f36d1c335d3f21bd8e1c48fb8a0494fa`  
		Last Modified: Wed, 21 Oct 2026 00:50:34 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:016a5675f8aeebe5a778916017a3a2e189503f345ced3b42bacb603c883ff115`  
		Last Modified: Wed, 21 Oct 2026 00:50:37 GMT  
		Size: 112.4 MB (112351007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73f7439eb6ff93f0dfa61217cecc7f3d893338a7170315ee70dafcb7aebfdd52`  
		Last Modified: Wed, 21 Oct 2026 00:50:34 GMT  
		Size: 381.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b7aceb964205438fd7ec4c727f75efc9276ef4e21c93a88c902c1c7e70adc1`  
		Last Modified: Wed, 21 Oct 2026 00:50:35 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86c5fb01a76a69ed4f4320e16b115a0d3f72d389916ed0ad6b6c5b0d7d23b61a`  
		Last Modified: Wed, 21 Oct 2026 00:50:35 GMT  
		Size: 2.2 KB (2231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c6180475dd5f3849691543a56024d9332b510d7d779e0a426062eadfa1ae0d0`  
		Last Modified: Wed, 21 Oct 2026 00:50:36 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5.3` - unknown; unknown

```console
$ docker pull couchdb@sha256:2dbcbba07da4c39065f344fd1b0372a7ce51dde15679a9f37ba15e330402ee18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4226427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20985222d1d1ebd9d2281e6674e4bc62fcee0ca94dc3e5dd8e00ec5182abcd18`

```dockerfile
```

-	Layers:
	-	`sha256:be56875a5cde9e6a749a35f00a1b9c5d431f71c848404d6776728751b3566c1b`  
		Last Modified: Wed, 21 Oct 2026 00:50:33 GMT  
		Size: 4.2 MB (4194875 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eabb96492346c5f1c1f54130dae344c2a876a35b7e9ab603877f6b0467b0cb50`  
		Last Modified: Wed, 21 Oct 2026 00:50:33 GMT  
		Size: 31.6 KB (31552 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.5.3-nouveau`

```console
$ docker pull couchdb@sha256:fd9e43af6165f06f134570ec24adc352c09c4b48c688939856e90fa1ededb3e0
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
$ docker pull couchdb@sha256:2277b689332f45810759f7a99a7621b4ba3271c919b0d776ddf98559ca6e53c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150123508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fac77586ec5630b6b89c1367ccf7ab05bee9ae1fbb90d98de164901894b2a805`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:49:49 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 21 Oct 2026 00:49:49 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Wed, 21 Oct 2026 00:49:56 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:50:02 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:50:05 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 21 Oct 2026 00:50:05 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 21 Oct 2026 00:50:11 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:50:11 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 21 Oct 2026 00:50:17 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends             couchdb-nouveau=3.5.3~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Wed, 21 Oct 2026 00:50:17 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Wed, 21 Oct 2026 00:50:17 GMT
VOLUME [/opt/nouveau/data]
# Wed, 21 Oct 2026 00:50:17 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Wed, 21 Oct 2026 00:50:17 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccfbd78647888bedd51359bcf65a23f604b560e30791e2f204fa8b7d89fc8ec4`  
		Last Modified: Wed, 21 Oct 2026 00:50:32 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12818ea621113d4bc99d592f23d67d9263a75f0b37b885973f21e77ed62be205`  
		Last Modified: Wed, 21 Oct 2026 00:50:33 GMT  
		Size: 7.3 MB (7257534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e5d0ad390f63ec861e904eef738a69c199dff22514de8f8dbb49a6aba47d53c`  
		Last Modified: Wed, 21 Oct 2026 00:50:34 GMT  
		Size: 69.2 MB (69193345 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5026cb0e2cec467946373947b135e08654a5759a3a18a1d0cf3d8461e2ed5b12`  
		Last Modified: Wed, 21 Oct 2026 00:50:32 GMT  
		Size: 390.2 KB (390197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b74697fd496782420c67f2e475507d8e83adf433f33ed840ebc55ca73a39ba37`  
		Last Modified: Wed, 21 Oct 2026 00:50:34 GMT  
		Size: 347.5 KB (347502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76fe699880239620e6a0f9501cdabb2746404a2a37b8b89f4627c83b0064e710`  
		Last Modified: Wed, 21 Oct 2026 00:50:34 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d140fd2d7a7a93fac54e2d841b4ef859a08bf23e6a46b02c876f24b4c85fd05`  
		Last Modified: Wed, 21 Oct 2026 00:50:35 GMT  
		Size: 42.7 MB (42732581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69959d35c55831ebb3c475f35986812bcda668730875ed77233278aaa7824e05`  
		Last Modified: Wed, 21 Oct 2026 00:50:35 GMT  
		Size: 417.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5.3-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:a2d1dbb66b19fd3b937375617e2fdbf6b1f80ba20c8732529d21140af19639fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3392168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49dddb75292370412083231be348a930446560a6e81142695bde75f3ac376a9d`

```dockerfile
```

-	Layers:
	-	`sha256:853a4474b2e5211699978353468b00e46b6b4cb232dd44dfc7f9d1fe4d3684d3`  
		Last Modified: Wed, 21 Oct 2026 00:50:32 GMT  
		Size: 3.4 MB (3367729 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:593df8a68910b469dbc0b7dc8e0ca7b2c1d1465ecca0018630436a1218d473a2`  
		Last Modified: Wed, 21 Oct 2026 00:50:32 GMT  
		Size: 24.4 KB (24439 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:latest`

```console
$ docker pull couchdb@sha256:2e32766e96e08fafed9179d373ef4451866550c8736f3565ba0be3433a962f6f
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
$ docker pull couchdb@sha256:dc4819d8c36c5e9a06ebb5add49bda1fe2c2a3856a7ca42221bdc6e48a913e21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.5 MB (150535706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d083209312b1eccc0f4f9ec845939eca2e7bad3d2cf95e34c72ef13664f7c45`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:49:48 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 21 Oct 2026 00:49:48 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Wed, 21 Oct 2026 00:49:56 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:49:59 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 21 Oct 2026 00:49:59 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 21 Oct 2026 00:50:05 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:50:05 GMT
ENV COUCHDB_VERSION=3.5.3
# Wed, 21 Oct 2026 00:50:05 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 21 Oct 2026 00:50:19 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Wed, 21 Oct 2026 00:50:19 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Wed, 21 Oct 2026 00:50:19 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Wed, 21 Oct 2026 00:50:19 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 00:50:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:50:19 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:50:19 GMT
VOLUME [/opt/couchdb/data]
# Wed, 21 Oct 2026 00:50:19 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Wed, 21 Oct 2026 00:50:19 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c775b05183d7a7fda71dba3713a71d426569bf23bee99f02f378dafcc9bb905d`  
		Last Modified: Wed, 21 Oct 2026 00:50:33 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:033915c41de2cd5181e16789d7001d5d3def9ca5ffb3c4b7fcf4b735466d72f8`  
		Last Modified: Wed, 21 Oct 2026 00:50:33 GMT  
		Size: 7.3 MB (7257544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b46ceed726d9d592446fb154fb979864c4ee4b15e770881ff2b89f3014ab0e4`  
		Last Modified: Wed, 21 Oct 2026 00:50:33 GMT  
		Size: 382.4 KB (382438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53c0f0a33bf9520576df413653ac9b87b113560d457b2196527e1e2ae8b28333`  
		Last Modified: Wed, 21 Oct 2026 00:50:33 GMT  
		Size: 338.8 KB (338804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:956ce338845a031e31ef4214fddac974f36d1c335d3f21bd8e1c48fb8a0494fa`  
		Last Modified: Wed, 21 Oct 2026 00:50:34 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:016a5675f8aeebe5a778916017a3a2e189503f345ced3b42bacb603c883ff115`  
		Last Modified: Wed, 21 Oct 2026 00:50:37 GMT  
		Size: 112.4 MB (112351007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73f7439eb6ff93f0dfa61217cecc7f3d893338a7170315ee70dafcb7aebfdd52`  
		Last Modified: Wed, 21 Oct 2026 00:50:34 GMT  
		Size: 381.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b7aceb964205438fd7ec4c727f75efc9276ef4e21c93a88c902c1c7e70adc1`  
		Last Modified: Wed, 21 Oct 2026 00:50:35 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86c5fb01a76a69ed4f4320e16b115a0d3f72d389916ed0ad6b6c5b0d7d23b61a`  
		Last Modified: Wed, 21 Oct 2026 00:50:35 GMT  
		Size: 2.2 KB (2231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c6180475dd5f3849691543a56024d9332b510d7d779e0a426062eadfa1ae0d0`  
		Last Modified: Wed, 21 Oct 2026 00:50:36 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:latest` - unknown; unknown

```console
$ docker pull couchdb@sha256:2dbcbba07da4c39065f344fd1b0372a7ce51dde15679a9f37ba15e330402ee18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4226427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20985222d1d1ebd9d2281e6674e4bc62fcee0ca94dc3e5dd8e00ec5182abcd18`

```dockerfile
```

-	Layers:
	-	`sha256:be56875a5cde9e6a749a35f00a1b9c5d431f71c848404d6776728751b3566c1b`  
		Last Modified: Wed, 21 Oct 2026 00:50:33 GMT  
		Size: 4.2 MB (4194875 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eabb96492346c5f1c1f54130dae344c2a876a35b7e9ab603877f6b0467b0cb50`  
		Last Modified: Wed, 21 Oct 2026 00:50:33 GMT  
		Size: 31.6 KB (31552 bytes)  
		MIME: application/vnd.in-toto+json
