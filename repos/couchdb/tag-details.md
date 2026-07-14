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
$ docker pull couchdb@sha256:7feb744b60195233219f3fa801cbc2384efa24b28c76a5d1f3e93efe6557f921
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3` - linux; amd64

```console
$ docker pull couchdb@sha256:09c35f535e4df3c4dc789aca8ce0b4cfe6e56619edb873a041d35dec68df9e18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148840582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26ebcbb449336cbbbf01168517138e403d5aa5338654e218395717175234e93a`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:43:48 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 14 Jul 2026 01:43:48 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Tue, 14 Jul 2026 01:43:55 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:43:58 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 14 Jul 2026 01:43:58 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 14 Jul 2026 01:44:04 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:44:04 GMT
ENV COUCHDB_VERSION=3.5.2.1
# Tue, 14 Jul 2026 01:44:04 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 14 Jul 2026 01:44:18 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 14 Jul 2026 01:44:18 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Tue, 14 Jul 2026 01:44:18 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Tue, 14 Jul 2026 01:44:18 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 14 Jul 2026 01:44:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Tue, 14 Jul 2026 01:44:18 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:44:18 GMT
VOLUME [/opt/couchdb/data]
# Tue, 14 Jul 2026 01:44:18 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Tue, 14 Jul 2026 01:44:18 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af7b86e25b120e5855a2f32929ac377001b81f24e5e30a5d998df69597d9733b`  
		Last Modified: Tue, 14 Jul 2026 01:44:31 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bae899a3d0a8c92e0a7d74a181e15198f10c172f3fc8b0165ce9b505b1816e7b`  
		Last Modified: Tue, 14 Jul 2026 01:44:31 GMT  
		Size: 7.5 MB (7492179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a29b35b2c22949c93817e5d1cd94192c50a5ebf370b9226ffc31214ef0f395e4`  
		Last Modified: Tue, 14 Jul 2026 01:44:31 GMT  
		Size: 417.6 KB (417590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8beb94a7f08e909619278c0dd5c63546b1b66b434bb6c0db7686d10e01a80370`  
		Last Modified: Tue, 14 Jul 2026 01:44:31 GMT  
		Size: 338.6 KB (338589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75246e5d5a6d7061d4a6c7f5af604eb80c401974f3f642878592d376217a86d4`  
		Last Modified: Tue, 14 Jul 2026 01:44:32 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c6f81c98ece3253559bd821b4e7462da8da14da491c21d22d13abfc16ce574a`  
		Last Modified: Tue, 14 Jul 2026 01:44:35 GMT  
		Size: 110.8 MB (110805887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ad7c7ff675f73e4bc158d9ae2b08de61b132fda0e3221482c3d510aaf05a4c8`  
		Last Modified: Tue, 14 Jul 2026 01:44:32 GMT  
		Size: 382.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c331b9f076035461aee458c31293372b759358c61d11566d39c44dcc9d9b1f5`  
		Last Modified: Tue, 14 Jul 2026 01:44:33 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5180acdb67acb44c890425e6ac753c29ed9c8a9123697373ad6e1a8da572864c`  
		Last Modified: Tue, 14 Jul 2026 01:44:33 GMT  
		Size: 2.2 KB (2225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bba04fd841a8da9df29302412a64f5deeda72b489e4e233cf5737ccc7dc4f0e6`  
		Last Modified: Tue, 14 Jul 2026 01:44:34 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3` - unknown; unknown

```console
$ docker pull couchdb@sha256:33fad28a4a5c877063e70d2870be9b7abd02a433ff49e9ecb6f459bb1510208b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4212155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23215c45d63065023efe3127e11c57fe765dd5726337c516243334b0c5fe6af1`

```dockerfile
```

-	Layers:
	-	`sha256:7648ac9ffaf83fcf11e770930aa15e27bd195c3056f8186b7bb7cf3e5192ece6`  
		Last Modified: Tue, 14 Jul 2026 01:44:31 GMT  
		Size: 4.2 MB (4180479 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f2050535144e4eb4f14b60abb6bbf2060d72835128e66168cffce682a223369`  
		Last Modified: Tue, 14 Jul 2026 01:44:31 GMT  
		Size: 31.7 KB (31676 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:4c57391f9d1526b484f23ac1a73a1b71aa3481e755c8c5fc61eee415b70f94d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.6 MB (148607415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa2ee93eac0771854518a25667597dd3c9ed3cd809d92499ff7ab397e274a9ba`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:47:00 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 14 Jul 2026 01:47:00 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Tue, 14 Jul 2026 01:47:07 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:11 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 14 Jul 2026 01:47:11 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 14 Jul 2026 01:47:18 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:18 GMT
ENV COUCHDB_VERSION=3.5.2.1
# Tue, 14 Jul 2026 01:47:18 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 14 Jul 2026 01:47:32 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 14 Jul 2026 01:47:32 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Tue, 14 Jul 2026 01:47:32 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Tue, 14 Jul 2026 01:47:32 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 14 Jul 2026 01:47:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Tue, 14 Jul 2026 01:47:32 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:47:32 GMT
VOLUME [/opt/couchdb/data]
# Tue, 14 Jul 2026 01:47:32 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Tue, 14 Jul 2026 01:47:32 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02a5161460441e10b846a011a897a072a77378dcc1efff57a510f4a30d172c7d`  
		Last Modified: Tue, 14 Jul 2026 01:47:46 GMT  
		Size: 1.2 KB (1183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:081330c9255c40305c9a63617855d486695430426970cfbbcccad746aeda5ad4`  
		Last Modified: Tue, 14 Jul 2026 01:47:46 GMT  
		Size: 7.3 MB (7261076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92f90d49ad61c5fa6886c8d174151d8e00c22df7905c9efad239e1167158d873`  
		Last Modified: Tue, 14 Jul 2026 01:47:46 GMT  
		Size: 382.6 KB (382571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f80e6d0c04ffe5c0a473db1e0cf08b35f9cebfa66b8a20be4f98b4ed1d7b412d`  
		Last Modified: Tue, 14 Jul 2026 01:47:46 GMT  
		Size: 338.7 KB (338707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c67c5311216cc06178366f5426fa8a2c3b503a26820a0d7a6d7bed40d7883e54`  
		Last Modified: Tue, 14 Jul 2026 01:47:47 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87392f7d95f66e6471aca381e11cb051ce037d75cb8aba30553e440dc4b643ce`  
		Last Modified: Tue, 14 Jul 2026 01:47:51 GMT  
		Size: 110.5 MB (110475925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04fbca60ecc71e4c58cca2d7d7ef9f0ff5fe89e67e898d44a1df8e21fec59a01`  
		Last Modified: Tue, 14 Jul 2026 01:47:47 GMT  
		Size: 380.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b97227708a55980ca2becbaf13d976ea263bfaae7ce1b3e6deaec9f0cea7f787`  
		Last Modified: Tue, 14 Jul 2026 01:47:48 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75701336f2dfa636b8f940a90d8bed822db62debfa18dcfad46c002ae6ab772c`  
		Last Modified: Tue, 14 Jul 2026 01:47:49 GMT  
		Size: 2.2 KB (2228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3860459fa85a3f6e2b0fd969a1de3920effbd140d0e4d916f6006eab219622dc`  
		Last Modified: Tue, 14 Jul 2026 01:47:49 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3` - unknown; unknown

```console
$ docker pull couchdb@sha256:42eae4f2e2c49df8a16d9afb04b2009cf46cc4251013f844ce4a99eaf423bb53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4212669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c468e6b945631d6f112fcb042e8cb93c06925a2f23866bee6a074ed9b876e019`

```dockerfile
```

-	Layers:
	-	`sha256:ab780cff30361d095c4bbccb6f2ca347973af7bce3534d69f09fcbb9be93390f`  
		Last Modified: Tue, 14 Jul 2026 01:47:46 GMT  
		Size: 4.2 MB (4180787 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db4f8bf42e192276c48cb9abcfcf10cc60ecb7e60a520b3ed1b17a0198d26400`  
		Last Modified: Tue, 14 Jul 2026 01:47:46 GMT  
		Size: 31.9 KB (31882 bytes)  
		MIME: application/vnd.in-toto+json

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

## `couchdb:3.4`

```console
$ docker pull couchdb@sha256:d603d4086836b1e20f1ec35d2d38e49359639c2eb56a54c8ba0ddbdff0f3dabe
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
$ docker pull couchdb@sha256:82c9dd927d94269a8866c25753049942ef3cdd57f48fcbe5877fcad4f3c37fba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.0 MB (139020725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a93dcb1485a39a451f1f18904bf63013f8ce98c10f6dde3e992786ef07895d8d`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:43:59 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 14 Jul 2026 01:43:59 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Tue, 14 Jul 2026 01:44:05 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:44:07 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 14 Jul 2026 01:44:07 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 14 Jul 2026 01:44:12 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt-key list;     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:44:12 GMT
ENV COUCHDB_VERSION=3.4.3
# Tue, 14 Jul 2026 01:44:12 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 14 Jul 2026 01:44:23 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages             couchdb="$COUCHDB_VERSION"~bookworm     ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 14 Jul 2026 01:44:23 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Tue, 14 Jul 2026 01:44:24 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Tue, 14 Jul 2026 01:44:24 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 14 Jul 2026 01:44:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Tue, 14 Jul 2026 01:44:24 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:44:24 GMT
VOLUME [/opt/couchdb/data]
# Tue, 14 Jul 2026 01:44:24 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Tue, 14 Jul 2026 01:44:24 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1f59c6aa0bf1c6e48dc308c258fbf03cd8c70a3d31d344fa051b43d7dc8132f`  
		Last Modified: Tue, 14 Jul 2026 01:44:36 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:874f9755e9ac9f98367ac3696b66aa6df4ee3f22d3a7e42548dd15a1232e324d`  
		Last Modified: Tue, 14 Jul 2026 01:44:37 GMT  
		Size: 7.9 MB (7884315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39784b1bffe466b1c70e4648857f1b47441f791dc745f5b5d3c397b334956a20`  
		Last Modified: Tue, 14 Jul 2026 01:44:36 GMT  
		Size: 401.8 KB (401762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce1d198d5616a13ac565eefa4e603af4f509024f0f8737dc3a50c1655fa62870`  
		Last Modified: Tue, 14 Jul 2026 01:44:36 GMT  
		Size: 76.5 KB (76516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3caebbda42b45053a2cb3fa9d9d5171c2837314edace99adf1fdeffd22f33998`  
		Last Modified: Tue, 14 Jul 2026 01:44:37 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4c5d275a59246953908ad05a2d71d31823f757c126ad62df176c9da7cf6d432`  
		Last Modified: Tue, 14 Jul 2026 01:44:40 GMT  
		Size: 102.4 MB (102420058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fca3b7aee8e2124274797f7a8fe7ab8596285aa422e9fa7cdbfdbd267e4850fc`  
		Last Modified: Tue, 14 Jul 2026 01:44:38 GMT  
		Size: 377.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:287fa60f45564c5d591229dd3ccc7db2c074ae328de3bc2c0dfa02a085c4797c`  
		Last Modified: Tue, 14 Jul 2026 01:44:38 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b801159b564ba3d38989346c36f7ac34f9dd922d5c94023c8886534ab5272e26`  
		Last Modified: Tue, 14 Jul 2026 01:44:39 GMT  
		Size: 2.2 KB (2225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dca0a467b71cbf5fb522d7e933492966c5f4da8a9d27f186d6b16caa3878ac7f`  
		Last Modified: Tue, 14 Jul 2026 01:44:39 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4` - unknown; unknown

```console
$ docker pull couchdb@sha256:2e498662a419718f30eee38e7fcb085b6d337a90f3c9373523161cbeb171a508
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4156615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:342a51a865c4ac069db61f4cec8440ace9000c4398b2e0d734eb449026d571a4`

```dockerfile
```

-	Layers:
	-	`sha256:9ac904e7868b2bdafbd20f2c0fc640f9f62b2b034e031c67a9eabd6eaa834bef`  
		Last Modified: Tue, 14 Jul 2026 01:44:37 GMT  
		Size: 4.1 MB (4125467 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:378a5a9a9e88ba0cac3be4412b384ffe624800753453609dee441003e5437bd9`  
		Last Modified: Tue, 14 Jul 2026 01:44:36 GMT  
		Size: 31.1 KB (31148 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.4` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:a092a814925eeded53dae0323773d053ae84526f1780fdb513b4cf4980411d08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.4 MB (138434558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe8cb9150e0e4ffef73841083bbd051c058010407b5278166f406cd03babf150`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:47:15 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 14 Jul 2026 01:47:15 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Tue, 14 Jul 2026 01:47:20 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:23 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 14 Jul 2026 01:47:23 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 14 Jul 2026 01:47:28 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt-key list;     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:28 GMT
ENV COUCHDB_VERSION=3.4.3
# Tue, 14 Jul 2026 01:47:28 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 14 Jul 2026 01:47:40 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages             couchdb="$COUCHDB_VERSION"~bookworm     ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 14 Jul 2026 01:47:40 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Tue, 14 Jul 2026 01:47:41 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Tue, 14 Jul 2026 01:47:41 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 14 Jul 2026 01:47:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Tue, 14 Jul 2026 01:47:41 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:47:41 GMT
VOLUME [/opt/couchdb/data]
# Tue, 14 Jul 2026 01:47:41 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Tue, 14 Jul 2026 01:47:41 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dfcd35dc64f54ed22ff79e64b12cbc8fb4caea1eaeb6e5babbd7ff2589abd4e`  
		Last Modified: Tue, 14 Jul 2026 01:47:54 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00ff3e1f0b1c8e0bb4323b80fa961b56df6b6273e52b7fc96e84a37cfed81efb`  
		Last Modified: Tue, 14 Jul 2026 01:47:55 GMT  
		Size: 7.7 MB (7695489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31032eec19e71b4379dd434a6ccff65fe06bb41fa55af886514aa8c24f34d84c`  
		Last Modified: Tue, 14 Jul 2026 01:47:54 GMT  
		Size: 370.6 KB (370552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c4125709b1f6cc9fbdb2a2678f338c8c8030d71d1a18b74baa3feba53a853a6`  
		Last Modified: Tue, 14 Jul 2026 01:47:54 GMT  
		Size: 76.5 KB (76494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b0a53f6a944f9530ed69284b3d951e7df40cba0af88fc1393187ed4313a8bf4`  
		Last Modified: Tue, 14 Jul 2026 01:47:56 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e22aa2c5426b06de220b224a974b76b982d85b57cc13d27728ffb7165a1a06e3`  
		Last Modified: Tue, 14 Jul 2026 01:47:58 GMT  
		Size: 102.2 MB (102169337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1335ad459b517252bbe33031c9f6683435e057d799f48e42aab0fa8cff167706`  
		Last Modified: Tue, 14 Jul 2026 01:47:56 GMT  
		Size: 378.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5edf308cb37e5ca822eb295775c474c168bd0f64f8b4f07ccaf74f7a94699d8`  
		Last Modified: Tue, 14 Jul 2026 01:47:56 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf32e11a1894b2a8b2eefbf7f78aa6af65f592abcb340d60bd5f0549da3a127f`  
		Last Modified: Tue, 14 Jul 2026 01:47:57 GMT  
		Size: 2.2 KB (2228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8966d7dcea2bb52892b4b11a5fe479e6375cdc9b9f60a50effab9ba29d938689`  
		Last Modified: Tue, 14 Jul 2026 01:47:57 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4` - unknown; unknown

```console
$ docker pull couchdb@sha256:1a239e5552ddc59e536d4cb3181496f2d53339c60dce010e89e1b952172156f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4157054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba3b3190f0e15f07ffcbf77598c0e18e5433b8e503073a3a3c05b06307fff5c2`

```dockerfile
```

-	Layers:
	-	`sha256:2b053381c119b2a01f075fad9f82664d1391090604f14b5b19d636b9228a4454`  
		Last Modified: Tue, 14 Jul 2026 01:47:55 GMT  
		Size: 4.1 MB (4125736 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e464dd26085d693b0e208f200e5d96456d045c79627f24f838133079e66c7dae`  
		Last Modified: Tue, 14 Jul 2026 01:47:54 GMT  
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
$ docker pull couchdb@sha256:7fc8b062d1d5031aae877e90f8e93cf0abf48d54513d2743dd4104a28833b642
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
$ docker pull couchdb@sha256:9df3945890f8ec8ce85fdd18229c7a4c085ee2023c4aba6dd65786dbbcdb2b03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.6 MB (156555021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:106654310452e273fcacc511fd7acd2868ea5c900cac9382200e2b7f859d35c3`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:44:05 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 14 Jul 2026 01:44:05 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Tue, 14 Jul 2026 01:44:11 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:44:18 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-17-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:44:20 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 14 Jul 2026 01:44:20 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 14 Jul 2026 01:44:24 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt-key list;    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:44:24 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ bookworm main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 14 Jul 2026 01:44:28 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages --no-install-recommends             couchdb-nouveau=3.4.3~bookworm;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Tue, 14 Jul 2026 01:44:28 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Tue, 14 Jul 2026 01:44:28 GMT
VOLUME [/opt/nouveau/data]
# Tue, 14 Jul 2026 01:44:28 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Tue, 14 Jul 2026 01:44:28 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5206dad7abfbe5ac726fcd32cfc05cdc5c51dadabf7f46c5b8472e66294ac79b`  
		Last Modified: Tue, 14 Jul 2026 01:44:44 GMT  
		Size: 1.2 KB (1183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17fb12bbde88460e9946acba1c0810c36eff7bd263b1e23f9a1f9a2f74d65244`  
		Last Modified: Tue, 14 Jul 2026 01:44:44 GMT  
		Size: 7.9 MB (7884373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7750844e5c6058876354ce088dad3066365237e85c49bb03e85df145e3c88cc1`  
		Last Modified: Tue, 14 Jul 2026 01:44:46 GMT  
		Size: 77.5 MB (77476512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5e5adbe48e18fc3e387065aab778c390f369844a513bae288f2ee1bab6e9557`  
		Last Modified: Tue, 14 Jul 2026 01:44:44 GMT  
		Size: 424.2 KB (424168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29844bedf03057fbde86ccfbf22fc5ea2f6b9691071bb8f566f0e4cb1a13e04e`  
		Last Modified: Tue, 14 Jul 2026 01:44:45 GMT  
		Size: 99.6 KB (99613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caea517cda57ba2e4df5d257811857db4b840c2460135bea89ace25d5e1f964f`  
		Last Modified: Tue, 14 Jul 2026 01:44:45 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fe90f8a2a953d8b6a510b1a632263337c5ee03016ac7d28959c67b76e79c4de`  
		Last Modified: Tue, 14 Jul 2026 01:44:47 GMT  
		Size: 42.4 MB (42435838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44d775f2cd1a1aa63c1a78e4850e6db8758a746073256a897ffff58064d63776`  
		Last Modified: Tue, 14 Jul 2026 01:44:46 GMT  
		Size: 416.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:2c08ba453025e41f0fe590342eb9005146742965313eb01582fce4d9c7ba93aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3682958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26f854dca69adf3096caab5a2816c3ceca76a5ea475e05a83854fa0e11ba69d3`

```dockerfile
```

-	Layers:
	-	`sha256:cd7f7d0650b249efbeed60be113ceb1e1177da885076eac847dde6cbe14767f9`  
		Last Modified: Tue, 14 Jul 2026 01:44:44 GMT  
		Size: 3.7 MB (3658743 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b05a551d0fc6e49ef7ad7e7ecc01a176253f69c18e4e9fb84e1cc87955ed9714`  
		Last Modified: Tue, 14 Jul 2026 01:44:43 GMT  
		Size: 24.2 KB (24215 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.4-nouveau` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:dbc2e1f9d18550589fd02c3c68def1cf0f7685261cf56038ce87ee4a6e536378
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.4 MB (155434038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:607cc7edf69918cb54780c945007614c8b6118b56acf3aee6058c798d42c9d91`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:47:15 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 14 Jul 2026 01:47:15 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Tue, 14 Jul 2026 01:47:22 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:30 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-17-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:32 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 14 Jul 2026 01:47:32 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 14 Jul 2026 01:47:37 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt-key list;    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:37 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ bookworm main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 14 Jul 2026 01:47:42 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages --no-install-recommends             couchdb-nouveau=3.4.3~bookworm;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Tue, 14 Jul 2026 01:47:42 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Tue, 14 Jul 2026 01:47:42 GMT
VOLUME [/opt/nouveau/data]
# Tue, 14 Jul 2026 01:47:42 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Tue, 14 Jul 2026 01:47:42 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59c3cf5b067f73768b5cd6c4c4058eb9abf3b49cc54dd3e599e455174b0dca80`  
		Last Modified: Tue, 14 Jul 2026 01:47:57 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4a9fa0bf81eb5d5ce86af37bdd47f845610fd5b02eac3c1f9e6a75cc09f43fc`  
		Last Modified: Tue, 14 Jul 2026 01:47:58 GMT  
		Size: 7.7 MB (7695545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80a3cc6a8ff8bc7294cc4cba6c640168aad96834fb27cd384dd9b346c29c788f`  
		Last Modified: Tue, 14 Jul 2026 01:47:59 GMT  
		Size: 76.8 MB (76789007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4eb6482753453464a9363be74b629c93a79824e6592db0b1eb84a7719652b46b`  
		Last Modified: Tue, 14 Jul 2026 01:47:58 GMT  
		Size: 392.8 KB (392815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acdcdd845074f61965d1f35f2ef9dcfd9b210ecbfd49410d1e09fae314351050`  
		Last Modified: Tue, 14 Jul 2026 01:47:59 GMT  
		Size: 99.5 KB (99539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5a25e57143b8b89de9e2a35aa04fd2fc8fb10777f9fd8db5517f4ee9a969fea`  
		Last Modified: Tue, 14 Jul 2026 01:47:59 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39a4a56d714803cda45ab63b420b629831698bab6337f70b887ab81dc31c0579`  
		Last Modified: Tue, 14 Jul 2026 01:48:00 GMT  
		Size: 42.3 MB (42337999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a75d555aaaa752883b3ee3f85ccd89838fcc926b347604f5cdff7b6f2bbe3e3b`  
		Last Modified: Tue, 14 Jul 2026 01:48:00 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:84a173c45c923eb78dd11ff199106168576430788061737e228bb74fc20248a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3681795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:988ffb32a44723d3eddbea39141974249cc0a44507bc1add0014db3c0d336c4f`

```dockerfile
```

-	Layers:
	-	`sha256:32731c9c4142fdafccb347b8584fb8510455f0915f4c914f435fb17a95e900fe`  
		Last Modified: Tue, 14 Jul 2026 01:47:58 GMT  
		Size: 3.7 MB (3657411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c520fd5a248226a84940076380c295ff7d88a364eeef11ea9db3b0ddf941f7dc`  
		Last Modified: Tue, 14 Jul 2026 01:47:57 GMT  
		Size: 24.4 KB (24384 bytes)  
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
$ docker pull couchdb@sha256:d603d4086836b1e20f1ec35d2d38e49359639c2eb56a54c8ba0ddbdff0f3dabe
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
$ docker pull couchdb@sha256:82c9dd927d94269a8866c25753049942ef3cdd57f48fcbe5877fcad4f3c37fba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.0 MB (139020725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a93dcb1485a39a451f1f18904bf63013f8ce98c10f6dde3e992786ef07895d8d`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:43:59 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 14 Jul 2026 01:43:59 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Tue, 14 Jul 2026 01:44:05 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:44:07 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 14 Jul 2026 01:44:07 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 14 Jul 2026 01:44:12 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt-key list;     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:44:12 GMT
ENV COUCHDB_VERSION=3.4.3
# Tue, 14 Jul 2026 01:44:12 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 14 Jul 2026 01:44:23 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages             couchdb="$COUCHDB_VERSION"~bookworm     ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 14 Jul 2026 01:44:23 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Tue, 14 Jul 2026 01:44:24 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Tue, 14 Jul 2026 01:44:24 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 14 Jul 2026 01:44:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Tue, 14 Jul 2026 01:44:24 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:44:24 GMT
VOLUME [/opt/couchdb/data]
# Tue, 14 Jul 2026 01:44:24 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Tue, 14 Jul 2026 01:44:24 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1f59c6aa0bf1c6e48dc308c258fbf03cd8c70a3d31d344fa051b43d7dc8132f`  
		Last Modified: Tue, 14 Jul 2026 01:44:36 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:874f9755e9ac9f98367ac3696b66aa6df4ee3f22d3a7e42548dd15a1232e324d`  
		Last Modified: Tue, 14 Jul 2026 01:44:37 GMT  
		Size: 7.9 MB (7884315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39784b1bffe466b1c70e4648857f1b47441f791dc745f5b5d3c397b334956a20`  
		Last Modified: Tue, 14 Jul 2026 01:44:36 GMT  
		Size: 401.8 KB (401762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce1d198d5616a13ac565eefa4e603af4f509024f0f8737dc3a50c1655fa62870`  
		Last Modified: Tue, 14 Jul 2026 01:44:36 GMT  
		Size: 76.5 KB (76516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3caebbda42b45053a2cb3fa9d9d5171c2837314edace99adf1fdeffd22f33998`  
		Last Modified: Tue, 14 Jul 2026 01:44:37 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4c5d275a59246953908ad05a2d71d31823f757c126ad62df176c9da7cf6d432`  
		Last Modified: Tue, 14 Jul 2026 01:44:40 GMT  
		Size: 102.4 MB (102420058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fca3b7aee8e2124274797f7a8fe7ab8596285aa422e9fa7cdbfdbd267e4850fc`  
		Last Modified: Tue, 14 Jul 2026 01:44:38 GMT  
		Size: 377.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:287fa60f45564c5d591229dd3ccc7db2c074ae328de3bc2c0dfa02a085c4797c`  
		Last Modified: Tue, 14 Jul 2026 01:44:38 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b801159b564ba3d38989346c36f7ac34f9dd922d5c94023c8886534ab5272e26`  
		Last Modified: Tue, 14 Jul 2026 01:44:39 GMT  
		Size: 2.2 KB (2225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dca0a467b71cbf5fb522d7e933492966c5f4da8a9d27f186d6b16caa3878ac7f`  
		Last Modified: Tue, 14 Jul 2026 01:44:39 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4.3` - unknown; unknown

```console
$ docker pull couchdb@sha256:2e498662a419718f30eee38e7fcb085b6d337a90f3c9373523161cbeb171a508
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4156615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:342a51a865c4ac069db61f4cec8440ace9000c4398b2e0d734eb449026d571a4`

```dockerfile
```

-	Layers:
	-	`sha256:9ac904e7868b2bdafbd20f2c0fc640f9f62b2b034e031c67a9eabd6eaa834bef`  
		Last Modified: Tue, 14 Jul 2026 01:44:37 GMT  
		Size: 4.1 MB (4125467 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:378a5a9a9e88ba0cac3be4412b384ffe624800753453609dee441003e5437bd9`  
		Last Modified: Tue, 14 Jul 2026 01:44:36 GMT  
		Size: 31.1 KB (31148 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.4.3` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:a092a814925eeded53dae0323773d053ae84526f1780fdb513b4cf4980411d08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.4 MB (138434558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe8cb9150e0e4ffef73841083bbd051c058010407b5278166f406cd03babf150`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:47:15 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 14 Jul 2026 01:47:15 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Tue, 14 Jul 2026 01:47:20 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:23 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 14 Jul 2026 01:47:23 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 14 Jul 2026 01:47:28 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt-key list;     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:28 GMT
ENV COUCHDB_VERSION=3.4.3
# Tue, 14 Jul 2026 01:47:28 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 14 Jul 2026 01:47:40 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages             couchdb="$COUCHDB_VERSION"~bookworm     ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 14 Jul 2026 01:47:40 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Tue, 14 Jul 2026 01:47:41 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Tue, 14 Jul 2026 01:47:41 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 14 Jul 2026 01:47:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Tue, 14 Jul 2026 01:47:41 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:47:41 GMT
VOLUME [/opt/couchdb/data]
# Tue, 14 Jul 2026 01:47:41 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Tue, 14 Jul 2026 01:47:41 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dfcd35dc64f54ed22ff79e64b12cbc8fb4caea1eaeb6e5babbd7ff2589abd4e`  
		Last Modified: Tue, 14 Jul 2026 01:47:54 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00ff3e1f0b1c8e0bb4323b80fa961b56df6b6273e52b7fc96e84a37cfed81efb`  
		Last Modified: Tue, 14 Jul 2026 01:47:55 GMT  
		Size: 7.7 MB (7695489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31032eec19e71b4379dd434a6ccff65fe06bb41fa55af886514aa8c24f34d84c`  
		Last Modified: Tue, 14 Jul 2026 01:47:54 GMT  
		Size: 370.6 KB (370552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c4125709b1f6cc9fbdb2a2678f338c8c8030d71d1a18b74baa3feba53a853a6`  
		Last Modified: Tue, 14 Jul 2026 01:47:54 GMT  
		Size: 76.5 KB (76494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b0a53f6a944f9530ed69284b3d951e7df40cba0af88fc1393187ed4313a8bf4`  
		Last Modified: Tue, 14 Jul 2026 01:47:56 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e22aa2c5426b06de220b224a974b76b982d85b57cc13d27728ffb7165a1a06e3`  
		Last Modified: Tue, 14 Jul 2026 01:47:58 GMT  
		Size: 102.2 MB (102169337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1335ad459b517252bbe33031c9f6683435e057d799f48e42aab0fa8cff167706`  
		Last Modified: Tue, 14 Jul 2026 01:47:56 GMT  
		Size: 378.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5edf308cb37e5ca822eb295775c474c168bd0f64f8b4f07ccaf74f7a94699d8`  
		Last Modified: Tue, 14 Jul 2026 01:47:56 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf32e11a1894b2a8b2eefbf7f78aa6af65f592abcb340d60bd5f0549da3a127f`  
		Last Modified: Tue, 14 Jul 2026 01:47:57 GMT  
		Size: 2.2 KB (2228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8966d7dcea2bb52892b4b11a5fe479e6375cdc9b9f60a50effab9ba29d938689`  
		Last Modified: Tue, 14 Jul 2026 01:47:57 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4.3` - unknown; unknown

```console
$ docker pull couchdb@sha256:1a239e5552ddc59e536d4cb3181496f2d53339c60dce010e89e1b952172156f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4157054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba3b3190f0e15f07ffcbf77598c0e18e5433b8e503073a3a3c05b06307fff5c2`

```dockerfile
```

-	Layers:
	-	`sha256:2b053381c119b2a01f075fad9f82664d1391090604f14b5b19d636b9228a4454`  
		Last Modified: Tue, 14 Jul 2026 01:47:55 GMT  
		Size: 4.1 MB (4125736 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e464dd26085d693b0e208f200e5d96456d045c79627f24f838133079e66c7dae`  
		Last Modified: Tue, 14 Jul 2026 01:47:54 GMT  
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
$ docker pull couchdb@sha256:7fc8b062d1d5031aae877e90f8e93cf0abf48d54513d2743dd4104a28833b642
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
$ docker pull couchdb@sha256:9df3945890f8ec8ce85fdd18229c7a4c085ee2023c4aba6dd65786dbbcdb2b03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.6 MB (156555021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:106654310452e273fcacc511fd7acd2868ea5c900cac9382200e2b7f859d35c3`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:44:05 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 14 Jul 2026 01:44:05 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Tue, 14 Jul 2026 01:44:11 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:44:18 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-17-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:44:20 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 14 Jul 2026 01:44:20 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 14 Jul 2026 01:44:24 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt-key list;    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:44:24 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ bookworm main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 14 Jul 2026 01:44:28 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages --no-install-recommends             couchdb-nouveau=3.4.3~bookworm;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Tue, 14 Jul 2026 01:44:28 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Tue, 14 Jul 2026 01:44:28 GMT
VOLUME [/opt/nouveau/data]
# Tue, 14 Jul 2026 01:44:28 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Tue, 14 Jul 2026 01:44:28 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5206dad7abfbe5ac726fcd32cfc05cdc5c51dadabf7f46c5b8472e66294ac79b`  
		Last Modified: Tue, 14 Jul 2026 01:44:44 GMT  
		Size: 1.2 KB (1183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17fb12bbde88460e9946acba1c0810c36eff7bd263b1e23f9a1f9a2f74d65244`  
		Last Modified: Tue, 14 Jul 2026 01:44:44 GMT  
		Size: 7.9 MB (7884373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7750844e5c6058876354ce088dad3066365237e85c49bb03e85df145e3c88cc1`  
		Last Modified: Tue, 14 Jul 2026 01:44:46 GMT  
		Size: 77.5 MB (77476512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5e5adbe48e18fc3e387065aab778c390f369844a513bae288f2ee1bab6e9557`  
		Last Modified: Tue, 14 Jul 2026 01:44:44 GMT  
		Size: 424.2 KB (424168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29844bedf03057fbde86ccfbf22fc5ea2f6b9691071bb8f566f0e4cb1a13e04e`  
		Last Modified: Tue, 14 Jul 2026 01:44:45 GMT  
		Size: 99.6 KB (99613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caea517cda57ba2e4df5d257811857db4b840c2460135bea89ace25d5e1f964f`  
		Last Modified: Tue, 14 Jul 2026 01:44:45 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fe90f8a2a953d8b6a510b1a632263337c5ee03016ac7d28959c67b76e79c4de`  
		Last Modified: Tue, 14 Jul 2026 01:44:47 GMT  
		Size: 42.4 MB (42435838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44d775f2cd1a1aa63c1a78e4850e6db8758a746073256a897ffff58064d63776`  
		Last Modified: Tue, 14 Jul 2026 01:44:46 GMT  
		Size: 416.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4.3-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:2c08ba453025e41f0fe590342eb9005146742965313eb01582fce4d9c7ba93aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3682958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26f854dca69adf3096caab5a2816c3ceca76a5ea475e05a83854fa0e11ba69d3`

```dockerfile
```

-	Layers:
	-	`sha256:cd7f7d0650b249efbeed60be113ceb1e1177da885076eac847dde6cbe14767f9`  
		Last Modified: Tue, 14 Jul 2026 01:44:44 GMT  
		Size: 3.7 MB (3658743 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b05a551d0fc6e49ef7ad7e7ecc01a176253f69c18e4e9fb84e1cc87955ed9714`  
		Last Modified: Tue, 14 Jul 2026 01:44:43 GMT  
		Size: 24.2 KB (24215 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.4.3-nouveau` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:dbc2e1f9d18550589fd02c3c68def1cf0f7685261cf56038ce87ee4a6e536378
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.4 MB (155434038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:607cc7edf69918cb54780c945007614c8b6118b56acf3aee6058c798d42c9d91`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:47:15 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 14 Jul 2026 01:47:15 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Tue, 14 Jul 2026 01:47:22 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:30 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-17-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:32 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 14 Jul 2026 01:47:32 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 14 Jul 2026 01:47:37 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt-key list;    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:37 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ bookworm main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 14 Jul 2026 01:47:42 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages --no-install-recommends             couchdb-nouveau=3.4.3~bookworm;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Tue, 14 Jul 2026 01:47:42 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Tue, 14 Jul 2026 01:47:42 GMT
VOLUME [/opt/nouveau/data]
# Tue, 14 Jul 2026 01:47:42 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Tue, 14 Jul 2026 01:47:42 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59c3cf5b067f73768b5cd6c4c4058eb9abf3b49cc54dd3e599e455174b0dca80`  
		Last Modified: Tue, 14 Jul 2026 01:47:57 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4a9fa0bf81eb5d5ce86af37bdd47f845610fd5b02eac3c1f9e6a75cc09f43fc`  
		Last Modified: Tue, 14 Jul 2026 01:47:58 GMT  
		Size: 7.7 MB (7695545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80a3cc6a8ff8bc7294cc4cba6c640168aad96834fb27cd384dd9b346c29c788f`  
		Last Modified: Tue, 14 Jul 2026 01:47:59 GMT  
		Size: 76.8 MB (76789007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4eb6482753453464a9363be74b629c93a79824e6592db0b1eb84a7719652b46b`  
		Last Modified: Tue, 14 Jul 2026 01:47:58 GMT  
		Size: 392.8 KB (392815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acdcdd845074f61965d1f35f2ef9dcfd9b210ecbfd49410d1e09fae314351050`  
		Last Modified: Tue, 14 Jul 2026 01:47:59 GMT  
		Size: 99.5 KB (99539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5a25e57143b8b89de9e2a35aa04fd2fc8fb10777f9fd8db5517f4ee9a969fea`  
		Last Modified: Tue, 14 Jul 2026 01:47:59 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39a4a56d714803cda45ab63b420b629831698bab6337f70b887ab81dc31c0579`  
		Last Modified: Tue, 14 Jul 2026 01:48:00 GMT  
		Size: 42.3 MB (42337999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a75d555aaaa752883b3ee3f85ccd89838fcc926b347604f5cdff7b6f2bbe3e3b`  
		Last Modified: Tue, 14 Jul 2026 01:48:00 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4.3-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:84a173c45c923eb78dd11ff199106168576430788061737e228bb74fc20248a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3681795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:988ffb32a44723d3eddbea39141974249cc0a44507bc1add0014db3c0d336c4f`

```dockerfile
```

-	Layers:
	-	`sha256:32731c9c4142fdafccb347b8584fb8510455f0915f4c914f435fb17a95e900fe`  
		Last Modified: Tue, 14 Jul 2026 01:47:58 GMT  
		Size: 3.7 MB (3657411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c520fd5a248226a84940076380c295ff7d88a364eeef11ea9db3b0ddf941f7dc`  
		Last Modified: Tue, 14 Jul 2026 01:47:57 GMT  
		Size: 24.4 KB (24384 bytes)  
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
$ docker pull couchdb@sha256:7feb744b60195233219f3fa801cbc2384efa24b28c76a5d1f3e93efe6557f921
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3.5` - linux; amd64

```console
$ docker pull couchdb@sha256:09c35f535e4df3c4dc789aca8ce0b4cfe6e56619edb873a041d35dec68df9e18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148840582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26ebcbb449336cbbbf01168517138e403d5aa5338654e218395717175234e93a`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:43:48 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 14 Jul 2026 01:43:48 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Tue, 14 Jul 2026 01:43:55 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:43:58 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 14 Jul 2026 01:43:58 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 14 Jul 2026 01:44:04 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:44:04 GMT
ENV COUCHDB_VERSION=3.5.2.1
# Tue, 14 Jul 2026 01:44:04 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 14 Jul 2026 01:44:18 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 14 Jul 2026 01:44:18 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Tue, 14 Jul 2026 01:44:18 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Tue, 14 Jul 2026 01:44:18 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 14 Jul 2026 01:44:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Tue, 14 Jul 2026 01:44:18 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:44:18 GMT
VOLUME [/opt/couchdb/data]
# Tue, 14 Jul 2026 01:44:18 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Tue, 14 Jul 2026 01:44:18 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af7b86e25b120e5855a2f32929ac377001b81f24e5e30a5d998df69597d9733b`  
		Last Modified: Tue, 14 Jul 2026 01:44:31 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bae899a3d0a8c92e0a7d74a181e15198f10c172f3fc8b0165ce9b505b1816e7b`  
		Last Modified: Tue, 14 Jul 2026 01:44:31 GMT  
		Size: 7.5 MB (7492179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a29b35b2c22949c93817e5d1cd94192c50a5ebf370b9226ffc31214ef0f395e4`  
		Last Modified: Tue, 14 Jul 2026 01:44:31 GMT  
		Size: 417.6 KB (417590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8beb94a7f08e909619278c0dd5c63546b1b66b434bb6c0db7686d10e01a80370`  
		Last Modified: Tue, 14 Jul 2026 01:44:31 GMT  
		Size: 338.6 KB (338589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75246e5d5a6d7061d4a6c7f5af604eb80c401974f3f642878592d376217a86d4`  
		Last Modified: Tue, 14 Jul 2026 01:44:32 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c6f81c98ece3253559bd821b4e7462da8da14da491c21d22d13abfc16ce574a`  
		Last Modified: Tue, 14 Jul 2026 01:44:35 GMT  
		Size: 110.8 MB (110805887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ad7c7ff675f73e4bc158d9ae2b08de61b132fda0e3221482c3d510aaf05a4c8`  
		Last Modified: Tue, 14 Jul 2026 01:44:32 GMT  
		Size: 382.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c331b9f076035461aee458c31293372b759358c61d11566d39c44dcc9d9b1f5`  
		Last Modified: Tue, 14 Jul 2026 01:44:33 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5180acdb67acb44c890425e6ac753c29ed9c8a9123697373ad6e1a8da572864c`  
		Last Modified: Tue, 14 Jul 2026 01:44:33 GMT  
		Size: 2.2 KB (2225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bba04fd841a8da9df29302412a64f5deeda72b489e4e233cf5737ccc7dc4f0e6`  
		Last Modified: Tue, 14 Jul 2026 01:44:34 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5` - unknown; unknown

```console
$ docker pull couchdb@sha256:33fad28a4a5c877063e70d2870be9b7abd02a433ff49e9ecb6f459bb1510208b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4212155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23215c45d63065023efe3127e11c57fe765dd5726337c516243334b0c5fe6af1`

```dockerfile
```

-	Layers:
	-	`sha256:7648ac9ffaf83fcf11e770930aa15e27bd195c3056f8186b7bb7cf3e5192ece6`  
		Last Modified: Tue, 14 Jul 2026 01:44:31 GMT  
		Size: 4.2 MB (4180479 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f2050535144e4eb4f14b60abb6bbf2060d72835128e66168cffce682a223369`  
		Last Modified: Tue, 14 Jul 2026 01:44:31 GMT  
		Size: 31.7 KB (31676 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.5` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:4c57391f9d1526b484f23ac1a73a1b71aa3481e755c8c5fc61eee415b70f94d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.6 MB (148607415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa2ee93eac0771854518a25667597dd3c9ed3cd809d92499ff7ab397e274a9ba`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:47:00 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 14 Jul 2026 01:47:00 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Tue, 14 Jul 2026 01:47:07 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:11 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 14 Jul 2026 01:47:11 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 14 Jul 2026 01:47:18 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:18 GMT
ENV COUCHDB_VERSION=3.5.2.1
# Tue, 14 Jul 2026 01:47:18 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 14 Jul 2026 01:47:32 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 14 Jul 2026 01:47:32 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Tue, 14 Jul 2026 01:47:32 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Tue, 14 Jul 2026 01:47:32 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 14 Jul 2026 01:47:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Tue, 14 Jul 2026 01:47:32 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:47:32 GMT
VOLUME [/opt/couchdb/data]
# Tue, 14 Jul 2026 01:47:32 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Tue, 14 Jul 2026 01:47:32 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02a5161460441e10b846a011a897a072a77378dcc1efff57a510f4a30d172c7d`  
		Last Modified: Tue, 14 Jul 2026 01:47:46 GMT  
		Size: 1.2 KB (1183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:081330c9255c40305c9a63617855d486695430426970cfbbcccad746aeda5ad4`  
		Last Modified: Tue, 14 Jul 2026 01:47:46 GMT  
		Size: 7.3 MB (7261076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92f90d49ad61c5fa6886c8d174151d8e00c22df7905c9efad239e1167158d873`  
		Last Modified: Tue, 14 Jul 2026 01:47:46 GMT  
		Size: 382.6 KB (382571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f80e6d0c04ffe5c0a473db1e0cf08b35f9cebfa66b8a20be4f98b4ed1d7b412d`  
		Last Modified: Tue, 14 Jul 2026 01:47:46 GMT  
		Size: 338.7 KB (338707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c67c5311216cc06178366f5426fa8a2c3b503a26820a0d7a6d7bed40d7883e54`  
		Last Modified: Tue, 14 Jul 2026 01:47:47 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87392f7d95f66e6471aca381e11cb051ce037d75cb8aba30553e440dc4b643ce`  
		Last Modified: Tue, 14 Jul 2026 01:47:51 GMT  
		Size: 110.5 MB (110475925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04fbca60ecc71e4c58cca2d7d7ef9f0ff5fe89e67e898d44a1df8e21fec59a01`  
		Last Modified: Tue, 14 Jul 2026 01:47:47 GMT  
		Size: 380.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b97227708a55980ca2becbaf13d976ea263bfaae7ce1b3e6deaec9f0cea7f787`  
		Last Modified: Tue, 14 Jul 2026 01:47:48 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75701336f2dfa636b8f940a90d8bed822db62debfa18dcfad46c002ae6ab772c`  
		Last Modified: Tue, 14 Jul 2026 01:47:49 GMT  
		Size: 2.2 KB (2228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3860459fa85a3f6e2b0fd969a1de3920effbd140d0e4d916f6006eab219622dc`  
		Last Modified: Tue, 14 Jul 2026 01:47:49 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5` - unknown; unknown

```console
$ docker pull couchdb@sha256:42eae4f2e2c49df8a16d9afb04b2009cf46cc4251013f844ce4a99eaf423bb53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4212669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c468e6b945631d6f112fcb042e8cb93c06925a2f23866bee6a074ed9b876e019`

```dockerfile
```

-	Layers:
	-	`sha256:ab780cff30361d095c4bbccb6f2ca347973af7bce3534d69f09fcbb9be93390f`  
		Last Modified: Tue, 14 Jul 2026 01:47:46 GMT  
		Size: 4.2 MB (4180787 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db4f8bf42e192276c48cb9abcfcf10cc60ecb7e60a520b3ed1b17a0198d26400`  
		Last Modified: Tue, 14 Jul 2026 01:47:46 GMT  
		Size: 31.9 KB (31882 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.5-nouveau`

```console
$ docker pull couchdb@sha256:d0f84a6cec4a21bdf4fc034cfd823864359eed8acb9635ddb4d5ea01aa384975
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3.5-nouveau` - linux; amd64

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

### `couchdb:3.5-nouveau` - unknown; unknown

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

### `couchdb:3.5-nouveau` - linux; arm64 variant v8

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

### `couchdb:3.5-nouveau` - unknown; unknown

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

## `couchdb:3.5.2`

```console
$ docker pull couchdb@sha256:7feb744b60195233219f3fa801cbc2384efa24b28c76a5d1f3e93efe6557f921
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3.5.2` - linux; amd64

```console
$ docker pull couchdb@sha256:09c35f535e4df3c4dc789aca8ce0b4cfe6e56619edb873a041d35dec68df9e18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148840582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26ebcbb449336cbbbf01168517138e403d5aa5338654e218395717175234e93a`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:43:48 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 14 Jul 2026 01:43:48 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Tue, 14 Jul 2026 01:43:55 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:43:58 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 14 Jul 2026 01:43:58 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 14 Jul 2026 01:44:04 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:44:04 GMT
ENV COUCHDB_VERSION=3.5.2.1
# Tue, 14 Jul 2026 01:44:04 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 14 Jul 2026 01:44:18 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 14 Jul 2026 01:44:18 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Tue, 14 Jul 2026 01:44:18 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Tue, 14 Jul 2026 01:44:18 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 14 Jul 2026 01:44:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Tue, 14 Jul 2026 01:44:18 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:44:18 GMT
VOLUME [/opt/couchdb/data]
# Tue, 14 Jul 2026 01:44:18 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Tue, 14 Jul 2026 01:44:18 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af7b86e25b120e5855a2f32929ac377001b81f24e5e30a5d998df69597d9733b`  
		Last Modified: Tue, 14 Jul 2026 01:44:31 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bae899a3d0a8c92e0a7d74a181e15198f10c172f3fc8b0165ce9b505b1816e7b`  
		Last Modified: Tue, 14 Jul 2026 01:44:31 GMT  
		Size: 7.5 MB (7492179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a29b35b2c22949c93817e5d1cd94192c50a5ebf370b9226ffc31214ef0f395e4`  
		Last Modified: Tue, 14 Jul 2026 01:44:31 GMT  
		Size: 417.6 KB (417590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8beb94a7f08e909619278c0dd5c63546b1b66b434bb6c0db7686d10e01a80370`  
		Last Modified: Tue, 14 Jul 2026 01:44:31 GMT  
		Size: 338.6 KB (338589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75246e5d5a6d7061d4a6c7f5af604eb80c401974f3f642878592d376217a86d4`  
		Last Modified: Tue, 14 Jul 2026 01:44:32 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c6f81c98ece3253559bd821b4e7462da8da14da491c21d22d13abfc16ce574a`  
		Last Modified: Tue, 14 Jul 2026 01:44:35 GMT  
		Size: 110.8 MB (110805887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ad7c7ff675f73e4bc158d9ae2b08de61b132fda0e3221482c3d510aaf05a4c8`  
		Last Modified: Tue, 14 Jul 2026 01:44:32 GMT  
		Size: 382.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c331b9f076035461aee458c31293372b759358c61d11566d39c44dcc9d9b1f5`  
		Last Modified: Tue, 14 Jul 2026 01:44:33 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5180acdb67acb44c890425e6ac753c29ed9c8a9123697373ad6e1a8da572864c`  
		Last Modified: Tue, 14 Jul 2026 01:44:33 GMT  
		Size: 2.2 KB (2225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bba04fd841a8da9df29302412a64f5deeda72b489e4e233cf5737ccc7dc4f0e6`  
		Last Modified: Tue, 14 Jul 2026 01:44:34 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5.2` - unknown; unknown

```console
$ docker pull couchdb@sha256:33fad28a4a5c877063e70d2870be9b7abd02a433ff49e9ecb6f459bb1510208b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4212155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23215c45d63065023efe3127e11c57fe765dd5726337c516243334b0c5fe6af1`

```dockerfile
```

-	Layers:
	-	`sha256:7648ac9ffaf83fcf11e770930aa15e27bd195c3056f8186b7bb7cf3e5192ece6`  
		Last Modified: Tue, 14 Jul 2026 01:44:31 GMT  
		Size: 4.2 MB (4180479 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f2050535144e4eb4f14b60abb6bbf2060d72835128e66168cffce682a223369`  
		Last Modified: Tue, 14 Jul 2026 01:44:31 GMT  
		Size: 31.7 KB (31676 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.5.2` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:4c57391f9d1526b484f23ac1a73a1b71aa3481e755c8c5fc61eee415b70f94d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.6 MB (148607415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa2ee93eac0771854518a25667597dd3c9ed3cd809d92499ff7ab397e274a9ba`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:47:00 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 14 Jul 2026 01:47:00 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Tue, 14 Jul 2026 01:47:07 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:11 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 14 Jul 2026 01:47:11 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 14 Jul 2026 01:47:18 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:18 GMT
ENV COUCHDB_VERSION=3.5.2.1
# Tue, 14 Jul 2026 01:47:18 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 14 Jul 2026 01:47:32 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 14 Jul 2026 01:47:32 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Tue, 14 Jul 2026 01:47:32 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Tue, 14 Jul 2026 01:47:32 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 14 Jul 2026 01:47:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Tue, 14 Jul 2026 01:47:32 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:47:32 GMT
VOLUME [/opt/couchdb/data]
# Tue, 14 Jul 2026 01:47:32 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Tue, 14 Jul 2026 01:47:32 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02a5161460441e10b846a011a897a072a77378dcc1efff57a510f4a30d172c7d`  
		Last Modified: Tue, 14 Jul 2026 01:47:46 GMT  
		Size: 1.2 KB (1183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:081330c9255c40305c9a63617855d486695430426970cfbbcccad746aeda5ad4`  
		Last Modified: Tue, 14 Jul 2026 01:47:46 GMT  
		Size: 7.3 MB (7261076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92f90d49ad61c5fa6886c8d174151d8e00c22df7905c9efad239e1167158d873`  
		Last Modified: Tue, 14 Jul 2026 01:47:46 GMT  
		Size: 382.6 KB (382571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f80e6d0c04ffe5c0a473db1e0cf08b35f9cebfa66b8a20be4f98b4ed1d7b412d`  
		Last Modified: Tue, 14 Jul 2026 01:47:46 GMT  
		Size: 338.7 KB (338707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c67c5311216cc06178366f5426fa8a2c3b503a26820a0d7a6d7bed40d7883e54`  
		Last Modified: Tue, 14 Jul 2026 01:47:47 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87392f7d95f66e6471aca381e11cb051ce037d75cb8aba30553e440dc4b643ce`  
		Last Modified: Tue, 14 Jul 2026 01:47:51 GMT  
		Size: 110.5 MB (110475925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04fbca60ecc71e4c58cca2d7d7ef9f0ff5fe89e67e898d44a1df8e21fec59a01`  
		Last Modified: Tue, 14 Jul 2026 01:47:47 GMT  
		Size: 380.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b97227708a55980ca2becbaf13d976ea263bfaae7ce1b3e6deaec9f0cea7f787`  
		Last Modified: Tue, 14 Jul 2026 01:47:48 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75701336f2dfa636b8f940a90d8bed822db62debfa18dcfad46c002ae6ab772c`  
		Last Modified: Tue, 14 Jul 2026 01:47:49 GMT  
		Size: 2.2 KB (2228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3860459fa85a3f6e2b0fd969a1de3920effbd140d0e4d916f6006eab219622dc`  
		Last Modified: Tue, 14 Jul 2026 01:47:49 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5.2` - unknown; unknown

```console
$ docker pull couchdb@sha256:42eae4f2e2c49df8a16d9afb04b2009cf46cc4251013f844ce4a99eaf423bb53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4212669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c468e6b945631d6f112fcb042e8cb93c06925a2f23866bee6a074ed9b876e019`

```dockerfile
```

-	Layers:
	-	`sha256:ab780cff30361d095c4bbccb6f2ca347973af7bce3534d69f09fcbb9be93390f`  
		Last Modified: Tue, 14 Jul 2026 01:47:46 GMT  
		Size: 4.2 MB (4180787 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db4f8bf42e192276c48cb9abcfcf10cc60ecb7e60a520b3ed1b17a0198d26400`  
		Last Modified: Tue, 14 Jul 2026 01:47:46 GMT  
		Size: 31.9 KB (31882 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.5.2-nouveau`

```console
$ docker pull couchdb@sha256:d0f84a6cec4a21bdf4fc034cfd823864359eed8acb9635ddb4d5ea01aa384975
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3.5.2-nouveau` - linux; amd64

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

### `couchdb:3.5.2-nouveau` - unknown; unknown

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

### `couchdb:3.5.2-nouveau` - linux; arm64 variant v8

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

### `couchdb:3.5.2-nouveau` - unknown; unknown

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

## `couchdb:3.5.2.1`

```console
$ docker pull couchdb@sha256:7feb744b60195233219f3fa801cbc2384efa24b28c76a5d1f3e93efe6557f921
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3.5.2.1` - linux; amd64

```console
$ docker pull couchdb@sha256:09c35f535e4df3c4dc789aca8ce0b4cfe6e56619edb873a041d35dec68df9e18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148840582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26ebcbb449336cbbbf01168517138e403d5aa5338654e218395717175234e93a`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:43:48 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 14 Jul 2026 01:43:48 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Tue, 14 Jul 2026 01:43:55 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:43:58 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 14 Jul 2026 01:43:58 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 14 Jul 2026 01:44:04 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:44:04 GMT
ENV COUCHDB_VERSION=3.5.2.1
# Tue, 14 Jul 2026 01:44:04 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 14 Jul 2026 01:44:18 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 14 Jul 2026 01:44:18 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Tue, 14 Jul 2026 01:44:18 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Tue, 14 Jul 2026 01:44:18 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 14 Jul 2026 01:44:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Tue, 14 Jul 2026 01:44:18 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:44:18 GMT
VOLUME [/opt/couchdb/data]
# Tue, 14 Jul 2026 01:44:18 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Tue, 14 Jul 2026 01:44:18 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af7b86e25b120e5855a2f32929ac377001b81f24e5e30a5d998df69597d9733b`  
		Last Modified: Tue, 14 Jul 2026 01:44:31 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bae899a3d0a8c92e0a7d74a181e15198f10c172f3fc8b0165ce9b505b1816e7b`  
		Last Modified: Tue, 14 Jul 2026 01:44:31 GMT  
		Size: 7.5 MB (7492179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a29b35b2c22949c93817e5d1cd94192c50a5ebf370b9226ffc31214ef0f395e4`  
		Last Modified: Tue, 14 Jul 2026 01:44:31 GMT  
		Size: 417.6 KB (417590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8beb94a7f08e909619278c0dd5c63546b1b66b434bb6c0db7686d10e01a80370`  
		Last Modified: Tue, 14 Jul 2026 01:44:31 GMT  
		Size: 338.6 KB (338589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75246e5d5a6d7061d4a6c7f5af604eb80c401974f3f642878592d376217a86d4`  
		Last Modified: Tue, 14 Jul 2026 01:44:32 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c6f81c98ece3253559bd821b4e7462da8da14da491c21d22d13abfc16ce574a`  
		Last Modified: Tue, 14 Jul 2026 01:44:35 GMT  
		Size: 110.8 MB (110805887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ad7c7ff675f73e4bc158d9ae2b08de61b132fda0e3221482c3d510aaf05a4c8`  
		Last Modified: Tue, 14 Jul 2026 01:44:32 GMT  
		Size: 382.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c331b9f076035461aee458c31293372b759358c61d11566d39c44dcc9d9b1f5`  
		Last Modified: Tue, 14 Jul 2026 01:44:33 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5180acdb67acb44c890425e6ac753c29ed9c8a9123697373ad6e1a8da572864c`  
		Last Modified: Tue, 14 Jul 2026 01:44:33 GMT  
		Size: 2.2 KB (2225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bba04fd841a8da9df29302412a64f5deeda72b489e4e233cf5737ccc7dc4f0e6`  
		Last Modified: Tue, 14 Jul 2026 01:44:34 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5.2.1` - unknown; unknown

```console
$ docker pull couchdb@sha256:33fad28a4a5c877063e70d2870be9b7abd02a433ff49e9ecb6f459bb1510208b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4212155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23215c45d63065023efe3127e11c57fe765dd5726337c516243334b0c5fe6af1`

```dockerfile
```

-	Layers:
	-	`sha256:7648ac9ffaf83fcf11e770930aa15e27bd195c3056f8186b7bb7cf3e5192ece6`  
		Last Modified: Tue, 14 Jul 2026 01:44:31 GMT  
		Size: 4.2 MB (4180479 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f2050535144e4eb4f14b60abb6bbf2060d72835128e66168cffce682a223369`  
		Last Modified: Tue, 14 Jul 2026 01:44:31 GMT  
		Size: 31.7 KB (31676 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.5.2.1` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:4c57391f9d1526b484f23ac1a73a1b71aa3481e755c8c5fc61eee415b70f94d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.6 MB (148607415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa2ee93eac0771854518a25667597dd3c9ed3cd809d92499ff7ab397e274a9ba`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:47:00 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 14 Jul 2026 01:47:00 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Tue, 14 Jul 2026 01:47:07 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:11 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 14 Jul 2026 01:47:11 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 14 Jul 2026 01:47:18 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:18 GMT
ENV COUCHDB_VERSION=3.5.2.1
# Tue, 14 Jul 2026 01:47:18 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 14 Jul 2026 01:47:32 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 14 Jul 2026 01:47:32 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Tue, 14 Jul 2026 01:47:32 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Tue, 14 Jul 2026 01:47:32 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 14 Jul 2026 01:47:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Tue, 14 Jul 2026 01:47:32 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:47:32 GMT
VOLUME [/opt/couchdb/data]
# Tue, 14 Jul 2026 01:47:32 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Tue, 14 Jul 2026 01:47:32 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02a5161460441e10b846a011a897a072a77378dcc1efff57a510f4a30d172c7d`  
		Last Modified: Tue, 14 Jul 2026 01:47:46 GMT  
		Size: 1.2 KB (1183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:081330c9255c40305c9a63617855d486695430426970cfbbcccad746aeda5ad4`  
		Last Modified: Tue, 14 Jul 2026 01:47:46 GMT  
		Size: 7.3 MB (7261076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92f90d49ad61c5fa6886c8d174151d8e00c22df7905c9efad239e1167158d873`  
		Last Modified: Tue, 14 Jul 2026 01:47:46 GMT  
		Size: 382.6 KB (382571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f80e6d0c04ffe5c0a473db1e0cf08b35f9cebfa66b8a20be4f98b4ed1d7b412d`  
		Last Modified: Tue, 14 Jul 2026 01:47:46 GMT  
		Size: 338.7 KB (338707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c67c5311216cc06178366f5426fa8a2c3b503a26820a0d7a6d7bed40d7883e54`  
		Last Modified: Tue, 14 Jul 2026 01:47:47 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87392f7d95f66e6471aca381e11cb051ce037d75cb8aba30553e440dc4b643ce`  
		Last Modified: Tue, 14 Jul 2026 01:47:51 GMT  
		Size: 110.5 MB (110475925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04fbca60ecc71e4c58cca2d7d7ef9f0ff5fe89e67e898d44a1df8e21fec59a01`  
		Last Modified: Tue, 14 Jul 2026 01:47:47 GMT  
		Size: 380.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b97227708a55980ca2becbaf13d976ea263bfaae7ce1b3e6deaec9f0cea7f787`  
		Last Modified: Tue, 14 Jul 2026 01:47:48 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75701336f2dfa636b8f940a90d8bed822db62debfa18dcfad46c002ae6ab772c`  
		Last Modified: Tue, 14 Jul 2026 01:47:49 GMT  
		Size: 2.2 KB (2228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3860459fa85a3f6e2b0fd969a1de3920effbd140d0e4d916f6006eab219622dc`  
		Last Modified: Tue, 14 Jul 2026 01:47:49 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5.2.1` - unknown; unknown

```console
$ docker pull couchdb@sha256:42eae4f2e2c49df8a16d9afb04b2009cf46cc4251013f844ce4a99eaf423bb53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4212669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c468e6b945631d6f112fcb042e8cb93c06925a2f23866bee6a074ed9b876e019`

```dockerfile
```

-	Layers:
	-	`sha256:ab780cff30361d095c4bbccb6f2ca347973af7bce3534d69f09fcbb9be93390f`  
		Last Modified: Tue, 14 Jul 2026 01:47:46 GMT  
		Size: 4.2 MB (4180787 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db4f8bf42e192276c48cb9abcfcf10cc60ecb7e60a520b3ed1b17a0198d26400`  
		Last Modified: Tue, 14 Jul 2026 01:47:46 GMT  
		Size: 31.9 KB (31882 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.5.2.1-nouveau`

```console
$ docker pull couchdb@sha256:d0f84a6cec4a21bdf4fc034cfd823864359eed8acb9635ddb4d5ea01aa384975
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3.5.2.1-nouveau` - linux; amd64

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

### `couchdb:3.5.2.1-nouveau` - unknown; unknown

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

### `couchdb:3.5.2.1-nouveau` - linux; arm64 variant v8

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

### `couchdb:3.5.2.1-nouveau` - unknown; unknown

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

## `couchdb:latest`

```console
$ docker pull couchdb@sha256:7feb744b60195233219f3fa801cbc2384efa24b28c76a5d1f3e93efe6557f921
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:latest` - linux; amd64

```console
$ docker pull couchdb@sha256:09c35f535e4df3c4dc789aca8ce0b4cfe6e56619edb873a041d35dec68df9e18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148840582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26ebcbb449336cbbbf01168517138e403d5aa5338654e218395717175234e93a`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:43:48 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 14 Jul 2026 01:43:48 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Tue, 14 Jul 2026 01:43:55 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:43:58 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 14 Jul 2026 01:43:58 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 14 Jul 2026 01:44:04 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:44:04 GMT
ENV COUCHDB_VERSION=3.5.2.1
# Tue, 14 Jul 2026 01:44:04 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 14 Jul 2026 01:44:18 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 14 Jul 2026 01:44:18 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Tue, 14 Jul 2026 01:44:18 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Tue, 14 Jul 2026 01:44:18 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 14 Jul 2026 01:44:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Tue, 14 Jul 2026 01:44:18 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:44:18 GMT
VOLUME [/opt/couchdb/data]
# Tue, 14 Jul 2026 01:44:18 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Tue, 14 Jul 2026 01:44:18 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af7b86e25b120e5855a2f32929ac377001b81f24e5e30a5d998df69597d9733b`  
		Last Modified: Tue, 14 Jul 2026 01:44:31 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bae899a3d0a8c92e0a7d74a181e15198f10c172f3fc8b0165ce9b505b1816e7b`  
		Last Modified: Tue, 14 Jul 2026 01:44:31 GMT  
		Size: 7.5 MB (7492179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a29b35b2c22949c93817e5d1cd94192c50a5ebf370b9226ffc31214ef0f395e4`  
		Last Modified: Tue, 14 Jul 2026 01:44:31 GMT  
		Size: 417.6 KB (417590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8beb94a7f08e909619278c0dd5c63546b1b66b434bb6c0db7686d10e01a80370`  
		Last Modified: Tue, 14 Jul 2026 01:44:31 GMT  
		Size: 338.6 KB (338589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75246e5d5a6d7061d4a6c7f5af604eb80c401974f3f642878592d376217a86d4`  
		Last Modified: Tue, 14 Jul 2026 01:44:32 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c6f81c98ece3253559bd821b4e7462da8da14da491c21d22d13abfc16ce574a`  
		Last Modified: Tue, 14 Jul 2026 01:44:35 GMT  
		Size: 110.8 MB (110805887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ad7c7ff675f73e4bc158d9ae2b08de61b132fda0e3221482c3d510aaf05a4c8`  
		Last Modified: Tue, 14 Jul 2026 01:44:32 GMT  
		Size: 382.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c331b9f076035461aee458c31293372b759358c61d11566d39c44dcc9d9b1f5`  
		Last Modified: Tue, 14 Jul 2026 01:44:33 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5180acdb67acb44c890425e6ac753c29ed9c8a9123697373ad6e1a8da572864c`  
		Last Modified: Tue, 14 Jul 2026 01:44:33 GMT  
		Size: 2.2 KB (2225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bba04fd841a8da9df29302412a64f5deeda72b489e4e233cf5737ccc7dc4f0e6`  
		Last Modified: Tue, 14 Jul 2026 01:44:34 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:latest` - unknown; unknown

```console
$ docker pull couchdb@sha256:33fad28a4a5c877063e70d2870be9b7abd02a433ff49e9ecb6f459bb1510208b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4212155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23215c45d63065023efe3127e11c57fe765dd5726337c516243334b0c5fe6af1`

```dockerfile
```

-	Layers:
	-	`sha256:7648ac9ffaf83fcf11e770930aa15e27bd195c3056f8186b7bb7cf3e5192ece6`  
		Last Modified: Tue, 14 Jul 2026 01:44:31 GMT  
		Size: 4.2 MB (4180479 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f2050535144e4eb4f14b60abb6bbf2060d72835128e66168cffce682a223369`  
		Last Modified: Tue, 14 Jul 2026 01:44:31 GMT  
		Size: 31.7 KB (31676 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:latest` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:4c57391f9d1526b484f23ac1a73a1b71aa3481e755c8c5fc61eee415b70f94d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.6 MB (148607415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa2ee93eac0771854518a25667597dd3c9ed3cd809d92499ff7ab397e274a9ba`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:47:00 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 14 Jul 2026 01:47:00 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Tue, 14 Jul 2026 01:47:07 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:11 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 14 Jul 2026 01:47:11 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 14 Jul 2026 01:47:18 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:18 GMT
ENV COUCHDB_VERSION=3.5.2.1
# Tue, 14 Jul 2026 01:47:18 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 14 Jul 2026 01:47:32 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 14 Jul 2026 01:47:32 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Tue, 14 Jul 2026 01:47:32 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Tue, 14 Jul 2026 01:47:32 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 14 Jul 2026 01:47:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Tue, 14 Jul 2026 01:47:32 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:47:32 GMT
VOLUME [/opt/couchdb/data]
# Tue, 14 Jul 2026 01:47:32 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Tue, 14 Jul 2026 01:47:32 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02a5161460441e10b846a011a897a072a77378dcc1efff57a510f4a30d172c7d`  
		Last Modified: Tue, 14 Jul 2026 01:47:46 GMT  
		Size: 1.2 KB (1183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:081330c9255c40305c9a63617855d486695430426970cfbbcccad746aeda5ad4`  
		Last Modified: Tue, 14 Jul 2026 01:47:46 GMT  
		Size: 7.3 MB (7261076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92f90d49ad61c5fa6886c8d174151d8e00c22df7905c9efad239e1167158d873`  
		Last Modified: Tue, 14 Jul 2026 01:47:46 GMT  
		Size: 382.6 KB (382571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f80e6d0c04ffe5c0a473db1e0cf08b35f9cebfa66b8a20be4f98b4ed1d7b412d`  
		Last Modified: Tue, 14 Jul 2026 01:47:46 GMT  
		Size: 338.7 KB (338707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c67c5311216cc06178366f5426fa8a2c3b503a26820a0d7a6d7bed40d7883e54`  
		Last Modified: Tue, 14 Jul 2026 01:47:47 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87392f7d95f66e6471aca381e11cb051ce037d75cb8aba30553e440dc4b643ce`  
		Last Modified: Tue, 14 Jul 2026 01:47:51 GMT  
		Size: 110.5 MB (110475925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04fbca60ecc71e4c58cca2d7d7ef9f0ff5fe89e67e898d44a1df8e21fec59a01`  
		Last Modified: Tue, 14 Jul 2026 01:47:47 GMT  
		Size: 380.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b97227708a55980ca2becbaf13d976ea263bfaae7ce1b3e6deaec9f0cea7f787`  
		Last Modified: Tue, 14 Jul 2026 01:47:48 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75701336f2dfa636b8f940a90d8bed822db62debfa18dcfad46c002ae6ab772c`  
		Last Modified: Tue, 14 Jul 2026 01:47:49 GMT  
		Size: 2.2 KB (2228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3860459fa85a3f6e2b0fd969a1de3920effbd140d0e4d916f6006eab219622dc`  
		Last Modified: Tue, 14 Jul 2026 01:47:49 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:latest` - unknown; unknown

```console
$ docker pull couchdb@sha256:42eae4f2e2c49df8a16d9afb04b2009cf46cc4251013f844ce4a99eaf423bb53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4212669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c468e6b945631d6f112fcb042e8cb93c06925a2f23866bee6a074ed9b876e019`

```dockerfile
```

-	Layers:
	-	`sha256:ab780cff30361d095c4bbccb6f2ca347973af7bce3534d69f09fcbb9be93390f`  
		Last Modified: Tue, 14 Jul 2026 01:47:46 GMT  
		Size: 4.2 MB (4180787 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db4f8bf42e192276c48cb9abcfcf10cc60ecb7e60a520b3ed1b17a0198d26400`  
		Last Modified: Tue, 14 Jul 2026 01:47:46 GMT  
		Size: 31.9 KB (31882 bytes)  
		MIME: application/vnd.in-toto+json
