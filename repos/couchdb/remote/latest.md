## `couchdb:latest`

```console
$ docker pull couchdb@sha256:0ba6b4b8dd823232185fa2c7de04634b925be62f97c9b7cbece7dd9119470e17
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:latest` - linux; amd64

```console
$ docker pull couchdb@sha256:ab6a15465b006104bb3c54c59ea4250ed6534cbc15f4f4ff02c98e6188e7d2eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.8 MB (150819723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6945b9c3ac6d07e1a490766c83ee48b02577dbe8831973b4d052c163521acb5`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:05:00 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 24 Nov 2026 05:05:00 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Tue, 24 Nov 2026 05:05:07 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:05:09 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 24 Nov 2026 05:05:09 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 24 Nov 2026 05:05:15 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:05:15 GMT
ENV COUCHDB_VERSION=3.5.3
# Tue, 24 Nov 2026 05:05:15 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 24 Nov 2026 05:05:29 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 24 Nov 2026 05:05:29 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Tue, 24 Nov 2026 05:05:29 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Tue, 24 Nov 2026 05:05:29 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 24 Nov 2026 05:05:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 05:05:29 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 24 Nov 2026 05:05:29 GMT
VOLUME [/opt/couchdb/data]
# Tue, 24 Nov 2026 05:05:29 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Tue, 24 Nov 2026 05:05:29 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b7d804ac57f8c2ec8b39e14b6ff572590f31545ac570d157e1b483c63a634a8`  
		Last Modified: Tue, 24 Nov 2026 05:05:41 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a09256f60abeed59e5ef8b75733c51eff510a91e269b7d7c13b3314c2f643d5e`  
		Last Modified: Tue, 24 Nov 2026 05:05:42 GMT  
		Size: 7.5 MB (7491328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:395e82df8563dcd53e4fcdaaf805f1b1d9a24666f3e6e45e72c0f011134e4294`  
		Last Modified: Tue, 24 Nov 2026 05:05:42 GMT  
		Size: 417.4 KB (417442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0864d727290a0d179825b68b8cd3ec3a4c3ca0e4e768505141ebd2e99cf1254f`  
		Last Modified: Tue, 24 Nov 2026 05:05:41 GMT  
		Size: 338.6 KB (338569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f976b63bfd9cba2239d0c09cc9f9926adc2684fea5a465e7763e6d29ebc19a81`  
		Last Modified: Tue, 24 Nov 2026 05:05:42 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d7ab6044c5b0238618cf72cf58bcd860faee3963b0f57b47c0929b686a35488`  
		Last Modified: Tue, 24 Nov 2026 05:05:45 GMT  
		Size: 112.7 MB (112724769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eb8bf0c92bb91d47ce626197ad38586fa67c32bb850ccfcc1f3ad9ee3b52873`  
		Last Modified: Tue, 24 Nov 2026 05:05:43 GMT  
		Size: 382.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43c71f8625e5f92c87d30bf9073c08d6764f1aba4376f66aa5a54943b182839d`  
		Last Modified: Tue, 24 Nov 2026 05:05:43 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a54d9470ef0c361868f9c19ad02b50cbf37742e309aff4e22c77020a65591fb`  
		Last Modified: Tue, 24 Nov 2026 05:05:44 GMT  
		Size: 2.2 KB (2227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdf8a1ef4938ec75ae0952bb3bd3bc91b2a5d144cf577bb6f684cd4f2dde99a7`  
		Last Modified: Tue, 24 Nov 2026 05:05:44 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:latest` - unknown; unknown

```console
$ docker pull couchdb@sha256:23215ce347546c2fb3d94fb4a84c2ae2b7ff1f7ec0e94312c302208edafed51b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4225992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74ab29d2d26b905b70ce00e1e6bb35f576701f0392a6a9563e0a80375019c933`

```dockerfile
```

-	Layers:
	-	`sha256:4e74795fa0033756b4dfeca72816aea152323cc202dd52822cee62c49fa8237c`  
		Last Modified: Tue, 24 Nov 2026 05:05:42 GMT  
		Size: 4.2 MB (4194635 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:57a52197e5ac8bea42071fe62214ebe9d1d165236813413c770388ee4b5255f5`  
		Last Modified: Tue, 24 Nov 2026 05:05:41 GMT  
		Size: 31.4 KB (31357 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:latest` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:f2dab0778256e208cf46b7fd1993ed6a82e11c31acbe0d735ab2497674e34b2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.5 MB (150539026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:635880af5f2510aed5ffb0dd4d68c9154afb0cdcf09deea501579ff682eb6504`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:43:44 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 24 Nov 2026 04:43:44 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Tue, 24 Nov 2026 04:43:52 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:43:55 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 24 Nov 2026 04:43:55 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 24 Nov 2026 04:44:03 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:44:03 GMT
ENV COUCHDB_VERSION=3.5.3
# Tue, 24 Nov 2026 04:44:03 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 24 Nov 2026 04:44:17 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 24 Nov 2026 04:44:17 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Tue, 24 Nov 2026 04:44:17 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Tue, 24 Nov 2026 04:44:17 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 24 Nov 2026 04:44:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Tue, 24 Nov 2026 04:44:17 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:44:17 GMT
VOLUME [/opt/couchdb/data]
# Tue, 24 Nov 2026 04:44:17 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Tue, 24 Nov 2026 04:44:17 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:319217f5f7adfac14c9bd1ac84f564e13d295d93a71d5fbb429db47100b212bd`  
		Last Modified: Tue, 24 Nov 2026 04:44:31 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1035deb607672672c69482f47895efafb47a8087f28d652edeca83745cd7ee5`  
		Last Modified: Tue, 24 Nov 2026 04:44:31 GMT  
		Size: 7.3 MB (7257884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf1bcc9d65d2951ab9e2dacb84f57ebb617e9adb59b4fb1b31d3e8e58cbd2fcb`  
		Last Modified: Tue, 24 Nov 2026 04:44:31 GMT  
		Size: 382.5 KB (382458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6578e2838a5a4b187c9c2dc94ef02dea3ffa94f0752b4008d593b39f06e84a5`  
		Last Modified: Tue, 24 Nov 2026 04:44:31 GMT  
		Size: 338.8 KB (338777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5053d71057c4b3de56a591035c60236d90afbc836305b9eb242ce7c84c29afa`  
		Last Modified: Tue, 24 Nov 2026 04:44:32 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60ebddc56fb7db6a9ac5bcf6eacf31eee9eb7c97b9f99f24726af21d4efda0f7`  
		Last Modified: Tue, 24 Nov 2026 04:44:35 GMT  
		Size: 112.4 MB (112356444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae6fb4692978e557d96f74a54081e8edca12476c478a625236b643b9d968e3bc`  
		Last Modified: Tue, 24 Nov 2026 04:44:32 GMT  
		Size: 380.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fb30c33e56efd270892d7c32d5840ae26ac2ed6b2a2c329f6fb6ff1b9d01245`  
		Last Modified: Tue, 24 Nov 2026 04:44:33 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:553bc7988c099dab05030552a64278cd39bfd7dff4ddb26a09cd8b29a9cd9b92`  
		Last Modified: Tue, 24 Nov 2026 04:44:33 GMT  
		Size: 2.2 KB (2229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:649fab43f3d06ac32ac8e1952e238e42d5130142debe333b3c6f9b55062ae61c`  
		Last Modified: Tue, 24 Nov 2026 04:44:33 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:latest` - unknown; unknown

```console
$ docker pull couchdb@sha256:1d7656fd90f34f47dafca5ea81cca0a1d1db4962c69698c6cd398623757894ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4226483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e993a5dca4ed188670b625968448b7424e2ec396e820e7094326bde4332b1f5c`

```dockerfile
```

-	Layers:
	-	`sha256:be4e7970f678830a3991c26eecb2e3e13303bf497efa14e5cae064e5e775cce1`  
		Last Modified: Tue, 24 Nov 2026 04:44:31 GMT  
		Size: 4.2 MB (4194931 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3406e6a572577420d57747f40c378e3741226cb62b4fe15d132e46577d0be902`  
		Last Modified: Tue, 24 Nov 2026 04:44:31 GMT  
		Size: 31.6 KB (31552 bytes)  
		MIME: application/vnd.in-toto+json
