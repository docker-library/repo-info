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
$ docker pull couchdb@sha256:8cf5f8442585c346d2717ff0ad95605731d2f19f67b8367840baa8d3b24ebc31
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3` - linux; amd64

```console
$ docker pull couchdb@sha256:994898fe5a25a5f639e0e8a49b910c598ef6d2e784bbd872065c9fdca0af3c55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.9 MB (148890235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a90491e132a83c53d7120d6cf08d41d4bca5991b3fb080e788a4196a03bceb6`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:44:57 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Sat, 19 Sep 2026 00:44:57 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Sat, 19 Sep 2026 00:45:03 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:45:06 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Sat, 19 Sep 2026 00:45:06 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Sat, 19 Sep 2026 00:45:11 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:45:11 GMT
ENV COUCHDB_VERSION=3.5.2.1
# Sat, 19 Sep 2026 00:45:11 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Sat, 19 Sep 2026 00:45:25 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Sat, 19 Sep 2026 00:45:25 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Sat, 19 Sep 2026 00:45:25 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Sat, 19 Sep 2026 00:45:25 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Sat, 19 Sep 2026 00:45:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Sat, 19 Sep 2026 00:45:25 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:45:25 GMT
VOLUME [/opt/couchdb/data]
# Sat, 19 Sep 2026 00:45:25 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Sat, 19 Sep 2026 00:45:25 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdbc3d65b45c1381fcf70c0efd0a821298031ef37e0a422b9e577e86d3fa7662`  
		Last Modified: Sat, 19 Sep 2026 00:45:38 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1922b911fe65e24d5946eb855011359955ceda233eba2dc1698d9b5484b8900`  
		Last Modified: Sat, 19 Sep 2026 00:45:38 GMT  
		Size: 7.5 MB (7492113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d46f13840333436ea57f7807d8c9ac4974c0241aca1c620f45b05f9ec1a53b2f`  
		Last Modified: Sat, 19 Sep 2026 00:45:38 GMT  
		Size: 417.5 KB (417463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5765f4a8ff1491b49b28dfd70cf740ae58d3b6d33c23b0a44536a367a5fcf1c`  
		Last Modified: Sat, 19 Sep 2026 00:45:38 GMT  
		Size: 338.6 KB (338590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abf90134573a132fbfc8b1d52aa1624480904697ab1ca482f644688caad763da`  
		Last Modified: Sat, 19 Sep 2026 00:45:39 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc20942c62ada2bbeb31e0b909641668a7a35a434fd548efebd2c2415357efbe`  
		Last Modified: Sat, 19 Sep 2026 00:45:42 GMT  
		Size: 110.8 MB (110806217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c050ddbeda2e1c86729cc65be57d1f081e3647d6d099e4a5cb28f0e55d6c1036`  
		Last Modified: Sat, 19 Sep 2026 00:45:39 GMT  
		Size: 382.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3a05cb6c023a2dc0fd021528dfd0cca3aba1be43bd58e1272c41a74fc496901`  
		Last Modified: Sat, 19 Sep 2026 00:45:39 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e72f61e86095aa025a6b589e58f977857ac7ad38b3e10ae71fa38436fecdacf`  
		Last Modified: Sat, 19 Sep 2026 00:45:41 GMT  
		Size: 2.2 KB (2225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:869eacd3d16e045fd9f63eaefc9317d142aca227b4bb497008492c01722cd76f`  
		Last Modified: Sat, 19 Sep 2026 00:45:41 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3` - unknown; unknown

```console
$ docker pull couchdb@sha256:ad2154966696fd995dea9f9104adcb873cc073432443d1b117aa48be8d271700
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4218063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6daaf31f811e2f973fd56f839d00ced5d0f9d3781417faa2049edcb63516055`

```dockerfile
```

-	Layers:
	-	`sha256:9b0d5883d21be0449874729be8bcdccaa2fd745a804f9176b6aba8f132c5bfac`  
		Last Modified: Sat, 19 Sep 2026 00:45:38 GMT  
		Size: 4.2 MB (4186387 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:915d8dd760ef91c2f4f4c2331a3a76cc04200e0aa07d7cd80dd5feb159d2bbd4`  
		Last Modified: Sat, 19 Sep 2026 00:45:38 GMT  
		Size: 31.7 KB (31676 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:be1f1c566f8b3e8a7eed7f72a70e084c65a937601ffd6bc26542bd85b2594c19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.7 MB (148653253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a2f3885618ddbc2a04d8075c6434cbf6f2f13a3efe852d2f834923d35e21781`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:47:46 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Sat, 19 Sep 2026 00:47:46 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Sat, 19 Sep 2026 00:47:53 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:47:57 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Sat, 19 Sep 2026 00:47:57 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Sat, 19 Sep 2026 00:48:03 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:48:03 GMT
ENV COUCHDB_VERSION=3.5.2.1
# Sat, 19 Sep 2026 00:48:03 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Sat, 19 Sep 2026 00:48:17 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Sat, 19 Sep 2026 00:48:17 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Sat, 19 Sep 2026 00:48:17 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Sat, 19 Sep 2026 00:48:17 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Sat, 19 Sep 2026 00:48:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Sat, 19 Sep 2026 00:48:18 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:48:18 GMT
VOLUME [/opt/couchdb/data]
# Sat, 19 Sep 2026 00:48:18 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Sat, 19 Sep 2026 00:48:18 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff67f6930119806a1da6b35c3eb2b4af405736c9dcdbd6016dadacc3d6c856a3`  
		Last Modified: Sat, 19 Sep 2026 00:48:31 GMT  
		Size: 1.2 KB (1183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b139b90fb3d8fa2152f1ac34144ac212ffc482a80d2947aff46ef6e6c4cd7d`  
		Last Modified: Sat, 19 Sep 2026 00:48:32 GMT  
		Size: 7.3 MB (7261112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fefc92a957efdeb5c26b9859c876b42842799686566332d69f765be77dfe7ce5`  
		Last Modified: Sat, 19 Sep 2026 00:48:31 GMT  
		Size: 382.4 KB (382424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42291e229d9265c42f29190f8c9dbca404c78683c54468dc1f33ad35de6deae6`  
		Last Modified: Sat, 19 Sep 2026 00:48:32 GMT  
		Size: 338.7 KB (338726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbece399c49b645de140442d0abadbce5197705c7f09e72eefe654274e7bbf13`  
		Last Modified: Sat, 19 Sep 2026 00:48:32 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a27e50ff4a248f1392f9c86e1d5ef16eb8c9bd21773e159d120585b29fccd5e`  
		Last Modified: Sat, 19 Sep 2026 00:48:35 GMT  
		Size: 110.5 MB (110475871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:183110d82e006939c93350897432063a5d730d8ec31b9760bff2e3f9b6dd86dc`  
		Last Modified: Sat, 19 Sep 2026 00:48:33 GMT  
		Size: 379.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:945879401758c65e6bdff1f14fcb7a7c2107833cbe47c9da1e5a529693798908`  
		Last Modified: Sat, 19 Sep 2026 00:48:33 GMT  
		Size: 1.2 KB (1242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa551291b6ca3a69f102ea2008bcf818bf3d863a036bdbb99110e76de8913926`  
		Last Modified: Sat, 19 Sep 2026 00:48:34 GMT  
		Size: 2.2 KB (2228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4faad290b77d12ee16b057b388b4732aa0f189a62a93a3e60ab2a9723051184c`  
		Last Modified: Sat, 19 Sep 2026 00:48:34 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3` - unknown; unknown

```console
$ docker pull couchdb@sha256:668b4bc43a199a335adbe2c1ebdb559317fda71e84da61164a3c7c1e0d17645c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4218577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48b9fc1d9911f5f528f3233ce13b337084f26169f99e2bdf5bc35b31b3944123`

```dockerfile
```

-	Layers:
	-	`sha256:41a1b3281e2d6e3161bc8b4749dd13254c928e5e4625fdb57e0fab6a3b8150d3`  
		Last Modified: Sat, 19 Sep 2026 00:48:32 GMT  
		Size: 4.2 MB (4186695 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66839d090f21da1bfdf29951f0db9dcc60f337df78d9f0bedf8ceccd4eca9650`  
		Last Modified: Sat, 19 Sep 2026 00:48:31 GMT  
		Size: 31.9 KB (31882 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3-nouveau`

```console
$ docker pull couchdb@sha256:df1985962f0ae50e7438533b0bef70b46238056ae8b2b31bf2a72ac6047e3c4b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3-nouveau` - linux; amd64

```console
$ docker pull couchdb@sha256:a225c7c91e2fedd65072c9c3bcc3087ef38cc5069fa59d6945f65864d3eff0fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.0 MB (150965977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00e961a2dfa991674a711395056c02f8b010db95a7ac863fe0c14d57d8fe5b8b`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:45:00 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Sat, 19 Sep 2026 00:45:00 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Sat, 19 Sep 2026 00:45:06 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:45:11 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:45:14 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Sat, 19 Sep 2026 00:45:14 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Sat, 19 Sep 2026 00:45:19 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:45:19 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Sat, 19 Sep 2026 00:45:24 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends couchdb-nouveau=3.5.2.1~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Sat, 19 Sep 2026 00:45:24 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Sat, 19 Sep 2026 00:45:24 GMT
VOLUME [/opt/nouveau/data]
# Sat, 19 Sep 2026 00:45:24 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Sat, 19 Sep 2026 00:45:24 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51ced64d408bad91ef247aaceb7f1efa44e4d235774c52f3547ee1f433364e85`  
		Last Modified: Sat, 19 Sep 2026 00:45:39 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f1a220a6c3d158f09cd98a98295905f661faaab944cdb40e110e084dc354c74`  
		Last Modified: Sat, 19 Sep 2026 00:45:39 GMT  
		Size: 7.5 MB (7492106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5084d970e255b6945834191c47aa0f5dcd95f67a72db65e5463c72bae22dc0ab`  
		Last Modified: Sat, 19 Sep 2026 00:45:41 GMT  
		Size: 70.1 MB (70053215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0034707cd5e3f817f70470a634704df30245ae27305f96f5203c67f537d120a9`  
		Last Modified: Sat, 19 Sep 2026 00:45:39 GMT  
		Size: 425.8 KB (425822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a07dbd3b56a6e757f4118129d7da7d19756f4505dc9073763fe2eed6a9098ffd`  
		Last Modified: Sat, 19 Sep 2026 00:45:40 GMT  
		Size: 347.1 KB (347122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f69cb17c4fce92b20c29310df88dd1c5448343cf850e436f47ac5915eca775`  
		Last Modified: Sat, 19 Sep 2026 00:45:40 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5fb448d1f9bea5e21f2e9736a08abb261e53d466d85f040d51d208656f63f93`  
		Last Modified: Sat, 19 Sep 2026 00:45:42 GMT  
		Size: 42.8 MB (42815417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88a0784fed0acb672791df8c83f53c8c3b2dafd7c88c50260bdd8eab7d181e24`  
		Last Modified: Sat, 19 Sep 2026 00:45:41 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:14661f19a7b5ce69067486a0e317ab60b504092c064e75ba5964457f2af85032
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3395206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2198f4b8b08ad68aca25f900da424064f62c43fee27d447ad7373bd28b0719fd`

```dockerfile
```

-	Layers:
	-	`sha256:65f4e1e486dcfcb46ac616a2cb51ab4044175a644a5ad94abc579c29d9b398b9`  
		Last Modified: Sat, 19 Sep 2026 00:45:39 GMT  
		Size: 3.4 MB (3370691 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:17aca29b5bae299ea8d34348dad367ecd81170d3799dfecf1bf61b54c6426b33`  
		Last Modified: Sat, 19 Sep 2026 00:45:39 GMT  
		Size: 24.5 KB (24515 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3-nouveau` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:3acb705b8aa9f0afe9fe2f0372f7492f6814a5f60fb0b4b9b858c441b7319c70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150115466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38b3d63b1a6364de1255db55dfe2d878c1d3957165472685ebfc5d46ea8e6c7d`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:47:42 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Sat, 19 Sep 2026 00:47:42 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Sat, 19 Sep 2026 00:47:49 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:47:55 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:47:59 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Sat, 19 Sep 2026 00:47:59 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Sat, 19 Sep 2026 00:48:05 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:48:05 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Sat, 19 Sep 2026 00:48:11 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends couchdb-nouveau=3.5.2.1~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Sat, 19 Sep 2026 00:48:11 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Sat, 19 Sep 2026 00:48:11 GMT
VOLUME [/opt/nouveau/data]
# Sat, 19 Sep 2026 00:48:11 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Sat, 19 Sep 2026 00:48:11 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13bfb6dbe7e1bc7b091bf8d6df3d17c450a05ea7f164ce004d831b6d142cffbd`  
		Last Modified: Sat, 19 Sep 2026 00:48:25 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82f2fde3217b4490411eeccd4bba3c790c036d820932f870f199f0b679450e06`  
		Last Modified: Sat, 19 Sep 2026 00:48:25 GMT  
		Size: 7.3 MB (7261095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9685b717c593083a611b17588dc3c4a9adc694b5d32c3b4e2a539dac6a3fc8be`  
		Last Modified: Sat, 19 Sep 2026 00:48:27 GMT  
		Size: 69.2 MB (69193001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13a0d73af75cf6a358e074820d4666779bf7bac98a195132ab7911562c1961fb`  
		Last Modified: Sat, 19 Sep 2026 00:48:25 GMT  
		Size: 390.2 KB (390191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29ba833f96d37d76c9f8dd9c7f4f2d83c6e17c4bebc07de966c8f5dae5bd75c8`  
		Last Modified: Sat, 19 Sep 2026 00:48:26 GMT  
		Size: 347.5 KB (347502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:777856d3f62dbcdc323cc3b71a76997a616b44180b321a15ea91bfc9baebcca8`  
		Last Modified: Sat, 19 Sep 2026 00:48:26 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:953a723157a2ce567ada0e296ffa14f41505be5be783ed038512ff92d50274dc`  
		Last Modified: Sat, 19 Sep 2026 00:48:28 GMT  
		Size: 42.7 MB (42732106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5907dcfc1e0d78e0329fad40dd808b8c6d12b95c0e6e520d5b0f1d6447061e1a`  
		Last Modified: Sat, 19 Sep 2026 00:48:27 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:1611dbc3e8979ec0385c3414e37e23d23f9aac360cee5236e91027055a6040ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3394053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f1161b0e8b5678e53dd99f46890cff121d0f16ac078ebcb193abb8d467e3d72`

```dockerfile
```

-	Layers:
	-	`sha256:6d2dd1853c21f1fd661fe9ce96fe9df7be08f5f5921b17f15e4877380a50a358`  
		Last Modified: Sat, 19 Sep 2026 00:48:25 GMT  
		Size: 3.4 MB (3369344 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:98baa36eda27ef05988ed5461e41cafcd7203c6e0afa5ac9252dce32c5001d4e`  
		Last Modified: Sat, 19 Sep 2026 00:48:25 GMT  
		Size: 24.7 KB (24709 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.4`

```console
$ docker pull couchdb@sha256:c6ba2476a33dbf30227357ef517383ebb0f63c1fb15aae43acae928110defe77
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
$ docker pull couchdb@sha256:3c1ce39cccc97be5bac2e665e51757874f00953e942cc238c2c19a9690e850a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.0 MB (139035207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:180433c328fc919f9b5b4069536b65346fe3026f673acc7473727e485ac1efbe`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:45:05 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Sat, 19 Sep 2026 00:45:05 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Sat, 19 Sep 2026 00:45:11 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:45:13 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Sat, 19 Sep 2026 00:45:13 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Sat, 19 Sep 2026 00:45:17 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt-key list;     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:45:17 GMT
ENV COUCHDB_VERSION=3.4.3
# Sat, 19 Sep 2026 00:45:17 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Sat, 19 Sep 2026 00:45:29 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages             couchdb="$COUCHDB_VERSION"~bookworm     ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Sat, 19 Sep 2026 00:45:29 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Sat, 19 Sep 2026 00:45:29 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Sat, 19 Sep 2026 00:45:29 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Sat, 19 Sep 2026 00:45:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Sat, 19 Sep 2026 00:45:29 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:45:29 GMT
VOLUME [/opt/couchdb/data]
# Sat, 19 Sep 2026 00:45:29 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Sat, 19 Sep 2026 00:45:29 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a2fae657673cdf81f981d371d982b6690df75d66b7f180286472f5a038aacb9`  
		Last Modified: Sat, 19 Sep 2026 00:45:40 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf3c03f1fa6d14171b3d56b7501c8e70bbc332aa16bc91da0baf2e1e2c81c0b2`  
		Last Modified: Sat, 19 Sep 2026 00:45:41 GMT  
		Size: 7.9 MB (7891934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28d837825946ba59cd3797a94ad46680bd76aada223a87038a9b03e6856b3c52`  
		Last Modified: Sat, 19 Sep 2026 00:45:41 GMT  
		Size: 401.8 KB (401811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39333e43f9583b6017388b9ffc7ad998867907b076615ad5ae2f0da8bed13e7f`  
		Last Modified: Sat, 19 Sep 2026 00:45:41 GMT  
		Size: 76.5 KB (76515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4803dab0e956030ca64fd4a8c565f2e707db9300f016a8dcae89d078f6cd8749`  
		Last Modified: Sat, 19 Sep 2026 00:45:42 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfc0e99d0b1367ca429bdb894690f57f49b5923c4cdd5516c9e63890991d0ed3`  
		Last Modified: Sat, 19 Sep 2026 00:45:44 GMT  
		Size: 102.4 MB (102421073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bb05998cc5da77e80e49bacf592b61186f15586c989806c5364dfdbc7196172`  
		Last Modified: Sat, 19 Sep 2026 00:45:42 GMT  
		Size: 379.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65c3f4efb4512723f3d0d14ba66e2e6aaa6f8b02f001a1099b803273c8c48f06`  
		Last Modified: Sat, 19 Sep 2026 00:45:42 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb4857bc59bcb3c4f9511322b196b6af7ec085714c81e4de80cf63e4fb4b5727`  
		Last Modified: Sat, 19 Sep 2026 00:45:43 GMT  
		Size: 2.2 KB (2225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c91344ffe78bcd8c3daed184b037d537930bd020d2260eb3f16a0ba47554a3ea`  
		Last Modified: Sat, 19 Sep 2026 00:45:43 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4` - unknown; unknown

```console
$ docker pull couchdb@sha256:7eac2274eebf97b641ab56f6a425f2aaefc266e9a618054d9cb4bdc38a490a40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4161882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a3825efc168cf5f4e98618f77efb83bfea91a37081dae6e7180fd38986449f6`

```dockerfile
```

-	Layers:
	-	`sha256:d24ccf925f8fa1a9aa1eb09037d3fb02d228b5a7aabde2a23f2bd2711d84e8d6`  
		Last Modified: Sat, 19 Sep 2026 00:45:41 GMT  
		Size: 4.1 MB (4130734 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cdcda931eadc8901a76eae96f48b6089a9ef6dc97cb1230635b8ebfead334f83`  
		Last Modified: Sat, 19 Sep 2026 00:45:41 GMT  
		Size: 31.1 KB (31148 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.4` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:7d0847df7eb57d9276b6d79fefa6f794ca81727520dfaa3f17b55d455ce14efc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.5 MB (138456822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ac42700988d7248c8c99ad9f4edf9a4b2d5360ff7d142bea677ff0d377e35d2`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:47:43 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Sat, 19 Sep 2026 00:47:43 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Sat, 19 Sep 2026 00:47:50 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:47:53 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Sat, 19 Sep 2026 00:47:53 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Sat, 19 Sep 2026 00:47:59 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt-key list;     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:47:59 GMT
ENV COUCHDB_VERSION=3.4.3
# Sat, 19 Sep 2026 00:47:59 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Sat, 19 Sep 2026 00:48:11 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages             couchdb="$COUCHDB_VERSION"~bookworm     ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Sat, 19 Sep 2026 00:48:11 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Sat, 19 Sep 2026 00:48:11 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Sat, 19 Sep 2026 00:48:11 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Sat, 19 Sep 2026 00:48:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Sat, 19 Sep 2026 00:48:11 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:48:11 GMT
VOLUME [/opt/couchdb/data]
# Sat, 19 Sep 2026 00:48:11 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Sat, 19 Sep 2026 00:48:11 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da58db4ff7e493cbb000d0ca32bac72a17350747a2571aaf1d5c9e8bb93e9112`  
		Last Modified: Sat, 19 Sep 2026 00:48:24 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9660cb3b65c106ed6160c312de76555c7e6e484bd9eafb1d25daa48af8a51389`  
		Last Modified: Sat, 19 Sep 2026 00:48:25 GMT  
		Size: 7.7 MB (7710060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d168e1a5895743e03f04228f3dd9d86b3751802348e4b997aacd326ee47bbf15`  
		Last Modified: Sat, 19 Sep 2026 00:48:24 GMT  
		Size: 370.6 KB (370583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:295b8650d4f10a33d41f6f22ccb302fefd31cd98412348693287f70fc9c6b56b`  
		Last Modified: Sat, 19 Sep 2026 00:48:24 GMT  
		Size: 76.5 KB (76515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16a1e8ce5edb6acafc609170d8c545cc6ec38d80ce6a6fa74e4fd48a382ac788`  
		Last Modified: Sat, 19 Sep 2026 00:48:26 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43f17bab041a1493e4d565c7df34d977495ef0fdca82c9f42a9ae087e4923543`  
		Last Modified: Sat, 19 Sep 2026 00:48:28 GMT  
		Size: 102.2 MB (102170546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4be3089077d738fabed4db3aacc91b790779fe7c95fa3cbf37b24a05a154cd9`  
		Last Modified: Sat, 19 Sep 2026 00:48:26 GMT  
		Size: 381.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9543059011d125d0c4852ebb9d222ab3f30d51c0e5867a0a0a1f9f47efe031d1`  
		Last Modified: Sat, 19 Sep 2026 00:48:26 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2051bbf37ba5608e5a60ce751a4875146ced86b9950aa76f9f719998446fb442`  
		Last Modified: Sat, 19 Sep 2026 00:48:27 GMT  
		Size: 2.2 KB (2227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d0294a07e324ae29a795d0a8915230e60e5a3ce4e0f0a0dbf614fcd531d3ecf`  
		Last Modified: Sat, 19 Sep 2026 00:48:27 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4` - unknown; unknown

```console
$ docker pull couchdb@sha256:13f814d21ac403ed45eb35af7b3603d68eabec3a8d67ae396c1fddca01ba92e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4162321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17f69098ef9c1d87a124b1d999f55b1a1bd9fc7e4ce566e3f8f03936460ec55c`

```dockerfile
```

-	Layers:
	-	`sha256:9fe2a398857d263e8f23f89cc84535470c246aa9ee2450a6dcc9582ccc9abe12`  
		Last Modified: Sat, 19 Sep 2026 00:48:25 GMT  
		Size: 4.1 MB (4131003 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24b9cd94a994ff7178a805527b97b359da517515160180d4cfe520df8c710d61`  
		Last Modified: Sat, 19 Sep 2026 00:48:24 GMT  
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
$ docker pull couchdb@sha256:ac482b89016d53b7e1e1775d47213ba9a6fe133bf67fc6da9cb4c8c7f1463c17
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
$ docker pull couchdb@sha256:9fdd604348085c3454529cf7b03028f6593453e133863d00f314971fa53bbc55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.6 MB (156583187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4846faab57e5d6a48c8e79952f44ef522bbc967c732de299b5390f26b5c9e00a`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:45:13 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Sat, 19 Sep 2026 00:45:13 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Sat, 19 Sep 2026 00:45:19 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:45:26 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-17-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:45:28 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Sat, 19 Sep 2026 00:45:28 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Sat, 19 Sep 2026 00:45:31 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt-key list;    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:45:32 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ bookworm main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Sat, 19 Sep 2026 00:45:36 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages --no-install-recommends             couchdb-nouveau=3.4.3~bookworm;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Sat, 19 Sep 2026 00:45:36 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Sat, 19 Sep 2026 00:45:36 GMT
VOLUME [/opt/nouveau/data]
# Sat, 19 Sep 2026 00:45:36 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Sat, 19 Sep 2026 00:45:36 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f4a7bdeb95f0a941cca96d7796210bdbc4732d9756d564c177c40a0937587fb`  
		Last Modified: Sat, 19 Sep 2026 00:45:50 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:650cee911c74816fb0b2aa360a155ddc6bbc2ed4200b53a5cb896a5d158075a0`  
		Last Modified: Sat, 19 Sep 2026 00:45:50 GMT  
		Size: 7.9 MB (7891934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4cdac709298edefe5e22d7aa1886f2166b0abc61f7a6bdcbe8c22ce9a6a303e`  
		Last Modified: Sat, 19 Sep 2026 00:45:52 GMT  
		Size: 77.5 MB (77489940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dbb6d06ea377eb4ff5496ddb116d8bb9daec826a0637075489a1987353865c4`  
		Last Modified: Sat, 19 Sep 2026 00:45:50 GMT  
		Size: 424.3 KB (424261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d717fbaf4ca15f563f7200cecd2f5e61f2c895e52fbf5b32dc4b9df4a1d56bd`  
		Last Modified: Sat, 19 Sep 2026 00:45:51 GMT  
		Size: 99.7 KB (99697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f20486e58c3f129f18af9994bb3735a6f94fae04842001e5702cfa65c56cc3e`  
		Last Modified: Sat, 19 Sep 2026 00:45:51 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3446fdffd338a8a7fbc4c1db20fec620f8d53daadca98615bf0b9ce43b0f40a8`  
		Last Modified: Sat, 19 Sep 2026 00:45:53 GMT  
		Size: 42.4 MB (42437031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ba8732565cb301a7070d8a40d4eaa967d331f47170bbcb72df5bed6e64e51a2`  
		Last Modified: Sat, 19 Sep 2026 00:45:52 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:1ee393a79715362d4b5a23d4d8d8f8d895f5818a1c8a482eeca57cebcd52d932
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3688270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87e664c226e04892448f3415e2dcc35afe2a7d403673dc72328440ef318af448`

```dockerfile
```

-	Layers:
	-	`sha256:6fae0bca2d3047bb44e68cfaf71448a15f90a5ede3d5da0cda89df66ad77e6b4`  
		Last Modified: Sat, 19 Sep 2026 00:45:50 GMT  
		Size: 3.7 MB (3664056 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b9e8205d2733cb42bbd1eaea34e90e56fd726d019092e1f1cc022d551446f46`  
		Last Modified: Sat, 19 Sep 2026 00:45:50 GMT  
		Size: 24.2 KB (24214 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.4-nouveau` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:b0e2cad56dfeb51cadd598f747978e823faa30ec7cdae6b9807bb6064188fe31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.5 MB (155475999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58cbe40b3918f0d9ff30f45bbf116a2e242a93626a540e05c0afefe90f1b7130`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:47:49 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Sat, 19 Sep 2026 00:47:49 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Sat, 19 Sep 2026 00:47:55 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:48:03 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-17-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:48:05 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Sat, 19 Sep 2026 00:48:05 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Sat, 19 Sep 2026 00:48:09 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt-key list;    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:48:09 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ bookworm main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Sat, 19 Sep 2026 00:48:14 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages --no-install-recommends             couchdb-nouveau=3.4.3~bookworm;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Sat, 19 Sep 2026 00:48:14 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Sat, 19 Sep 2026 00:48:14 GMT
VOLUME [/opt/nouveau/data]
# Sat, 19 Sep 2026 00:48:14 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Sat, 19 Sep 2026 00:48:14 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd0885e4264536794374747f855ca3b8a1cf8d03d4572c564676de5b4138b4f2`  
		Last Modified: Sat, 19 Sep 2026 00:48:30 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db02cc923faba81d85c2850f7cbf205aefa4dc357129a0b72ca97faf558818f0`  
		Last Modified: Sat, 19 Sep 2026 00:48:30 GMT  
		Size: 7.7 MB (7710070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61ebeee10a93548ca6c664de99530413f4d0446b6683797f5b38abe8189538ac`  
		Last Modified: Sat, 19 Sep 2026 00:48:32 GMT  
		Size: 76.8 MB (76808623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33978b857a260dbd206c7337da031f050dde66fc5137659f943ebdfbd6d4b4f6`  
		Last Modified: Sat, 19 Sep 2026 00:48:30 GMT  
		Size: 393.0 KB (392953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acce687126e235a922de0931ebf2981808d1d7ecae4698e0f9018447438e95c5`  
		Last Modified: Sat, 19 Sep 2026 00:48:31 GMT  
		Size: 99.7 KB (99670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2573281c46b589d443394c66501f682cda41fe1264c709a359234a9d90a26de1`  
		Last Modified: Sat, 19 Sep 2026 00:48:31 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f46da971879f7f34ea805d14c0a30886d3694ae3d7b159fc121503c97d1db48`  
		Last Modified: Sat, 19 Sep 2026 00:48:33 GMT  
		Size: 42.3 MB (42339127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00abd8d64b27f34c4737645ee4b4127fd6f7988920bc63515a2f770131e11adb`  
		Last Modified: Sat, 19 Sep 2026 00:48:32 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:c0269858c33b3c1d0dd66f46c86a81d6c9b562c23f07a1ef867c69abf34dfa55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3687109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c409391c842df713f66e2797bc5167e2f690a704147a4994599722c8839b755d`

```dockerfile
```

-	Layers:
	-	`sha256:f7ed8dc1637cadee50a803bd73d7df7e2ab03c6a11a9da833ab7bc1caad51929`  
		Last Modified: Sat, 19 Sep 2026 00:48:30 GMT  
		Size: 3.7 MB (3662724 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3918d79f575ef05f5efac9cf701bff93acfd0c8858817b57115376844bff074a`  
		Last Modified: Sat, 19 Sep 2026 00:48:30 GMT  
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
$ docker pull couchdb@sha256:c6ba2476a33dbf30227357ef517383ebb0f63c1fb15aae43acae928110defe77
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
$ docker pull couchdb@sha256:3c1ce39cccc97be5bac2e665e51757874f00953e942cc238c2c19a9690e850a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.0 MB (139035207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:180433c328fc919f9b5b4069536b65346fe3026f673acc7473727e485ac1efbe`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:45:05 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Sat, 19 Sep 2026 00:45:05 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Sat, 19 Sep 2026 00:45:11 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:45:13 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Sat, 19 Sep 2026 00:45:13 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Sat, 19 Sep 2026 00:45:17 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt-key list;     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:45:17 GMT
ENV COUCHDB_VERSION=3.4.3
# Sat, 19 Sep 2026 00:45:17 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Sat, 19 Sep 2026 00:45:29 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages             couchdb="$COUCHDB_VERSION"~bookworm     ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Sat, 19 Sep 2026 00:45:29 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Sat, 19 Sep 2026 00:45:29 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Sat, 19 Sep 2026 00:45:29 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Sat, 19 Sep 2026 00:45:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Sat, 19 Sep 2026 00:45:29 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:45:29 GMT
VOLUME [/opt/couchdb/data]
# Sat, 19 Sep 2026 00:45:29 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Sat, 19 Sep 2026 00:45:29 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a2fae657673cdf81f981d371d982b6690df75d66b7f180286472f5a038aacb9`  
		Last Modified: Sat, 19 Sep 2026 00:45:40 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf3c03f1fa6d14171b3d56b7501c8e70bbc332aa16bc91da0baf2e1e2c81c0b2`  
		Last Modified: Sat, 19 Sep 2026 00:45:41 GMT  
		Size: 7.9 MB (7891934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28d837825946ba59cd3797a94ad46680bd76aada223a87038a9b03e6856b3c52`  
		Last Modified: Sat, 19 Sep 2026 00:45:41 GMT  
		Size: 401.8 KB (401811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39333e43f9583b6017388b9ffc7ad998867907b076615ad5ae2f0da8bed13e7f`  
		Last Modified: Sat, 19 Sep 2026 00:45:41 GMT  
		Size: 76.5 KB (76515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4803dab0e956030ca64fd4a8c565f2e707db9300f016a8dcae89d078f6cd8749`  
		Last Modified: Sat, 19 Sep 2026 00:45:42 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfc0e99d0b1367ca429bdb894690f57f49b5923c4cdd5516c9e63890991d0ed3`  
		Last Modified: Sat, 19 Sep 2026 00:45:44 GMT  
		Size: 102.4 MB (102421073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bb05998cc5da77e80e49bacf592b61186f15586c989806c5364dfdbc7196172`  
		Last Modified: Sat, 19 Sep 2026 00:45:42 GMT  
		Size: 379.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65c3f4efb4512723f3d0d14ba66e2e6aaa6f8b02f001a1099b803273c8c48f06`  
		Last Modified: Sat, 19 Sep 2026 00:45:42 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb4857bc59bcb3c4f9511322b196b6af7ec085714c81e4de80cf63e4fb4b5727`  
		Last Modified: Sat, 19 Sep 2026 00:45:43 GMT  
		Size: 2.2 KB (2225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c91344ffe78bcd8c3daed184b037d537930bd020d2260eb3f16a0ba47554a3ea`  
		Last Modified: Sat, 19 Sep 2026 00:45:43 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4.3` - unknown; unknown

```console
$ docker pull couchdb@sha256:7eac2274eebf97b641ab56f6a425f2aaefc266e9a618054d9cb4bdc38a490a40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4161882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a3825efc168cf5f4e98618f77efb83bfea91a37081dae6e7180fd38986449f6`

```dockerfile
```

-	Layers:
	-	`sha256:d24ccf925f8fa1a9aa1eb09037d3fb02d228b5a7aabde2a23f2bd2711d84e8d6`  
		Last Modified: Sat, 19 Sep 2026 00:45:41 GMT  
		Size: 4.1 MB (4130734 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cdcda931eadc8901a76eae96f48b6089a9ef6dc97cb1230635b8ebfead334f83`  
		Last Modified: Sat, 19 Sep 2026 00:45:41 GMT  
		Size: 31.1 KB (31148 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.4.3` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:7d0847df7eb57d9276b6d79fefa6f794ca81727520dfaa3f17b55d455ce14efc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.5 MB (138456822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ac42700988d7248c8c99ad9f4edf9a4b2d5360ff7d142bea677ff0d377e35d2`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:47:43 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Sat, 19 Sep 2026 00:47:43 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Sat, 19 Sep 2026 00:47:50 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:47:53 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Sat, 19 Sep 2026 00:47:53 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Sat, 19 Sep 2026 00:47:59 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt-key list;     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:47:59 GMT
ENV COUCHDB_VERSION=3.4.3
# Sat, 19 Sep 2026 00:47:59 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Sat, 19 Sep 2026 00:48:11 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages             couchdb="$COUCHDB_VERSION"~bookworm     ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Sat, 19 Sep 2026 00:48:11 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Sat, 19 Sep 2026 00:48:11 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Sat, 19 Sep 2026 00:48:11 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Sat, 19 Sep 2026 00:48:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Sat, 19 Sep 2026 00:48:11 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:48:11 GMT
VOLUME [/opt/couchdb/data]
# Sat, 19 Sep 2026 00:48:11 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Sat, 19 Sep 2026 00:48:11 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da58db4ff7e493cbb000d0ca32bac72a17350747a2571aaf1d5c9e8bb93e9112`  
		Last Modified: Sat, 19 Sep 2026 00:48:24 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9660cb3b65c106ed6160c312de76555c7e6e484bd9eafb1d25daa48af8a51389`  
		Last Modified: Sat, 19 Sep 2026 00:48:25 GMT  
		Size: 7.7 MB (7710060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d168e1a5895743e03f04228f3dd9d86b3751802348e4b997aacd326ee47bbf15`  
		Last Modified: Sat, 19 Sep 2026 00:48:24 GMT  
		Size: 370.6 KB (370583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:295b8650d4f10a33d41f6f22ccb302fefd31cd98412348693287f70fc9c6b56b`  
		Last Modified: Sat, 19 Sep 2026 00:48:24 GMT  
		Size: 76.5 KB (76515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16a1e8ce5edb6acafc609170d8c545cc6ec38d80ce6a6fa74e4fd48a382ac788`  
		Last Modified: Sat, 19 Sep 2026 00:48:26 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43f17bab041a1493e4d565c7df34d977495ef0fdca82c9f42a9ae087e4923543`  
		Last Modified: Sat, 19 Sep 2026 00:48:28 GMT  
		Size: 102.2 MB (102170546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4be3089077d738fabed4db3aacc91b790779fe7c95fa3cbf37b24a05a154cd9`  
		Last Modified: Sat, 19 Sep 2026 00:48:26 GMT  
		Size: 381.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9543059011d125d0c4852ebb9d222ab3f30d51c0e5867a0a0a1f9f47efe031d1`  
		Last Modified: Sat, 19 Sep 2026 00:48:26 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2051bbf37ba5608e5a60ce751a4875146ced86b9950aa76f9f719998446fb442`  
		Last Modified: Sat, 19 Sep 2026 00:48:27 GMT  
		Size: 2.2 KB (2227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d0294a07e324ae29a795d0a8915230e60e5a3ce4e0f0a0dbf614fcd531d3ecf`  
		Last Modified: Sat, 19 Sep 2026 00:48:27 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4.3` - unknown; unknown

```console
$ docker pull couchdb@sha256:13f814d21ac403ed45eb35af7b3603d68eabec3a8d67ae396c1fddca01ba92e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4162321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17f69098ef9c1d87a124b1d999f55b1a1bd9fc7e4ce566e3f8f03936460ec55c`

```dockerfile
```

-	Layers:
	-	`sha256:9fe2a398857d263e8f23f89cc84535470c246aa9ee2450a6dcc9582ccc9abe12`  
		Last Modified: Sat, 19 Sep 2026 00:48:25 GMT  
		Size: 4.1 MB (4131003 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24b9cd94a994ff7178a805527b97b359da517515160180d4cfe520df8c710d61`  
		Last Modified: Sat, 19 Sep 2026 00:48:24 GMT  
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
$ docker pull couchdb@sha256:ac482b89016d53b7e1e1775d47213ba9a6fe133bf67fc6da9cb4c8c7f1463c17
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
$ docker pull couchdb@sha256:9fdd604348085c3454529cf7b03028f6593453e133863d00f314971fa53bbc55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.6 MB (156583187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4846faab57e5d6a48c8e79952f44ef522bbc967c732de299b5390f26b5c9e00a`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:45:13 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Sat, 19 Sep 2026 00:45:13 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Sat, 19 Sep 2026 00:45:19 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:45:26 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-17-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:45:28 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Sat, 19 Sep 2026 00:45:28 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Sat, 19 Sep 2026 00:45:31 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt-key list;    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:45:32 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ bookworm main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Sat, 19 Sep 2026 00:45:36 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages --no-install-recommends             couchdb-nouveau=3.4.3~bookworm;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Sat, 19 Sep 2026 00:45:36 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Sat, 19 Sep 2026 00:45:36 GMT
VOLUME [/opt/nouveau/data]
# Sat, 19 Sep 2026 00:45:36 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Sat, 19 Sep 2026 00:45:36 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f4a7bdeb95f0a941cca96d7796210bdbc4732d9756d564c177c40a0937587fb`  
		Last Modified: Sat, 19 Sep 2026 00:45:50 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:650cee911c74816fb0b2aa360a155ddc6bbc2ed4200b53a5cb896a5d158075a0`  
		Last Modified: Sat, 19 Sep 2026 00:45:50 GMT  
		Size: 7.9 MB (7891934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4cdac709298edefe5e22d7aa1886f2166b0abc61f7a6bdcbe8c22ce9a6a303e`  
		Last Modified: Sat, 19 Sep 2026 00:45:52 GMT  
		Size: 77.5 MB (77489940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dbb6d06ea377eb4ff5496ddb116d8bb9daec826a0637075489a1987353865c4`  
		Last Modified: Sat, 19 Sep 2026 00:45:50 GMT  
		Size: 424.3 KB (424261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d717fbaf4ca15f563f7200cecd2f5e61f2c895e52fbf5b32dc4b9df4a1d56bd`  
		Last Modified: Sat, 19 Sep 2026 00:45:51 GMT  
		Size: 99.7 KB (99697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f20486e58c3f129f18af9994bb3735a6f94fae04842001e5702cfa65c56cc3e`  
		Last Modified: Sat, 19 Sep 2026 00:45:51 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3446fdffd338a8a7fbc4c1db20fec620f8d53daadca98615bf0b9ce43b0f40a8`  
		Last Modified: Sat, 19 Sep 2026 00:45:53 GMT  
		Size: 42.4 MB (42437031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ba8732565cb301a7070d8a40d4eaa967d331f47170bbcb72df5bed6e64e51a2`  
		Last Modified: Sat, 19 Sep 2026 00:45:52 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4.3-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:1ee393a79715362d4b5a23d4d8d8f8d895f5818a1c8a482eeca57cebcd52d932
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3688270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87e664c226e04892448f3415e2dcc35afe2a7d403673dc72328440ef318af448`

```dockerfile
```

-	Layers:
	-	`sha256:6fae0bca2d3047bb44e68cfaf71448a15f90a5ede3d5da0cda89df66ad77e6b4`  
		Last Modified: Sat, 19 Sep 2026 00:45:50 GMT  
		Size: 3.7 MB (3664056 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b9e8205d2733cb42bbd1eaea34e90e56fd726d019092e1f1cc022d551446f46`  
		Last Modified: Sat, 19 Sep 2026 00:45:50 GMT  
		Size: 24.2 KB (24214 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.4.3-nouveau` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:b0e2cad56dfeb51cadd598f747978e823faa30ec7cdae6b9807bb6064188fe31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.5 MB (155475999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58cbe40b3918f0d9ff30f45bbf116a2e242a93626a540e05c0afefe90f1b7130`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:47:49 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Sat, 19 Sep 2026 00:47:49 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Sat, 19 Sep 2026 00:47:55 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:48:03 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-17-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:48:05 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Sat, 19 Sep 2026 00:48:05 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Sat, 19 Sep 2026 00:48:09 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt-key list;    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:48:09 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ bookworm main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Sat, 19 Sep 2026 00:48:14 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages --no-install-recommends             couchdb-nouveau=3.4.3~bookworm;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Sat, 19 Sep 2026 00:48:14 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Sat, 19 Sep 2026 00:48:14 GMT
VOLUME [/opt/nouveau/data]
# Sat, 19 Sep 2026 00:48:14 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Sat, 19 Sep 2026 00:48:14 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd0885e4264536794374747f855ca3b8a1cf8d03d4572c564676de5b4138b4f2`  
		Last Modified: Sat, 19 Sep 2026 00:48:30 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db02cc923faba81d85c2850f7cbf205aefa4dc357129a0b72ca97faf558818f0`  
		Last Modified: Sat, 19 Sep 2026 00:48:30 GMT  
		Size: 7.7 MB (7710070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61ebeee10a93548ca6c664de99530413f4d0446b6683797f5b38abe8189538ac`  
		Last Modified: Sat, 19 Sep 2026 00:48:32 GMT  
		Size: 76.8 MB (76808623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33978b857a260dbd206c7337da031f050dde66fc5137659f943ebdfbd6d4b4f6`  
		Last Modified: Sat, 19 Sep 2026 00:48:30 GMT  
		Size: 393.0 KB (392953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acce687126e235a922de0931ebf2981808d1d7ecae4698e0f9018447438e95c5`  
		Last Modified: Sat, 19 Sep 2026 00:48:31 GMT  
		Size: 99.7 KB (99670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2573281c46b589d443394c66501f682cda41fe1264c709a359234a9d90a26de1`  
		Last Modified: Sat, 19 Sep 2026 00:48:31 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f46da971879f7f34ea805d14c0a30886d3694ae3d7b159fc121503c97d1db48`  
		Last Modified: Sat, 19 Sep 2026 00:48:33 GMT  
		Size: 42.3 MB (42339127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00abd8d64b27f34c4737645ee4b4127fd6f7988920bc63515a2f770131e11adb`  
		Last Modified: Sat, 19 Sep 2026 00:48:32 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4.3-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:c0269858c33b3c1d0dd66f46c86a81d6c9b562c23f07a1ef867c69abf34dfa55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3687109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c409391c842df713f66e2797bc5167e2f690a704147a4994599722c8839b755d`

```dockerfile
```

-	Layers:
	-	`sha256:f7ed8dc1637cadee50a803bd73d7df7e2ab03c6a11a9da833ab7bc1caad51929`  
		Last Modified: Sat, 19 Sep 2026 00:48:30 GMT  
		Size: 3.7 MB (3662724 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3918d79f575ef05f5efac9cf701bff93acfd0c8858817b57115376844bff074a`  
		Last Modified: Sat, 19 Sep 2026 00:48:30 GMT  
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
$ docker pull couchdb@sha256:8cf5f8442585c346d2717ff0ad95605731d2f19f67b8367840baa8d3b24ebc31
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3.5` - linux; amd64

```console
$ docker pull couchdb@sha256:994898fe5a25a5f639e0e8a49b910c598ef6d2e784bbd872065c9fdca0af3c55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.9 MB (148890235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a90491e132a83c53d7120d6cf08d41d4bca5991b3fb080e788a4196a03bceb6`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:44:57 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Sat, 19 Sep 2026 00:44:57 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Sat, 19 Sep 2026 00:45:03 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:45:06 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Sat, 19 Sep 2026 00:45:06 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Sat, 19 Sep 2026 00:45:11 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:45:11 GMT
ENV COUCHDB_VERSION=3.5.2.1
# Sat, 19 Sep 2026 00:45:11 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Sat, 19 Sep 2026 00:45:25 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Sat, 19 Sep 2026 00:45:25 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Sat, 19 Sep 2026 00:45:25 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Sat, 19 Sep 2026 00:45:25 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Sat, 19 Sep 2026 00:45:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Sat, 19 Sep 2026 00:45:25 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:45:25 GMT
VOLUME [/opt/couchdb/data]
# Sat, 19 Sep 2026 00:45:25 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Sat, 19 Sep 2026 00:45:25 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdbc3d65b45c1381fcf70c0efd0a821298031ef37e0a422b9e577e86d3fa7662`  
		Last Modified: Sat, 19 Sep 2026 00:45:38 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1922b911fe65e24d5946eb855011359955ceda233eba2dc1698d9b5484b8900`  
		Last Modified: Sat, 19 Sep 2026 00:45:38 GMT  
		Size: 7.5 MB (7492113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d46f13840333436ea57f7807d8c9ac4974c0241aca1c620f45b05f9ec1a53b2f`  
		Last Modified: Sat, 19 Sep 2026 00:45:38 GMT  
		Size: 417.5 KB (417463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5765f4a8ff1491b49b28dfd70cf740ae58d3b6d33c23b0a44536a367a5fcf1c`  
		Last Modified: Sat, 19 Sep 2026 00:45:38 GMT  
		Size: 338.6 KB (338590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abf90134573a132fbfc8b1d52aa1624480904697ab1ca482f644688caad763da`  
		Last Modified: Sat, 19 Sep 2026 00:45:39 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc20942c62ada2bbeb31e0b909641668a7a35a434fd548efebd2c2415357efbe`  
		Last Modified: Sat, 19 Sep 2026 00:45:42 GMT  
		Size: 110.8 MB (110806217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c050ddbeda2e1c86729cc65be57d1f081e3647d6d099e4a5cb28f0e55d6c1036`  
		Last Modified: Sat, 19 Sep 2026 00:45:39 GMT  
		Size: 382.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3a05cb6c023a2dc0fd021528dfd0cca3aba1be43bd58e1272c41a74fc496901`  
		Last Modified: Sat, 19 Sep 2026 00:45:39 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e72f61e86095aa025a6b589e58f977857ac7ad38b3e10ae71fa38436fecdacf`  
		Last Modified: Sat, 19 Sep 2026 00:45:41 GMT  
		Size: 2.2 KB (2225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:869eacd3d16e045fd9f63eaefc9317d142aca227b4bb497008492c01722cd76f`  
		Last Modified: Sat, 19 Sep 2026 00:45:41 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5` - unknown; unknown

```console
$ docker pull couchdb@sha256:ad2154966696fd995dea9f9104adcb873cc073432443d1b117aa48be8d271700
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4218063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6daaf31f811e2f973fd56f839d00ced5d0f9d3781417faa2049edcb63516055`

```dockerfile
```

-	Layers:
	-	`sha256:9b0d5883d21be0449874729be8bcdccaa2fd745a804f9176b6aba8f132c5bfac`  
		Last Modified: Sat, 19 Sep 2026 00:45:38 GMT  
		Size: 4.2 MB (4186387 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:915d8dd760ef91c2f4f4c2331a3a76cc04200e0aa07d7cd80dd5feb159d2bbd4`  
		Last Modified: Sat, 19 Sep 2026 00:45:38 GMT  
		Size: 31.7 KB (31676 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.5` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:be1f1c566f8b3e8a7eed7f72a70e084c65a937601ffd6bc26542bd85b2594c19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.7 MB (148653253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a2f3885618ddbc2a04d8075c6434cbf6f2f13a3efe852d2f834923d35e21781`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:47:46 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Sat, 19 Sep 2026 00:47:46 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Sat, 19 Sep 2026 00:47:53 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:47:57 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Sat, 19 Sep 2026 00:47:57 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Sat, 19 Sep 2026 00:48:03 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:48:03 GMT
ENV COUCHDB_VERSION=3.5.2.1
# Sat, 19 Sep 2026 00:48:03 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Sat, 19 Sep 2026 00:48:17 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Sat, 19 Sep 2026 00:48:17 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Sat, 19 Sep 2026 00:48:17 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Sat, 19 Sep 2026 00:48:17 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Sat, 19 Sep 2026 00:48:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Sat, 19 Sep 2026 00:48:18 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:48:18 GMT
VOLUME [/opt/couchdb/data]
# Sat, 19 Sep 2026 00:48:18 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Sat, 19 Sep 2026 00:48:18 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff67f6930119806a1da6b35c3eb2b4af405736c9dcdbd6016dadacc3d6c856a3`  
		Last Modified: Sat, 19 Sep 2026 00:48:31 GMT  
		Size: 1.2 KB (1183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b139b90fb3d8fa2152f1ac34144ac212ffc482a80d2947aff46ef6e6c4cd7d`  
		Last Modified: Sat, 19 Sep 2026 00:48:32 GMT  
		Size: 7.3 MB (7261112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fefc92a957efdeb5c26b9859c876b42842799686566332d69f765be77dfe7ce5`  
		Last Modified: Sat, 19 Sep 2026 00:48:31 GMT  
		Size: 382.4 KB (382424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42291e229d9265c42f29190f8c9dbca404c78683c54468dc1f33ad35de6deae6`  
		Last Modified: Sat, 19 Sep 2026 00:48:32 GMT  
		Size: 338.7 KB (338726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbece399c49b645de140442d0abadbce5197705c7f09e72eefe654274e7bbf13`  
		Last Modified: Sat, 19 Sep 2026 00:48:32 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a27e50ff4a248f1392f9c86e1d5ef16eb8c9bd21773e159d120585b29fccd5e`  
		Last Modified: Sat, 19 Sep 2026 00:48:35 GMT  
		Size: 110.5 MB (110475871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:183110d82e006939c93350897432063a5d730d8ec31b9760bff2e3f9b6dd86dc`  
		Last Modified: Sat, 19 Sep 2026 00:48:33 GMT  
		Size: 379.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:945879401758c65e6bdff1f14fcb7a7c2107833cbe47c9da1e5a529693798908`  
		Last Modified: Sat, 19 Sep 2026 00:48:33 GMT  
		Size: 1.2 KB (1242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa551291b6ca3a69f102ea2008bcf818bf3d863a036bdbb99110e76de8913926`  
		Last Modified: Sat, 19 Sep 2026 00:48:34 GMT  
		Size: 2.2 KB (2228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4faad290b77d12ee16b057b388b4732aa0f189a62a93a3e60ab2a9723051184c`  
		Last Modified: Sat, 19 Sep 2026 00:48:34 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5` - unknown; unknown

```console
$ docker pull couchdb@sha256:668b4bc43a199a335adbe2c1ebdb559317fda71e84da61164a3c7c1e0d17645c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4218577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48b9fc1d9911f5f528f3233ce13b337084f26169f99e2bdf5bc35b31b3944123`

```dockerfile
```

-	Layers:
	-	`sha256:41a1b3281e2d6e3161bc8b4749dd13254c928e5e4625fdb57e0fab6a3b8150d3`  
		Last Modified: Sat, 19 Sep 2026 00:48:32 GMT  
		Size: 4.2 MB (4186695 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66839d090f21da1bfdf29951f0db9dcc60f337df78d9f0bedf8ceccd4eca9650`  
		Last Modified: Sat, 19 Sep 2026 00:48:31 GMT  
		Size: 31.9 KB (31882 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.5-nouveau`

```console
$ docker pull couchdb@sha256:df1985962f0ae50e7438533b0bef70b46238056ae8b2b31bf2a72ac6047e3c4b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3.5-nouveau` - linux; amd64

```console
$ docker pull couchdb@sha256:a225c7c91e2fedd65072c9c3bcc3087ef38cc5069fa59d6945f65864d3eff0fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.0 MB (150965977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00e961a2dfa991674a711395056c02f8b010db95a7ac863fe0c14d57d8fe5b8b`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:45:00 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Sat, 19 Sep 2026 00:45:00 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Sat, 19 Sep 2026 00:45:06 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:45:11 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:45:14 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Sat, 19 Sep 2026 00:45:14 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Sat, 19 Sep 2026 00:45:19 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:45:19 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Sat, 19 Sep 2026 00:45:24 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends couchdb-nouveau=3.5.2.1~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Sat, 19 Sep 2026 00:45:24 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Sat, 19 Sep 2026 00:45:24 GMT
VOLUME [/opt/nouveau/data]
# Sat, 19 Sep 2026 00:45:24 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Sat, 19 Sep 2026 00:45:24 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51ced64d408bad91ef247aaceb7f1efa44e4d235774c52f3547ee1f433364e85`  
		Last Modified: Sat, 19 Sep 2026 00:45:39 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f1a220a6c3d158f09cd98a98295905f661faaab944cdb40e110e084dc354c74`  
		Last Modified: Sat, 19 Sep 2026 00:45:39 GMT  
		Size: 7.5 MB (7492106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5084d970e255b6945834191c47aa0f5dcd95f67a72db65e5463c72bae22dc0ab`  
		Last Modified: Sat, 19 Sep 2026 00:45:41 GMT  
		Size: 70.1 MB (70053215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0034707cd5e3f817f70470a634704df30245ae27305f96f5203c67f537d120a9`  
		Last Modified: Sat, 19 Sep 2026 00:45:39 GMT  
		Size: 425.8 KB (425822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a07dbd3b56a6e757f4118129d7da7d19756f4505dc9073763fe2eed6a9098ffd`  
		Last Modified: Sat, 19 Sep 2026 00:45:40 GMT  
		Size: 347.1 KB (347122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f69cb17c4fce92b20c29310df88dd1c5448343cf850e436f47ac5915eca775`  
		Last Modified: Sat, 19 Sep 2026 00:45:40 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5fb448d1f9bea5e21f2e9736a08abb261e53d466d85f040d51d208656f63f93`  
		Last Modified: Sat, 19 Sep 2026 00:45:42 GMT  
		Size: 42.8 MB (42815417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88a0784fed0acb672791df8c83f53c8c3b2dafd7c88c50260bdd8eab7d181e24`  
		Last Modified: Sat, 19 Sep 2026 00:45:41 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:14661f19a7b5ce69067486a0e317ab60b504092c064e75ba5964457f2af85032
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3395206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2198f4b8b08ad68aca25f900da424064f62c43fee27d447ad7373bd28b0719fd`

```dockerfile
```

-	Layers:
	-	`sha256:65f4e1e486dcfcb46ac616a2cb51ab4044175a644a5ad94abc579c29d9b398b9`  
		Last Modified: Sat, 19 Sep 2026 00:45:39 GMT  
		Size: 3.4 MB (3370691 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:17aca29b5bae299ea8d34348dad367ecd81170d3799dfecf1bf61b54c6426b33`  
		Last Modified: Sat, 19 Sep 2026 00:45:39 GMT  
		Size: 24.5 KB (24515 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.5-nouveau` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:3acb705b8aa9f0afe9fe2f0372f7492f6814a5f60fb0b4b9b858c441b7319c70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150115466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38b3d63b1a6364de1255db55dfe2d878c1d3957165472685ebfc5d46ea8e6c7d`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:47:42 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Sat, 19 Sep 2026 00:47:42 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Sat, 19 Sep 2026 00:47:49 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:47:55 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:47:59 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Sat, 19 Sep 2026 00:47:59 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Sat, 19 Sep 2026 00:48:05 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:48:05 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Sat, 19 Sep 2026 00:48:11 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends couchdb-nouveau=3.5.2.1~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Sat, 19 Sep 2026 00:48:11 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Sat, 19 Sep 2026 00:48:11 GMT
VOLUME [/opt/nouveau/data]
# Sat, 19 Sep 2026 00:48:11 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Sat, 19 Sep 2026 00:48:11 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13bfb6dbe7e1bc7b091bf8d6df3d17c450a05ea7f164ce004d831b6d142cffbd`  
		Last Modified: Sat, 19 Sep 2026 00:48:25 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82f2fde3217b4490411eeccd4bba3c790c036d820932f870f199f0b679450e06`  
		Last Modified: Sat, 19 Sep 2026 00:48:25 GMT  
		Size: 7.3 MB (7261095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9685b717c593083a611b17588dc3c4a9adc694b5d32c3b4e2a539dac6a3fc8be`  
		Last Modified: Sat, 19 Sep 2026 00:48:27 GMT  
		Size: 69.2 MB (69193001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13a0d73af75cf6a358e074820d4666779bf7bac98a195132ab7911562c1961fb`  
		Last Modified: Sat, 19 Sep 2026 00:48:25 GMT  
		Size: 390.2 KB (390191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29ba833f96d37d76c9f8dd9c7f4f2d83c6e17c4bebc07de966c8f5dae5bd75c8`  
		Last Modified: Sat, 19 Sep 2026 00:48:26 GMT  
		Size: 347.5 KB (347502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:777856d3f62dbcdc323cc3b71a76997a616b44180b321a15ea91bfc9baebcca8`  
		Last Modified: Sat, 19 Sep 2026 00:48:26 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:953a723157a2ce567ada0e296ffa14f41505be5be783ed038512ff92d50274dc`  
		Last Modified: Sat, 19 Sep 2026 00:48:28 GMT  
		Size: 42.7 MB (42732106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5907dcfc1e0d78e0329fad40dd808b8c6d12b95c0e6e520d5b0f1d6447061e1a`  
		Last Modified: Sat, 19 Sep 2026 00:48:27 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:1611dbc3e8979ec0385c3414e37e23d23f9aac360cee5236e91027055a6040ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3394053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f1161b0e8b5678e53dd99f46890cff121d0f16ac078ebcb193abb8d467e3d72`

```dockerfile
```

-	Layers:
	-	`sha256:6d2dd1853c21f1fd661fe9ce96fe9df7be08f5f5921b17f15e4877380a50a358`  
		Last Modified: Sat, 19 Sep 2026 00:48:25 GMT  
		Size: 3.4 MB (3369344 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:98baa36eda27ef05988ed5461e41cafcd7203c6e0afa5ac9252dce32c5001d4e`  
		Last Modified: Sat, 19 Sep 2026 00:48:25 GMT  
		Size: 24.7 KB (24709 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.5.2`

```console
$ docker pull couchdb@sha256:8cf5f8442585c346d2717ff0ad95605731d2f19f67b8367840baa8d3b24ebc31
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3.5.2` - linux; amd64

```console
$ docker pull couchdb@sha256:994898fe5a25a5f639e0e8a49b910c598ef6d2e784bbd872065c9fdca0af3c55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.9 MB (148890235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a90491e132a83c53d7120d6cf08d41d4bca5991b3fb080e788a4196a03bceb6`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:44:57 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Sat, 19 Sep 2026 00:44:57 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Sat, 19 Sep 2026 00:45:03 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:45:06 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Sat, 19 Sep 2026 00:45:06 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Sat, 19 Sep 2026 00:45:11 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:45:11 GMT
ENV COUCHDB_VERSION=3.5.2.1
# Sat, 19 Sep 2026 00:45:11 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Sat, 19 Sep 2026 00:45:25 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Sat, 19 Sep 2026 00:45:25 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Sat, 19 Sep 2026 00:45:25 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Sat, 19 Sep 2026 00:45:25 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Sat, 19 Sep 2026 00:45:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Sat, 19 Sep 2026 00:45:25 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:45:25 GMT
VOLUME [/opt/couchdb/data]
# Sat, 19 Sep 2026 00:45:25 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Sat, 19 Sep 2026 00:45:25 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdbc3d65b45c1381fcf70c0efd0a821298031ef37e0a422b9e577e86d3fa7662`  
		Last Modified: Sat, 19 Sep 2026 00:45:38 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1922b911fe65e24d5946eb855011359955ceda233eba2dc1698d9b5484b8900`  
		Last Modified: Sat, 19 Sep 2026 00:45:38 GMT  
		Size: 7.5 MB (7492113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d46f13840333436ea57f7807d8c9ac4974c0241aca1c620f45b05f9ec1a53b2f`  
		Last Modified: Sat, 19 Sep 2026 00:45:38 GMT  
		Size: 417.5 KB (417463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5765f4a8ff1491b49b28dfd70cf740ae58d3b6d33c23b0a44536a367a5fcf1c`  
		Last Modified: Sat, 19 Sep 2026 00:45:38 GMT  
		Size: 338.6 KB (338590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abf90134573a132fbfc8b1d52aa1624480904697ab1ca482f644688caad763da`  
		Last Modified: Sat, 19 Sep 2026 00:45:39 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc20942c62ada2bbeb31e0b909641668a7a35a434fd548efebd2c2415357efbe`  
		Last Modified: Sat, 19 Sep 2026 00:45:42 GMT  
		Size: 110.8 MB (110806217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c050ddbeda2e1c86729cc65be57d1f081e3647d6d099e4a5cb28f0e55d6c1036`  
		Last Modified: Sat, 19 Sep 2026 00:45:39 GMT  
		Size: 382.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3a05cb6c023a2dc0fd021528dfd0cca3aba1be43bd58e1272c41a74fc496901`  
		Last Modified: Sat, 19 Sep 2026 00:45:39 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e72f61e86095aa025a6b589e58f977857ac7ad38b3e10ae71fa38436fecdacf`  
		Last Modified: Sat, 19 Sep 2026 00:45:41 GMT  
		Size: 2.2 KB (2225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:869eacd3d16e045fd9f63eaefc9317d142aca227b4bb497008492c01722cd76f`  
		Last Modified: Sat, 19 Sep 2026 00:45:41 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5.2` - unknown; unknown

```console
$ docker pull couchdb@sha256:ad2154966696fd995dea9f9104adcb873cc073432443d1b117aa48be8d271700
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4218063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6daaf31f811e2f973fd56f839d00ced5d0f9d3781417faa2049edcb63516055`

```dockerfile
```

-	Layers:
	-	`sha256:9b0d5883d21be0449874729be8bcdccaa2fd745a804f9176b6aba8f132c5bfac`  
		Last Modified: Sat, 19 Sep 2026 00:45:38 GMT  
		Size: 4.2 MB (4186387 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:915d8dd760ef91c2f4f4c2331a3a76cc04200e0aa07d7cd80dd5feb159d2bbd4`  
		Last Modified: Sat, 19 Sep 2026 00:45:38 GMT  
		Size: 31.7 KB (31676 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.5.2` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:be1f1c566f8b3e8a7eed7f72a70e084c65a937601ffd6bc26542bd85b2594c19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.7 MB (148653253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a2f3885618ddbc2a04d8075c6434cbf6f2f13a3efe852d2f834923d35e21781`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:47:46 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Sat, 19 Sep 2026 00:47:46 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Sat, 19 Sep 2026 00:47:53 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:47:57 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Sat, 19 Sep 2026 00:47:57 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Sat, 19 Sep 2026 00:48:03 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:48:03 GMT
ENV COUCHDB_VERSION=3.5.2.1
# Sat, 19 Sep 2026 00:48:03 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Sat, 19 Sep 2026 00:48:17 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Sat, 19 Sep 2026 00:48:17 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Sat, 19 Sep 2026 00:48:17 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Sat, 19 Sep 2026 00:48:17 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Sat, 19 Sep 2026 00:48:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Sat, 19 Sep 2026 00:48:18 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:48:18 GMT
VOLUME [/opt/couchdb/data]
# Sat, 19 Sep 2026 00:48:18 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Sat, 19 Sep 2026 00:48:18 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff67f6930119806a1da6b35c3eb2b4af405736c9dcdbd6016dadacc3d6c856a3`  
		Last Modified: Sat, 19 Sep 2026 00:48:31 GMT  
		Size: 1.2 KB (1183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b139b90fb3d8fa2152f1ac34144ac212ffc482a80d2947aff46ef6e6c4cd7d`  
		Last Modified: Sat, 19 Sep 2026 00:48:32 GMT  
		Size: 7.3 MB (7261112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fefc92a957efdeb5c26b9859c876b42842799686566332d69f765be77dfe7ce5`  
		Last Modified: Sat, 19 Sep 2026 00:48:31 GMT  
		Size: 382.4 KB (382424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42291e229d9265c42f29190f8c9dbca404c78683c54468dc1f33ad35de6deae6`  
		Last Modified: Sat, 19 Sep 2026 00:48:32 GMT  
		Size: 338.7 KB (338726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbece399c49b645de140442d0abadbce5197705c7f09e72eefe654274e7bbf13`  
		Last Modified: Sat, 19 Sep 2026 00:48:32 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a27e50ff4a248f1392f9c86e1d5ef16eb8c9bd21773e159d120585b29fccd5e`  
		Last Modified: Sat, 19 Sep 2026 00:48:35 GMT  
		Size: 110.5 MB (110475871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:183110d82e006939c93350897432063a5d730d8ec31b9760bff2e3f9b6dd86dc`  
		Last Modified: Sat, 19 Sep 2026 00:48:33 GMT  
		Size: 379.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:945879401758c65e6bdff1f14fcb7a7c2107833cbe47c9da1e5a529693798908`  
		Last Modified: Sat, 19 Sep 2026 00:48:33 GMT  
		Size: 1.2 KB (1242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa551291b6ca3a69f102ea2008bcf818bf3d863a036bdbb99110e76de8913926`  
		Last Modified: Sat, 19 Sep 2026 00:48:34 GMT  
		Size: 2.2 KB (2228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4faad290b77d12ee16b057b388b4732aa0f189a62a93a3e60ab2a9723051184c`  
		Last Modified: Sat, 19 Sep 2026 00:48:34 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5.2` - unknown; unknown

```console
$ docker pull couchdb@sha256:668b4bc43a199a335adbe2c1ebdb559317fda71e84da61164a3c7c1e0d17645c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4218577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48b9fc1d9911f5f528f3233ce13b337084f26169f99e2bdf5bc35b31b3944123`

```dockerfile
```

-	Layers:
	-	`sha256:41a1b3281e2d6e3161bc8b4749dd13254c928e5e4625fdb57e0fab6a3b8150d3`  
		Last Modified: Sat, 19 Sep 2026 00:48:32 GMT  
		Size: 4.2 MB (4186695 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66839d090f21da1bfdf29951f0db9dcc60f337df78d9f0bedf8ceccd4eca9650`  
		Last Modified: Sat, 19 Sep 2026 00:48:31 GMT  
		Size: 31.9 KB (31882 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.5.2-nouveau`

```console
$ docker pull couchdb@sha256:df1985962f0ae50e7438533b0bef70b46238056ae8b2b31bf2a72ac6047e3c4b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3.5.2-nouveau` - linux; amd64

```console
$ docker pull couchdb@sha256:a225c7c91e2fedd65072c9c3bcc3087ef38cc5069fa59d6945f65864d3eff0fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.0 MB (150965977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00e961a2dfa991674a711395056c02f8b010db95a7ac863fe0c14d57d8fe5b8b`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:45:00 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Sat, 19 Sep 2026 00:45:00 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Sat, 19 Sep 2026 00:45:06 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:45:11 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:45:14 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Sat, 19 Sep 2026 00:45:14 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Sat, 19 Sep 2026 00:45:19 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:45:19 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Sat, 19 Sep 2026 00:45:24 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends couchdb-nouveau=3.5.2.1~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Sat, 19 Sep 2026 00:45:24 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Sat, 19 Sep 2026 00:45:24 GMT
VOLUME [/opt/nouveau/data]
# Sat, 19 Sep 2026 00:45:24 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Sat, 19 Sep 2026 00:45:24 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51ced64d408bad91ef247aaceb7f1efa44e4d235774c52f3547ee1f433364e85`  
		Last Modified: Sat, 19 Sep 2026 00:45:39 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f1a220a6c3d158f09cd98a98295905f661faaab944cdb40e110e084dc354c74`  
		Last Modified: Sat, 19 Sep 2026 00:45:39 GMT  
		Size: 7.5 MB (7492106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5084d970e255b6945834191c47aa0f5dcd95f67a72db65e5463c72bae22dc0ab`  
		Last Modified: Sat, 19 Sep 2026 00:45:41 GMT  
		Size: 70.1 MB (70053215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0034707cd5e3f817f70470a634704df30245ae27305f96f5203c67f537d120a9`  
		Last Modified: Sat, 19 Sep 2026 00:45:39 GMT  
		Size: 425.8 KB (425822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a07dbd3b56a6e757f4118129d7da7d19756f4505dc9073763fe2eed6a9098ffd`  
		Last Modified: Sat, 19 Sep 2026 00:45:40 GMT  
		Size: 347.1 KB (347122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f69cb17c4fce92b20c29310df88dd1c5448343cf850e436f47ac5915eca775`  
		Last Modified: Sat, 19 Sep 2026 00:45:40 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5fb448d1f9bea5e21f2e9736a08abb261e53d466d85f040d51d208656f63f93`  
		Last Modified: Sat, 19 Sep 2026 00:45:42 GMT  
		Size: 42.8 MB (42815417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88a0784fed0acb672791df8c83f53c8c3b2dafd7c88c50260bdd8eab7d181e24`  
		Last Modified: Sat, 19 Sep 2026 00:45:41 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5.2-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:14661f19a7b5ce69067486a0e317ab60b504092c064e75ba5964457f2af85032
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3395206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2198f4b8b08ad68aca25f900da424064f62c43fee27d447ad7373bd28b0719fd`

```dockerfile
```

-	Layers:
	-	`sha256:65f4e1e486dcfcb46ac616a2cb51ab4044175a644a5ad94abc579c29d9b398b9`  
		Last Modified: Sat, 19 Sep 2026 00:45:39 GMT  
		Size: 3.4 MB (3370691 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:17aca29b5bae299ea8d34348dad367ecd81170d3799dfecf1bf61b54c6426b33`  
		Last Modified: Sat, 19 Sep 2026 00:45:39 GMT  
		Size: 24.5 KB (24515 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.5.2-nouveau` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:3acb705b8aa9f0afe9fe2f0372f7492f6814a5f60fb0b4b9b858c441b7319c70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150115466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38b3d63b1a6364de1255db55dfe2d878c1d3957165472685ebfc5d46ea8e6c7d`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:47:42 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Sat, 19 Sep 2026 00:47:42 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Sat, 19 Sep 2026 00:47:49 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:47:55 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:47:59 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Sat, 19 Sep 2026 00:47:59 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Sat, 19 Sep 2026 00:48:05 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:48:05 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Sat, 19 Sep 2026 00:48:11 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends couchdb-nouveau=3.5.2.1~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Sat, 19 Sep 2026 00:48:11 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Sat, 19 Sep 2026 00:48:11 GMT
VOLUME [/opt/nouveau/data]
# Sat, 19 Sep 2026 00:48:11 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Sat, 19 Sep 2026 00:48:11 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13bfb6dbe7e1bc7b091bf8d6df3d17c450a05ea7f164ce004d831b6d142cffbd`  
		Last Modified: Sat, 19 Sep 2026 00:48:25 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82f2fde3217b4490411eeccd4bba3c790c036d820932f870f199f0b679450e06`  
		Last Modified: Sat, 19 Sep 2026 00:48:25 GMT  
		Size: 7.3 MB (7261095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9685b717c593083a611b17588dc3c4a9adc694b5d32c3b4e2a539dac6a3fc8be`  
		Last Modified: Sat, 19 Sep 2026 00:48:27 GMT  
		Size: 69.2 MB (69193001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13a0d73af75cf6a358e074820d4666779bf7bac98a195132ab7911562c1961fb`  
		Last Modified: Sat, 19 Sep 2026 00:48:25 GMT  
		Size: 390.2 KB (390191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29ba833f96d37d76c9f8dd9c7f4f2d83c6e17c4bebc07de966c8f5dae5bd75c8`  
		Last Modified: Sat, 19 Sep 2026 00:48:26 GMT  
		Size: 347.5 KB (347502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:777856d3f62dbcdc323cc3b71a76997a616b44180b321a15ea91bfc9baebcca8`  
		Last Modified: Sat, 19 Sep 2026 00:48:26 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:953a723157a2ce567ada0e296ffa14f41505be5be783ed038512ff92d50274dc`  
		Last Modified: Sat, 19 Sep 2026 00:48:28 GMT  
		Size: 42.7 MB (42732106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5907dcfc1e0d78e0329fad40dd808b8c6d12b95c0e6e520d5b0f1d6447061e1a`  
		Last Modified: Sat, 19 Sep 2026 00:48:27 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5.2-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:1611dbc3e8979ec0385c3414e37e23d23f9aac360cee5236e91027055a6040ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3394053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f1161b0e8b5678e53dd99f46890cff121d0f16ac078ebcb193abb8d467e3d72`

```dockerfile
```

-	Layers:
	-	`sha256:6d2dd1853c21f1fd661fe9ce96fe9df7be08f5f5921b17f15e4877380a50a358`  
		Last Modified: Sat, 19 Sep 2026 00:48:25 GMT  
		Size: 3.4 MB (3369344 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:98baa36eda27ef05988ed5461e41cafcd7203c6e0afa5ac9252dce32c5001d4e`  
		Last Modified: Sat, 19 Sep 2026 00:48:25 GMT  
		Size: 24.7 KB (24709 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.5.2.1`

```console
$ docker pull couchdb@sha256:8cf5f8442585c346d2717ff0ad95605731d2f19f67b8367840baa8d3b24ebc31
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3.5.2.1` - linux; amd64

```console
$ docker pull couchdb@sha256:994898fe5a25a5f639e0e8a49b910c598ef6d2e784bbd872065c9fdca0af3c55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.9 MB (148890235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a90491e132a83c53d7120d6cf08d41d4bca5991b3fb080e788a4196a03bceb6`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:44:57 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Sat, 19 Sep 2026 00:44:57 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Sat, 19 Sep 2026 00:45:03 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:45:06 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Sat, 19 Sep 2026 00:45:06 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Sat, 19 Sep 2026 00:45:11 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:45:11 GMT
ENV COUCHDB_VERSION=3.5.2.1
# Sat, 19 Sep 2026 00:45:11 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Sat, 19 Sep 2026 00:45:25 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Sat, 19 Sep 2026 00:45:25 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Sat, 19 Sep 2026 00:45:25 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Sat, 19 Sep 2026 00:45:25 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Sat, 19 Sep 2026 00:45:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Sat, 19 Sep 2026 00:45:25 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:45:25 GMT
VOLUME [/opt/couchdb/data]
# Sat, 19 Sep 2026 00:45:25 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Sat, 19 Sep 2026 00:45:25 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdbc3d65b45c1381fcf70c0efd0a821298031ef37e0a422b9e577e86d3fa7662`  
		Last Modified: Sat, 19 Sep 2026 00:45:38 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1922b911fe65e24d5946eb855011359955ceda233eba2dc1698d9b5484b8900`  
		Last Modified: Sat, 19 Sep 2026 00:45:38 GMT  
		Size: 7.5 MB (7492113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d46f13840333436ea57f7807d8c9ac4974c0241aca1c620f45b05f9ec1a53b2f`  
		Last Modified: Sat, 19 Sep 2026 00:45:38 GMT  
		Size: 417.5 KB (417463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5765f4a8ff1491b49b28dfd70cf740ae58d3b6d33c23b0a44536a367a5fcf1c`  
		Last Modified: Sat, 19 Sep 2026 00:45:38 GMT  
		Size: 338.6 KB (338590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abf90134573a132fbfc8b1d52aa1624480904697ab1ca482f644688caad763da`  
		Last Modified: Sat, 19 Sep 2026 00:45:39 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc20942c62ada2bbeb31e0b909641668a7a35a434fd548efebd2c2415357efbe`  
		Last Modified: Sat, 19 Sep 2026 00:45:42 GMT  
		Size: 110.8 MB (110806217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c050ddbeda2e1c86729cc65be57d1f081e3647d6d099e4a5cb28f0e55d6c1036`  
		Last Modified: Sat, 19 Sep 2026 00:45:39 GMT  
		Size: 382.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3a05cb6c023a2dc0fd021528dfd0cca3aba1be43bd58e1272c41a74fc496901`  
		Last Modified: Sat, 19 Sep 2026 00:45:39 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e72f61e86095aa025a6b589e58f977857ac7ad38b3e10ae71fa38436fecdacf`  
		Last Modified: Sat, 19 Sep 2026 00:45:41 GMT  
		Size: 2.2 KB (2225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:869eacd3d16e045fd9f63eaefc9317d142aca227b4bb497008492c01722cd76f`  
		Last Modified: Sat, 19 Sep 2026 00:45:41 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5.2.1` - unknown; unknown

```console
$ docker pull couchdb@sha256:ad2154966696fd995dea9f9104adcb873cc073432443d1b117aa48be8d271700
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4218063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6daaf31f811e2f973fd56f839d00ced5d0f9d3781417faa2049edcb63516055`

```dockerfile
```

-	Layers:
	-	`sha256:9b0d5883d21be0449874729be8bcdccaa2fd745a804f9176b6aba8f132c5bfac`  
		Last Modified: Sat, 19 Sep 2026 00:45:38 GMT  
		Size: 4.2 MB (4186387 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:915d8dd760ef91c2f4f4c2331a3a76cc04200e0aa07d7cd80dd5feb159d2bbd4`  
		Last Modified: Sat, 19 Sep 2026 00:45:38 GMT  
		Size: 31.7 KB (31676 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.5.2.1` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:be1f1c566f8b3e8a7eed7f72a70e084c65a937601ffd6bc26542bd85b2594c19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.7 MB (148653253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a2f3885618ddbc2a04d8075c6434cbf6f2f13a3efe852d2f834923d35e21781`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:47:46 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Sat, 19 Sep 2026 00:47:46 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Sat, 19 Sep 2026 00:47:53 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:47:57 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Sat, 19 Sep 2026 00:47:57 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Sat, 19 Sep 2026 00:48:03 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:48:03 GMT
ENV COUCHDB_VERSION=3.5.2.1
# Sat, 19 Sep 2026 00:48:03 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Sat, 19 Sep 2026 00:48:17 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Sat, 19 Sep 2026 00:48:17 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Sat, 19 Sep 2026 00:48:17 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Sat, 19 Sep 2026 00:48:17 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Sat, 19 Sep 2026 00:48:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Sat, 19 Sep 2026 00:48:18 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:48:18 GMT
VOLUME [/opt/couchdb/data]
# Sat, 19 Sep 2026 00:48:18 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Sat, 19 Sep 2026 00:48:18 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff67f6930119806a1da6b35c3eb2b4af405736c9dcdbd6016dadacc3d6c856a3`  
		Last Modified: Sat, 19 Sep 2026 00:48:31 GMT  
		Size: 1.2 KB (1183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b139b90fb3d8fa2152f1ac34144ac212ffc482a80d2947aff46ef6e6c4cd7d`  
		Last Modified: Sat, 19 Sep 2026 00:48:32 GMT  
		Size: 7.3 MB (7261112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fefc92a957efdeb5c26b9859c876b42842799686566332d69f765be77dfe7ce5`  
		Last Modified: Sat, 19 Sep 2026 00:48:31 GMT  
		Size: 382.4 KB (382424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42291e229d9265c42f29190f8c9dbca404c78683c54468dc1f33ad35de6deae6`  
		Last Modified: Sat, 19 Sep 2026 00:48:32 GMT  
		Size: 338.7 KB (338726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbece399c49b645de140442d0abadbce5197705c7f09e72eefe654274e7bbf13`  
		Last Modified: Sat, 19 Sep 2026 00:48:32 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a27e50ff4a248f1392f9c86e1d5ef16eb8c9bd21773e159d120585b29fccd5e`  
		Last Modified: Sat, 19 Sep 2026 00:48:35 GMT  
		Size: 110.5 MB (110475871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:183110d82e006939c93350897432063a5d730d8ec31b9760bff2e3f9b6dd86dc`  
		Last Modified: Sat, 19 Sep 2026 00:48:33 GMT  
		Size: 379.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:945879401758c65e6bdff1f14fcb7a7c2107833cbe47c9da1e5a529693798908`  
		Last Modified: Sat, 19 Sep 2026 00:48:33 GMT  
		Size: 1.2 KB (1242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa551291b6ca3a69f102ea2008bcf818bf3d863a036bdbb99110e76de8913926`  
		Last Modified: Sat, 19 Sep 2026 00:48:34 GMT  
		Size: 2.2 KB (2228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4faad290b77d12ee16b057b388b4732aa0f189a62a93a3e60ab2a9723051184c`  
		Last Modified: Sat, 19 Sep 2026 00:48:34 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5.2.1` - unknown; unknown

```console
$ docker pull couchdb@sha256:668b4bc43a199a335adbe2c1ebdb559317fda71e84da61164a3c7c1e0d17645c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4218577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48b9fc1d9911f5f528f3233ce13b337084f26169f99e2bdf5bc35b31b3944123`

```dockerfile
```

-	Layers:
	-	`sha256:41a1b3281e2d6e3161bc8b4749dd13254c928e5e4625fdb57e0fab6a3b8150d3`  
		Last Modified: Sat, 19 Sep 2026 00:48:32 GMT  
		Size: 4.2 MB (4186695 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66839d090f21da1bfdf29951f0db9dcc60f337df78d9f0bedf8ceccd4eca9650`  
		Last Modified: Sat, 19 Sep 2026 00:48:31 GMT  
		Size: 31.9 KB (31882 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.5.2.1-nouveau`

```console
$ docker pull couchdb@sha256:df1985962f0ae50e7438533b0bef70b46238056ae8b2b31bf2a72ac6047e3c4b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3.5.2.1-nouveau` - linux; amd64

```console
$ docker pull couchdb@sha256:a225c7c91e2fedd65072c9c3bcc3087ef38cc5069fa59d6945f65864d3eff0fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.0 MB (150965977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00e961a2dfa991674a711395056c02f8b010db95a7ac863fe0c14d57d8fe5b8b`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:45:00 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Sat, 19 Sep 2026 00:45:00 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Sat, 19 Sep 2026 00:45:06 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:45:11 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:45:14 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Sat, 19 Sep 2026 00:45:14 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Sat, 19 Sep 2026 00:45:19 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:45:19 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Sat, 19 Sep 2026 00:45:24 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends couchdb-nouveau=3.5.2.1~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Sat, 19 Sep 2026 00:45:24 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Sat, 19 Sep 2026 00:45:24 GMT
VOLUME [/opt/nouveau/data]
# Sat, 19 Sep 2026 00:45:24 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Sat, 19 Sep 2026 00:45:24 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51ced64d408bad91ef247aaceb7f1efa44e4d235774c52f3547ee1f433364e85`  
		Last Modified: Sat, 19 Sep 2026 00:45:39 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f1a220a6c3d158f09cd98a98295905f661faaab944cdb40e110e084dc354c74`  
		Last Modified: Sat, 19 Sep 2026 00:45:39 GMT  
		Size: 7.5 MB (7492106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5084d970e255b6945834191c47aa0f5dcd95f67a72db65e5463c72bae22dc0ab`  
		Last Modified: Sat, 19 Sep 2026 00:45:41 GMT  
		Size: 70.1 MB (70053215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0034707cd5e3f817f70470a634704df30245ae27305f96f5203c67f537d120a9`  
		Last Modified: Sat, 19 Sep 2026 00:45:39 GMT  
		Size: 425.8 KB (425822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a07dbd3b56a6e757f4118129d7da7d19756f4505dc9073763fe2eed6a9098ffd`  
		Last Modified: Sat, 19 Sep 2026 00:45:40 GMT  
		Size: 347.1 KB (347122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f69cb17c4fce92b20c29310df88dd1c5448343cf850e436f47ac5915eca775`  
		Last Modified: Sat, 19 Sep 2026 00:45:40 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5fb448d1f9bea5e21f2e9736a08abb261e53d466d85f040d51d208656f63f93`  
		Last Modified: Sat, 19 Sep 2026 00:45:42 GMT  
		Size: 42.8 MB (42815417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88a0784fed0acb672791df8c83f53c8c3b2dafd7c88c50260bdd8eab7d181e24`  
		Last Modified: Sat, 19 Sep 2026 00:45:41 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5.2.1-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:14661f19a7b5ce69067486a0e317ab60b504092c064e75ba5964457f2af85032
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3395206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2198f4b8b08ad68aca25f900da424064f62c43fee27d447ad7373bd28b0719fd`

```dockerfile
```

-	Layers:
	-	`sha256:65f4e1e486dcfcb46ac616a2cb51ab4044175a644a5ad94abc579c29d9b398b9`  
		Last Modified: Sat, 19 Sep 2026 00:45:39 GMT  
		Size: 3.4 MB (3370691 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:17aca29b5bae299ea8d34348dad367ecd81170d3799dfecf1bf61b54c6426b33`  
		Last Modified: Sat, 19 Sep 2026 00:45:39 GMT  
		Size: 24.5 KB (24515 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.5.2.1-nouveau` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:3acb705b8aa9f0afe9fe2f0372f7492f6814a5f60fb0b4b9b858c441b7319c70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150115466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38b3d63b1a6364de1255db55dfe2d878c1d3957165472685ebfc5d46ea8e6c7d`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:47:42 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Sat, 19 Sep 2026 00:47:42 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Sat, 19 Sep 2026 00:47:49 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:47:55 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:47:59 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Sat, 19 Sep 2026 00:47:59 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Sat, 19 Sep 2026 00:48:05 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:48:05 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Sat, 19 Sep 2026 00:48:11 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends couchdb-nouveau=3.5.2.1~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Sat, 19 Sep 2026 00:48:11 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Sat, 19 Sep 2026 00:48:11 GMT
VOLUME [/opt/nouveau/data]
# Sat, 19 Sep 2026 00:48:11 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Sat, 19 Sep 2026 00:48:11 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13bfb6dbe7e1bc7b091bf8d6df3d17c450a05ea7f164ce004d831b6d142cffbd`  
		Last Modified: Sat, 19 Sep 2026 00:48:25 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82f2fde3217b4490411eeccd4bba3c790c036d820932f870f199f0b679450e06`  
		Last Modified: Sat, 19 Sep 2026 00:48:25 GMT  
		Size: 7.3 MB (7261095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9685b717c593083a611b17588dc3c4a9adc694b5d32c3b4e2a539dac6a3fc8be`  
		Last Modified: Sat, 19 Sep 2026 00:48:27 GMT  
		Size: 69.2 MB (69193001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13a0d73af75cf6a358e074820d4666779bf7bac98a195132ab7911562c1961fb`  
		Last Modified: Sat, 19 Sep 2026 00:48:25 GMT  
		Size: 390.2 KB (390191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29ba833f96d37d76c9f8dd9c7f4f2d83c6e17c4bebc07de966c8f5dae5bd75c8`  
		Last Modified: Sat, 19 Sep 2026 00:48:26 GMT  
		Size: 347.5 KB (347502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:777856d3f62dbcdc323cc3b71a76997a616b44180b321a15ea91bfc9baebcca8`  
		Last Modified: Sat, 19 Sep 2026 00:48:26 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:953a723157a2ce567ada0e296ffa14f41505be5be783ed038512ff92d50274dc`  
		Last Modified: Sat, 19 Sep 2026 00:48:28 GMT  
		Size: 42.7 MB (42732106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5907dcfc1e0d78e0329fad40dd808b8c6d12b95c0e6e520d5b0f1d6447061e1a`  
		Last Modified: Sat, 19 Sep 2026 00:48:27 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5.2.1-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:1611dbc3e8979ec0385c3414e37e23d23f9aac360cee5236e91027055a6040ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3394053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f1161b0e8b5678e53dd99f46890cff121d0f16ac078ebcb193abb8d467e3d72`

```dockerfile
```

-	Layers:
	-	`sha256:6d2dd1853c21f1fd661fe9ce96fe9df7be08f5f5921b17f15e4877380a50a358`  
		Last Modified: Sat, 19 Sep 2026 00:48:25 GMT  
		Size: 3.4 MB (3369344 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:98baa36eda27ef05988ed5461e41cafcd7203c6e0afa5ac9252dce32c5001d4e`  
		Last Modified: Sat, 19 Sep 2026 00:48:25 GMT  
		Size: 24.7 KB (24709 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:latest`

```console
$ docker pull couchdb@sha256:8cf5f8442585c346d2717ff0ad95605731d2f19f67b8367840baa8d3b24ebc31
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:latest` - linux; amd64

```console
$ docker pull couchdb@sha256:994898fe5a25a5f639e0e8a49b910c598ef6d2e784bbd872065c9fdca0af3c55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.9 MB (148890235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a90491e132a83c53d7120d6cf08d41d4bca5991b3fb080e788a4196a03bceb6`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:44:57 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Sat, 19 Sep 2026 00:44:57 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Sat, 19 Sep 2026 00:45:03 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:45:06 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Sat, 19 Sep 2026 00:45:06 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Sat, 19 Sep 2026 00:45:11 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:45:11 GMT
ENV COUCHDB_VERSION=3.5.2.1
# Sat, 19 Sep 2026 00:45:11 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Sat, 19 Sep 2026 00:45:25 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Sat, 19 Sep 2026 00:45:25 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Sat, 19 Sep 2026 00:45:25 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Sat, 19 Sep 2026 00:45:25 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Sat, 19 Sep 2026 00:45:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Sat, 19 Sep 2026 00:45:25 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:45:25 GMT
VOLUME [/opt/couchdb/data]
# Sat, 19 Sep 2026 00:45:25 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Sat, 19 Sep 2026 00:45:25 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdbc3d65b45c1381fcf70c0efd0a821298031ef37e0a422b9e577e86d3fa7662`  
		Last Modified: Sat, 19 Sep 2026 00:45:38 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1922b911fe65e24d5946eb855011359955ceda233eba2dc1698d9b5484b8900`  
		Last Modified: Sat, 19 Sep 2026 00:45:38 GMT  
		Size: 7.5 MB (7492113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d46f13840333436ea57f7807d8c9ac4974c0241aca1c620f45b05f9ec1a53b2f`  
		Last Modified: Sat, 19 Sep 2026 00:45:38 GMT  
		Size: 417.5 KB (417463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5765f4a8ff1491b49b28dfd70cf740ae58d3b6d33c23b0a44536a367a5fcf1c`  
		Last Modified: Sat, 19 Sep 2026 00:45:38 GMT  
		Size: 338.6 KB (338590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abf90134573a132fbfc8b1d52aa1624480904697ab1ca482f644688caad763da`  
		Last Modified: Sat, 19 Sep 2026 00:45:39 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc20942c62ada2bbeb31e0b909641668a7a35a434fd548efebd2c2415357efbe`  
		Last Modified: Sat, 19 Sep 2026 00:45:42 GMT  
		Size: 110.8 MB (110806217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c050ddbeda2e1c86729cc65be57d1f081e3647d6d099e4a5cb28f0e55d6c1036`  
		Last Modified: Sat, 19 Sep 2026 00:45:39 GMT  
		Size: 382.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3a05cb6c023a2dc0fd021528dfd0cca3aba1be43bd58e1272c41a74fc496901`  
		Last Modified: Sat, 19 Sep 2026 00:45:39 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e72f61e86095aa025a6b589e58f977857ac7ad38b3e10ae71fa38436fecdacf`  
		Last Modified: Sat, 19 Sep 2026 00:45:41 GMT  
		Size: 2.2 KB (2225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:869eacd3d16e045fd9f63eaefc9317d142aca227b4bb497008492c01722cd76f`  
		Last Modified: Sat, 19 Sep 2026 00:45:41 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:latest` - unknown; unknown

```console
$ docker pull couchdb@sha256:ad2154966696fd995dea9f9104adcb873cc073432443d1b117aa48be8d271700
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4218063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6daaf31f811e2f973fd56f839d00ced5d0f9d3781417faa2049edcb63516055`

```dockerfile
```

-	Layers:
	-	`sha256:9b0d5883d21be0449874729be8bcdccaa2fd745a804f9176b6aba8f132c5bfac`  
		Last Modified: Sat, 19 Sep 2026 00:45:38 GMT  
		Size: 4.2 MB (4186387 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:915d8dd760ef91c2f4f4c2331a3a76cc04200e0aa07d7cd80dd5feb159d2bbd4`  
		Last Modified: Sat, 19 Sep 2026 00:45:38 GMT  
		Size: 31.7 KB (31676 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:latest` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:be1f1c566f8b3e8a7eed7f72a70e084c65a937601ffd6bc26542bd85b2594c19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.7 MB (148653253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a2f3885618ddbc2a04d8075c6434cbf6f2f13a3efe852d2f834923d35e21781`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:47:46 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Sat, 19 Sep 2026 00:47:46 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Sat, 19 Sep 2026 00:47:53 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:47:57 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Sat, 19 Sep 2026 00:47:57 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Sat, 19 Sep 2026 00:48:03 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:48:03 GMT
ENV COUCHDB_VERSION=3.5.2.1
# Sat, 19 Sep 2026 00:48:03 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Sat, 19 Sep 2026 00:48:17 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Sat, 19 Sep 2026 00:48:17 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Sat, 19 Sep 2026 00:48:17 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Sat, 19 Sep 2026 00:48:17 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Sat, 19 Sep 2026 00:48:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Sat, 19 Sep 2026 00:48:18 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:48:18 GMT
VOLUME [/opt/couchdb/data]
# Sat, 19 Sep 2026 00:48:18 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Sat, 19 Sep 2026 00:48:18 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff67f6930119806a1da6b35c3eb2b4af405736c9dcdbd6016dadacc3d6c856a3`  
		Last Modified: Sat, 19 Sep 2026 00:48:31 GMT  
		Size: 1.2 KB (1183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b139b90fb3d8fa2152f1ac34144ac212ffc482a80d2947aff46ef6e6c4cd7d`  
		Last Modified: Sat, 19 Sep 2026 00:48:32 GMT  
		Size: 7.3 MB (7261112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fefc92a957efdeb5c26b9859c876b42842799686566332d69f765be77dfe7ce5`  
		Last Modified: Sat, 19 Sep 2026 00:48:31 GMT  
		Size: 382.4 KB (382424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42291e229d9265c42f29190f8c9dbca404c78683c54468dc1f33ad35de6deae6`  
		Last Modified: Sat, 19 Sep 2026 00:48:32 GMT  
		Size: 338.7 KB (338726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbece399c49b645de140442d0abadbce5197705c7f09e72eefe654274e7bbf13`  
		Last Modified: Sat, 19 Sep 2026 00:48:32 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a27e50ff4a248f1392f9c86e1d5ef16eb8c9bd21773e159d120585b29fccd5e`  
		Last Modified: Sat, 19 Sep 2026 00:48:35 GMT  
		Size: 110.5 MB (110475871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:183110d82e006939c93350897432063a5d730d8ec31b9760bff2e3f9b6dd86dc`  
		Last Modified: Sat, 19 Sep 2026 00:48:33 GMT  
		Size: 379.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:945879401758c65e6bdff1f14fcb7a7c2107833cbe47c9da1e5a529693798908`  
		Last Modified: Sat, 19 Sep 2026 00:48:33 GMT  
		Size: 1.2 KB (1242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa551291b6ca3a69f102ea2008bcf818bf3d863a036bdbb99110e76de8913926`  
		Last Modified: Sat, 19 Sep 2026 00:48:34 GMT  
		Size: 2.2 KB (2228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4faad290b77d12ee16b057b388b4732aa0f189a62a93a3e60ab2a9723051184c`  
		Last Modified: Sat, 19 Sep 2026 00:48:34 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:latest` - unknown; unknown

```console
$ docker pull couchdb@sha256:668b4bc43a199a335adbe2c1ebdb559317fda71e84da61164a3c7c1e0d17645c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4218577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48b9fc1d9911f5f528f3233ce13b337084f26169f99e2bdf5bc35b31b3944123`

```dockerfile
```

-	Layers:
	-	`sha256:41a1b3281e2d6e3161bc8b4749dd13254c928e5e4625fdb57e0fab6a3b8150d3`  
		Last Modified: Sat, 19 Sep 2026 00:48:32 GMT  
		Size: 4.2 MB (4186695 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66839d090f21da1bfdf29951f0db9dcc60f337df78d9f0bedf8ceccd4eca9650`  
		Last Modified: Sat, 19 Sep 2026 00:48:31 GMT  
		Size: 31.9 KB (31882 bytes)  
		MIME: application/vnd.in-toto+json
