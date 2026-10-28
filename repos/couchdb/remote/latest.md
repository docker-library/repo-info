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
