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
$ docker pull couchdb@sha256:d6aa9d04c993cade78e4ba5d967bbe88cc00c36836cd3c0dfcd85b585b95f4cd
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
$ docker pull couchdb@sha256:3beeeddf8bd41e3d3175a81706041970931a6b9648ebe7cf0d83592dc9008cb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.6 MB (148610960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2709151b5d31ef9083ce177249e3dc839908ce169530879c0dd33f6e6291a9e0`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:45:14 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 24 Jun 2026 01:45:14 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Wed, 24 Jun 2026 01:45:21 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:25 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 24 Jun 2026 01:45:25 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 24 Jun 2026 01:45:32 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:32 GMT
ENV COUCHDB_VERSION=3.5.2.1
# Wed, 24 Jun 2026 01:45:32 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 24 Jun 2026 01:45:46 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Wed, 24 Jun 2026 01:45:46 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Wed, 24 Jun 2026 01:45:46 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Wed, 24 Jun 2026 01:45:46 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 24 Jun 2026 01:45:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Wed, 24 Jun 2026 01:45:46 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 24 Jun 2026 01:45:46 GMT
VOLUME [/opt/couchdb/data]
# Wed, 24 Jun 2026 01:45:46 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Wed, 24 Jun 2026 01:45:46 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c34eafb21ffe87f9a1c7c17f11fcd3e474ff4be443d91b71069650935b45a49`  
		Last Modified: Wed, 24 Jun 2026 01:46:00 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c374173332b5fe10199e92b26dc196540789ebd47eac3a886163b9464183886`  
		Last Modified: Wed, 24 Jun 2026 01:46:00 GMT  
		Size: 7.3 MB (7261195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:297cb5e063f5f7b21b877726abd1f8405924db8308e3dcacee0c9e445b5ca12b`  
		Last Modified: Wed, 24 Jun 2026 01:45:59 GMT  
		Size: 382.6 KB (382569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8abf1699b7f712532e1c52400041c3cac70d15748da6008be064fd8079c6fd40`  
		Last Modified: Wed, 24 Jun 2026 01:46:00 GMT  
		Size: 338.8 KB (338754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1f72ba21251a958d30a6b73bc738d047432036c794fc833b7b0f21bb77e23d5`  
		Last Modified: Wed, 24 Jun 2026 01:46:01 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ee9883bcd6f5199cd1e4f0fb706d8bf2f12edf32903a1130ba9db387e5e7635`  
		Last Modified: Wed, 24 Jun 2026 01:46:04 GMT  
		Size: 110.5 MB (110474451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a15b9c4b1dd4da36e2a55a7d99596e53fb6b9e49556011dec18fa7279a5675d`  
		Last Modified: Wed, 24 Jun 2026 01:46:01 GMT  
		Size: 381.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b0296e07dd1255baf3497c9bec73923346caa0078781774be87398df60c049d`  
		Last Modified: Wed, 24 Jun 2026 01:46:02 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bbdfe6ea98ff36a0183910c32e21cc4c24ae6daec0a796c79764c7003ff21c0`  
		Last Modified: Wed, 24 Jun 2026 01:46:02 GMT  
		Size: 2.2 KB (2227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87768653aa52520d0148009b743d1f4bb4208d3823d82c5c4729a8675d0bbb73`  
		Last Modified: Wed, 24 Jun 2026 01:46:03 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3` - unknown; unknown

```console
$ docker pull couchdb@sha256:2e3aea75ac902ad62649f52dad674240011a18bc5d8a35c6efaa8b78a22ef191
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4212579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cff6de0fe65d5f070e7419be4529463bd15fd4ebe411a60aa94143041e2865a`

```dockerfile
```

-	Layers:
	-	`sha256:423f4c76bf94fe0a53f7180c4dccfcac2815cf31624db583c1b3f6aaab5f7f75`  
		Last Modified: Wed, 24 Jun 2026 01:46:00 GMT  
		Size: 4.2 MB (4180697 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:391f250f12f470c2d1e19307a7d7020d0db34c3ca6e546585ce0b3d112b9762f`  
		Last Modified: Wed, 24 Jun 2026 01:46:00 GMT  
		Size: 31.9 KB (31882 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3-nouveau`

```console
$ docker pull couchdb@sha256:61f3c4286ad6f8fcdfb25923fadb5c819183755b4081bcdaf4d07e82283dbe66
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
$ docker pull couchdb@sha256:88f01a2895ccbc2ad4a4809d08a4ab34bada1cf459b90e408f677594febdc495
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150060849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17fe359bdea2848ec50aa9ef2d607cc2581d2ad6ad03913fb00c0e3620979107`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:45:19 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 24 Jun 2026 01:45:19 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Wed, 24 Jun 2026 01:45:27 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:33 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:37 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 24 Jun 2026 01:45:37 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 24 Jun 2026 01:45:43 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:43 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 24 Jun 2026 01:45:49 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends couchdb-nouveau=3.5.2.1~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Wed, 24 Jun 2026 01:45:49 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Wed, 24 Jun 2026 01:45:49 GMT
VOLUME [/opt/nouveau/data]
# Wed, 24 Jun 2026 01:45:49 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Wed, 24 Jun 2026 01:45:49 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afed3b15d19dc54098462361bd70be3167d1b4a2056095f6ea6b457239e0404e`  
		Last Modified: Wed, 24 Jun 2026 01:46:04 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c2154a32b22e91cd532570515930309f7dc6ac5e11a359590effab20c7e5c83`  
		Last Modified: Wed, 24 Jun 2026 01:46:04 GMT  
		Size: 7.3 MB (7261182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77072d82cc95086e1b40e56a00e632fcd1a25c76b2fcf3054b4b65fde807b15d`  
		Last Modified: Wed, 24 Jun 2026 01:46:05 GMT  
		Size: 69.2 MB (69179776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df4c068d6f2d2e441939047e06caf8a0e5fbd716b233ae63fc3790ba33a01ee6`  
		Last Modified: Wed, 24 Jun 2026 01:46:04 GMT  
		Size: 390.3 KB (390257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00028a2c864bb7e8a1ac6b0b2696419d4a70a5e52c8e5504d8a301637f3e486b`  
		Last Modified: Wed, 24 Jun 2026 01:46:05 GMT  
		Size: 347.4 KB (347413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3296c6540ed840d3914cb6e0e5a60c4b39e81c98d16e191429647085082c4888`  
		Last Modified: Wed, 24 Jun 2026 01:46:05 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adaa48dc2c10bbb2e9cab0e15f705a1b59f9b434758e23de5f25d1c9c0e2315a`  
		Last Modified: Wed, 24 Jun 2026 01:46:07 GMT  
		Size: 42.7 MB (42731788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dade987fdbe20973e04a762797ca68cc6ef72feef621a5ce4f9df4d2c7ca6768`  
		Last Modified: Wed, 24 Jun 2026 01:46:06 GMT  
		Size: 421.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:49d26e1d18ca48370c6d10add80d541441bec9cb9843f3ad085e6e726ceb0abc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3388017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c3ed08f5407b481c2ccde6de9e4913fcd1fcd1d33d15e859e376f49659e5b5a`

```dockerfile
```

-	Layers:
	-	`sha256:6e7e4636b53e3343add9560359cbf01f9b18700b04aa67e3431e1fa07bec70ce`  
		Last Modified: Wed, 24 Jun 2026 01:46:04 GMT  
		Size: 3.4 MB (3363308 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d42543e31bac53348e2864f384be3c0cb44ee069ec0cf0e34cbf29f4de874f7`  
		Last Modified: Wed, 24 Jun 2026 01:46:04 GMT  
		Size: 24.7 KB (24709 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.4`

```console
$ docker pull couchdb@sha256:cd41daadce170e28bc55fced805216e37a89dd66aa9fc8e13c374d82f95ecb2c
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
$ docker pull couchdb@sha256:69feeb09f54ae3bbdaadd50e0ac1344b5dd8dff03c8413349ff5b6b4bc949b40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.4 MB (138439983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbd052eb35dd25dd468f114941fc64d5fc47a9f5c8c1cd54697faf2d942ba11a`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:45:23 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 24 Jun 2026 01:45:23 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Wed, 24 Jun 2026 01:45:30 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:32 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 24 Jun 2026 01:45:32 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 24 Jun 2026 01:45:38 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt-key list;     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:38 GMT
ENV COUCHDB_VERSION=3.4.3
# Wed, 24 Jun 2026 01:45:38 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 24 Jun 2026 01:45:50 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages             couchdb="$COUCHDB_VERSION"~bookworm     ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Wed, 24 Jun 2026 01:45:50 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Wed, 24 Jun 2026 01:45:50 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Wed, 24 Jun 2026 01:45:50 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 24 Jun 2026 01:45:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Wed, 24 Jun 2026 01:45:51 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 24 Jun 2026 01:45:51 GMT
VOLUME [/opt/couchdb/data]
# Wed, 24 Jun 2026 01:45:51 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Wed, 24 Jun 2026 01:45:51 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e101bc9f32b2805af9cc873b8fbe2b938f8985decfa30d5f0ec4618765298b1`  
		Last Modified: Wed, 24 Jun 2026 01:46:06 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e56d7a078dd4ae02386cdad07635fb8b88207ed1d6b8ede36a7e0b291c9b0d8d`  
		Last Modified: Wed, 24 Jun 2026 01:46:06 GMT  
		Size: 7.7 MB (7695580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dfa424fc62e28cd749d61117d5a2ea67ebec9c052241984eb1568958d84b96e`  
		Last Modified: Wed, 24 Jun 2026 01:46:06 GMT  
		Size: 370.6 KB (370550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef4682dcbcf40051f7cc07d160c3374440c5d13fe0a1e91ae0d259e2a8302b1f`  
		Last Modified: Wed, 24 Jun 2026 01:46:07 GMT  
		Size: 76.5 KB (76536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88372eeb9cfebfd709c34a3a1f8b0ecfbd4a70ba66d0974e0992ace476c16f53`  
		Last Modified: Wed, 24 Jun 2026 01:46:08 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f0b4fb7db8a6727888ba8408a2437a4129bbaead1f9af660408a5eba5561127`  
		Last Modified: Wed, 24 Jun 2026 01:46:11 GMT  
		Size: 102.2 MB (102169471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eb7217f6a1690a538a7f3913a0ae652e1ba86470a00bf11373e143f3ce87e79`  
		Last Modified: Wed, 24 Jun 2026 01:46:08 GMT  
		Size: 376.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:067c3d052cc37ac2681f6f903b4405f456e0d284fe06dc3a1581e13fc1044dca`  
		Last Modified: Wed, 24 Jun 2026 01:46:08 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dfdbc26218958e01a38c92372b34a7537a9f16167e15a2ce806885a45e21312`  
		Last Modified: Wed, 24 Jun 2026 01:46:09 GMT  
		Size: 2.2 KB (2227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31fbd9f42094b3776bcaadc87c0505aa866592965f329f9a6644a13a61685f19`  
		Last Modified: Wed, 24 Jun 2026 01:46:10 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4` - unknown; unknown

```console
$ docker pull couchdb@sha256:6ac8f28761840fd7a4db90971e540e861a797ece9a76f20d5235d0347a0a8885
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4157018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71f85b84bfefce1d824c332253393559a86dff302043eed7fd499b8e2a3f062e`

```dockerfile
```

-	Layers:
	-	`sha256:326731787f4c9ab5bd57c742537031f7489e5bfe814368ba4cd5897fa6a97500`  
		Last Modified: Wed, 24 Jun 2026 01:46:07 GMT  
		Size: 4.1 MB (4125700 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a3edeea7bfe170edce1f371c4fd3f15e1a1729ade93e20f84ca7137b926fc9d`  
		Last Modified: Wed, 24 Jun 2026 01:46:06 GMT  
		Size: 31.3 KB (31318 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.4` - linux; s390x

```console
$ docker pull couchdb@sha256:944ffe7706b9190f28ea763cb14210f7995f0ef9e94a39375b8e44e2c12da149
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.8 MB (135804777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d31901e766b8cfcb28ae354d0a8531dbb6cc7d6007d21e22ac5462ebdc7b17b3`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 02:46:24 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 24 Jun 2026 02:46:24 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Wed, 24 Jun 2026 02:46:30 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:46:33 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 24 Jun 2026 02:46:33 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 24 Jun 2026 02:46:38 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt-key list;     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:46:38 GMT
ENV COUCHDB_VERSION=3.4.3
# Wed, 24 Jun 2026 02:46:38 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 24 Jun 2026 02:46:55 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages             couchdb="$COUCHDB_VERSION"~bookworm     ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Wed, 24 Jun 2026 02:46:56 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Wed, 24 Jun 2026 02:46:56 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Wed, 24 Jun 2026 02:46:56 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 24 Jun 2026 02:46:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Wed, 24 Jun 2026 02:46:56 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 24 Jun 2026 02:46:56 GMT
VOLUME [/opt/couchdb/data]
# Wed, 24 Jun 2026 02:46:56 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Wed, 24 Jun 2026 02:46:56 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:e9aeeda7513dde59469463716e9e14f36210d6570c3cad5e5440b32d941733cd`  
		Last Modified: Wed, 24 Jun 2026 00:27:21 GMT  
		Size: 26.9 MB (26893585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6c74692a8c1f4356abe88429f627fd6b302f6f73952b95d71b04569b79dc6c6`  
		Last Modified: Wed, 24 Jun 2026 02:47:16 GMT  
		Size: 1.2 KB (1183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a44e034a2e5b15aeb96ce5473cdf2d322c1c3da7424bfa8a501a5a829b686b1`  
		Last Modified: Wed, 24 Jun 2026 02:47:17 GMT  
		Size: 7.4 MB (7400241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a512d7ee7f021226d1a5f24e929b0f155040e189302657566cca875db2956ba`  
		Last Modified: Wed, 24 Jun 2026 02:47:16 GMT  
		Size: 372.2 KB (372163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fed82bc36abb2bd092c5c734e96c3302b9454f639465572e632ebd3a84d0115c`  
		Last Modified: Wed, 24 Jun 2026 02:47:16 GMT  
		Size: 76.6 KB (76561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddd9d835f4fab2a7b392bf2531caea1b576fe8f461bce2784bcc35599124cbf2`  
		Last Modified: Wed, 24 Jun 2026 02:47:17 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:426265479a0f717d0e9bf0518216548ebbc6e250a12f07f84b634f0eb5752aee`  
		Last Modified: Wed, 24 Jun 2026 02:47:20 GMT  
		Size: 101.1 MB (101056797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83d444136e52d33b379d93d2cc02b4e14a558181d3b9bcd843f9e6fe84dfab55`  
		Last Modified: Wed, 24 Jun 2026 02:47:18 GMT  
		Size: 378.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af920742abefb95b12c6fbb530efe765248948f0e620e08fbd59690e9f25a0d2`  
		Last Modified: Wed, 24 Jun 2026 02:47:18 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d86e99b1478db4f20a19804afb135333f7ab7bc313a4cd224e8de4d39e267ed`  
		Last Modified: Wed, 24 Jun 2026 02:47:19 GMT  
		Size: 2.2 KB (2226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:663ff4ede45caf34f6004d8566ba4abfbea9253226272723ae64888bdafb7abe`  
		Last Modified: Wed, 24 Jun 2026 02:47:19 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4` - unknown; unknown

```console
$ docker pull couchdb@sha256:2fc360f7ad0f86472acf7286b2b4e54e45f730dfc9c9062c1094e191aad9e253
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4152775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28a69249aa1ff2a90be0fc30a76bfd2ed3ffcdcae0b05a91f55bc89be9adae8b`

```dockerfile
```

-	Layers:
	-	`sha256:075451d8e58ce370d95c940192f581b11e58f0ac036932a6921d2bf4ac912455`  
		Last Modified: Wed, 24 Jun 2026 02:47:16 GMT  
		Size: 4.1 MB (4121627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c35576e828da9763b750c1a355f0428ae7eb253bc7c242491801f9203c0f2b4`  
		Last Modified: Wed, 24 Jun 2026 02:47:16 GMT  
		Size: 31.1 KB (31148 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.4-nouveau`

```console
$ docker pull couchdb@sha256:b4815578c97ba57a2b8303d15f9b5b17970935617b2d594f4f6f373c3335b8c4
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
$ docker pull couchdb@sha256:2f251695136cbb6735b3e195a3bab1127b13b0e8710bad39ef27508666d9f0aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.4 MB (155443657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2975e631cdb54c26d3ebab103126963651fdd9b0e7fde7f2eada08956bc7d81f`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:45:32 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 24 Jun 2026 01:45:32 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Wed, 24 Jun 2026 01:45:39 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:46 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-17-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:49 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 24 Jun 2026 01:45:49 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 24 Jun 2026 01:45:53 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt-key list;    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:53 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ bookworm main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 24 Jun 2026 01:45:58 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages --no-install-recommends             couchdb-nouveau=3.4.3~bookworm;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Wed, 24 Jun 2026 01:45:58 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Wed, 24 Jun 2026 01:45:58 GMT
VOLUME [/opt/nouveau/data]
# Wed, 24 Jun 2026 01:45:58 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Wed, 24 Jun 2026 01:45:58 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:521c24b6ce6ee1717c396669b0b31f219f196b8ae1808794a608188609902b6d`  
		Last Modified: Wed, 24 Jun 2026 01:46:14 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eca378e46b6999a8ccb73a520f186772840f56ed550aa0ddeb7be85bf3f91276`  
		Last Modified: Wed, 24 Jun 2026 01:46:14 GMT  
		Size: 7.7 MB (7695553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f468a2f17d0696c5056857cba74db5e74595bec6276942cb282d57c1d559b28`  
		Last Modified: Wed, 24 Jun 2026 01:46:16 GMT  
		Size: 76.8 MB (76793406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4557430451bd3914a75738f21196bfced787420f78fed484bf47e828de1e88c4`  
		Last Modified: Wed, 24 Jun 2026 01:46:14 GMT  
		Size: 392.8 KB (392801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a3ad80377e9251007fc729c81a8173596d15f6f9f6023196e440a0593b5a680`  
		Last Modified: Wed, 24 Jun 2026 01:46:15 GMT  
		Size: 99.5 KB (99531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2240fdf4a1d8899fb7e547663566289c9ef7696603084e719b81e07ac44b267c`  
		Last Modified: Wed, 24 Jun 2026 01:46:15 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22fe4e492fe44fd32f1b56d663dcf866ee42fbb3563ba33bb50b07d2c7b26ef7`  
		Last Modified: Wed, 24 Jun 2026 01:46:17 GMT  
		Size: 42.3 MB (42338066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed4384862444dd8af9bfbd1da7cea122c9faae782afdb58b4c35308bed0f900b`  
		Last Modified: Wed, 24 Jun 2026 01:46:16 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:03a9282b880bf10dcaf5e8bf6c101ebd382681ea8958125b2f249ae8a9e97047
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3681724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0dfb06876ae5bad10252876674413417a073003a52f52e9ace022da1e3b8ad9`

```dockerfile
```

-	Layers:
	-	`sha256:724fe05d6b339d5d9ea1ac9c9fb3d25fdfbd444087dd2bdb05894ea96acd8565`  
		Last Modified: Wed, 24 Jun 2026 01:46:14 GMT  
		Size: 3.7 MB (3657339 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7db9801e984309cd27374fe144be58749aa2d531118de86de16f9dd3f565301e`  
		Last Modified: Wed, 24 Jun 2026 01:46:13 GMT  
		Size: 24.4 KB (24385 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.4-nouveau` - linux; s390x

```console
$ docker pull couchdb@sha256:5da3f6a6a5db3f9bd7d1cfea6f5c66773f8d777aa4b480743794afc00c2c921b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.2 MB (150178075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8bf166913572b785e904d38e406ef9d27585473fb6a7d757a3f4b4927a47f15`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 02:46:31 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 24 Jun 2026 02:46:31 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Wed, 24 Jun 2026 02:46:37 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:46:45 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-17-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:46:48 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 24 Jun 2026 02:46:48 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 24 Jun 2026 02:46:52 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt-key list;    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:46:52 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ bookworm main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 24 Jun 2026 02:47:00 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages --no-install-recommends             couchdb-nouveau=3.4.3~bookworm;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Wed, 24 Jun 2026 02:47:00 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Wed, 24 Jun 2026 02:47:00 GMT
VOLUME [/opt/nouveau/data]
# Wed, 24 Jun 2026 02:47:00 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Wed, 24 Jun 2026 02:47:00 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:e9aeeda7513dde59469463716e9e14f36210d6570c3cad5e5440b32d941733cd`  
		Last Modified: Wed, 24 Jun 2026 00:27:21 GMT  
		Size: 26.9 MB (26893585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:183c4c35f9774ecad1c3bad431f618287d5d25f795c2abdf32ebcab26128efef`  
		Last Modified: Wed, 24 Jun 2026 02:47:23 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:059ff1c6e29c8344a8a59c5641838b7636b539ede46fa83ae2c13dfcb1e4958e`  
		Last Modified: Wed, 24 Jun 2026 02:47:23 GMT  
		Size: 7.4 MB (7400193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd709311124fab46ec7c9282d0c30a5d6a479ca082c744135d182ee9d81b1748`  
		Last Modified: Wed, 24 Jun 2026 02:47:24 GMT  
		Size: 73.2 MB (73225361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87813195098071fe74d5d1ac69a2dcca169b13019de131fa6260734e740d5068`  
		Last Modified: Wed, 24 Jun 2026 02:47:23 GMT  
		Size: 394.5 KB (394518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abdcf0dde2ac53ff144117390f118341c362a4a599d223d8f3f361d7bf6e4969`  
		Last Modified: Wed, 24 Jun 2026 02:47:24 GMT  
		Size: 99.7 KB (99687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c98f10795ec0711c6fb1c1c2d9aaf02a8135b77ce56fb1448fda05b4d13a7717`  
		Last Modified: Wed, 24 Jun 2026 02:47:24 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6aaabca7f1103b56ac333a0be1240140af54cd0ed33fc57c0ad749c6b3adc633`  
		Last Modified: Wed, 24 Jun 2026 02:47:25 GMT  
		Size: 42.2 MB (42162856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b27e6fcecf7b713c53863d2b5bd48f86d03d5b195fa8e6051741d0bce49c3d2`  
		Last Modified: Wed, 24 Jun 2026 02:47:25 GMT  
		Size: 415.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:6ff4682ef484e2f8e1ebb2ce54f44b3cebd2895336a188c5b714fc0d61c440cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3673419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3de6284d11fb18093a35538214885a90f057e29e3ca45e48caca07259686fb31`

```dockerfile
```

-	Layers:
	-	`sha256:be79239d219b209b9d2f18f33d324866a220b298b9ccbea8d10047d5f8923441`  
		Last Modified: Wed, 24 Jun 2026 02:47:23 GMT  
		Size: 3.6 MB (3649204 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d63773d4b69bde66025c54ba37e5906bed3b59835ac891ec8f2c451730179eb`  
		Last Modified: Wed, 24 Jun 2026 02:47:23 GMT  
		Size: 24.2 KB (24215 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.4.3`

```console
$ docker pull couchdb@sha256:cd41daadce170e28bc55fced805216e37a89dd66aa9fc8e13c374d82f95ecb2c
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
$ docker pull couchdb@sha256:69feeb09f54ae3bbdaadd50e0ac1344b5dd8dff03c8413349ff5b6b4bc949b40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.4 MB (138439983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbd052eb35dd25dd468f114941fc64d5fc47a9f5c8c1cd54697faf2d942ba11a`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:45:23 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 24 Jun 2026 01:45:23 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Wed, 24 Jun 2026 01:45:30 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:32 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 24 Jun 2026 01:45:32 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 24 Jun 2026 01:45:38 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt-key list;     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:38 GMT
ENV COUCHDB_VERSION=3.4.3
# Wed, 24 Jun 2026 01:45:38 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 24 Jun 2026 01:45:50 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages             couchdb="$COUCHDB_VERSION"~bookworm     ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Wed, 24 Jun 2026 01:45:50 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Wed, 24 Jun 2026 01:45:50 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Wed, 24 Jun 2026 01:45:50 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 24 Jun 2026 01:45:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Wed, 24 Jun 2026 01:45:51 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 24 Jun 2026 01:45:51 GMT
VOLUME [/opt/couchdb/data]
# Wed, 24 Jun 2026 01:45:51 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Wed, 24 Jun 2026 01:45:51 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e101bc9f32b2805af9cc873b8fbe2b938f8985decfa30d5f0ec4618765298b1`  
		Last Modified: Wed, 24 Jun 2026 01:46:06 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e56d7a078dd4ae02386cdad07635fb8b88207ed1d6b8ede36a7e0b291c9b0d8d`  
		Last Modified: Wed, 24 Jun 2026 01:46:06 GMT  
		Size: 7.7 MB (7695580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dfa424fc62e28cd749d61117d5a2ea67ebec9c052241984eb1568958d84b96e`  
		Last Modified: Wed, 24 Jun 2026 01:46:06 GMT  
		Size: 370.6 KB (370550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef4682dcbcf40051f7cc07d160c3374440c5d13fe0a1e91ae0d259e2a8302b1f`  
		Last Modified: Wed, 24 Jun 2026 01:46:07 GMT  
		Size: 76.5 KB (76536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88372eeb9cfebfd709c34a3a1f8b0ecfbd4a70ba66d0974e0992ace476c16f53`  
		Last Modified: Wed, 24 Jun 2026 01:46:08 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f0b4fb7db8a6727888ba8408a2437a4129bbaead1f9af660408a5eba5561127`  
		Last Modified: Wed, 24 Jun 2026 01:46:11 GMT  
		Size: 102.2 MB (102169471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eb7217f6a1690a538a7f3913a0ae652e1ba86470a00bf11373e143f3ce87e79`  
		Last Modified: Wed, 24 Jun 2026 01:46:08 GMT  
		Size: 376.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:067c3d052cc37ac2681f6f903b4405f456e0d284fe06dc3a1581e13fc1044dca`  
		Last Modified: Wed, 24 Jun 2026 01:46:08 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dfdbc26218958e01a38c92372b34a7537a9f16167e15a2ce806885a45e21312`  
		Last Modified: Wed, 24 Jun 2026 01:46:09 GMT  
		Size: 2.2 KB (2227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31fbd9f42094b3776bcaadc87c0505aa866592965f329f9a6644a13a61685f19`  
		Last Modified: Wed, 24 Jun 2026 01:46:10 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4.3` - unknown; unknown

```console
$ docker pull couchdb@sha256:6ac8f28761840fd7a4db90971e540e861a797ece9a76f20d5235d0347a0a8885
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4157018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71f85b84bfefce1d824c332253393559a86dff302043eed7fd499b8e2a3f062e`

```dockerfile
```

-	Layers:
	-	`sha256:326731787f4c9ab5bd57c742537031f7489e5bfe814368ba4cd5897fa6a97500`  
		Last Modified: Wed, 24 Jun 2026 01:46:07 GMT  
		Size: 4.1 MB (4125700 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a3edeea7bfe170edce1f371c4fd3f15e1a1729ade93e20f84ca7137b926fc9d`  
		Last Modified: Wed, 24 Jun 2026 01:46:06 GMT  
		Size: 31.3 KB (31318 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.4.3` - linux; s390x

```console
$ docker pull couchdb@sha256:944ffe7706b9190f28ea763cb14210f7995f0ef9e94a39375b8e44e2c12da149
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.8 MB (135804777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d31901e766b8cfcb28ae354d0a8531dbb6cc7d6007d21e22ac5462ebdc7b17b3`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 02:46:24 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 24 Jun 2026 02:46:24 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Wed, 24 Jun 2026 02:46:30 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:46:33 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 24 Jun 2026 02:46:33 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 24 Jun 2026 02:46:38 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt-key list;     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:46:38 GMT
ENV COUCHDB_VERSION=3.4.3
# Wed, 24 Jun 2026 02:46:38 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 24 Jun 2026 02:46:55 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages             couchdb="$COUCHDB_VERSION"~bookworm     ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Wed, 24 Jun 2026 02:46:56 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Wed, 24 Jun 2026 02:46:56 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Wed, 24 Jun 2026 02:46:56 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 24 Jun 2026 02:46:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Wed, 24 Jun 2026 02:46:56 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 24 Jun 2026 02:46:56 GMT
VOLUME [/opt/couchdb/data]
# Wed, 24 Jun 2026 02:46:56 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Wed, 24 Jun 2026 02:46:56 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:e9aeeda7513dde59469463716e9e14f36210d6570c3cad5e5440b32d941733cd`  
		Last Modified: Wed, 24 Jun 2026 00:27:21 GMT  
		Size: 26.9 MB (26893585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6c74692a8c1f4356abe88429f627fd6b302f6f73952b95d71b04569b79dc6c6`  
		Last Modified: Wed, 24 Jun 2026 02:47:16 GMT  
		Size: 1.2 KB (1183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a44e034a2e5b15aeb96ce5473cdf2d322c1c3da7424bfa8a501a5a829b686b1`  
		Last Modified: Wed, 24 Jun 2026 02:47:17 GMT  
		Size: 7.4 MB (7400241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a512d7ee7f021226d1a5f24e929b0f155040e189302657566cca875db2956ba`  
		Last Modified: Wed, 24 Jun 2026 02:47:16 GMT  
		Size: 372.2 KB (372163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fed82bc36abb2bd092c5c734e96c3302b9454f639465572e632ebd3a84d0115c`  
		Last Modified: Wed, 24 Jun 2026 02:47:16 GMT  
		Size: 76.6 KB (76561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddd9d835f4fab2a7b392bf2531caea1b576fe8f461bce2784bcc35599124cbf2`  
		Last Modified: Wed, 24 Jun 2026 02:47:17 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:426265479a0f717d0e9bf0518216548ebbc6e250a12f07f84b634f0eb5752aee`  
		Last Modified: Wed, 24 Jun 2026 02:47:20 GMT  
		Size: 101.1 MB (101056797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83d444136e52d33b379d93d2cc02b4e14a558181d3b9bcd843f9e6fe84dfab55`  
		Last Modified: Wed, 24 Jun 2026 02:47:18 GMT  
		Size: 378.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af920742abefb95b12c6fbb530efe765248948f0e620e08fbd59690e9f25a0d2`  
		Last Modified: Wed, 24 Jun 2026 02:47:18 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d86e99b1478db4f20a19804afb135333f7ab7bc313a4cd224e8de4d39e267ed`  
		Last Modified: Wed, 24 Jun 2026 02:47:19 GMT  
		Size: 2.2 KB (2226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:663ff4ede45caf34f6004d8566ba4abfbea9253226272723ae64888bdafb7abe`  
		Last Modified: Wed, 24 Jun 2026 02:47:19 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4.3` - unknown; unknown

```console
$ docker pull couchdb@sha256:2fc360f7ad0f86472acf7286b2b4e54e45f730dfc9c9062c1094e191aad9e253
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4152775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28a69249aa1ff2a90be0fc30a76bfd2ed3ffcdcae0b05a91f55bc89be9adae8b`

```dockerfile
```

-	Layers:
	-	`sha256:075451d8e58ce370d95c940192f581b11e58f0ac036932a6921d2bf4ac912455`  
		Last Modified: Wed, 24 Jun 2026 02:47:16 GMT  
		Size: 4.1 MB (4121627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c35576e828da9763b750c1a355f0428ae7eb253bc7c242491801f9203c0f2b4`  
		Last Modified: Wed, 24 Jun 2026 02:47:16 GMT  
		Size: 31.1 KB (31148 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.4.3-nouveau`

```console
$ docker pull couchdb@sha256:b4815578c97ba57a2b8303d15f9b5b17970935617b2d594f4f6f373c3335b8c4
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
$ docker pull couchdb@sha256:2f251695136cbb6735b3e195a3bab1127b13b0e8710bad39ef27508666d9f0aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.4 MB (155443657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2975e631cdb54c26d3ebab103126963651fdd9b0e7fde7f2eada08956bc7d81f`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:45:32 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 24 Jun 2026 01:45:32 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Wed, 24 Jun 2026 01:45:39 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:46 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-17-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:49 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 24 Jun 2026 01:45:49 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 24 Jun 2026 01:45:53 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt-key list;    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:53 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ bookworm main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 24 Jun 2026 01:45:58 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages --no-install-recommends             couchdb-nouveau=3.4.3~bookworm;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Wed, 24 Jun 2026 01:45:58 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Wed, 24 Jun 2026 01:45:58 GMT
VOLUME [/opt/nouveau/data]
# Wed, 24 Jun 2026 01:45:58 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Wed, 24 Jun 2026 01:45:58 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:521c24b6ce6ee1717c396669b0b31f219f196b8ae1808794a608188609902b6d`  
		Last Modified: Wed, 24 Jun 2026 01:46:14 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eca378e46b6999a8ccb73a520f186772840f56ed550aa0ddeb7be85bf3f91276`  
		Last Modified: Wed, 24 Jun 2026 01:46:14 GMT  
		Size: 7.7 MB (7695553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f468a2f17d0696c5056857cba74db5e74595bec6276942cb282d57c1d559b28`  
		Last Modified: Wed, 24 Jun 2026 01:46:16 GMT  
		Size: 76.8 MB (76793406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4557430451bd3914a75738f21196bfced787420f78fed484bf47e828de1e88c4`  
		Last Modified: Wed, 24 Jun 2026 01:46:14 GMT  
		Size: 392.8 KB (392801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a3ad80377e9251007fc729c81a8173596d15f6f9f6023196e440a0593b5a680`  
		Last Modified: Wed, 24 Jun 2026 01:46:15 GMT  
		Size: 99.5 KB (99531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2240fdf4a1d8899fb7e547663566289c9ef7696603084e719b81e07ac44b267c`  
		Last Modified: Wed, 24 Jun 2026 01:46:15 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22fe4e492fe44fd32f1b56d663dcf866ee42fbb3563ba33bb50b07d2c7b26ef7`  
		Last Modified: Wed, 24 Jun 2026 01:46:17 GMT  
		Size: 42.3 MB (42338066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed4384862444dd8af9bfbd1da7cea122c9faae782afdb58b4c35308bed0f900b`  
		Last Modified: Wed, 24 Jun 2026 01:46:16 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4.3-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:03a9282b880bf10dcaf5e8bf6c101ebd382681ea8958125b2f249ae8a9e97047
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3681724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0dfb06876ae5bad10252876674413417a073003a52f52e9ace022da1e3b8ad9`

```dockerfile
```

-	Layers:
	-	`sha256:724fe05d6b339d5d9ea1ac9c9fb3d25fdfbd444087dd2bdb05894ea96acd8565`  
		Last Modified: Wed, 24 Jun 2026 01:46:14 GMT  
		Size: 3.7 MB (3657339 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7db9801e984309cd27374fe144be58749aa2d531118de86de16f9dd3f565301e`  
		Last Modified: Wed, 24 Jun 2026 01:46:13 GMT  
		Size: 24.4 KB (24385 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.4.3-nouveau` - linux; s390x

```console
$ docker pull couchdb@sha256:5da3f6a6a5db3f9bd7d1cfea6f5c66773f8d777aa4b480743794afc00c2c921b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.2 MB (150178075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8bf166913572b785e904d38e406ef9d27585473fb6a7d757a3f4b4927a47f15`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 02:46:31 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 24 Jun 2026 02:46:31 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Wed, 24 Jun 2026 02:46:37 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:46:45 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-17-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:46:48 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 24 Jun 2026 02:46:48 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 24 Jun 2026 02:46:52 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt-key list;    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:46:52 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ bookworm main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 24 Jun 2026 02:47:00 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages --no-install-recommends             couchdb-nouveau=3.4.3~bookworm;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Wed, 24 Jun 2026 02:47:00 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Wed, 24 Jun 2026 02:47:00 GMT
VOLUME [/opt/nouveau/data]
# Wed, 24 Jun 2026 02:47:00 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Wed, 24 Jun 2026 02:47:00 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:e9aeeda7513dde59469463716e9e14f36210d6570c3cad5e5440b32d941733cd`  
		Last Modified: Wed, 24 Jun 2026 00:27:21 GMT  
		Size: 26.9 MB (26893585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:183c4c35f9774ecad1c3bad431f618287d5d25f795c2abdf32ebcab26128efef`  
		Last Modified: Wed, 24 Jun 2026 02:47:23 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:059ff1c6e29c8344a8a59c5641838b7636b539ede46fa83ae2c13dfcb1e4958e`  
		Last Modified: Wed, 24 Jun 2026 02:47:23 GMT  
		Size: 7.4 MB (7400193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd709311124fab46ec7c9282d0c30a5d6a479ca082c744135d182ee9d81b1748`  
		Last Modified: Wed, 24 Jun 2026 02:47:24 GMT  
		Size: 73.2 MB (73225361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87813195098071fe74d5d1ac69a2dcca169b13019de131fa6260734e740d5068`  
		Last Modified: Wed, 24 Jun 2026 02:47:23 GMT  
		Size: 394.5 KB (394518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abdcf0dde2ac53ff144117390f118341c362a4a599d223d8f3f361d7bf6e4969`  
		Last Modified: Wed, 24 Jun 2026 02:47:24 GMT  
		Size: 99.7 KB (99687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c98f10795ec0711c6fb1c1c2d9aaf02a8135b77ce56fb1448fda05b4d13a7717`  
		Last Modified: Wed, 24 Jun 2026 02:47:24 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6aaabca7f1103b56ac333a0be1240140af54cd0ed33fc57c0ad749c6b3adc633`  
		Last Modified: Wed, 24 Jun 2026 02:47:25 GMT  
		Size: 42.2 MB (42162856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b27e6fcecf7b713c53863d2b5bd48f86d03d5b195fa8e6051741d0bce49c3d2`  
		Last Modified: Wed, 24 Jun 2026 02:47:25 GMT  
		Size: 415.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4.3-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:6ff4682ef484e2f8e1ebb2ce54f44b3cebd2895336a188c5b714fc0d61c440cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3673419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3de6284d11fb18093a35538214885a90f057e29e3ca45e48caca07259686fb31`

```dockerfile
```

-	Layers:
	-	`sha256:be79239d219b209b9d2f18f33d324866a220b298b9ccbea8d10047d5f8923441`  
		Last Modified: Wed, 24 Jun 2026 02:47:23 GMT  
		Size: 3.6 MB (3649204 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d63773d4b69bde66025c54ba37e5906bed3b59835ac891ec8f2c451730179eb`  
		Last Modified: Wed, 24 Jun 2026 02:47:23 GMT  
		Size: 24.2 KB (24215 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.5`

```console
$ docker pull couchdb@sha256:d6aa9d04c993cade78e4ba5d967bbe88cc00c36836cd3c0dfcd85b585b95f4cd
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
$ docker pull couchdb@sha256:3beeeddf8bd41e3d3175a81706041970931a6b9648ebe7cf0d83592dc9008cb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.6 MB (148610960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2709151b5d31ef9083ce177249e3dc839908ce169530879c0dd33f6e6291a9e0`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:45:14 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 24 Jun 2026 01:45:14 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Wed, 24 Jun 2026 01:45:21 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:25 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 24 Jun 2026 01:45:25 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 24 Jun 2026 01:45:32 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:32 GMT
ENV COUCHDB_VERSION=3.5.2.1
# Wed, 24 Jun 2026 01:45:32 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 24 Jun 2026 01:45:46 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Wed, 24 Jun 2026 01:45:46 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Wed, 24 Jun 2026 01:45:46 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Wed, 24 Jun 2026 01:45:46 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 24 Jun 2026 01:45:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Wed, 24 Jun 2026 01:45:46 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 24 Jun 2026 01:45:46 GMT
VOLUME [/opt/couchdb/data]
# Wed, 24 Jun 2026 01:45:46 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Wed, 24 Jun 2026 01:45:46 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c34eafb21ffe87f9a1c7c17f11fcd3e474ff4be443d91b71069650935b45a49`  
		Last Modified: Wed, 24 Jun 2026 01:46:00 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c374173332b5fe10199e92b26dc196540789ebd47eac3a886163b9464183886`  
		Last Modified: Wed, 24 Jun 2026 01:46:00 GMT  
		Size: 7.3 MB (7261195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:297cb5e063f5f7b21b877726abd1f8405924db8308e3dcacee0c9e445b5ca12b`  
		Last Modified: Wed, 24 Jun 2026 01:45:59 GMT  
		Size: 382.6 KB (382569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8abf1699b7f712532e1c52400041c3cac70d15748da6008be064fd8079c6fd40`  
		Last Modified: Wed, 24 Jun 2026 01:46:00 GMT  
		Size: 338.8 KB (338754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1f72ba21251a958d30a6b73bc738d047432036c794fc833b7b0f21bb77e23d5`  
		Last Modified: Wed, 24 Jun 2026 01:46:01 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ee9883bcd6f5199cd1e4f0fb706d8bf2f12edf32903a1130ba9db387e5e7635`  
		Last Modified: Wed, 24 Jun 2026 01:46:04 GMT  
		Size: 110.5 MB (110474451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a15b9c4b1dd4da36e2a55a7d99596e53fb6b9e49556011dec18fa7279a5675d`  
		Last Modified: Wed, 24 Jun 2026 01:46:01 GMT  
		Size: 381.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b0296e07dd1255baf3497c9bec73923346caa0078781774be87398df60c049d`  
		Last Modified: Wed, 24 Jun 2026 01:46:02 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bbdfe6ea98ff36a0183910c32e21cc4c24ae6daec0a796c79764c7003ff21c0`  
		Last Modified: Wed, 24 Jun 2026 01:46:02 GMT  
		Size: 2.2 KB (2227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87768653aa52520d0148009b743d1f4bb4208d3823d82c5c4729a8675d0bbb73`  
		Last Modified: Wed, 24 Jun 2026 01:46:03 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5` - unknown; unknown

```console
$ docker pull couchdb@sha256:2e3aea75ac902ad62649f52dad674240011a18bc5d8a35c6efaa8b78a22ef191
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4212579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cff6de0fe65d5f070e7419be4529463bd15fd4ebe411a60aa94143041e2865a`

```dockerfile
```

-	Layers:
	-	`sha256:423f4c76bf94fe0a53f7180c4dccfcac2815cf31624db583c1b3f6aaab5f7f75`  
		Last Modified: Wed, 24 Jun 2026 01:46:00 GMT  
		Size: 4.2 MB (4180697 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:391f250f12f470c2d1e19307a7d7020d0db34c3ca6e546585ce0b3d112b9762f`  
		Last Modified: Wed, 24 Jun 2026 01:46:00 GMT  
		Size: 31.9 KB (31882 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.5-nouveau`

```console
$ docker pull couchdb@sha256:61f3c4286ad6f8fcdfb25923fadb5c819183755b4081bcdaf4d07e82283dbe66
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
$ docker pull couchdb@sha256:88f01a2895ccbc2ad4a4809d08a4ab34bada1cf459b90e408f677594febdc495
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150060849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17fe359bdea2848ec50aa9ef2d607cc2581d2ad6ad03913fb00c0e3620979107`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:45:19 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 24 Jun 2026 01:45:19 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Wed, 24 Jun 2026 01:45:27 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:33 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:37 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 24 Jun 2026 01:45:37 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 24 Jun 2026 01:45:43 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:43 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 24 Jun 2026 01:45:49 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends couchdb-nouveau=3.5.2.1~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Wed, 24 Jun 2026 01:45:49 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Wed, 24 Jun 2026 01:45:49 GMT
VOLUME [/opt/nouveau/data]
# Wed, 24 Jun 2026 01:45:49 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Wed, 24 Jun 2026 01:45:49 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afed3b15d19dc54098462361bd70be3167d1b4a2056095f6ea6b457239e0404e`  
		Last Modified: Wed, 24 Jun 2026 01:46:04 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c2154a32b22e91cd532570515930309f7dc6ac5e11a359590effab20c7e5c83`  
		Last Modified: Wed, 24 Jun 2026 01:46:04 GMT  
		Size: 7.3 MB (7261182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77072d82cc95086e1b40e56a00e632fcd1a25c76b2fcf3054b4b65fde807b15d`  
		Last Modified: Wed, 24 Jun 2026 01:46:05 GMT  
		Size: 69.2 MB (69179776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df4c068d6f2d2e441939047e06caf8a0e5fbd716b233ae63fc3790ba33a01ee6`  
		Last Modified: Wed, 24 Jun 2026 01:46:04 GMT  
		Size: 390.3 KB (390257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00028a2c864bb7e8a1ac6b0b2696419d4a70a5e52c8e5504d8a301637f3e486b`  
		Last Modified: Wed, 24 Jun 2026 01:46:05 GMT  
		Size: 347.4 KB (347413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3296c6540ed840d3914cb6e0e5a60c4b39e81c98d16e191429647085082c4888`  
		Last Modified: Wed, 24 Jun 2026 01:46:05 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adaa48dc2c10bbb2e9cab0e15f705a1b59f9b434758e23de5f25d1c9c0e2315a`  
		Last Modified: Wed, 24 Jun 2026 01:46:07 GMT  
		Size: 42.7 MB (42731788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dade987fdbe20973e04a762797ca68cc6ef72feef621a5ce4f9df4d2c7ca6768`  
		Last Modified: Wed, 24 Jun 2026 01:46:06 GMT  
		Size: 421.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:49d26e1d18ca48370c6d10add80d541441bec9cb9843f3ad085e6e726ceb0abc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3388017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c3ed08f5407b481c2ccde6de9e4913fcd1fcd1d33d15e859e376f49659e5b5a`

```dockerfile
```

-	Layers:
	-	`sha256:6e7e4636b53e3343add9560359cbf01f9b18700b04aa67e3431e1fa07bec70ce`  
		Last Modified: Wed, 24 Jun 2026 01:46:04 GMT  
		Size: 3.4 MB (3363308 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d42543e31bac53348e2864f384be3c0cb44ee069ec0cf0e34cbf29f4de874f7`  
		Last Modified: Wed, 24 Jun 2026 01:46:04 GMT  
		Size: 24.7 KB (24709 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.5.2`

```console
$ docker pull couchdb@sha256:d6aa9d04c993cade78e4ba5d967bbe88cc00c36836cd3c0dfcd85b585b95f4cd
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
$ docker pull couchdb@sha256:3beeeddf8bd41e3d3175a81706041970931a6b9648ebe7cf0d83592dc9008cb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.6 MB (148610960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2709151b5d31ef9083ce177249e3dc839908ce169530879c0dd33f6e6291a9e0`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:45:14 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 24 Jun 2026 01:45:14 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Wed, 24 Jun 2026 01:45:21 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:25 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 24 Jun 2026 01:45:25 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 24 Jun 2026 01:45:32 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:32 GMT
ENV COUCHDB_VERSION=3.5.2.1
# Wed, 24 Jun 2026 01:45:32 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 24 Jun 2026 01:45:46 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Wed, 24 Jun 2026 01:45:46 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Wed, 24 Jun 2026 01:45:46 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Wed, 24 Jun 2026 01:45:46 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 24 Jun 2026 01:45:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Wed, 24 Jun 2026 01:45:46 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 24 Jun 2026 01:45:46 GMT
VOLUME [/opt/couchdb/data]
# Wed, 24 Jun 2026 01:45:46 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Wed, 24 Jun 2026 01:45:46 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c34eafb21ffe87f9a1c7c17f11fcd3e474ff4be443d91b71069650935b45a49`  
		Last Modified: Wed, 24 Jun 2026 01:46:00 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c374173332b5fe10199e92b26dc196540789ebd47eac3a886163b9464183886`  
		Last Modified: Wed, 24 Jun 2026 01:46:00 GMT  
		Size: 7.3 MB (7261195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:297cb5e063f5f7b21b877726abd1f8405924db8308e3dcacee0c9e445b5ca12b`  
		Last Modified: Wed, 24 Jun 2026 01:45:59 GMT  
		Size: 382.6 KB (382569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8abf1699b7f712532e1c52400041c3cac70d15748da6008be064fd8079c6fd40`  
		Last Modified: Wed, 24 Jun 2026 01:46:00 GMT  
		Size: 338.8 KB (338754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1f72ba21251a958d30a6b73bc738d047432036c794fc833b7b0f21bb77e23d5`  
		Last Modified: Wed, 24 Jun 2026 01:46:01 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ee9883bcd6f5199cd1e4f0fb706d8bf2f12edf32903a1130ba9db387e5e7635`  
		Last Modified: Wed, 24 Jun 2026 01:46:04 GMT  
		Size: 110.5 MB (110474451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a15b9c4b1dd4da36e2a55a7d99596e53fb6b9e49556011dec18fa7279a5675d`  
		Last Modified: Wed, 24 Jun 2026 01:46:01 GMT  
		Size: 381.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b0296e07dd1255baf3497c9bec73923346caa0078781774be87398df60c049d`  
		Last Modified: Wed, 24 Jun 2026 01:46:02 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bbdfe6ea98ff36a0183910c32e21cc4c24ae6daec0a796c79764c7003ff21c0`  
		Last Modified: Wed, 24 Jun 2026 01:46:02 GMT  
		Size: 2.2 KB (2227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87768653aa52520d0148009b743d1f4bb4208d3823d82c5c4729a8675d0bbb73`  
		Last Modified: Wed, 24 Jun 2026 01:46:03 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5.2` - unknown; unknown

```console
$ docker pull couchdb@sha256:2e3aea75ac902ad62649f52dad674240011a18bc5d8a35c6efaa8b78a22ef191
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4212579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cff6de0fe65d5f070e7419be4529463bd15fd4ebe411a60aa94143041e2865a`

```dockerfile
```

-	Layers:
	-	`sha256:423f4c76bf94fe0a53f7180c4dccfcac2815cf31624db583c1b3f6aaab5f7f75`  
		Last Modified: Wed, 24 Jun 2026 01:46:00 GMT  
		Size: 4.2 MB (4180697 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:391f250f12f470c2d1e19307a7d7020d0db34c3ca6e546585ce0b3d112b9762f`  
		Last Modified: Wed, 24 Jun 2026 01:46:00 GMT  
		Size: 31.9 KB (31882 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.5.2-nouveau`

```console
$ docker pull couchdb@sha256:61f3c4286ad6f8fcdfb25923fadb5c819183755b4081bcdaf4d07e82283dbe66
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
$ docker pull couchdb@sha256:88f01a2895ccbc2ad4a4809d08a4ab34bada1cf459b90e408f677594febdc495
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150060849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17fe359bdea2848ec50aa9ef2d607cc2581d2ad6ad03913fb00c0e3620979107`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:45:19 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 24 Jun 2026 01:45:19 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Wed, 24 Jun 2026 01:45:27 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:33 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:37 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 24 Jun 2026 01:45:37 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 24 Jun 2026 01:45:43 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:43 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 24 Jun 2026 01:45:49 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends couchdb-nouveau=3.5.2.1~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Wed, 24 Jun 2026 01:45:49 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Wed, 24 Jun 2026 01:45:49 GMT
VOLUME [/opt/nouveau/data]
# Wed, 24 Jun 2026 01:45:49 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Wed, 24 Jun 2026 01:45:49 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afed3b15d19dc54098462361bd70be3167d1b4a2056095f6ea6b457239e0404e`  
		Last Modified: Wed, 24 Jun 2026 01:46:04 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c2154a32b22e91cd532570515930309f7dc6ac5e11a359590effab20c7e5c83`  
		Last Modified: Wed, 24 Jun 2026 01:46:04 GMT  
		Size: 7.3 MB (7261182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77072d82cc95086e1b40e56a00e632fcd1a25c76b2fcf3054b4b65fde807b15d`  
		Last Modified: Wed, 24 Jun 2026 01:46:05 GMT  
		Size: 69.2 MB (69179776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df4c068d6f2d2e441939047e06caf8a0e5fbd716b233ae63fc3790ba33a01ee6`  
		Last Modified: Wed, 24 Jun 2026 01:46:04 GMT  
		Size: 390.3 KB (390257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00028a2c864bb7e8a1ac6b0b2696419d4a70a5e52c8e5504d8a301637f3e486b`  
		Last Modified: Wed, 24 Jun 2026 01:46:05 GMT  
		Size: 347.4 KB (347413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3296c6540ed840d3914cb6e0e5a60c4b39e81c98d16e191429647085082c4888`  
		Last Modified: Wed, 24 Jun 2026 01:46:05 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adaa48dc2c10bbb2e9cab0e15f705a1b59f9b434758e23de5f25d1c9c0e2315a`  
		Last Modified: Wed, 24 Jun 2026 01:46:07 GMT  
		Size: 42.7 MB (42731788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dade987fdbe20973e04a762797ca68cc6ef72feef621a5ce4f9df4d2c7ca6768`  
		Last Modified: Wed, 24 Jun 2026 01:46:06 GMT  
		Size: 421.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5.2-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:49d26e1d18ca48370c6d10add80d541441bec9cb9843f3ad085e6e726ceb0abc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3388017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c3ed08f5407b481c2ccde6de9e4913fcd1fcd1d33d15e859e376f49659e5b5a`

```dockerfile
```

-	Layers:
	-	`sha256:6e7e4636b53e3343add9560359cbf01f9b18700b04aa67e3431e1fa07bec70ce`  
		Last Modified: Wed, 24 Jun 2026 01:46:04 GMT  
		Size: 3.4 MB (3363308 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d42543e31bac53348e2864f384be3c0cb44ee069ec0cf0e34cbf29f4de874f7`  
		Last Modified: Wed, 24 Jun 2026 01:46:04 GMT  
		Size: 24.7 KB (24709 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.5.2.1`

```console
$ docker pull couchdb@sha256:d6aa9d04c993cade78e4ba5d967bbe88cc00c36836cd3c0dfcd85b585b95f4cd
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
$ docker pull couchdb@sha256:3beeeddf8bd41e3d3175a81706041970931a6b9648ebe7cf0d83592dc9008cb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.6 MB (148610960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2709151b5d31ef9083ce177249e3dc839908ce169530879c0dd33f6e6291a9e0`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:45:14 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 24 Jun 2026 01:45:14 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Wed, 24 Jun 2026 01:45:21 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:25 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 24 Jun 2026 01:45:25 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 24 Jun 2026 01:45:32 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:32 GMT
ENV COUCHDB_VERSION=3.5.2.1
# Wed, 24 Jun 2026 01:45:32 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 24 Jun 2026 01:45:46 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Wed, 24 Jun 2026 01:45:46 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Wed, 24 Jun 2026 01:45:46 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Wed, 24 Jun 2026 01:45:46 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 24 Jun 2026 01:45:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Wed, 24 Jun 2026 01:45:46 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 24 Jun 2026 01:45:46 GMT
VOLUME [/opt/couchdb/data]
# Wed, 24 Jun 2026 01:45:46 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Wed, 24 Jun 2026 01:45:46 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c34eafb21ffe87f9a1c7c17f11fcd3e474ff4be443d91b71069650935b45a49`  
		Last Modified: Wed, 24 Jun 2026 01:46:00 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c374173332b5fe10199e92b26dc196540789ebd47eac3a886163b9464183886`  
		Last Modified: Wed, 24 Jun 2026 01:46:00 GMT  
		Size: 7.3 MB (7261195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:297cb5e063f5f7b21b877726abd1f8405924db8308e3dcacee0c9e445b5ca12b`  
		Last Modified: Wed, 24 Jun 2026 01:45:59 GMT  
		Size: 382.6 KB (382569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8abf1699b7f712532e1c52400041c3cac70d15748da6008be064fd8079c6fd40`  
		Last Modified: Wed, 24 Jun 2026 01:46:00 GMT  
		Size: 338.8 KB (338754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1f72ba21251a958d30a6b73bc738d047432036c794fc833b7b0f21bb77e23d5`  
		Last Modified: Wed, 24 Jun 2026 01:46:01 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ee9883bcd6f5199cd1e4f0fb706d8bf2f12edf32903a1130ba9db387e5e7635`  
		Last Modified: Wed, 24 Jun 2026 01:46:04 GMT  
		Size: 110.5 MB (110474451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a15b9c4b1dd4da36e2a55a7d99596e53fb6b9e49556011dec18fa7279a5675d`  
		Last Modified: Wed, 24 Jun 2026 01:46:01 GMT  
		Size: 381.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b0296e07dd1255baf3497c9bec73923346caa0078781774be87398df60c049d`  
		Last Modified: Wed, 24 Jun 2026 01:46:02 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bbdfe6ea98ff36a0183910c32e21cc4c24ae6daec0a796c79764c7003ff21c0`  
		Last Modified: Wed, 24 Jun 2026 01:46:02 GMT  
		Size: 2.2 KB (2227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87768653aa52520d0148009b743d1f4bb4208d3823d82c5c4729a8675d0bbb73`  
		Last Modified: Wed, 24 Jun 2026 01:46:03 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5.2.1` - unknown; unknown

```console
$ docker pull couchdb@sha256:2e3aea75ac902ad62649f52dad674240011a18bc5d8a35c6efaa8b78a22ef191
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4212579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cff6de0fe65d5f070e7419be4529463bd15fd4ebe411a60aa94143041e2865a`

```dockerfile
```

-	Layers:
	-	`sha256:423f4c76bf94fe0a53f7180c4dccfcac2815cf31624db583c1b3f6aaab5f7f75`  
		Last Modified: Wed, 24 Jun 2026 01:46:00 GMT  
		Size: 4.2 MB (4180697 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:391f250f12f470c2d1e19307a7d7020d0db34c3ca6e546585ce0b3d112b9762f`  
		Last Modified: Wed, 24 Jun 2026 01:46:00 GMT  
		Size: 31.9 KB (31882 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.5.2.1-nouveau`

```console
$ docker pull couchdb@sha256:61f3c4286ad6f8fcdfb25923fadb5c819183755b4081bcdaf4d07e82283dbe66
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
$ docker pull couchdb@sha256:88f01a2895ccbc2ad4a4809d08a4ab34bada1cf459b90e408f677594febdc495
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150060849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17fe359bdea2848ec50aa9ef2d607cc2581d2ad6ad03913fb00c0e3620979107`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:45:19 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 24 Jun 2026 01:45:19 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Wed, 24 Jun 2026 01:45:27 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:33 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:37 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 24 Jun 2026 01:45:37 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 24 Jun 2026 01:45:43 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:43 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 24 Jun 2026 01:45:49 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends couchdb-nouveau=3.5.2.1~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Wed, 24 Jun 2026 01:45:49 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Wed, 24 Jun 2026 01:45:49 GMT
VOLUME [/opt/nouveau/data]
# Wed, 24 Jun 2026 01:45:49 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Wed, 24 Jun 2026 01:45:49 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afed3b15d19dc54098462361bd70be3167d1b4a2056095f6ea6b457239e0404e`  
		Last Modified: Wed, 24 Jun 2026 01:46:04 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c2154a32b22e91cd532570515930309f7dc6ac5e11a359590effab20c7e5c83`  
		Last Modified: Wed, 24 Jun 2026 01:46:04 GMT  
		Size: 7.3 MB (7261182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77072d82cc95086e1b40e56a00e632fcd1a25c76b2fcf3054b4b65fde807b15d`  
		Last Modified: Wed, 24 Jun 2026 01:46:05 GMT  
		Size: 69.2 MB (69179776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df4c068d6f2d2e441939047e06caf8a0e5fbd716b233ae63fc3790ba33a01ee6`  
		Last Modified: Wed, 24 Jun 2026 01:46:04 GMT  
		Size: 390.3 KB (390257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00028a2c864bb7e8a1ac6b0b2696419d4a70a5e52c8e5504d8a301637f3e486b`  
		Last Modified: Wed, 24 Jun 2026 01:46:05 GMT  
		Size: 347.4 KB (347413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3296c6540ed840d3914cb6e0e5a60c4b39e81c98d16e191429647085082c4888`  
		Last Modified: Wed, 24 Jun 2026 01:46:05 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adaa48dc2c10bbb2e9cab0e15f705a1b59f9b434758e23de5f25d1c9c0e2315a`  
		Last Modified: Wed, 24 Jun 2026 01:46:07 GMT  
		Size: 42.7 MB (42731788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dade987fdbe20973e04a762797ca68cc6ef72feef621a5ce4f9df4d2c7ca6768`  
		Last Modified: Wed, 24 Jun 2026 01:46:06 GMT  
		Size: 421.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5.2.1-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:49d26e1d18ca48370c6d10add80d541441bec9cb9843f3ad085e6e726ceb0abc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3388017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c3ed08f5407b481c2ccde6de9e4913fcd1fcd1d33d15e859e376f49659e5b5a`

```dockerfile
```

-	Layers:
	-	`sha256:6e7e4636b53e3343add9560359cbf01f9b18700b04aa67e3431e1fa07bec70ce`  
		Last Modified: Wed, 24 Jun 2026 01:46:04 GMT  
		Size: 3.4 MB (3363308 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d42543e31bac53348e2864f384be3c0cb44ee069ec0cf0e34cbf29f4de874f7`  
		Last Modified: Wed, 24 Jun 2026 01:46:04 GMT  
		Size: 24.7 KB (24709 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:latest`

```console
$ docker pull couchdb@sha256:d6aa9d04c993cade78e4ba5d967bbe88cc00c36836cd3c0dfcd85b585b95f4cd
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
$ docker pull couchdb@sha256:3beeeddf8bd41e3d3175a81706041970931a6b9648ebe7cf0d83592dc9008cb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.6 MB (148610960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2709151b5d31ef9083ce177249e3dc839908ce169530879c0dd33f6e6291a9e0`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:45:14 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 24 Jun 2026 01:45:14 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Wed, 24 Jun 2026 01:45:21 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:25 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 24 Jun 2026 01:45:25 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 24 Jun 2026 01:45:32 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:32 GMT
ENV COUCHDB_VERSION=3.5.2.1
# Wed, 24 Jun 2026 01:45:32 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 24 Jun 2026 01:45:46 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Wed, 24 Jun 2026 01:45:46 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Wed, 24 Jun 2026 01:45:46 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Wed, 24 Jun 2026 01:45:46 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 24 Jun 2026 01:45:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Wed, 24 Jun 2026 01:45:46 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 24 Jun 2026 01:45:46 GMT
VOLUME [/opt/couchdb/data]
# Wed, 24 Jun 2026 01:45:46 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Wed, 24 Jun 2026 01:45:46 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c34eafb21ffe87f9a1c7c17f11fcd3e474ff4be443d91b71069650935b45a49`  
		Last Modified: Wed, 24 Jun 2026 01:46:00 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c374173332b5fe10199e92b26dc196540789ebd47eac3a886163b9464183886`  
		Last Modified: Wed, 24 Jun 2026 01:46:00 GMT  
		Size: 7.3 MB (7261195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:297cb5e063f5f7b21b877726abd1f8405924db8308e3dcacee0c9e445b5ca12b`  
		Last Modified: Wed, 24 Jun 2026 01:45:59 GMT  
		Size: 382.6 KB (382569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8abf1699b7f712532e1c52400041c3cac70d15748da6008be064fd8079c6fd40`  
		Last Modified: Wed, 24 Jun 2026 01:46:00 GMT  
		Size: 338.8 KB (338754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1f72ba21251a958d30a6b73bc738d047432036c794fc833b7b0f21bb77e23d5`  
		Last Modified: Wed, 24 Jun 2026 01:46:01 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ee9883bcd6f5199cd1e4f0fb706d8bf2f12edf32903a1130ba9db387e5e7635`  
		Last Modified: Wed, 24 Jun 2026 01:46:04 GMT  
		Size: 110.5 MB (110474451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a15b9c4b1dd4da36e2a55a7d99596e53fb6b9e49556011dec18fa7279a5675d`  
		Last Modified: Wed, 24 Jun 2026 01:46:01 GMT  
		Size: 381.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b0296e07dd1255baf3497c9bec73923346caa0078781774be87398df60c049d`  
		Last Modified: Wed, 24 Jun 2026 01:46:02 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bbdfe6ea98ff36a0183910c32e21cc4c24ae6daec0a796c79764c7003ff21c0`  
		Last Modified: Wed, 24 Jun 2026 01:46:02 GMT  
		Size: 2.2 KB (2227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87768653aa52520d0148009b743d1f4bb4208d3823d82c5c4729a8675d0bbb73`  
		Last Modified: Wed, 24 Jun 2026 01:46:03 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:latest` - unknown; unknown

```console
$ docker pull couchdb@sha256:2e3aea75ac902ad62649f52dad674240011a18bc5d8a35c6efaa8b78a22ef191
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4212579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cff6de0fe65d5f070e7419be4529463bd15fd4ebe411a60aa94143041e2865a`

```dockerfile
```

-	Layers:
	-	`sha256:423f4c76bf94fe0a53f7180c4dccfcac2815cf31624db583c1b3f6aaab5f7f75`  
		Last Modified: Wed, 24 Jun 2026 01:46:00 GMT  
		Size: 4.2 MB (4180697 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:391f250f12f470c2d1e19307a7d7020d0db34c3ca6e546585ce0b3d112b9762f`  
		Last Modified: Wed, 24 Jun 2026 01:46:00 GMT  
		Size: 31.9 KB (31882 bytes)  
		MIME: application/vnd.in-toto+json
