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
$ docker pull couchdb@sha256:4e8e0a366208a87d5059b0f4fcbefff13c32401a655d4629c19be6288ea77675
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3` - linux; amd64

```console
$ docker pull couchdb@sha256:c0aacf2750f51cb7749472aa3be8acab3430b040494691fc81a786563d99921a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.8 MB (150822233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:971687e2c73177902ee7f561c7990ba494e83827d103969ae8bde842890f5946`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:46:23 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 21 Oct 2026 00:46:23 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Wed, 21 Oct 2026 00:46:31 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:46:33 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 21 Oct 2026 00:46:33 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 21 Oct 2026 00:46:40 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:46:40 GMT
ENV COUCHDB_VERSION=3.5.3
# Wed, 21 Oct 2026 00:46:40 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 21 Oct 2026 00:46:53 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Wed, 21 Oct 2026 00:46:53 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Wed, 21 Oct 2026 00:46:53 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Wed, 21 Oct 2026 00:46:53 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 00:46:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:46:53 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:46:53 GMT
VOLUME [/opt/couchdb/data]
# Wed, 21 Oct 2026 00:46:53 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Wed, 21 Oct 2026 00:46:53 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fbbf040c4b66af34f28732fe3d1b0cd4399e55662a844a7fec2790f4eb52b58`  
		Last Modified: Wed, 21 Oct 2026 00:47:07 GMT  
		Size: 1.2 KB (1183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ecec8621ca5161442a27ea28d799f6008b59561a4af1e4c2025df0074893a98`  
		Last Modified: Wed, 21 Oct 2026 00:47:07 GMT  
		Size: 7.5 MB (7491248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:216978c7d08d696cbe46c59a2189fb26f39c2b6b13dc2da125d56503690aa424`  
		Last Modified: Wed, 21 Oct 2026 00:47:07 GMT  
		Size: 417.5 KB (417466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bf6e5a5ce50d0d91fb746ccd20de0455957fcf24e9f89ca9840983f52e20d42`  
		Last Modified: Wed, 21 Oct 2026 00:47:07 GMT  
		Size: 338.6 KB (338624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bee8f913b9d7105a9daa2a35557dd78403b8a92809a6f68f6452fe2c6cf211da`  
		Last Modified: Wed, 21 Oct 2026 00:47:08 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae345e8f22a7e0b27a719a9c96a8e98b4d4d2c66040958326ebc52bcf0870575`  
		Last Modified: Wed, 21 Oct 2026 00:47:11 GMT  
		Size: 112.7 MB (112725890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d18361997f7da2a69d146f3b7aed54ba231b1ccfd5110dd770e9ee315bb7e3b`  
		Last Modified: Wed, 21 Oct 2026 00:47:08 GMT  
		Size: 379.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:155ef05e6098780b149a5cee34ff6ac2dffc6f49403d29f8caeac914323efd89`  
		Last Modified: Wed, 21 Oct 2026 00:47:08 GMT  
		Size: 1.2 KB (1242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ed87f67bf9ca16bca41f210a50ea4f1bc8b6d1c5882ba87d977a01096369e2e`  
		Last Modified: Wed, 21 Oct 2026 00:47:09 GMT  
		Size: 2.2 KB (2227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:415a9f0be667771c42347b0dc51b01525c08925e5e66346f2b3e792d4efab621`  
		Last Modified: Wed, 21 Oct 2026 00:47:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3` - unknown; unknown

```console
$ docker pull couchdb@sha256:b04793f8a5722692dc72a319eee661d1bce085c67c5f9257d9d48cdc2e4360d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4225936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c1255c95587cbc7dc3f0880d86ffa44070d16fcab26dd79cb5de53bd1b46fd6`

```dockerfile
```

-	Layers:
	-	`sha256:8d5898f0eb7f1ad2361bca08ad60cac0a88d38ba87c0d200a1d3ab847fcfbe2c`  
		Last Modified: Wed, 21 Oct 2026 00:47:07 GMT  
		Size: 4.2 MB (4194579 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e34a4a9e19c8af7a8b29c793434601600634cf78172af93072a35ed7e76abef3`  
		Last Modified: Wed, 21 Oct 2026 00:47:06 GMT  
		Size: 31.4 KB (31357 bytes)  
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
$ docker pull couchdb@sha256:ec4f754304e12fe15f6edcd35e0ed96a0b9826ef10896b9d574626fd040d8352
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3-nouveau` - linux; amd64

```console
$ docker pull couchdb@sha256:f44b5c0d268c31865b8f1a680964a6d13d918697ad1c83483e2904c7192f8251
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.0 MB (150969676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fe48e12e535dd5c23bcb32d587f288029d5602d5606f054bbf72cf502720bae`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:46:25 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 21 Oct 2026 00:46:25 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Wed, 21 Oct 2026 00:46:32 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:46:36 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:46:39 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 21 Oct 2026 00:46:39 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 21 Oct 2026 00:46:43 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:46:43 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 21 Oct 2026 00:46:48 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends             couchdb-nouveau=3.5.3~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Wed, 21 Oct 2026 00:46:48 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Wed, 21 Oct 2026 00:46:48 GMT
VOLUME [/opt/nouveau/data]
# Wed, 21 Oct 2026 00:46:48 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Wed, 21 Oct 2026 00:46:48 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d13933103a2d7c7543efde6898d36f563d3c5888d6b1b7d6654ccefb42f25894`  
		Last Modified: Wed, 21 Oct 2026 00:47:01 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9263c116d7a23da584aa8b4651b6e6a819f8cd504d403f1027e318f31123e67`  
		Last Modified: Wed, 21 Oct 2026 00:47:01 GMT  
		Size: 7.5 MB (7491283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75667f16d6071092ef8a08cd426516ae94a952d2b41cda80f08599d2b03ffa5b`  
		Last Modified: Wed, 21 Oct 2026 00:47:03 GMT  
		Size: 70.1 MB (70051167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5686cfc73b629158c8aa2315ad0d9b9ae4d98399efbac1fbde3bbdc78950e262`  
		Last Modified: Wed, 21 Oct 2026 00:47:01 GMT  
		Size: 425.8 KB (425820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a037c5d0fe0ccd101718e0c0bde17890b19f6870983184306bbf62482b55276`  
		Last Modified: Wed, 21 Oct 2026 00:47:03 GMT  
		Size: 347.4 KB (347375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42520494255b5aa55f2b080906f850c92b8600bbdc8c4c4ad0f033008f39c798`  
		Last Modified: Wed, 21 Oct 2026 00:47:03 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3db3c42d502bc54d7840e790c4d271a14cde1fcfd2c0e3d49c1ef375aacdb11d`  
		Last Modified: Wed, 21 Oct 2026 00:47:04 GMT  
		Size: 42.8 MB (42808579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b68bb0c9b4e82572736a4995e13a881fecad03a1efd281a82d44d8c884ac8136`  
		Last Modified: Wed, 21 Oct 2026 00:47:04 GMT  
		Size: 417.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:c621b3185181fe660295b94fcd98ae15272a9e6e50fb3093b9734229e6a2d510
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3393345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f035dee16239b19b54a7c2eb138318bcbb48487d855e939200259e4f28efa091`

```dockerfile
```

-	Layers:
	-	`sha256:5708e6a5ef5e0c9dce5fc16a6802a42610c29e3422b7e8eac2bd65e6cd2f60bf`  
		Last Modified: Wed, 21 Oct 2026 00:47:01 GMT  
		Size: 3.4 MB (3369088 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5b3abb8fe59ce03a59a1c2d0b0f1d8eb68585b2e1634e1b58754120440dcb8b`  
		Last Modified: Wed, 21 Oct 2026 00:47:01 GMT  
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
$ docker pull couchdb@sha256:4e8e0a366208a87d5059b0f4fcbefff13c32401a655d4629c19be6288ea77675
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3.5` - linux; amd64

```console
$ docker pull couchdb@sha256:c0aacf2750f51cb7749472aa3be8acab3430b040494691fc81a786563d99921a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.8 MB (150822233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:971687e2c73177902ee7f561c7990ba494e83827d103969ae8bde842890f5946`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:46:23 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 21 Oct 2026 00:46:23 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Wed, 21 Oct 2026 00:46:31 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:46:33 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 21 Oct 2026 00:46:33 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 21 Oct 2026 00:46:40 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:46:40 GMT
ENV COUCHDB_VERSION=3.5.3
# Wed, 21 Oct 2026 00:46:40 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 21 Oct 2026 00:46:53 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Wed, 21 Oct 2026 00:46:53 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Wed, 21 Oct 2026 00:46:53 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Wed, 21 Oct 2026 00:46:53 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 00:46:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:46:53 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:46:53 GMT
VOLUME [/opt/couchdb/data]
# Wed, 21 Oct 2026 00:46:53 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Wed, 21 Oct 2026 00:46:53 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fbbf040c4b66af34f28732fe3d1b0cd4399e55662a844a7fec2790f4eb52b58`  
		Last Modified: Wed, 21 Oct 2026 00:47:07 GMT  
		Size: 1.2 KB (1183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ecec8621ca5161442a27ea28d799f6008b59561a4af1e4c2025df0074893a98`  
		Last Modified: Wed, 21 Oct 2026 00:47:07 GMT  
		Size: 7.5 MB (7491248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:216978c7d08d696cbe46c59a2189fb26f39c2b6b13dc2da125d56503690aa424`  
		Last Modified: Wed, 21 Oct 2026 00:47:07 GMT  
		Size: 417.5 KB (417466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bf6e5a5ce50d0d91fb746ccd20de0455957fcf24e9f89ca9840983f52e20d42`  
		Last Modified: Wed, 21 Oct 2026 00:47:07 GMT  
		Size: 338.6 KB (338624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bee8f913b9d7105a9daa2a35557dd78403b8a92809a6f68f6452fe2c6cf211da`  
		Last Modified: Wed, 21 Oct 2026 00:47:08 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae345e8f22a7e0b27a719a9c96a8e98b4d4d2c66040958326ebc52bcf0870575`  
		Last Modified: Wed, 21 Oct 2026 00:47:11 GMT  
		Size: 112.7 MB (112725890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d18361997f7da2a69d146f3b7aed54ba231b1ccfd5110dd770e9ee315bb7e3b`  
		Last Modified: Wed, 21 Oct 2026 00:47:08 GMT  
		Size: 379.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:155ef05e6098780b149a5cee34ff6ac2dffc6f49403d29f8caeac914323efd89`  
		Last Modified: Wed, 21 Oct 2026 00:47:08 GMT  
		Size: 1.2 KB (1242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ed87f67bf9ca16bca41f210a50ea4f1bc8b6d1c5882ba87d977a01096369e2e`  
		Last Modified: Wed, 21 Oct 2026 00:47:09 GMT  
		Size: 2.2 KB (2227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:415a9f0be667771c42347b0dc51b01525c08925e5e66346f2b3e792d4efab621`  
		Last Modified: Wed, 21 Oct 2026 00:47:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5` - unknown; unknown

```console
$ docker pull couchdb@sha256:b04793f8a5722692dc72a319eee661d1bce085c67c5f9257d9d48cdc2e4360d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4225936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c1255c95587cbc7dc3f0880d86ffa44070d16fcab26dd79cb5de53bd1b46fd6`

```dockerfile
```

-	Layers:
	-	`sha256:8d5898f0eb7f1ad2361bca08ad60cac0a88d38ba87c0d200a1d3ab847fcfbe2c`  
		Last Modified: Wed, 21 Oct 2026 00:47:07 GMT  
		Size: 4.2 MB (4194579 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e34a4a9e19c8af7a8b29c793434601600634cf78172af93072a35ed7e76abef3`  
		Last Modified: Wed, 21 Oct 2026 00:47:06 GMT  
		Size: 31.4 KB (31357 bytes)  
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
$ docker pull couchdb@sha256:ec4f754304e12fe15f6edcd35e0ed96a0b9826ef10896b9d574626fd040d8352
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3.5-nouveau` - linux; amd64

```console
$ docker pull couchdb@sha256:f44b5c0d268c31865b8f1a680964a6d13d918697ad1c83483e2904c7192f8251
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.0 MB (150969676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fe48e12e535dd5c23bcb32d587f288029d5602d5606f054bbf72cf502720bae`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:46:25 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 21 Oct 2026 00:46:25 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Wed, 21 Oct 2026 00:46:32 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:46:36 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:46:39 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 21 Oct 2026 00:46:39 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 21 Oct 2026 00:46:43 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:46:43 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 21 Oct 2026 00:46:48 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends             couchdb-nouveau=3.5.3~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Wed, 21 Oct 2026 00:46:48 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Wed, 21 Oct 2026 00:46:48 GMT
VOLUME [/opt/nouveau/data]
# Wed, 21 Oct 2026 00:46:48 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Wed, 21 Oct 2026 00:46:48 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d13933103a2d7c7543efde6898d36f563d3c5888d6b1b7d6654ccefb42f25894`  
		Last Modified: Wed, 21 Oct 2026 00:47:01 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9263c116d7a23da584aa8b4651b6e6a819f8cd504d403f1027e318f31123e67`  
		Last Modified: Wed, 21 Oct 2026 00:47:01 GMT  
		Size: 7.5 MB (7491283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75667f16d6071092ef8a08cd426516ae94a952d2b41cda80f08599d2b03ffa5b`  
		Last Modified: Wed, 21 Oct 2026 00:47:03 GMT  
		Size: 70.1 MB (70051167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5686cfc73b629158c8aa2315ad0d9b9ae4d98399efbac1fbde3bbdc78950e262`  
		Last Modified: Wed, 21 Oct 2026 00:47:01 GMT  
		Size: 425.8 KB (425820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a037c5d0fe0ccd101718e0c0bde17890b19f6870983184306bbf62482b55276`  
		Last Modified: Wed, 21 Oct 2026 00:47:03 GMT  
		Size: 347.4 KB (347375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42520494255b5aa55f2b080906f850c92b8600bbdc8c4c4ad0f033008f39c798`  
		Last Modified: Wed, 21 Oct 2026 00:47:03 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3db3c42d502bc54d7840e790c4d271a14cde1fcfd2c0e3d49c1ef375aacdb11d`  
		Last Modified: Wed, 21 Oct 2026 00:47:04 GMT  
		Size: 42.8 MB (42808579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b68bb0c9b4e82572736a4995e13a881fecad03a1efd281a82d44d8c884ac8136`  
		Last Modified: Wed, 21 Oct 2026 00:47:04 GMT  
		Size: 417.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:c621b3185181fe660295b94fcd98ae15272a9e6e50fb3093b9734229e6a2d510
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3393345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f035dee16239b19b54a7c2eb138318bcbb48487d855e939200259e4f28efa091`

```dockerfile
```

-	Layers:
	-	`sha256:5708e6a5ef5e0c9dce5fc16a6802a42610c29e3422b7e8eac2bd65e6cd2f60bf`  
		Last Modified: Wed, 21 Oct 2026 00:47:01 GMT  
		Size: 3.4 MB (3369088 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5b3abb8fe59ce03a59a1c2d0b0f1d8eb68585b2e1634e1b58754120440dcb8b`  
		Last Modified: Wed, 21 Oct 2026 00:47:01 GMT  
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
$ docker pull couchdb@sha256:4e8e0a366208a87d5059b0f4fcbefff13c32401a655d4629c19be6288ea77675
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3.5.3` - linux; amd64

```console
$ docker pull couchdb@sha256:c0aacf2750f51cb7749472aa3be8acab3430b040494691fc81a786563d99921a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.8 MB (150822233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:971687e2c73177902ee7f561c7990ba494e83827d103969ae8bde842890f5946`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:46:23 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 21 Oct 2026 00:46:23 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Wed, 21 Oct 2026 00:46:31 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:46:33 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 21 Oct 2026 00:46:33 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 21 Oct 2026 00:46:40 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:46:40 GMT
ENV COUCHDB_VERSION=3.5.3
# Wed, 21 Oct 2026 00:46:40 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 21 Oct 2026 00:46:53 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Wed, 21 Oct 2026 00:46:53 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Wed, 21 Oct 2026 00:46:53 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Wed, 21 Oct 2026 00:46:53 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 00:46:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:46:53 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:46:53 GMT
VOLUME [/opt/couchdb/data]
# Wed, 21 Oct 2026 00:46:53 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Wed, 21 Oct 2026 00:46:53 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fbbf040c4b66af34f28732fe3d1b0cd4399e55662a844a7fec2790f4eb52b58`  
		Last Modified: Wed, 21 Oct 2026 00:47:07 GMT  
		Size: 1.2 KB (1183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ecec8621ca5161442a27ea28d799f6008b59561a4af1e4c2025df0074893a98`  
		Last Modified: Wed, 21 Oct 2026 00:47:07 GMT  
		Size: 7.5 MB (7491248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:216978c7d08d696cbe46c59a2189fb26f39c2b6b13dc2da125d56503690aa424`  
		Last Modified: Wed, 21 Oct 2026 00:47:07 GMT  
		Size: 417.5 KB (417466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bf6e5a5ce50d0d91fb746ccd20de0455957fcf24e9f89ca9840983f52e20d42`  
		Last Modified: Wed, 21 Oct 2026 00:47:07 GMT  
		Size: 338.6 KB (338624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bee8f913b9d7105a9daa2a35557dd78403b8a92809a6f68f6452fe2c6cf211da`  
		Last Modified: Wed, 21 Oct 2026 00:47:08 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae345e8f22a7e0b27a719a9c96a8e98b4d4d2c66040958326ebc52bcf0870575`  
		Last Modified: Wed, 21 Oct 2026 00:47:11 GMT  
		Size: 112.7 MB (112725890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d18361997f7da2a69d146f3b7aed54ba231b1ccfd5110dd770e9ee315bb7e3b`  
		Last Modified: Wed, 21 Oct 2026 00:47:08 GMT  
		Size: 379.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:155ef05e6098780b149a5cee34ff6ac2dffc6f49403d29f8caeac914323efd89`  
		Last Modified: Wed, 21 Oct 2026 00:47:08 GMT  
		Size: 1.2 KB (1242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ed87f67bf9ca16bca41f210a50ea4f1bc8b6d1c5882ba87d977a01096369e2e`  
		Last Modified: Wed, 21 Oct 2026 00:47:09 GMT  
		Size: 2.2 KB (2227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:415a9f0be667771c42347b0dc51b01525c08925e5e66346f2b3e792d4efab621`  
		Last Modified: Wed, 21 Oct 2026 00:47:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5.3` - unknown; unknown

```console
$ docker pull couchdb@sha256:b04793f8a5722692dc72a319eee661d1bce085c67c5f9257d9d48cdc2e4360d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4225936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c1255c95587cbc7dc3f0880d86ffa44070d16fcab26dd79cb5de53bd1b46fd6`

```dockerfile
```

-	Layers:
	-	`sha256:8d5898f0eb7f1ad2361bca08ad60cac0a88d38ba87c0d200a1d3ab847fcfbe2c`  
		Last Modified: Wed, 21 Oct 2026 00:47:07 GMT  
		Size: 4.2 MB (4194579 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e34a4a9e19c8af7a8b29c793434601600634cf78172af93072a35ed7e76abef3`  
		Last Modified: Wed, 21 Oct 2026 00:47:06 GMT  
		Size: 31.4 KB (31357 bytes)  
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
$ docker pull couchdb@sha256:ec4f754304e12fe15f6edcd35e0ed96a0b9826ef10896b9d574626fd040d8352
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3.5.3-nouveau` - linux; amd64

```console
$ docker pull couchdb@sha256:f44b5c0d268c31865b8f1a680964a6d13d918697ad1c83483e2904c7192f8251
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.0 MB (150969676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fe48e12e535dd5c23bcb32d587f288029d5602d5606f054bbf72cf502720bae`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:46:25 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 21 Oct 2026 00:46:25 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Wed, 21 Oct 2026 00:46:32 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:46:36 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:46:39 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 21 Oct 2026 00:46:39 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 21 Oct 2026 00:46:43 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:46:43 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 21 Oct 2026 00:46:48 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends             couchdb-nouveau=3.5.3~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Wed, 21 Oct 2026 00:46:48 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Wed, 21 Oct 2026 00:46:48 GMT
VOLUME [/opt/nouveau/data]
# Wed, 21 Oct 2026 00:46:48 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Wed, 21 Oct 2026 00:46:48 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d13933103a2d7c7543efde6898d36f563d3c5888d6b1b7d6654ccefb42f25894`  
		Last Modified: Wed, 21 Oct 2026 00:47:01 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9263c116d7a23da584aa8b4651b6e6a819f8cd504d403f1027e318f31123e67`  
		Last Modified: Wed, 21 Oct 2026 00:47:01 GMT  
		Size: 7.5 MB (7491283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75667f16d6071092ef8a08cd426516ae94a952d2b41cda80f08599d2b03ffa5b`  
		Last Modified: Wed, 21 Oct 2026 00:47:03 GMT  
		Size: 70.1 MB (70051167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5686cfc73b629158c8aa2315ad0d9b9ae4d98399efbac1fbde3bbdc78950e262`  
		Last Modified: Wed, 21 Oct 2026 00:47:01 GMT  
		Size: 425.8 KB (425820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a037c5d0fe0ccd101718e0c0bde17890b19f6870983184306bbf62482b55276`  
		Last Modified: Wed, 21 Oct 2026 00:47:03 GMT  
		Size: 347.4 KB (347375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42520494255b5aa55f2b080906f850c92b8600bbdc8c4c4ad0f033008f39c798`  
		Last Modified: Wed, 21 Oct 2026 00:47:03 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3db3c42d502bc54d7840e790c4d271a14cde1fcfd2c0e3d49c1ef375aacdb11d`  
		Last Modified: Wed, 21 Oct 2026 00:47:04 GMT  
		Size: 42.8 MB (42808579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b68bb0c9b4e82572736a4995e13a881fecad03a1efd281a82d44d8c884ac8136`  
		Last Modified: Wed, 21 Oct 2026 00:47:04 GMT  
		Size: 417.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5.3-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:c621b3185181fe660295b94fcd98ae15272a9e6e50fb3093b9734229e6a2d510
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3393345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f035dee16239b19b54a7c2eb138318bcbb48487d855e939200259e4f28efa091`

```dockerfile
```

-	Layers:
	-	`sha256:5708e6a5ef5e0c9dce5fc16a6802a42610c29e3422b7e8eac2bd65e6cd2f60bf`  
		Last Modified: Wed, 21 Oct 2026 00:47:01 GMT  
		Size: 3.4 MB (3369088 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5b3abb8fe59ce03a59a1c2d0b0f1d8eb68585b2e1634e1b58754120440dcb8b`  
		Last Modified: Wed, 21 Oct 2026 00:47:01 GMT  
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
$ docker pull couchdb@sha256:4e8e0a366208a87d5059b0f4fcbefff13c32401a655d4629c19be6288ea77675
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:latest` - linux; amd64

```console
$ docker pull couchdb@sha256:c0aacf2750f51cb7749472aa3be8acab3430b040494691fc81a786563d99921a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.8 MB (150822233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:971687e2c73177902ee7f561c7990ba494e83827d103969ae8bde842890f5946`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:46:23 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Wed, 21 Oct 2026 00:46:23 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Wed, 21 Oct 2026 00:46:31 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:46:33 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Wed, 21 Oct 2026 00:46:33 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Wed, 21 Oct 2026 00:46:40 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:46:40 GMT
ENV COUCHDB_VERSION=3.5.3
# Wed, 21 Oct 2026 00:46:40 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Wed, 21 Oct 2026 00:46:53 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Wed, 21 Oct 2026 00:46:53 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Wed, 21 Oct 2026 00:46:53 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Wed, 21 Oct 2026 00:46:53 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 00:46:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Wed, 21 Oct 2026 00:46:53 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:46:53 GMT
VOLUME [/opt/couchdb/data]
# Wed, 21 Oct 2026 00:46:53 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Wed, 21 Oct 2026 00:46:53 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fbbf040c4b66af34f28732fe3d1b0cd4399e55662a844a7fec2790f4eb52b58`  
		Last Modified: Wed, 21 Oct 2026 00:47:07 GMT  
		Size: 1.2 KB (1183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ecec8621ca5161442a27ea28d799f6008b59561a4af1e4c2025df0074893a98`  
		Last Modified: Wed, 21 Oct 2026 00:47:07 GMT  
		Size: 7.5 MB (7491248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:216978c7d08d696cbe46c59a2189fb26f39c2b6b13dc2da125d56503690aa424`  
		Last Modified: Wed, 21 Oct 2026 00:47:07 GMT  
		Size: 417.5 KB (417466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bf6e5a5ce50d0d91fb746ccd20de0455957fcf24e9f89ca9840983f52e20d42`  
		Last Modified: Wed, 21 Oct 2026 00:47:07 GMT  
		Size: 338.6 KB (338624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bee8f913b9d7105a9daa2a35557dd78403b8a92809a6f68f6452fe2c6cf211da`  
		Last Modified: Wed, 21 Oct 2026 00:47:08 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae345e8f22a7e0b27a719a9c96a8e98b4d4d2c66040958326ebc52bcf0870575`  
		Last Modified: Wed, 21 Oct 2026 00:47:11 GMT  
		Size: 112.7 MB (112725890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d18361997f7da2a69d146f3b7aed54ba231b1ccfd5110dd770e9ee315bb7e3b`  
		Last Modified: Wed, 21 Oct 2026 00:47:08 GMT  
		Size: 379.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:155ef05e6098780b149a5cee34ff6ac2dffc6f49403d29f8caeac914323efd89`  
		Last Modified: Wed, 21 Oct 2026 00:47:08 GMT  
		Size: 1.2 KB (1242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ed87f67bf9ca16bca41f210a50ea4f1bc8b6d1c5882ba87d977a01096369e2e`  
		Last Modified: Wed, 21 Oct 2026 00:47:09 GMT  
		Size: 2.2 KB (2227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:415a9f0be667771c42347b0dc51b01525c08925e5e66346f2b3e792d4efab621`  
		Last Modified: Wed, 21 Oct 2026 00:47:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:latest` - unknown; unknown

```console
$ docker pull couchdb@sha256:b04793f8a5722692dc72a319eee661d1bce085c67c5f9257d9d48cdc2e4360d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4225936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c1255c95587cbc7dc3f0880d86ffa44070d16fcab26dd79cb5de53bd1b46fd6`

```dockerfile
```

-	Layers:
	-	`sha256:8d5898f0eb7f1ad2361bca08ad60cac0a88d38ba87c0d200a1d3ab847fcfbe2c`  
		Last Modified: Wed, 21 Oct 2026 00:47:07 GMT  
		Size: 4.2 MB (4194579 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e34a4a9e19c8af7a8b29c793434601600634cf78172af93072a35ed7e76abef3`  
		Last Modified: Wed, 21 Oct 2026 00:47:06 GMT  
		Size: 31.4 KB (31357 bytes)  
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
