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
$ docker pull couchdb@sha256:b80216f643e99d31df318c740dbc556ac08b56444030ed1d5e6d7b0d4e625213
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3` - linux; amd64

```console
$ docker pull couchdb@sha256:b7a129a4ce4da47aa56ed2b67c8c16eafc58252e83c1688b5aa069f03e60cf80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148840694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0437e9629d79562f8353dce589533e335e8961e74fba12512b06984cf04e51c4`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:09 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 05 Aug 2026 00:45:09 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Wed, 05 Aug 2026 00:45:15 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:45:17 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 05 Aug 2026 00:45:17 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 05 Aug 2026 00:45:24 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:45:24 GMT
ENV COUCHDB_VERSION=3.5.2.1
# Wed, 05 Aug 2026 00:45:24 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 05 Aug 2026 00:45:36 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Wed, 05 Aug 2026 00:45:37 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Wed, 05 Aug 2026 00:45:37 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Wed, 05 Aug 2026 00:45:37 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 05 Aug 2026 00:45:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:45:37 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:45:37 GMT
VOLUME [/opt/couchdb/data]
# Wed, 05 Aug 2026 00:45:37 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Wed, 05 Aug 2026 00:45:37 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ec682d23fefefd3bed4125b4024810d6e0a8a8be24f255d3767d494afe64e1f`  
		Last Modified: Wed, 05 Aug 2026 00:45:50 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fda558b8d745da8511f3d39bc772719fff75921e3de407050ea4101a3fd1f9dd`  
		Last Modified: Wed, 05 Aug 2026 00:45:50 GMT  
		Size: 7.5 MB (7492173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f081fd33e73cdd329fc78f2815f7c9d34db4560f0ab9e3f5575617d476cac675`  
		Last Modified: Wed, 05 Aug 2026 00:45:50 GMT  
		Size: 417.6 KB (417587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe630cd29894c542329e1ab3aeb55d9a67a4e935ca496c7f3e1c8aa9395cb541`  
		Last Modified: Wed, 05 Aug 2026 00:45:50 GMT  
		Size: 338.6 KB (338583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30a552fa09e9ba3b0add201a291655519959dafc7134b421637c6ef187c89d27`  
		Last Modified: Wed, 05 Aug 2026 00:45:51 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c459845e3e55f4fb9b67b5658b3445c058e7ceeee618b3c064b2fc1b72462753`  
		Last Modified: Wed, 05 Aug 2026 00:45:53 GMT  
		Size: 110.8 MB (110806153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae1ea23a1baf415728c11f01940c722ab61a2e9e6d747b8ade880f1a7c2d4d96`  
		Last Modified: Wed, 05 Aug 2026 00:45:51 GMT  
		Size: 378.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4d77861f96fc12f4a1a8f57942c504256cbc45c0880d0f7eecc24e6b6b0c766`  
		Last Modified: Wed, 05 Aug 2026 00:45:52 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccc2c7ad289b4d30d541a7124489751b0ab6d93afe482a0afb326257a275613f`  
		Last Modified: Wed, 05 Aug 2026 00:45:52 GMT  
		Size: 2.2 KB (2228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14ca882a242352b48a72626f25fa00cf00eef0546e62e21fb1fb22947c5130cc`  
		Last Modified: Wed, 05 Aug 2026 00:45:52 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3` - unknown; unknown

```console
$ docker pull couchdb@sha256:c73dfe50f93203f32a584b3450436ef35ec599889ec7298b6198b3367517645f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4212155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2e93c8ea528bc58133905e76674f023c690a7f313fc770ebb4c538ff20b8bb9`

```dockerfile
```

-	Layers:
	-	`sha256:b248cf5f48c499b8d2d41a9ddcbf72b50a96069c8126b95106e954ccab821292`  
		Last Modified: Wed, 05 Aug 2026 00:45:50 GMT  
		Size: 4.2 MB (4180479 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7dbe86ec04637ca07bd725f8ed50584956213924ff8891edd3a3bf450c4537d4`  
		Last Modified: Wed, 05 Aug 2026 00:45:50 GMT  
		Size: 31.7 KB (31676 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:68a818978e34c30af0dc01b9025353a596c4c3b730338ad9ece5a95734b45192
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.6 MB (148606817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56af5abb6fa0f940bba530f96dec36806616f4a9f2bc1322f5de669de1a9e730`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:22 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 05 Aug 2026 00:47:22 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Wed, 05 Aug 2026 00:47:29 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:33 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 05 Aug 2026 00:47:33 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 05 Aug 2026 00:47:39 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:39 GMT
ENV COUCHDB_VERSION=3.5.2.1
# Wed, 05 Aug 2026 00:47:40 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 05 Aug 2026 00:47:54 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Wed, 05 Aug 2026 00:47:54 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Wed, 05 Aug 2026 00:47:54 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Wed, 05 Aug 2026 00:47:54 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 05 Aug 2026 00:47:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:47:54 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:47:54 GMT
VOLUME [/opt/couchdb/data]
# Wed, 05 Aug 2026 00:47:54 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Wed, 05 Aug 2026 00:47:54 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e50539dbfdcf055403d3c29f5d9d8e43389344aefeb5cf4d88b5da5bf0efa10`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:942419dbaff76fd36956da5b7b7b89e4514f5071f1e96588678e32e6a42df50e`  
		Last Modified: Wed, 05 Aug 2026 00:48:08 GMT  
		Size: 7.3 MB (7261196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faa4933a1bc01cc0c872db280c69379238f6fb05ce789810a8dc01ffcf76c895`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 382.6 KB (382582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:051024740cce1594708b0b9775fe0dbaa12712ece2912650e1dd783e3d409bd3`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 338.7 KB (338733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff58fd3653d913c9daf169e4266905f3f806242b82d06ce74bdb36fddc117e9`  
		Last Modified: Wed, 05 Aug 2026 00:48:08 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d5f010aab274d20006af8d7fcd441b8febdd8ad75498c9b25ed7165be442878`  
		Last Modified: Wed, 05 Aug 2026 00:48:11 GMT  
		Size: 110.5 MB (110475264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c7d250437810585be0572a02ac892f2de53ffe0f73b8d12744a3a54b121628b`  
		Last Modified: Wed, 05 Aug 2026 00:48:08 GMT  
		Size: 381.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2be07c6130e58325851e08c9c82686e868a44d03962c0513110052de19d4b20d`  
		Last Modified: Wed, 05 Aug 2026 00:48:09 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54e7cebf64634dd41864cdf6ff07d5d2bad9e2029af2c6618ea745a6ec5145c1`  
		Last Modified: Wed, 05 Aug 2026 00:48:10 GMT  
		Size: 2.2 KB (2228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57fdefb91cd3f33c0a659a9f9b01fdd5c9e3cd830362c906bc3407c962403acf`  
		Last Modified: Wed, 05 Aug 2026 00:48:10 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3` - unknown; unknown

```console
$ docker pull couchdb@sha256:c60ec6b9c47230beb4874514537e368b2fc3618057a1fdb346ac650678d9060e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4212669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a23d96ae06f5fb39813cda5c800a48521d6e2c24181b7c9d7fdc2e96fb7a517`

```dockerfile
```

-	Layers:
	-	`sha256:412e96f42596246bd3c1d920c48218946ed1fd9a97708c4189884c6b343eae13`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 4.2 MB (4180787 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a1c7f1a9a13436498c01915c0ca3f1d102c9c6c96ebe108311dec02cd2073e8`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 31.9 KB (31882 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3-nouveau`

```console
$ docker pull couchdb@sha256:0e251df9dda7ed59bd7a01d96d24d69724d0358781f6b8a0c117a9d30ef17c7a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3-nouveau` - linux; amd64

```console
$ docker pull couchdb@sha256:585d55350abe151f3bf4519c50dbb7cea0501d88995b6beb8a0115cb329f797b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.9 MB (150896317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3731b436f7eb9683a1c53527fcf783646d01cf64761f547be3fe375795fba856`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:08 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 05 Aug 2026 00:45:08 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Wed, 05 Aug 2026 00:45:16 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:45:22 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:45:25 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 05 Aug 2026 00:45:25 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 05 Aug 2026 00:45:31 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:45:31 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 05 Aug 2026 00:45:37 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends couchdb-nouveau=3.5.2.1~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Wed, 05 Aug 2026 00:45:37 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Wed, 05 Aug 2026 00:45:37 GMT
VOLUME [/opt/nouveau/data]
# Wed, 05 Aug 2026 00:45:37 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Wed, 05 Aug 2026 00:45:37 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:293d8a8a5b30dcdc2fcdeb72abd5a7fca77ff6fb7108ea1df588b2e9f752eea5`  
		Last Modified: Wed, 05 Aug 2026 00:45:51 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ef3166a1c18d53dc2ee86cba18cd2cf3e07899dedbd0702e4f131485bc5fb4f`  
		Last Modified: Wed, 05 Aug 2026 00:45:52 GMT  
		Size: 7.5 MB (7492168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff0f898d2e0fb7da32b5af32413b88d8fb57004a0b962d062aa4a6b7130346be`  
		Last Modified: Wed, 05 Aug 2026 00:45:54 GMT  
		Size: 70.0 MB (70032500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b6ba5cb0395aec43334fd8bdca35c6d47c1f707324317f8309a2c382c37e551`  
		Last Modified: Wed, 05 Aug 2026 00:45:52 GMT  
		Size: 426.0 KB (425951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff23e02f3d2485d5cae15e6c9502eacd98c1896a9ce14fdd39379c71fd10b53`  
		Last Modified: Wed, 05 Aug 2026 00:45:53 GMT  
		Size: 347.4 KB (347430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b19cc67040e5fde02d27311be2feda9288c95979e09b8b8bc639ffaa95d9f019`  
		Last Modified: Wed, 05 Aug 2026 00:45:53 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b3e364ccdbb8a2bfea50be22c3338d35418ded4848dd332ca9da8fde3b43529`  
		Last Modified: Wed, 05 Aug 2026 00:45:54 GMT  
		Size: 42.8 MB (42815624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f10eb9f680f14f1bb6c58f0bc54d2a1968949a2297cee38e911e43cb778c69d`  
		Last Modified: Wed, 05 Aug 2026 00:45:54 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:b40d2588e8338dcc013341b517fcd6667dd8f7546583996a0c482717ec66565b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3389224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d708e24422c68bb7586089f15030fe8de9b88f61afcee59329a80df05dc56a14`

```dockerfile
```

-	Layers:
	-	`sha256:b56ec0723cd15a5ad8f471ab50c9d9bab27be9c682ff8d421effb41d0a7205ca`  
		Last Modified: Wed, 05 Aug 2026 00:45:52 GMT  
		Size: 3.4 MB (3364709 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa138b8edbb8c35402d9bca001bd4b95e08d5aa1193e022932285ab57b719742`  
		Last Modified: Wed, 05 Aug 2026 00:45:52 GMT  
		Size: 24.5 KB (24515 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3-nouveau` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:55911fecab404779dec7b65e7b17d5d588911400abe891a585a943cd1d9527ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150055758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4421abd032d1baa395bb763dab1849014b65e5c51a23d212db6004a50638e410`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:22 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 05 Aug 2026 00:47:22 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Wed, 05 Aug 2026 00:47:30 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:36 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:39 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 05 Aug 2026 00:47:39 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 05 Aug 2026 00:47:45 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:45 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 05 Aug 2026 00:47:51 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends couchdb-nouveau=3.5.2.1~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Wed, 05 Aug 2026 00:47:51 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Wed, 05 Aug 2026 00:47:51 GMT
VOLUME [/opt/nouveau/data]
# Wed, 05 Aug 2026 00:47:51 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Wed, 05 Aug 2026 00:47:51 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbd9f0aef0e09a8aca8939a1e4d93909accb9dd49c307df9fd6ca1ed4b20c4e7`  
		Last Modified: Wed, 05 Aug 2026 00:48:06 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebdfdaeb2df80c0d29264a94c3905b5065f02df5add6e2e97653eefb34edfd04`  
		Last Modified: Wed, 05 Aug 2026 00:48:06 GMT  
		Size: 7.3 MB (7261144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4addda71af0fb5d1e498eeb20b916d969c1083c0140f9885e805b8b4bfe925f7`  
		Last Modified: Wed, 05 Aug 2026 00:48:08 GMT  
		Size: 69.2 MB (69179430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dca878acbcc70a43809358d612054a407484013f2a47022628ae14bb6422078`  
		Last Modified: Wed, 05 Aug 2026 00:48:06 GMT  
		Size: 390.2 KB (390236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b0986b8553f8cac14e515ba996d31d595996213cef05794d9471d0187034d6c`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 347.4 KB (347420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faedd038f0c1b4da20970249bb1f4332efb39bc70b318710253fd2eee3daedad`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc4048dcc9f78be6d2134cf02323a250240192dacb3c2af0e0e3b252981e5329`  
		Last Modified: Wed, 05 Aug 2026 00:48:09 GMT  
		Size: 42.7 MB (42732041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bed8595233f46a3f4661fe1b6ffb1c7446be7eed84ebd8b9ffe7ed41a6102815`  
		Last Modified: Wed, 05 Aug 2026 00:48:08 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:93afcab037a00b073127d2b991c9077b1673bacfe84b78b332b7f6b6622ae169
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3388071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba2a2424b06ef5ab5486c58ce35e701696b75774459f8d60abbb5166719a2eb8`

```dockerfile
```

-	Layers:
	-	`sha256:3d2df9a27a7e7989ad8e6a7953fd972cc7b0443a49f5ff2de63c9d171c16ff67`  
		Last Modified: Wed, 05 Aug 2026 00:48:06 GMT  
		Size: 3.4 MB (3363362 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d9835d2f25169cdaff6fff1338248bcad415f244af5f3fcb7b22de4bd935ff5c`  
		Last Modified: Wed, 05 Aug 2026 00:48:06 GMT  
		Size: 24.7 KB (24709 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.4`

```console
$ docker pull couchdb@sha256:91ca7a6482e079ce74ebcf7aae3493ebbffd59916f6c232ecee3ab686d9fa3f0
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
$ docker pull couchdb@sha256:13bebcde40c6851d5dab445770e3a9d4b45a6ac93c88d13cd39e48be0aca89b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.0 MB (139021604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea14f886993f43e8d807db17d3ec31bb8f7fc7076f93c5fcb4695761fdc42506`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:45:10 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 05 Aug 2026 00:45:10 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Wed, 05 Aug 2026 00:45:17 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:45:20 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 05 Aug 2026 00:45:20 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 05 Aug 2026 00:45:26 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt-key list;     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:45:26 GMT
ENV COUCHDB_VERSION=3.4.3
# Wed, 05 Aug 2026 00:45:26 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 05 Aug 2026 00:45:39 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages             couchdb="$COUCHDB_VERSION"~bookworm     ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Wed, 05 Aug 2026 00:45:39 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Wed, 05 Aug 2026 00:45:39 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Wed, 05 Aug 2026 00:45:39 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 05 Aug 2026 00:45:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:45:40 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:45:40 GMT
VOLUME [/opt/couchdb/data]
# Wed, 05 Aug 2026 00:45:40 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Wed, 05 Aug 2026 00:45:40 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1632b46f7903a78a7e57379a14ca8b00d48febac17676f13e1fc623896dfdab0`  
		Last Modified: Wed, 05 Aug 2026 00:45:53 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ec7e128f66d948f4280efb5e229393b10a801c6a77609cfb57d8804edc0ff15`  
		Last Modified: Wed, 05 Aug 2026 00:45:53 GMT  
		Size: 7.9 MB (7884344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:453d5466d9bb6103a240759c42e2e88761fb390be9272c484e539f1accc27f2b`  
		Last Modified: Wed, 05 Aug 2026 00:45:53 GMT  
		Size: 401.8 KB (401777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30e675c1d6bfac3714746920986ef3a6c21177c09a2bfcc8400424eb5f33b3ed`  
		Last Modified: Wed, 05 Aug 2026 00:45:53 GMT  
		Size: 76.5 KB (76512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c62869caec8d943b161f0c13b0022ab7bc72b00b27f606fed2d78e7b57f2838`  
		Last Modified: Wed, 05 Aug 2026 00:45:54 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b83b2e46c0559d6e50c3618643448540622dd9b474bf9264885179900ce49e5`  
		Last Modified: Wed, 05 Aug 2026 00:45:57 GMT  
		Size: 102.4 MB (102420955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a30119e26bbe391f01e2d0059fbd4441d36cc4594ee403b24768394cf4b91e1`  
		Last Modified: Wed, 05 Aug 2026 00:45:54 GMT  
		Size: 377.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:664c40986ed06b806c1ea59f0b44d10606e7f083db62c0b2868b614975730740`  
		Last Modified: Wed, 05 Aug 2026 00:45:54 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dd5179e332a2782aa7b8ba566e835018af9a6090fbd8e152e4d2e57253fbe39`  
		Last Modified: Wed, 05 Aug 2026 00:45:55 GMT  
		Size: 2.2 KB (2228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24958d3f98f3c7f7041aba8eccbf0823c31cb280bb183fd66f278a7303f0f2b1`  
		Last Modified: Wed, 05 Aug 2026 00:45:55 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4` - unknown; unknown

```console
$ docker pull couchdb@sha256:656a77e14fa935fc9a3b592d03c5481b3d5ceb07d9b96d009ec8503ea21c4f82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4156615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c88c03f55a21a72ca4fbd1061e21e7895bc891cf49e1cd7e78f99ec4755dbb1`

```dockerfile
```

-	Layers:
	-	`sha256:cc370045c486397896a647020d47d9b6e8e3bf5c4936d1103970e6a110834747`  
		Last Modified: Wed, 05 Aug 2026 00:45:53 GMT  
		Size: 4.1 MB (4125467 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:244957b0d067d68aac68afdd8931482a6a2f9fcb88c05244c143dab89ac9e5c0`  
		Last Modified: Wed, 05 Aug 2026 00:45:53 GMT  
		Size: 31.1 KB (31148 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.4` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:d4ca57562baf10ee243d28dd20a9635064ddd9f93088ab85fec259b737595d5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.4 MB (138434572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:151810144d17131ca0adaf27dcd5c0353e6a1e50e24880acd56a41e6f9665f22`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:24 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 05 Aug 2026 00:47:24 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Wed, 05 Aug 2026 00:47:30 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:33 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 05 Aug 2026 00:47:33 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 05 Aug 2026 00:47:38 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt-key list;     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:38 GMT
ENV COUCHDB_VERSION=3.4.3
# Wed, 05 Aug 2026 00:47:38 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 05 Aug 2026 00:47:50 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages             couchdb="$COUCHDB_VERSION"~bookworm     ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Wed, 05 Aug 2026 00:47:50 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Wed, 05 Aug 2026 00:47:50 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Wed, 05 Aug 2026 00:47:50 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 05 Aug 2026 00:47:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:47:50 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:47:50 GMT
VOLUME [/opt/couchdb/data]
# Wed, 05 Aug 2026 00:47:50 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Wed, 05 Aug 2026 00:47:50 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02592f388544a45f2cb4f09428fd872e05a1ec38d4cd077b6f0fa8a76d3a0882`  
		Last Modified: Wed, 05 Aug 2026 00:48:04 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:571a1bd51ba9fe46b26b8ab6bbb9788412bd858a62ac88daeeafdf76cce27fae`  
		Last Modified: Wed, 05 Aug 2026 00:48:04 GMT  
		Size: 7.7 MB (7695543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:955b8bbfd1cd5cc53c15a0d84aaa9e05e2e9ef6e2e305a38780b98b52629f44b`  
		Last Modified: Wed, 05 Aug 2026 00:48:04 GMT  
		Size: 370.6 KB (370558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce590504e830031805af1dea3dc937f1a8d53f0adf7e9216e4748d0977e327d9`  
		Last Modified: Wed, 05 Aug 2026 00:48:04 GMT  
		Size: 76.5 KB (76522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7defcb378422451fa72a2ba5b2701bf9cf3b3d9993374869c1dda81a2f46f32c`  
		Last Modified: Wed, 05 Aug 2026 00:48:05 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddc2bb2fa26e73adb3cb79865342c494035c70e0c1d8d50644677e5b9d718bed`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 102.2 MB (102169319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3a5a78af5680f2bb8bbf9138ca52e5e6cdc4f679f9ed7e3cc76cc17ff92e73c`  
		Last Modified: Wed, 05 Aug 2026 00:48:06 GMT  
		Size: 377.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d3625a74cf6e81d8826952bca0dc53bc3516a4853f2412d658cbd952ac1e894`  
		Last Modified: Wed, 05 Aug 2026 00:48:06 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92183e0d6e63b6156e0b036bee3d431130130e4762d77c563a413928ea116d45`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 2.2 KB (2227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52b48af448e6e7bca5364c0ed01834d9ffc1a5c8ef8a40b2de757667afd2548e`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4` - unknown; unknown

```console
$ docker pull couchdb@sha256:493910cba9bf7bbce863188a425eece915744c594326a16e2b549bd7dd1af1c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4157054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9e93fc5b5a9905bbc1c3634f57cf049af93a4e9e7c4f96d2865a2994e267263`

```dockerfile
```

-	Layers:
	-	`sha256:f5b215f647908f3216ea4550ea9130336fb1370713a27f706bd4c371f3742b75`  
		Last Modified: Wed, 05 Aug 2026 00:48:04 GMT  
		Size: 4.1 MB (4125736 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39220b9134edd2259277e17af85bebb276aac98e4063a2513f36e20e6bcf06dc`  
		Last Modified: Wed, 05 Aug 2026 00:48:04 GMT  
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
$ docker pull couchdb@sha256:bdf1c0b8d996bfeb34feaf9bd0aee91227b233368c2d6ec810e2f12d0b101ad7
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
$ docker pull couchdb@sha256:a8318326762bb837561eecb09cec9e2f374717bad2ee75629f902ca6688236b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.6 MB (156564722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cb84cf159a359fb3c2c62b0a784c7cae7eabda74350d97a1c0f9269abe6a5da`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:45:11 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 05 Aug 2026 00:45:11 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Wed, 05 Aug 2026 00:45:17 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:45:24 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-17-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:45:26 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 05 Aug 2026 00:45:26 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 05 Aug 2026 00:45:30 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt-key list;    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:45:30 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ bookworm main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 05 Aug 2026 00:45:35 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages --no-install-recommends             couchdb-nouveau=3.4.3~bookworm;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Wed, 05 Aug 2026 00:45:36 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Wed, 05 Aug 2026 00:45:36 GMT
VOLUME [/opt/nouveau/data]
# Wed, 05 Aug 2026 00:45:36 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Wed, 05 Aug 2026 00:45:36 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f8b4b0c61c67f8ea14e7a36fc3298b132c69b907e9e5cde1dd51fa155436ae4`  
		Last Modified: Wed, 05 Aug 2026 00:45:51 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:758af3fcb6cabdd529c5f997ffeb331d2104f86ae1b03da59c7f9984f483792f`  
		Last Modified: Wed, 05 Aug 2026 00:45:51 GMT  
		Size: 7.9 MB (7884310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16dc15e0b4ecee2472692d3c26276e5a36b30c24d400b3d4748493480d5c6549`  
		Last Modified: Wed, 05 Aug 2026 00:45:53 GMT  
		Size: 77.5 MB (77486427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f32457ef8154a749025a67abec62016f534b76115405780961492888f4b79065`  
		Last Modified: Wed, 05 Aug 2026 00:45:51 GMT  
		Size: 424.2 KB (424157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:076dc456f37c8c441ecd49ace4e286fb2267308a1d5769a1b69857d31c5b5865`  
		Last Modified: Wed, 05 Aug 2026 00:45:52 GMT  
		Size: 99.6 KB (99612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3ef628bfc09f5f813c09239dae2c85a916fda87cbff6719cacdc320426aff54`  
		Last Modified: Wed, 05 Aug 2026 00:45:52 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:357ab3bb10ad38bdc46e5a23e39b77e48a298351e673fda4800519d1addbb07b`  
		Last Modified: Wed, 05 Aug 2026 00:45:54 GMT  
		Size: 42.4 MB (42435747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81c240e411f6ace642ab104f209c6bcc08f261d782882beb55bf513184a0abe3`  
		Last Modified: Wed, 05 Aug 2026 00:45:53 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:e1d3c72cd301951513bfa684aef13eafe200a1cdd2a34a46c1c21b61b288247e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3682954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78b49390af029b0f24e208c2b7c70426e21f9d3257583557e2c2cbbfa9eeb116`

```dockerfile
```

-	Layers:
	-	`sha256:44ca970dc179c194ef6c75b616b77bd20b30cbc04aab3bf6f63a98035bab29d2`  
		Last Modified: Wed, 05 Aug 2026 00:45:51 GMT  
		Size: 3.7 MB (3658739 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:325ee1673fe7d043a5424d6ca1828257885c29316492ad8eda70363d910454f0`  
		Last Modified: Wed, 05 Aug 2026 00:45:51 GMT  
		Size: 24.2 KB (24215 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.4-nouveau` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:b684d1dd7d0ea42f795cd1aca44274c1e8373106494b015a1dd216fe62ccd893
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.5 MB (155455916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8001cc0b304e8c76e3eec73ccd5f874506c553121d43dcfe840f8def488a22d1`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:27 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 05 Aug 2026 00:47:27 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Wed, 05 Aug 2026 00:47:33 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:40 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-17-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:43 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 05 Aug 2026 00:47:43 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 05 Aug 2026 00:47:47 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt-key list;    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:47 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ bookworm main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 05 Aug 2026 00:47:52 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages --no-install-recommends             couchdb-nouveau=3.4.3~bookworm;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Wed, 05 Aug 2026 00:47:52 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Wed, 05 Aug 2026 00:47:52 GMT
VOLUME [/opt/nouveau/data]
# Wed, 05 Aug 2026 00:47:52 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Wed, 05 Aug 2026 00:47:52 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:976586560e739993af1dcba0e08e575169396f071a69bef7179a7e8993ed8711`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b9cb4a41d54f2f5672f2f58c43ce86c9ef3abd0ff1b1565cbc024559f9d6104`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 7.7 MB (7695561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2654252622e4280ee0399b7d2b70c336dd6666a092f0efaef33169a1033d8df`  
		Last Modified: Wed, 05 Aug 2026 00:48:09 GMT  
		Size: 76.8 MB (76810873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc0bb82fcebe02d0f0ae74321bbdac0af6991c0ff597bb16fccaf03383139bb9`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 392.8 KB (392833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4c67f283d8c31cce2e49c36fb6050e476cdf55aaeab5fee24c11843a197fe50`  
		Last Modified: Wed, 05 Aug 2026 00:48:08 GMT  
		Size: 99.5 KB (99543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55ccf45375aff0d5390547e11cb8a7e845ea5ee2f8b54786cb5fd0d25be32ea4`  
		Last Modified: Wed, 05 Aug 2026 00:48:08 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:243a11046a3a00cd0307e06236f15d816f54e2265521c813ca318f8280bd1e31`  
		Last Modified: Wed, 05 Aug 2026 00:48:10 GMT  
		Size: 42.3 MB (42338021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53080f36b1fe9e3aff80f809d661943b4f54bcd938c415168c44edbb9743893a`  
		Last Modified: Wed, 05 Aug 2026 00:48:10 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:29a2acab29bfcee11627fe9f20b29d7af4ef8de01058a2f3bbd2f360d82c6d38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3681792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:073610f195ef8ba35de52c5e525d5d78865459048b8f5ad4f0ae977dce8ef1bb`

```dockerfile
```

-	Layers:
	-	`sha256:43d41aaa4ce70d2d657adfbc232549f2e0609cdb3cdcd34e785baee606618df2`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 3.7 MB (3657407 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c2fe76f1d58c260585d846f592823581b658e62459b3614ab1863c56cae65d94`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
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
$ docker pull couchdb@sha256:91ca7a6482e079ce74ebcf7aae3493ebbffd59916f6c232ecee3ab686d9fa3f0
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
$ docker pull couchdb@sha256:13bebcde40c6851d5dab445770e3a9d4b45a6ac93c88d13cd39e48be0aca89b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.0 MB (139021604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea14f886993f43e8d807db17d3ec31bb8f7fc7076f93c5fcb4695761fdc42506`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:45:10 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 05 Aug 2026 00:45:10 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Wed, 05 Aug 2026 00:45:17 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:45:20 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 05 Aug 2026 00:45:20 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 05 Aug 2026 00:45:26 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt-key list;     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:45:26 GMT
ENV COUCHDB_VERSION=3.4.3
# Wed, 05 Aug 2026 00:45:26 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 05 Aug 2026 00:45:39 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages             couchdb="$COUCHDB_VERSION"~bookworm     ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Wed, 05 Aug 2026 00:45:39 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Wed, 05 Aug 2026 00:45:39 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Wed, 05 Aug 2026 00:45:39 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 05 Aug 2026 00:45:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:45:40 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:45:40 GMT
VOLUME [/opt/couchdb/data]
# Wed, 05 Aug 2026 00:45:40 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Wed, 05 Aug 2026 00:45:40 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1632b46f7903a78a7e57379a14ca8b00d48febac17676f13e1fc623896dfdab0`  
		Last Modified: Wed, 05 Aug 2026 00:45:53 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ec7e128f66d948f4280efb5e229393b10a801c6a77609cfb57d8804edc0ff15`  
		Last Modified: Wed, 05 Aug 2026 00:45:53 GMT  
		Size: 7.9 MB (7884344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:453d5466d9bb6103a240759c42e2e88761fb390be9272c484e539f1accc27f2b`  
		Last Modified: Wed, 05 Aug 2026 00:45:53 GMT  
		Size: 401.8 KB (401777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30e675c1d6bfac3714746920986ef3a6c21177c09a2bfcc8400424eb5f33b3ed`  
		Last Modified: Wed, 05 Aug 2026 00:45:53 GMT  
		Size: 76.5 KB (76512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c62869caec8d943b161f0c13b0022ab7bc72b00b27f606fed2d78e7b57f2838`  
		Last Modified: Wed, 05 Aug 2026 00:45:54 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b83b2e46c0559d6e50c3618643448540622dd9b474bf9264885179900ce49e5`  
		Last Modified: Wed, 05 Aug 2026 00:45:57 GMT  
		Size: 102.4 MB (102420955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a30119e26bbe391f01e2d0059fbd4441d36cc4594ee403b24768394cf4b91e1`  
		Last Modified: Wed, 05 Aug 2026 00:45:54 GMT  
		Size: 377.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:664c40986ed06b806c1ea59f0b44d10606e7f083db62c0b2868b614975730740`  
		Last Modified: Wed, 05 Aug 2026 00:45:54 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dd5179e332a2782aa7b8ba566e835018af9a6090fbd8e152e4d2e57253fbe39`  
		Last Modified: Wed, 05 Aug 2026 00:45:55 GMT  
		Size: 2.2 KB (2228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24958d3f98f3c7f7041aba8eccbf0823c31cb280bb183fd66f278a7303f0f2b1`  
		Last Modified: Wed, 05 Aug 2026 00:45:55 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4.3` - unknown; unknown

```console
$ docker pull couchdb@sha256:656a77e14fa935fc9a3b592d03c5481b3d5ceb07d9b96d009ec8503ea21c4f82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4156615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c88c03f55a21a72ca4fbd1061e21e7895bc891cf49e1cd7e78f99ec4755dbb1`

```dockerfile
```

-	Layers:
	-	`sha256:cc370045c486397896a647020d47d9b6e8e3bf5c4936d1103970e6a110834747`  
		Last Modified: Wed, 05 Aug 2026 00:45:53 GMT  
		Size: 4.1 MB (4125467 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:244957b0d067d68aac68afdd8931482a6a2f9fcb88c05244c143dab89ac9e5c0`  
		Last Modified: Wed, 05 Aug 2026 00:45:53 GMT  
		Size: 31.1 KB (31148 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.4.3` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:d4ca57562baf10ee243d28dd20a9635064ddd9f93088ab85fec259b737595d5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.4 MB (138434572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:151810144d17131ca0adaf27dcd5c0353e6a1e50e24880acd56a41e6f9665f22`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:24 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 05 Aug 2026 00:47:24 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Wed, 05 Aug 2026 00:47:30 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:33 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 05 Aug 2026 00:47:33 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 05 Aug 2026 00:47:38 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt-key list;     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:38 GMT
ENV COUCHDB_VERSION=3.4.3
# Wed, 05 Aug 2026 00:47:38 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 05 Aug 2026 00:47:50 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages             couchdb="$COUCHDB_VERSION"~bookworm     ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Wed, 05 Aug 2026 00:47:50 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Wed, 05 Aug 2026 00:47:50 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Wed, 05 Aug 2026 00:47:50 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 05 Aug 2026 00:47:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:47:50 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:47:50 GMT
VOLUME [/opt/couchdb/data]
# Wed, 05 Aug 2026 00:47:50 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Wed, 05 Aug 2026 00:47:50 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02592f388544a45f2cb4f09428fd872e05a1ec38d4cd077b6f0fa8a76d3a0882`  
		Last Modified: Wed, 05 Aug 2026 00:48:04 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:571a1bd51ba9fe46b26b8ab6bbb9788412bd858a62ac88daeeafdf76cce27fae`  
		Last Modified: Wed, 05 Aug 2026 00:48:04 GMT  
		Size: 7.7 MB (7695543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:955b8bbfd1cd5cc53c15a0d84aaa9e05e2e9ef6e2e305a38780b98b52629f44b`  
		Last Modified: Wed, 05 Aug 2026 00:48:04 GMT  
		Size: 370.6 KB (370558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce590504e830031805af1dea3dc937f1a8d53f0adf7e9216e4748d0977e327d9`  
		Last Modified: Wed, 05 Aug 2026 00:48:04 GMT  
		Size: 76.5 KB (76522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7defcb378422451fa72a2ba5b2701bf9cf3b3d9993374869c1dda81a2f46f32c`  
		Last Modified: Wed, 05 Aug 2026 00:48:05 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddc2bb2fa26e73adb3cb79865342c494035c70e0c1d8d50644677e5b9d718bed`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 102.2 MB (102169319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3a5a78af5680f2bb8bbf9138ca52e5e6cdc4f679f9ed7e3cc76cc17ff92e73c`  
		Last Modified: Wed, 05 Aug 2026 00:48:06 GMT  
		Size: 377.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d3625a74cf6e81d8826952bca0dc53bc3516a4853f2412d658cbd952ac1e894`  
		Last Modified: Wed, 05 Aug 2026 00:48:06 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92183e0d6e63b6156e0b036bee3d431130130e4762d77c563a413928ea116d45`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 2.2 KB (2227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52b48af448e6e7bca5364c0ed01834d9ffc1a5c8ef8a40b2de757667afd2548e`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4.3` - unknown; unknown

```console
$ docker pull couchdb@sha256:493910cba9bf7bbce863188a425eece915744c594326a16e2b549bd7dd1af1c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4157054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9e93fc5b5a9905bbc1c3634f57cf049af93a4e9e7c4f96d2865a2994e267263`

```dockerfile
```

-	Layers:
	-	`sha256:f5b215f647908f3216ea4550ea9130336fb1370713a27f706bd4c371f3742b75`  
		Last Modified: Wed, 05 Aug 2026 00:48:04 GMT  
		Size: 4.1 MB (4125736 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39220b9134edd2259277e17af85bebb276aac98e4063a2513f36e20e6bcf06dc`  
		Last Modified: Wed, 05 Aug 2026 00:48:04 GMT  
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
$ docker pull couchdb@sha256:bdf1c0b8d996bfeb34feaf9bd0aee91227b233368c2d6ec810e2f12d0b101ad7
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
$ docker pull couchdb@sha256:a8318326762bb837561eecb09cec9e2f374717bad2ee75629f902ca6688236b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.6 MB (156564722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cb84cf159a359fb3c2c62b0a784c7cae7eabda74350d97a1c0f9269abe6a5da`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:45:11 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 05 Aug 2026 00:45:11 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Wed, 05 Aug 2026 00:45:17 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:45:24 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-17-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:45:26 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 05 Aug 2026 00:45:26 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 05 Aug 2026 00:45:30 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt-key list;    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:45:30 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ bookworm main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 05 Aug 2026 00:45:35 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages --no-install-recommends             couchdb-nouveau=3.4.3~bookworm;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Wed, 05 Aug 2026 00:45:36 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Wed, 05 Aug 2026 00:45:36 GMT
VOLUME [/opt/nouveau/data]
# Wed, 05 Aug 2026 00:45:36 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Wed, 05 Aug 2026 00:45:36 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f8b4b0c61c67f8ea14e7a36fc3298b132c69b907e9e5cde1dd51fa155436ae4`  
		Last Modified: Wed, 05 Aug 2026 00:45:51 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:758af3fcb6cabdd529c5f997ffeb331d2104f86ae1b03da59c7f9984f483792f`  
		Last Modified: Wed, 05 Aug 2026 00:45:51 GMT  
		Size: 7.9 MB (7884310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16dc15e0b4ecee2472692d3c26276e5a36b30c24d400b3d4748493480d5c6549`  
		Last Modified: Wed, 05 Aug 2026 00:45:53 GMT  
		Size: 77.5 MB (77486427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f32457ef8154a749025a67abec62016f534b76115405780961492888f4b79065`  
		Last Modified: Wed, 05 Aug 2026 00:45:51 GMT  
		Size: 424.2 KB (424157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:076dc456f37c8c441ecd49ace4e286fb2267308a1d5769a1b69857d31c5b5865`  
		Last Modified: Wed, 05 Aug 2026 00:45:52 GMT  
		Size: 99.6 KB (99612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3ef628bfc09f5f813c09239dae2c85a916fda87cbff6719cacdc320426aff54`  
		Last Modified: Wed, 05 Aug 2026 00:45:52 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:357ab3bb10ad38bdc46e5a23e39b77e48a298351e673fda4800519d1addbb07b`  
		Last Modified: Wed, 05 Aug 2026 00:45:54 GMT  
		Size: 42.4 MB (42435747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81c240e411f6ace642ab104f209c6bcc08f261d782882beb55bf513184a0abe3`  
		Last Modified: Wed, 05 Aug 2026 00:45:53 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4.3-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:e1d3c72cd301951513bfa684aef13eafe200a1cdd2a34a46c1c21b61b288247e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3682954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78b49390af029b0f24e208c2b7c70426e21f9d3257583557e2c2cbbfa9eeb116`

```dockerfile
```

-	Layers:
	-	`sha256:44ca970dc179c194ef6c75b616b77bd20b30cbc04aab3bf6f63a98035bab29d2`  
		Last Modified: Wed, 05 Aug 2026 00:45:51 GMT  
		Size: 3.7 MB (3658739 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:325ee1673fe7d043a5424d6ca1828257885c29316492ad8eda70363d910454f0`  
		Last Modified: Wed, 05 Aug 2026 00:45:51 GMT  
		Size: 24.2 KB (24215 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.4.3-nouveau` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:b684d1dd7d0ea42f795cd1aca44274c1e8373106494b015a1dd216fe62ccd893
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.5 MB (155455916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8001cc0b304e8c76e3eec73ccd5f874506c553121d43dcfe840f8def488a22d1`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:27 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 05 Aug 2026 00:47:27 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Wed, 05 Aug 2026 00:47:33 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:40 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-17-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:43 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 05 Aug 2026 00:47:43 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 05 Aug 2026 00:47:47 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt-key list;    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:47 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ bookworm main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 05 Aug 2026 00:47:52 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages --no-install-recommends             couchdb-nouveau=3.4.3~bookworm;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Wed, 05 Aug 2026 00:47:52 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Wed, 05 Aug 2026 00:47:52 GMT
VOLUME [/opt/nouveau/data]
# Wed, 05 Aug 2026 00:47:52 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Wed, 05 Aug 2026 00:47:52 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:976586560e739993af1dcba0e08e575169396f071a69bef7179a7e8993ed8711`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b9cb4a41d54f2f5672f2f58c43ce86c9ef3abd0ff1b1565cbc024559f9d6104`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 7.7 MB (7695561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2654252622e4280ee0399b7d2b70c336dd6666a092f0efaef33169a1033d8df`  
		Last Modified: Wed, 05 Aug 2026 00:48:09 GMT  
		Size: 76.8 MB (76810873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc0bb82fcebe02d0f0ae74321bbdac0af6991c0ff597bb16fccaf03383139bb9`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 392.8 KB (392833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4c67f283d8c31cce2e49c36fb6050e476cdf55aaeab5fee24c11843a197fe50`  
		Last Modified: Wed, 05 Aug 2026 00:48:08 GMT  
		Size: 99.5 KB (99543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55ccf45375aff0d5390547e11cb8a7e845ea5ee2f8b54786cb5fd0d25be32ea4`  
		Last Modified: Wed, 05 Aug 2026 00:48:08 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:243a11046a3a00cd0307e06236f15d816f54e2265521c813ca318f8280bd1e31`  
		Last Modified: Wed, 05 Aug 2026 00:48:10 GMT  
		Size: 42.3 MB (42338021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53080f36b1fe9e3aff80f809d661943b4f54bcd938c415168c44edbb9743893a`  
		Last Modified: Wed, 05 Aug 2026 00:48:10 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4.3-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:29a2acab29bfcee11627fe9f20b29d7af4ef8de01058a2f3bbd2f360d82c6d38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3681792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:073610f195ef8ba35de52c5e525d5d78865459048b8f5ad4f0ae977dce8ef1bb`

```dockerfile
```

-	Layers:
	-	`sha256:43d41aaa4ce70d2d657adfbc232549f2e0609cdb3cdcd34e785baee606618df2`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 3.7 MB (3657407 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c2fe76f1d58c260585d846f592823581b658e62459b3614ab1863c56cae65d94`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
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
$ docker pull couchdb@sha256:b80216f643e99d31df318c740dbc556ac08b56444030ed1d5e6d7b0d4e625213
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3.5` - linux; amd64

```console
$ docker pull couchdb@sha256:b7a129a4ce4da47aa56ed2b67c8c16eafc58252e83c1688b5aa069f03e60cf80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148840694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0437e9629d79562f8353dce589533e335e8961e74fba12512b06984cf04e51c4`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:09 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 05 Aug 2026 00:45:09 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Wed, 05 Aug 2026 00:45:15 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:45:17 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 05 Aug 2026 00:45:17 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 05 Aug 2026 00:45:24 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:45:24 GMT
ENV COUCHDB_VERSION=3.5.2.1
# Wed, 05 Aug 2026 00:45:24 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 05 Aug 2026 00:45:36 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Wed, 05 Aug 2026 00:45:37 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Wed, 05 Aug 2026 00:45:37 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Wed, 05 Aug 2026 00:45:37 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 05 Aug 2026 00:45:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:45:37 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:45:37 GMT
VOLUME [/opt/couchdb/data]
# Wed, 05 Aug 2026 00:45:37 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Wed, 05 Aug 2026 00:45:37 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ec682d23fefefd3bed4125b4024810d6e0a8a8be24f255d3767d494afe64e1f`  
		Last Modified: Wed, 05 Aug 2026 00:45:50 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fda558b8d745da8511f3d39bc772719fff75921e3de407050ea4101a3fd1f9dd`  
		Last Modified: Wed, 05 Aug 2026 00:45:50 GMT  
		Size: 7.5 MB (7492173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f081fd33e73cdd329fc78f2815f7c9d34db4560f0ab9e3f5575617d476cac675`  
		Last Modified: Wed, 05 Aug 2026 00:45:50 GMT  
		Size: 417.6 KB (417587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe630cd29894c542329e1ab3aeb55d9a67a4e935ca496c7f3e1c8aa9395cb541`  
		Last Modified: Wed, 05 Aug 2026 00:45:50 GMT  
		Size: 338.6 KB (338583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30a552fa09e9ba3b0add201a291655519959dafc7134b421637c6ef187c89d27`  
		Last Modified: Wed, 05 Aug 2026 00:45:51 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c459845e3e55f4fb9b67b5658b3445c058e7ceeee618b3c064b2fc1b72462753`  
		Last Modified: Wed, 05 Aug 2026 00:45:53 GMT  
		Size: 110.8 MB (110806153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae1ea23a1baf415728c11f01940c722ab61a2e9e6d747b8ade880f1a7c2d4d96`  
		Last Modified: Wed, 05 Aug 2026 00:45:51 GMT  
		Size: 378.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4d77861f96fc12f4a1a8f57942c504256cbc45c0880d0f7eecc24e6b6b0c766`  
		Last Modified: Wed, 05 Aug 2026 00:45:52 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccc2c7ad289b4d30d541a7124489751b0ab6d93afe482a0afb326257a275613f`  
		Last Modified: Wed, 05 Aug 2026 00:45:52 GMT  
		Size: 2.2 KB (2228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14ca882a242352b48a72626f25fa00cf00eef0546e62e21fb1fb22947c5130cc`  
		Last Modified: Wed, 05 Aug 2026 00:45:52 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5` - unknown; unknown

```console
$ docker pull couchdb@sha256:c73dfe50f93203f32a584b3450436ef35ec599889ec7298b6198b3367517645f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4212155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2e93c8ea528bc58133905e76674f023c690a7f313fc770ebb4c538ff20b8bb9`

```dockerfile
```

-	Layers:
	-	`sha256:b248cf5f48c499b8d2d41a9ddcbf72b50a96069c8126b95106e954ccab821292`  
		Last Modified: Wed, 05 Aug 2026 00:45:50 GMT  
		Size: 4.2 MB (4180479 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7dbe86ec04637ca07bd725f8ed50584956213924ff8891edd3a3bf450c4537d4`  
		Last Modified: Wed, 05 Aug 2026 00:45:50 GMT  
		Size: 31.7 KB (31676 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.5` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:68a818978e34c30af0dc01b9025353a596c4c3b730338ad9ece5a95734b45192
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.6 MB (148606817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56af5abb6fa0f940bba530f96dec36806616f4a9f2bc1322f5de669de1a9e730`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:22 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 05 Aug 2026 00:47:22 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Wed, 05 Aug 2026 00:47:29 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:33 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 05 Aug 2026 00:47:33 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 05 Aug 2026 00:47:39 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:39 GMT
ENV COUCHDB_VERSION=3.5.2.1
# Wed, 05 Aug 2026 00:47:40 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 05 Aug 2026 00:47:54 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Wed, 05 Aug 2026 00:47:54 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Wed, 05 Aug 2026 00:47:54 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Wed, 05 Aug 2026 00:47:54 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 05 Aug 2026 00:47:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:47:54 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:47:54 GMT
VOLUME [/opt/couchdb/data]
# Wed, 05 Aug 2026 00:47:54 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Wed, 05 Aug 2026 00:47:54 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e50539dbfdcf055403d3c29f5d9d8e43389344aefeb5cf4d88b5da5bf0efa10`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:942419dbaff76fd36956da5b7b7b89e4514f5071f1e96588678e32e6a42df50e`  
		Last Modified: Wed, 05 Aug 2026 00:48:08 GMT  
		Size: 7.3 MB (7261196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faa4933a1bc01cc0c872db280c69379238f6fb05ce789810a8dc01ffcf76c895`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 382.6 KB (382582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:051024740cce1594708b0b9775fe0dbaa12712ece2912650e1dd783e3d409bd3`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 338.7 KB (338733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff58fd3653d913c9daf169e4266905f3f806242b82d06ce74bdb36fddc117e9`  
		Last Modified: Wed, 05 Aug 2026 00:48:08 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d5f010aab274d20006af8d7fcd441b8febdd8ad75498c9b25ed7165be442878`  
		Last Modified: Wed, 05 Aug 2026 00:48:11 GMT  
		Size: 110.5 MB (110475264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c7d250437810585be0572a02ac892f2de53ffe0f73b8d12744a3a54b121628b`  
		Last Modified: Wed, 05 Aug 2026 00:48:08 GMT  
		Size: 381.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2be07c6130e58325851e08c9c82686e868a44d03962c0513110052de19d4b20d`  
		Last Modified: Wed, 05 Aug 2026 00:48:09 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54e7cebf64634dd41864cdf6ff07d5d2bad9e2029af2c6618ea745a6ec5145c1`  
		Last Modified: Wed, 05 Aug 2026 00:48:10 GMT  
		Size: 2.2 KB (2228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57fdefb91cd3f33c0a659a9f9b01fdd5c9e3cd830362c906bc3407c962403acf`  
		Last Modified: Wed, 05 Aug 2026 00:48:10 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5` - unknown; unknown

```console
$ docker pull couchdb@sha256:c60ec6b9c47230beb4874514537e368b2fc3618057a1fdb346ac650678d9060e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4212669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a23d96ae06f5fb39813cda5c800a48521d6e2c24181b7c9d7fdc2e96fb7a517`

```dockerfile
```

-	Layers:
	-	`sha256:412e96f42596246bd3c1d920c48218946ed1fd9a97708c4189884c6b343eae13`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 4.2 MB (4180787 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a1c7f1a9a13436498c01915c0ca3f1d102c9c6c96ebe108311dec02cd2073e8`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 31.9 KB (31882 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.5-nouveau`

```console
$ docker pull couchdb@sha256:0e251df9dda7ed59bd7a01d96d24d69724d0358781f6b8a0c117a9d30ef17c7a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3.5-nouveau` - linux; amd64

```console
$ docker pull couchdb@sha256:585d55350abe151f3bf4519c50dbb7cea0501d88995b6beb8a0115cb329f797b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.9 MB (150896317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3731b436f7eb9683a1c53527fcf783646d01cf64761f547be3fe375795fba856`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:08 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 05 Aug 2026 00:45:08 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Wed, 05 Aug 2026 00:45:16 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:45:22 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:45:25 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 05 Aug 2026 00:45:25 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 05 Aug 2026 00:45:31 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:45:31 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 05 Aug 2026 00:45:37 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends couchdb-nouveau=3.5.2.1~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Wed, 05 Aug 2026 00:45:37 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Wed, 05 Aug 2026 00:45:37 GMT
VOLUME [/opt/nouveau/data]
# Wed, 05 Aug 2026 00:45:37 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Wed, 05 Aug 2026 00:45:37 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:293d8a8a5b30dcdc2fcdeb72abd5a7fca77ff6fb7108ea1df588b2e9f752eea5`  
		Last Modified: Wed, 05 Aug 2026 00:45:51 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ef3166a1c18d53dc2ee86cba18cd2cf3e07899dedbd0702e4f131485bc5fb4f`  
		Last Modified: Wed, 05 Aug 2026 00:45:52 GMT  
		Size: 7.5 MB (7492168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff0f898d2e0fb7da32b5af32413b88d8fb57004a0b962d062aa4a6b7130346be`  
		Last Modified: Wed, 05 Aug 2026 00:45:54 GMT  
		Size: 70.0 MB (70032500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b6ba5cb0395aec43334fd8bdca35c6d47c1f707324317f8309a2c382c37e551`  
		Last Modified: Wed, 05 Aug 2026 00:45:52 GMT  
		Size: 426.0 KB (425951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff23e02f3d2485d5cae15e6c9502eacd98c1896a9ce14fdd39379c71fd10b53`  
		Last Modified: Wed, 05 Aug 2026 00:45:53 GMT  
		Size: 347.4 KB (347430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b19cc67040e5fde02d27311be2feda9288c95979e09b8b8bc639ffaa95d9f019`  
		Last Modified: Wed, 05 Aug 2026 00:45:53 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b3e364ccdbb8a2bfea50be22c3338d35418ded4848dd332ca9da8fde3b43529`  
		Last Modified: Wed, 05 Aug 2026 00:45:54 GMT  
		Size: 42.8 MB (42815624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f10eb9f680f14f1bb6c58f0bc54d2a1968949a2297cee38e911e43cb778c69d`  
		Last Modified: Wed, 05 Aug 2026 00:45:54 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:b40d2588e8338dcc013341b517fcd6667dd8f7546583996a0c482717ec66565b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3389224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d708e24422c68bb7586089f15030fe8de9b88f61afcee59329a80df05dc56a14`

```dockerfile
```

-	Layers:
	-	`sha256:b56ec0723cd15a5ad8f471ab50c9d9bab27be9c682ff8d421effb41d0a7205ca`  
		Last Modified: Wed, 05 Aug 2026 00:45:52 GMT  
		Size: 3.4 MB (3364709 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa138b8edbb8c35402d9bca001bd4b95e08d5aa1193e022932285ab57b719742`  
		Last Modified: Wed, 05 Aug 2026 00:45:52 GMT  
		Size: 24.5 KB (24515 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.5-nouveau` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:55911fecab404779dec7b65e7b17d5d588911400abe891a585a943cd1d9527ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150055758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4421abd032d1baa395bb763dab1849014b65e5c51a23d212db6004a50638e410`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:22 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 05 Aug 2026 00:47:22 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Wed, 05 Aug 2026 00:47:30 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:36 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:39 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 05 Aug 2026 00:47:39 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 05 Aug 2026 00:47:45 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:45 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 05 Aug 2026 00:47:51 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends couchdb-nouveau=3.5.2.1~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Wed, 05 Aug 2026 00:47:51 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Wed, 05 Aug 2026 00:47:51 GMT
VOLUME [/opt/nouveau/data]
# Wed, 05 Aug 2026 00:47:51 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Wed, 05 Aug 2026 00:47:51 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbd9f0aef0e09a8aca8939a1e4d93909accb9dd49c307df9fd6ca1ed4b20c4e7`  
		Last Modified: Wed, 05 Aug 2026 00:48:06 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebdfdaeb2df80c0d29264a94c3905b5065f02df5add6e2e97653eefb34edfd04`  
		Last Modified: Wed, 05 Aug 2026 00:48:06 GMT  
		Size: 7.3 MB (7261144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4addda71af0fb5d1e498eeb20b916d969c1083c0140f9885e805b8b4bfe925f7`  
		Last Modified: Wed, 05 Aug 2026 00:48:08 GMT  
		Size: 69.2 MB (69179430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dca878acbcc70a43809358d612054a407484013f2a47022628ae14bb6422078`  
		Last Modified: Wed, 05 Aug 2026 00:48:06 GMT  
		Size: 390.2 KB (390236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b0986b8553f8cac14e515ba996d31d595996213cef05794d9471d0187034d6c`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 347.4 KB (347420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faedd038f0c1b4da20970249bb1f4332efb39bc70b318710253fd2eee3daedad`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc4048dcc9f78be6d2134cf02323a250240192dacb3c2af0e0e3b252981e5329`  
		Last Modified: Wed, 05 Aug 2026 00:48:09 GMT  
		Size: 42.7 MB (42732041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bed8595233f46a3f4661fe1b6ffb1c7446be7eed84ebd8b9ffe7ed41a6102815`  
		Last Modified: Wed, 05 Aug 2026 00:48:08 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:93afcab037a00b073127d2b991c9077b1673bacfe84b78b332b7f6b6622ae169
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3388071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba2a2424b06ef5ab5486c58ce35e701696b75774459f8d60abbb5166719a2eb8`

```dockerfile
```

-	Layers:
	-	`sha256:3d2df9a27a7e7989ad8e6a7953fd972cc7b0443a49f5ff2de63c9d171c16ff67`  
		Last Modified: Wed, 05 Aug 2026 00:48:06 GMT  
		Size: 3.4 MB (3363362 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d9835d2f25169cdaff6fff1338248bcad415f244af5f3fcb7b22de4bd935ff5c`  
		Last Modified: Wed, 05 Aug 2026 00:48:06 GMT  
		Size: 24.7 KB (24709 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.5.2`

```console
$ docker pull couchdb@sha256:b80216f643e99d31df318c740dbc556ac08b56444030ed1d5e6d7b0d4e625213
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3.5.2` - linux; amd64

```console
$ docker pull couchdb@sha256:b7a129a4ce4da47aa56ed2b67c8c16eafc58252e83c1688b5aa069f03e60cf80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148840694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0437e9629d79562f8353dce589533e335e8961e74fba12512b06984cf04e51c4`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:09 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 05 Aug 2026 00:45:09 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Wed, 05 Aug 2026 00:45:15 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:45:17 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 05 Aug 2026 00:45:17 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 05 Aug 2026 00:45:24 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:45:24 GMT
ENV COUCHDB_VERSION=3.5.2.1
# Wed, 05 Aug 2026 00:45:24 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 05 Aug 2026 00:45:36 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Wed, 05 Aug 2026 00:45:37 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Wed, 05 Aug 2026 00:45:37 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Wed, 05 Aug 2026 00:45:37 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 05 Aug 2026 00:45:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:45:37 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:45:37 GMT
VOLUME [/opt/couchdb/data]
# Wed, 05 Aug 2026 00:45:37 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Wed, 05 Aug 2026 00:45:37 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ec682d23fefefd3bed4125b4024810d6e0a8a8be24f255d3767d494afe64e1f`  
		Last Modified: Wed, 05 Aug 2026 00:45:50 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fda558b8d745da8511f3d39bc772719fff75921e3de407050ea4101a3fd1f9dd`  
		Last Modified: Wed, 05 Aug 2026 00:45:50 GMT  
		Size: 7.5 MB (7492173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f081fd33e73cdd329fc78f2815f7c9d34db4560f0ab9e3f5575617d476cac675`  
		Last Modified: Wed, 05 Aug 2026 00:45:50 GMT  
		Size: 417.6 KB (417587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe630cd29894c542329e1ab3aeb55d9a67a4e935ca496c7f3e1c8aa9395cb541`  
		Last Modified: Wed, 05 Aug 2026 00:45:50 GMT  
		Size: 338.6 KB (338583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30a552fa09e9ba3b0add201a291655519959dafc7134b421637c6ef187c89d27`  
		Last Modified: Wed, 05 Aug 2026 00:45:51 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c459845e3e55f4fb9b67b5658b3445c058e7ceeee618b3c064b2fc1b72462753`  
		Last Modified: Wed, 05 Aug 2026 00:45:53 GMT  
		Size: 110.8 MB (110806153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae1ea23a1baf415728c11f01940c722ab61a2e9e6d747b8ade880f1a7c2d4d96`  
		Last Modified: Wed, 05 Aug 2026 00:45:51 GMT  
		Size: 378.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4d77861f96fc12f4a1a8f57942c504256cbc45c0880d0f7eecc24e6b6b0c766`  
		Last Modified: Wed, 05 Aug 2026 00:45:52 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccc2c7ad289b4d30d541a7124489751b0ab6d93afe482a0afb326257a275613f`  
		Last Modified: Wed, 05 Aug 2026 00:45:52 GMT  
		Size: 2.2 KB (2228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14ca882a242352b48a72626f25fa00cf00eef0546e62e21fb1fb22947c5130cc`  
		Last Modified: Wed, 05 Aug 2026 00:45:52 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5.2` - unknown; unknown

```console
$ docker pull couchdb@sha256:c73dfe50f93203f32a584b3450436ef35ec599889ec7298b6198b3367517645f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4212155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2e93c8ea528bc58133905e76674f023c690a7f313fc770ebb4c538ff20b8bb9`

```dockerfile
```

-	Layers:
	-	`sha256:b248cf5f48c499b8d2d41a9ddcbf72b50a96069c8126b95106e954ccab821292`  
		Last Modified: Wed, 05 Aug 2026 00:45:50 GMT  
		Size: 4.2 MB (4180479 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7dbe86ec04637ca07bd725f8ed50584956213924ff8891edd3a3bf450c4537d4`  
		Last Modified: Wed, 05 Aug 2026 00:45:50 GMT  
		Size: 31.7 KB (31676 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.5.2` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:68a818978e34c30af0dc01b9025353a596c4c3b730338ad9ece5a95734b45192
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.6 MB (148606817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56af5abb6fa0f940bba530f96dec36806616f4a9f2bc1322f5de669de1a9e730`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:22 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 05 Aug 2026 00:47:22 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Wed, 05 Aug 2026 00:47:29 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:33 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 05 Aug 2026 00:47:33 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 05 Aug 2026 00:47:39 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:39 GMT
ENV COUCHDB_VERSION=3.5.2.1
# Wed, 05 Aug 2026 00:47:40 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 05 Aug 2026 00:47:54 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Wed, 05 Aug 2026 00:47:54 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Wed, 05 Aug 2026 00:47:54 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Wed, 05 Aug 2026 00:47:54 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 05 Aug 2026 00:47:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:47:54 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:47:54 GMT
VOLUME [/opt/couchdb/data]
# Wed, 05 Aug 2026 00:47:54 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Wed, 05 Aug 2026 00:47:54 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e50539dbfdcf055403d3c29f5d9d8e43389344aefeb5cf4d88b5da5bf0efa10`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:942419dbaff76fd36956da5b7b7b89e4514f5071f1e96588678e32e6a42df50e`  
		Last Modified: Wed, 05 Aug 2026 00:48:08 GMT  
		Size: 7.3 MB (7261196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faa4933a1bc01cc0c872db280c69379238f6fb05ce789810a8dc01ffcf76c895`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 382.6 KB (382582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:051024740cce1594708b0b9775fe0dbaa12712ece2912650e1dd783e3d409bd3`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 338.7 KB (338733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff58fd3653d913c9daf169e4266905f3f806242b82d06ce74bdb36fddc117e9`  
		Last Modified: Wed, 05 Aug 2026 00:48:08 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d5f010aab274d20006af8d7fcd441b8febdd8ad75498c9b25ed7165be442878`  
		Last Modified: Wed, 05 Aug 2026 00:48:11 GMT  
		Size: 110.5 MB (110475264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c7d250437810585be0572a02ac892f2de53ffe0f73b8d12744a3a54b121628b`  
		Last Modified: Wed, 05 Aug 2026 00:48:08 GMT  
		Size: 381.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2be07c6130e58325851e08c9c82686e868a44d03962c0513110052de19d4b20d`  
		Last Modified: Wed, 05 Aug 2026 00:48:09 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54e7cebf64634dd41864cdf6ff07d5d2bad9e2029af2c6618ea745a6ec5145c1`  
		Last Modified: Wed, 05 Aug 2026 00:48:10 GMT  
		Size: 2.2 KB (2228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57fdefb91cd3f33c0a659a9f9b01fdd5c9e3cd830362c906bc3407c962403acf`  
		Last Modified: Wed, 05 Aug 2026 00:48:10 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5.2` - unknown; unknown

```console
$ docker pull couchdb@sha256:c60ec6b9c47230beb4874514537e368b2fc3618057a1fdb346ac650678d9060e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4212669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a23d96ae06f5fb39813cda5c800a48521d6e2c24181b7c9d7fdc2e96fb7a517`

```dockerfile
```

-	Layers:
	-	`sha256:412e96f42596246bd3c1d920c48218946ed1fd9a97708c4189884c6b343eae13`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 4.2 MB (4180787 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a1c7f1a9a13436498c01915c0ca3f1d102c9c6c96ebe108311dec02cd2073e8`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 31.9 KB (31882 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.5.2-nouveau`

```console
$ docker pull couchdb@sha256:0e251df9dda7ed59bd7a01d96d24d69724d0358781f6b8a0c117a9d30ef17c7a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3.5.2-nouveau` - linux; amd64

```console
$ docker pull couchdb@sha256:585d55350abe151f3bf4519c50dbb7cea0501d88995b6beb8a0115cb329f797b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.9 MB (150896317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3731b436f7eb9683a1c53527fcf783646d01cf64761f547be3fe375795fba856`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:08 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 05 Aug 2026 00:45:08 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Wed, 05 Aug 2026 00:45:16 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:45:22 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:45:25 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 05 Aug 2026 00:45:25 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 05 Aug 2026 00:45:31 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:45:31 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 05 Aug 2026 00:45:37 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends couchdb-nouveau=3.5.2.1~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Wed, 05 Aug 2026 00:45:37 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Wed, 05 Aug 2026 00:45:37 GMT
VOLUME [/opt/nouveau/data]
# Wed, 05 Aug 2026 00:45:37 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Wed, 05 Aug 2026 00:45:37 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:293d8a8a5b30dcdc2fcdeb72abd5a7fca77ff6fb7108ea1df588b2e9f752eea5`  
		Last Modified: Wed, 05 Aug 2026 00:45:51 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ef3166a1c18d53dc2ee86cba18cd2cf3e07899dedbd0702e4f131485bc5fb4f`  
		Last Modified: Wed, 05 Aug 2026 00:45:52 GMT  
		Size: 7.5 MB (7492168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff0f898d2e0fb7da32b5af32413b88d8fb57004a0b962d062aa4a6b7130346be`  
		Last Modified: Wed, 05 Aug 2026 00:45:54 GMT  
		Size: 70.0 MB (70032500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b6ba5cb0395aec43334fd8bdca35c6d47c1f707324317f8309a2c382c37e551`  
		Last Modified: Wed, 05 Aug 2026 00:45:52 GMT  
		Size: 426.0 KB (425951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff23e02f3d2485d5cae15e6c9502eacd98c1896a9ce14fdd39379c71fd10b53`  
		Last Modified: Wed, 05 Aug 2026 00:45:53 GMT  
		Size: 347.4 KB (347430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b19cc67040e5fde02d27311be2feda9288c95979e09b8b8bc639ffaa95d9f019`  
		Last Modified: Wed, 05 Aug 2026 00:45:53 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b3e364ccdbb8a2bfea50be22c3338d35418ded4848dd332ca9da8fde3b43529`  
		Last Modified: Wed, 05 Aug 2026 00:45:54 GMT  
		Size: 42.8 MB (42815624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f10eb9f680f14f1bb6c58f0bc54d2a1968949a2297cee38e911e43cb778c69d`  
		Last Modified: Wed, 05 Aug 2026 00:45:54 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5.2-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:b40d2588e8338dcc013341b517fcd6667dd8f7546583996a0c482717ec66565b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3389224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d708e24422c68bb7586089f15030fe8de9b88f61afcee59329a80df05dc56a14`

```dockerfile
```

-	Layers:
	-	`sha256:b56ec0723cd15a5ad8f471ab50c9d9bab27be9c682ff8d421effb41d0a7205ca`  
		Last Modified: Wed, 05 Aug 2026 00:45:52 GMT  
		Size: 3.4 MB (3364709 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa138b8edbb8c35402d9bca001bd4b95e08d5aa1193e022932285ab57b719742`  
		Last Modified: Wed, 05 Aug 2026 00:45:52 GMT  
		Size: 24.5 KB (24515 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.5.2-nouveau` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:55911fecab404779dec7b65e7b17d5d588911400abe891a585a943cd1d9527ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150055758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4421abd032d1baa395bb763dab1849014b65e5c51a23d212db6004a50638e410`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:22 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 05 Aug 2026 00:47:22 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Wed, 05 Aug 2026 00:47:30 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:36 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:39 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 05 Aug 2026 00:47:39 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 05 Aug 2026 00:47:45 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:45 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 05 Aug 2026 00:47:51 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends couchdb-nouveau=3.5.2.1~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Wed, 05 Aug 2026 00:47:51 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Wed, 05 Aug 2026 00:47:51 GMT
VOLUME [/opt/nouveau/data]
# Wed, 05 Aug 2026 00:47:51 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Wed, 05 Aug 2026 00:47:51 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbd9f0aef0e09a8aca8939a1e4d93909accb9dd49c307df9fd6ca1ed4b20c4e7`  
		Last Modified: Wed, 05 Aug 2026 00:48:06 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebdfdaeb2df80c0d29264a94c3905b5065f02df5add6e2e97653eefb34edfd04`  
		Last Modified: Wed, 05 Aug 2026 00:48:06 GMT  
		Size: 7.3 MB (7261144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4addda71af0fb5d1e498eeb20b916d969c1083c0140f9885e805b8b4bfe925f7`  
		Last Modified: Wed, 05 Aug 2026 00:48:08 GMT  
		Size: 69.2 MB (69179430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dca878acbcc70a43809358d612054a407484013f2a47022628ae14bb6422078`  
		Last Modified: Wed, 05 Aug 2026 00:48:06 GMT  
		Size: 390.2 KB (390236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b0986b8553f8cac14e515ba996d31d595996213cef05794d9471d0187034d6c`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 347.4 KB (347420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faedd038f0c1b4da20970249bb1f4332efb39bc70b318710253fd2eee3daedad`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc4048dcc9f78be6d2134cf02323a250240192dacb3c2af0e0e3b252981e5329`  
		Last Modified: Wed, 05 Aug 2026 00:48:09 GMT  
		Size: 42.7 MB (42732041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bed8595233f46a3f4661fe1b6ffb1c7446be7eed84ebd8b9ffe7ed41a6102815`  
		Last Modified: Wed, 05 Aug 2026 00:48:08 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5.2-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:93afcab037a00b073127d2b991c9077b1673bacfe84b78b332b7f6b6622ae169
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3388071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba2a2424b06ef5ab5486c58ce35e701696b75774459f8d60abbb5166719a2eb8`

```dockerfile
```

-	Layers:
	-	`sha256:3d2df9a27a7e7989ad8e6a7953fd972cc7b0443a49f5ff2de63c9d171c16ff67`  
		Last Modified: Wed, 05 Aug 2026 00:48:06 GMT  
		Size: 3.4 MB (3363362 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d9835d2f25169cdaff6fff1338248bcad415f244af5f3fcb7b22de4bd935ff5c`  
		Last Modified: Wed, 05 Aug 2026 00:48:06 GMT  
		Size: 24.7 KB (24709 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.5.2.1`

```console
$ docker pull couchdb@sha256:b80216f643e99d31df318c740dbc556ac08b56444030ed1d5e6d7b0d4e625213
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3.5.2.1` - linux; amd64

```console
$ docker pull couchdb@sha256:b7a129a4ce4da47aa56ed2b67c8c16eafc58252e83c1688b5aa069f03e60cf80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148840694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0437e9629d79562f8353dce589533e335e8961e74fba12512b06984cf04e51c4`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:09 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 05 Aug 2026 00:45:09 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Wed, 05 Aug 2026 00:45:15 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:45:17 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 05 Aug 2026 00:45:17 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 05 Aug 2026 00:45:24 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:45:24 GMT
ENV COUCHDB_VERSION=3.5.2.1
# Wed, 05 Aug 2026 00:45:24 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 05 Aug 2026 00:45:36 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Wed, 05 Aug 2026 00:45:37 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Wed, 05 Aug 2026 00:45:37 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Wed, 05 Aug 2026 00:45:37 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 05 Aug 2026 00:45:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:45:37 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:45:37 GMT
VOLUME [/opt/couchdb/data]
# Wed, 05 Aug 2026 00:45:37 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Wed, 05 Aug 2026 00:45:37 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ec682d23fefefd3bed4125b4024810d6e0a8a8be24f255d3767d494afe64e1f`  
		Last Modified: Wed, 05 Aug 2026 00:45:50 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fda558b8d745da8511f3d39bc772719fff75921e3de407050ea4101a3fd1f9dd`  
		Last Modified: Wed, 05 Aug 2026 00:45:50 GMT  
		Size: 7.5 MB (7492173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f081fd33e73cdd329fc78f2815f7c9d34db4560f0ab9e3f5575617d476cac675`  
		Last Modified: Wed, 05 Aug 2026 00:45:50 GMT  
		Size: 417.6 KB (417587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe630cd29894c542329e1ab3aeb55d9a67a4e935ca496c7f3e1c8aa9395cb541`  
		Last Modified: Wed, 05 Aug 2026 00:45:50 GMT  
		Size: 338.6 KB (338583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30a552fa09e9ba3b0add201a291655519959dafc7134b421637c6ef187c89d27`  
		Last Modified: Wed, 05 Aug 2026 00:45:51 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c459845e3e55f4fb9b67b5658b3445c058e7ceeee618b3c064b2fc1b72462753`  
		Last Modified: Wed, 05 Aug 2026 00:45:53 GMT  
		Size: 110.8 MB (110806153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae1ea23a1baf415728c11f01940c722ab61a2e9e6d747b8ade880f1a7c2d4d96`  
		Last Modified: Wed, 05 Aug 2026 00:45:51 GMT  
		Size: 378.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4d77861f96fc12f4a1a8f57942c504256cbc45c0880d0f7eecc24e6b6b0c766`  
		Last Modified: Wed, 05 Aug 2026 00:45:52 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccc2c7ad289b4d30d541a7124489751b0ab6d93afe482a0afb326257a275613f`  
		Last Modified: Wed, 05 Aug 2026 00:45:52 GMT  
		Size: 2.2 KB (2228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14ca882a242352b48a72626f25fa00cf00eef0546e62e21fb1fb22947c5130cc`  
		Last Modified: Wed, 05 Aug 2026 00:45:52 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5.2.1` - unknown; unknown

```console
$ docker pull couchdb@sha256:c73dfe50f93203f32a584b3450436ef35ec599889ec7298b6198b3367517645f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4212155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2e93c8ea528bc58133905e76674f023c690a7f313fc770ebb4c538ff20b8bb9`

```dockerfile
```

-	Layers:
	-	`sha256:b248cf5f48c499b8d2d41a9ddcbf72b50a96069c8126b95106e954ccab821292`  
		Last Modified: Wed, 05 Aug 2026 00:45:50 GMT  
		Size: 4.2 MB (4180479 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7dbe86ec04637ca07bd725f8ed50584956213924ff8891edd3a3bf450c4537d4`  
		Last Modified: Wed, 05 Aug 2026 00:45:50 GMT  
		Size: 31.7 KB (31676 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.5.2.1` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:68a818978e34c30af0dc01b9025353a596c4c3b730338ad9ece5a95734b45192
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.6 MB (148606817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56af5abb6fa0f940bba530f96dec36806616f4a9f2bc1322f5de669de1a9e730`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:22 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 05 Aug 2026 00:47:22 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Wed, 05 Aug 2026 00:47:29 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:33 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 05 Aug 2026 00:47:33 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 05 Aug 2026 00:47:39 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:39 GMT
ENV COUCHDB_VERSION=3.5.2.1
# Wed, 05 Aug 2026 00:47:40 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 05 Aug 2026 00:47:54 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Wed, 05 Aug 2026 00:47:54 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Wed, 05 Aug 2026 00:47:54 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Wed, 05 Aug 2026 00:47:54 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 05 Aug 2026 00:47:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:47:54 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:47:54 GMT
VOLUME [/opt/couchdb/data]
# Wed, 05 Aug 2026 00:47:54 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Wed, 05 Aug 2026 00:47:54 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e50539dbfdcf055403d3c29f5d9d8e43389344aefeb5cf4d88b5da5bf0efa10`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:942419dbaff76fd36956da5b7b7b89e4514f5071f1e96588678e32e6a42df50e`  
		Last Modified: Wed, 05 Aug 2026 00:48:08 GMT  
		Size: 7.3 MB (7261196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faa4933a1bc01cc0c872db280c69379238f6fb05ce789810a8dc01ffcf76c895`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 382.6 KB (382582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:051024740cce1594708b0b9775fe0dbaa12712ece2912650e1dd783e3d409bd3`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 338.7 KB (338733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff58fd3653d913c9daf169e4266905f3f806242b82d06ce74bdb36fddc117e9`  
		Last Modified: Wed, 05 Aug 2026 00:48:08 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d5f010aab274d20006af8d7fcd441b8febdd8ad75498c9b25ed7165be442878`  
		Last Modified: Wed, 05 Aug 2026 00:48:11 GMT  
		Size: 110.5 MB (110475264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c7d250437810585be0572a02ac892f2de53ffe0f73b8d12744a3a54b121628b`  
		Last Modified: Wed, 05 Aug 2026 00:48:08 GMT  
		Size: 381.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2be07c6130e58325851e08c9c82686e868a44d03962c0513110052de19d4b20d`  
		Last Modified: Wed, 05 Aug 2026 00:48:09 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54e7cebf64634dd41864cdf6ff07d5d2bad9e2029af2c6618ea745a6ec5145c1`  
		Last Modified: Wed, 05 Aug 2026 00:48:10 GMT  
		Size: 2.2 KB (2228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57fdefb91cd3f33c0a659a9f9b01fdd5c9e3cd830362c906bc3407c962403acf`  
		Last Modified: Wed, 05 Aug 2026 00:48:10 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5.2.1` - unknown; unknown

```console
$ docker pull couchdb@sha256:c60ec6b9c47230beb4874514537e368b2fc3618057a1fdb346ac650678d9060e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4212669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a23d96ae06f5fb39813cda5c800a48521d6e2c24181b7c9d7fdc2e96fb7a517`

```dockerfile
```

-	Layers:
	-	`sha256:412e96f42596246bd3c1d920c48218946ed1fd9a97708c4189884c6b343eae13`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 4.2 MB (4180787 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a1c7f1a9a13436498c01915c0ca3f1d102c9c6c96ebe108311dec02cd2073e8`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 31.9 KB (31882 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.5.2.1-nouveau`

```console
$ docker pull couchdb@sha256:0e251df9dda7ed59bd7a01d96d24d69724d0358781f6b8a0c117a9d30ef17c7a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3.5.2.1-nouveau` - linux; amd64

```console
$ docker pull couchdb@sha256:585d55350abe151f3bf4519c50dbb7cea0501d88995b6beb8a0115cb329f797b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.9 MB (150896317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3731b436f7eb9683a1c53527fcf783646d01cf64761f547be3fe375795fba856`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:08 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 05 Aug 2026 00:45:08 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Wed, 05 Aug 2026 00:45:16 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:45:22 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:45:25 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 05 Aug 2026 00:45:25 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 05 Aug 2026 00:45:31 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:45:31 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 05 Aug 2026 00:45:37 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends couchdb-nouveau=3.5.2.1~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Wed, 05 Aug 2026 00:45:37 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Wed, 05 Aug 2026 00:45:37 GMT
VOLUME [/opt/nouveau/data]
# Wed, 05 Aug 2026 00:45:37 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Wed, 05 Aug 2026 00:45:37 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:293d8a8a5b30dcdc2fcdeb72abd5a7fca77ff6fb7108ea1df588b2e9f752eea5`  
		Last Modified: Wed, 05 Aug 2026 00:45:51 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ef3166a1c18d53dc2ee86cba18cd2cf3e07899dedbd0702e4f131485bc5fb4f`  
		Last Modified: Wed, 05 Aug 2026 00:45:52 GMT  
		Size: 7.5 MB (7492168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff0f898d2e0fb7da32b5af32413b88d8fb57004a0b962d062aa4a6b7130346be`  
		Last Modified: Wed, 05 Aug 2026 00:45:54 GMT  
		Size: 70.0 MB (70032500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b6ba5cb0395aec43334fd8bdca35c6d47c1f707324317f8309a2c382c37e551`  
		Last Modified: Wed, 05 Aug 2026 00:45:52 GMT  
		Size: 426.0 KB (425951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff23e02f3d2485d5cae15e6c9502eacd98c1896a9ce14fdd39379c71fd10b53`  
		Last Modified: Wed, 05 Aug 2026 00:45:53 GMT  
		Size: 347.4 KB (347430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b19cc67040e5fde02d27311be2feda9288c95979e09b8b8bc639ffaa95d9f019`  
		Last Modified: Wed, 05 Aug 2026 00:45:53 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b3e364ccdbb8a2bfea50be22c3338d35418ded4848dd332ca9da8fde3b43529`  
		Last Modified: Wed, 05 Aug 2026 00:45:54 GMT  
		Size: 42.8 MB (42815624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f10eb9f680f14f1bb6c58f0bc54d2a1968949a2297cee38e911e43cb778c69d`  
		Last Modified: Wed, 05 Aug 2026 00:45:54 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5.2.1-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:b40d2588e8338dcc013341b517fcd6667dd8f7546583996a0c482717ec66565b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3389224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d708e24422c68bb7586089f15030fe8de9b88f61afcee59329a80df05dc56a14`

```dockerfile
```

-	Layers:
	-	`sha256:b56ec0723cd15a5ad8f471ab50c9d9bab27be9c682ff8d421effb41d0a7205ca`  
		Last Modified: Wed, 05 Aug 2026 00:45:52 GMT  
		Size: 3.4 MB (3364709 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa138b8edbb8c35402d9bca001bd4b95e08d5aa1193e022932285ab57b719742`  
		Last Modified: Wed, 05 Aug 2026 00:45:52 GMT  
		Size: 24.5 KB (24515 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.5.2.1-nouveau` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:55911fecab404779dec7b65e7b17d5d588911400abe891a585a943cd1d9527ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150055758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4421abd032d1baa395bb763dab1849014b65e5c51a23d212db6004a50638e410`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:22 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 05 Aug 2026 00:47:22 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Wed, 05 Aug 2026 00:47:30 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:36 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:39 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 05 Aug 2026 00:47:39 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 05 Aug 2026 00:47:45 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:45 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 05 Aug 2026 00:47:51 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends couchdb-nouveau=3.5.2.1~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Wed, 05 Aug 2026 00:47:51 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Wed, 05 Aug 2026 00:47:51 GMT
VOLUME [/opt/nouveau/data]
# Wed, 05 Aug 2026 00:47:51 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Wed, 05 Aug 2026 00:47:51 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbd9f0aef0e09a8aca8939a1e4d93909accb9dd49c307df9fd6ca1ed4b20c4e7`  
		Last Modified: Wed, 05 Aug 2026 00:48:06 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebdfdaeb2df80c0d29264a94c3905b5065f02df5add6e2e97653eefb34edfd04`  
		Last Modified: Wed, 05 Aug 2026 00:48:06 GMT  
		Size: 7.3 MB (7261144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4addda71af0fb5d1e498eeb20b916d969c1083c0140f9885e805b8b4bfe925f7`  
		Last Modified: Wed, 05 Aug 2026 00:48:08 GMT  
		Size: 69.2 MB (69179430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dca878acbcc70a43809358d612054a407484013f2a47022628ae14bb6422078`  
		Last Modified: Wed, 05 Aug 2026 00:48:06 GMT  
		Size: 390.2 KB (390236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b0986b8553f8cac14e515ba996d31d595996213cef05794d9471d0187034d6c`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 347.4 KB (347420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faedd038f0c1b4da20970249bb1f4332efb39bc70b318710253fd2eee3daedad`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc4048dcc9f78be6d2134cf02323a250240192dacb3c2af0e0e3b252981e5329`  
		Last Modified: Wed, 05 Aug 2026 00:48:09 GMT  
		Size: 42.7 MB (42732041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bed8595233f46a3f4661fe1b6ffb1c7446be7eed84ebd8b9ffe7ed41a6102815`  
		Last Modified: Wed, 05 Aug 2026 00:48:08 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5.2.1-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:93afcab037a00b073127d2b991c9077b1673bacfe84b78b332b7f6b6622ae169
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3388071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba2a2424b06ef5ab5486c58ce35e701696b75774459f8d60abbb5166719a2eb8`

```dockerfile
```

-	Layers:
	-	`sha256:3d2df9a27a7e7989ad8e6a7953fd972cc7b0443a49f5ff2de63c9d171c16ff67`  
		Last Modified: Wed, 05 Aug 2026 00:48:06 GMT  
		Size: 3.4 MB (3363362 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d9835d2f25169cdaff6fff1338248bcad415f244af5f3fcb7b22de4bd935ff5c`  
		Last Modified: Wed, 05 Aug 2026 00:48:06 GMT  
		Size: 24.7 KB (24709 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:latest`

```console
$ docker pull couchdb@sha256:b80216f643e99d31df318c740dbc556ac08b56444030ed1d5e6d7b0d4e625213
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:latest` - linux; amd64

```console
$ docker pull couchdb@sha256:b7a129a4ce4da47aa56ed2b67c8c16eafc58252e83c1688b5aa069f03e60cf80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148840694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0437e9629d79562f8353dce589533e335e8961e74fba12512b06984cf04e51c4`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:09 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 05 Aug 2026 00:45:09 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Wed, 05 Aug 2026 00:45:15 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:45:17 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 05 Aug 2026 00:45:17 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 05 Aug 2026 00:45:24 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:45:24 GMT
ENV COUCHDB_VERSION=3.5.2.1
# Wed, 05 Aug 2026 00:45:24 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 05 Aug 2026 00:45:36 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Wed, 05 Aug 2026 00:45:37 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Wed, 05 Aug 2026 00:45:37 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Wed, 05 Aug 2026 00:45:37 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 05 Aug 2026 00:45:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:45:37 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:45:37 GMT
VOLUME [/opt/couchdb/data]
# Wed, 05 Aug 2026 00:45:37 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Wed, 05 Aug 2026 00:45:37 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ec682d23fefefd3bed4125b4024810d6e0a8a8be24f255d3767d494afe64e1f`  
		Last Modified: Wed, 05 Aug 2026 00:45:50 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fda558b8d745da8511f3d39bc772719fff75921e3de407050ea4101a3fd1f9dd`  
		Last Modified: Wed, 05 Aug 2026 00:45:50 GMT  
		Size: 7.5 MB (7492173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f081fd33e73cdd329fc78f2815f7c9d34db4560f0ab9e3f5575617d476cac675`  
		Last Modified: Wed, 05 Aug 2026 00:45:50 GMT  
		Size: 417.6 KB (417587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe630cd29894c542329e1ab3aeb55d9a67a4e935ca496c7f3e1c8aa9395cb541`  
		Last Modified: Wed, 05 Aug 2026 00:45:50 GMT  
		Size: 338.6 KB (338583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30a552fa09e9ba3b0add201a291655519959dafc7134b421637c6ef187c89d27`  
		Last Modified: Wed, 05 Aug 2026 00:45:51 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c459845e3e55f4fb9b67b5658b3445c058e7ceeee618b3c064b2fc1b72462753`  
		Last Modified: Wed, 05 Aug 2026 00:45:53 GMT  
		Size: 110.8 MB (110806153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae1ea23a1baf415728c11f01940c722ab61a2e9e6d747b8ade880f1a7c2d4d96`  
		Last Modified: Wed, 05 Aug 2026 00:45:51 GMT  
		Size: 378.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4d77861f96fc12f4a1a8f57942c504256cbc45c0880d0f7eecc24e6b6b0c766`  
		Last Modified: Wed, 05 Aug 2026 00:45:52 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccc2c7ad289b4d30d541a7124489751b0ab6d93afe482a0afb326257a275613f`  
		Last Modified: Wed, 05 Aug 2026 00:45:52 GMT  
		Size: 2.2 KB (2228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14ca882a242352b48a72626f25fa00cf00eef0546e62e21fb1fb22947c5130cc`  
		Last Modified: Wed, 05 Aug 2026 00:45:52 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:latest` - unknown; unknown

```console
$ docker pull couchdb@sha256:c73dfe50f93203f32a584b3450436ef35ec599889ec7298b6198b3367517645f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4212155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2e93c8ea528bc58133905e76674f023c690a7f313fc770ebb4c538ff20b8bb9`

```dockerfile
```

-	Layers:
	-	`sha256:b248cf5f48c499b8d2d41a9ddcbf72b50a96069c8126b95106e954ccab821292`  
		Last Modified: Wed, 05 Aug 2026 00:45:50 GMT  
		Size: 4.2 MB (4180479 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7dbe86ec04637ca07bd725f8ed50584956213924ff8891edd3a3bf450c4537d4`  
		Last Modified: Wed, 05 Aug 2026 00:45:50 GMT  
		Size: 31.7 KB (31676 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:latest` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:68a818978e34c30af0dc01b9025353a596c4c3b730338ad9ece5a95734b45192
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.6 MB (148606817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56af5abb6fa0f940bba530f96dec36806616f4a9f2bc1322f5de669de1a9e730`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:22 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 05 Aug 2026 00:47:22 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Wed, 05 Aug 2026 00:47:29 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:33 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 05 Aug 2026 00:47:33 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 05 Aug 2026 00:47:39 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:47:39 GMT
ENV COUCHDB_VERSION=3.5.2.1
# Wed, 05 Aug 2026 00:47:40 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 05 Aug 2026 00:47:54 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Wed, 05 Aug 2026 00:47:54 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Wed, 05 Aug 2026 00:47:54 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Wed, 05 Aug 2026 00:47:54 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 05 Aug 2026 00:47:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Wed, 05 Aug 2026 00:47:54 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:47:54 GMT
VOLUME [/opt/couchdb/data]
# Wed, 05 Aug 2026 00:47:54 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Wed, 05 Aug 2026 00:47:54 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e50539dbfdcf055403d3c29f5d9d8e43389344aefeb5cf4d88b5da5bf0efa10`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:942419dbaff76fd36956da5b7b7b89e4514f5071f1e96588678e32e6a42df50e`  
		Last Modified: Wed, 05 Aug 2026 00:48:08 GMT  
		Size: 7.3 MB (7261196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faa4933a1bc01cc0c872db280c69379238f6fb05ce789810a8dc01ffcf76c895`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 382.6 KB (382582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:051024740cce1594708b0b9775fe0dbaa12712ece2912650e1dd783e3d409bd3`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 338.7 KB (338733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff58fd3653d913c9daf169e4266905f3f806242b82d06ce74bdb36fddc117e9`  
		Last Modified: Wed, 05 Aug 2026 00:48:08 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d5f010aab274d20006af8d7fcd441b8febdd8ad75498c9b25ed7165be442878`  
		Last Modified: Wed, 05 Aug 2026 00:48:11 GMT  
		Size: 110.5 MB (110475264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c7d250437810585be0572a02ac892f2de53ffe0f73b8d12744a3a54b121628b`  
		Last Modified: Wed, 05 Aug 2026 00:48:08 GMT  
		Size: 381.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2be07c6130e58325851e08c9c82686e868a44d03962c0513110052de19d4b20d`  
		Last Modified: Wed, 05 Aug 2026 00:48:09 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54e7cebf64634dd41864cdf6ff07d5d2bad9e2029af2c6618ea745a6ec5145c1`  
		Last Modified: Wed, 05 Aug 2026 00:48:10 GMT  
		Size: 2.2 KB (2228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57fdefb91cd3f33c0a659a9f9b01fdd5c9e3cd830362c906bc3407c962403acf`  
		Last Modified: Wed, 05 Aug 2026 00:48:10 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:latest` - unknown; unknown

```console
$ docker pull couchdb@sha256:c60ec6b9c47230beb4874514537e368b2fc3618057a1fdb346ac650678d9060e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4212669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a23d96ae06f5fb39813cda5c800a48521d6e2c24181b7c9d7fdc2e96fb7a517`

```dockerfile
```

-	Layers:
	-	`sha256:412e96f42596246bd3c1d920c48218946ed1fd9a97708c4189884c6b343eae13`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 4.2 MB (4180787 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a1c7f1a9a13436498c01915c0ca3f1d102c9c6c96ebe108311dec02cd2073e8`  
		Last Modified: Wed, 05 Aug 2026 00:48:07 GMT  
		Size: 31.9 KB (31882 bytes)  
		MIME: application/vnd.in-toto+json
