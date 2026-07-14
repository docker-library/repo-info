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
