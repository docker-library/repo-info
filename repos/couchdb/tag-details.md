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
$ docker pull couchdb@sha256:3611ce43bd32fe2368997fd41ec6e7270ec8d84aa5fc13c9828e5b15fd6bafe8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3` - linux; amd64

```console
$ docker pull couchdb@sha256:e2c5ab14061cb87c9986f2b8b8b7088e73508acfc4985293d16bd0b2a729d25e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.8 MB (150823612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc9316ca158c1b8b575e64cc49466af5d320d373d52a7fd227667fdcf8c7b301`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 13 Oct 2026 21:08:19 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 13 Oct 2026 21:08:19 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Tue, 13 Oct 2026 21:08:25 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 21:08:28 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 13 Oct 2026 21:08:28 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 13 Oct 2026 21:08:33 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 21:08:33 GMT
ENV COUCHDB_VERSION=3.5.3
# Tue, 13 Oct 2026 21:08:33 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 13 Oct 2026 21:08:45 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 13 Oct 2026 21:08:45 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Tue, 13 Oct 2026 21:08:45 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Tue, 13 Oct 2026 21:08:45 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 13 Oct 2026 21:08:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Tue, 13 Oct 2026 21:08:45 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 13 Oct 2026 21:08:45 GMT
VOLUME [/opt/couchdb/data]
# Tue, 13 Oct 2026 21:08:45 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Tue, 13 Oct 2026 21:08:45 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:723dc04aea0616e5e99a19587acbb6e83935b62afbca4eea693d12b9e26f7054`  
		Last Modified: Tue, 13 Oct 2026 21:08:58 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a3e86681408caf899345f80f11c1498df576b15499d979c29c9723d92df5b78`  
		Last Modified: Tue, 13 Oct 2026 21:08:59 GMT  
		Size: 7.5 MB (7492062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4636f38fc150bfcd99b8689956f647774e41994a83c21f3ed4fcdd24506e77f`  
		Last Modified: Tue, 13 Oct 2026 21:08:59 GMT  
		Size: 417.4 KB (417434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a99a1248f03fb01c8ef34256eb5301c512cd5934e547bb414edeb661535c442b`  
		Last Modified: Tue, 13 Oct 2026 21:08:59 GMT  
		Size: 338.6 KB (338591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48410a7ff023290627fe801c271581d431527f5e77b902c4bd36784c22cd82c5`  
		Last Modified: Tue, 13 Oct 2026 21:09:00 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f91502e0a6ce73d4d60a7d756c4829633accc6e0e37f7288004627e4ba1ef8d1`  
		Last Modified: Tue, 13 Oct 2026 21:09:02 GMT  
		Size: 112.7 MB (112726749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da04c245afd94552ea2631fa586e3f83354ec710bbe54ae06bdae2e3d7c2979e`  
		Last Modified: Tue, 13 Oct 2026 21:09:00 GMT  
		Size: 377.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff39dd95b33c8b5d9a799866de0f797033a586780adccaca1c0e2c8d1a310675`  
		Last Modified: Tue, 13 Oct 2026 21:09:00 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79ad3edd08d562008f5e14535eb1476478e7d06b3753de415fdd111211bf5b56`  
		Last Modified: Tue, 13 Oct 2026 21:09:01 GMT  
		Size: 2.2 KB (2227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:806e488cfebc777626c05aa67db41407ad90e80931dc2b8106f6b6d87b674d9b`  
		Last Modified: Tue, 13 Oct 2026 21:09:01 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3` - unknown; unknown

```console
$ docker pull couchdb@sha256:122b142982570d47d9e9e3f6d4d51a4128a7bab0a999ec3d6e5c40a6b4bee0a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4227214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:996cc0a8a87deca894e07ce68a54463d75443d55fbdcc46fface64c79ecfc211`

```dockerfile
```

-	Layers:
	-	`sha256:14b0a4e908869737d371d05afa85fa429b7b60103fc0f6af4b45ef8763e1a791`  
		Last Modified: Tue, 13 Oct 2026 21:08:59 GMT  
		Size: 4.2 MB (4195856 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2269caa0ab5def5f11d8ca089fa90243661c2e4abe3fba0367620855f5b4f227`  
		Last Modified: Tue, 13 Oct 2026 21:08:59 GMT  
		Size: 31.4 KB (31358 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:e9a1ecae9ab034af5f3bb68cb69bdc77ba29d1a4cb9a3869e1ca17db72796211
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.5 MB (150538073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f9d6826a0306f864d8a530ff604eb4fcc6d859fcd63cffcb00f08cb63687df9`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 13 Oct 2026 21:08:43 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 13 Oct 2026 21:08:43 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Tue, 13 Oct 2026 21:08:51 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 21:08:55 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 13 Oct 2026 21:08:55 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 13 Oct 2026 21:09:01 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 21:09:01 GMT
ENV COUCHDB_VERSION=3.5.3
# Tue, 13 Oct 2026 21:09:02 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 13 Oct 2026 21:09:16 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 13 Oct 2026 21:09:16 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Tue, 13 Oct 2026 21:09:16 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Tue, 13 Oct 2026 21:09:16 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 13 Oct 2026 21:09:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Tue, 13 Oct 2026 21:09:16 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 13 Oct 2026 21:09:16 GMT
VOLUME [/opt/couchdb/data]
# Tue, 13 Oct 2026 21:09:16 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Tue, 13 Oct 2026 21:09:16 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:010b098cd721f4226489cb9128342af92c2c53efb223bf3da133ec6307e084a1`  
		Last Modified: Tue, 13 Oct 2026 21:09:30 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ad2aa89912375d0c4e36a45759fe2a076127c5ba06a5edafa17c7a1f1275d6d`  
		Last Modified: Tue, 13 Oct 2026 21:09:30 GMT  
		Size: 7.3 MB (7261171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a941f02186ca70172bd2f59c180ecddd8104a2547e196fcacba999fd32a1fe3d`  
		Last Modified: Tue, 13 Oct 2026 21:09:30 GMT  
		Size: 382.4 KB (382446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d2a81c9b661ba2c16d7bc5f4ea804cd0c34c666a1c66e83762bc3d840ee4be0`  
		Last Modified: Tue, 13 Oct 2026 21:09:30 GMT  
		Size: 338.8 KB (338756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e837c4c272c0baa93d7c97d158b008505819e4f48cb4c48c30540cf0f5f76399`  
		Last Modified: Tue, 13 Oct 2026 21:09:32 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a9cdadcc6bb505e784492932903ef63be9a6a1d6a0993f14e66001c2f094728`  
		Last Modified: Tue, 13 Oct 2026 21:09:34 GMT  
		Size: 112.3 MB (112349985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b8d6b709b7cc7e41f57e00a359e844e3dd4f241b9f18f79a5762fdba71cd089`  
		Last Modified: Tue, 13 Oct 2026 21:09:32 GMT  
		Size: 381.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21ff847c3a444ab8e7108b04e79e97d283067a3f360cbfc8fa6211df86dc8f72`  
		Last Modified: Tue, 13 Oct 2026 21:09:32 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:880af9c29f852ea53a775ed9ce0971453641d0e45824cc8cf56113b0cd361a14`  
		Last Modified: Tue, 13 Oct 2026 21:09:33 GMT  
		Size: 2.2 KB (2226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92a268002830f52a886dbd5226ca4c5d43e16c7042cce5e978ef64ea516ba637`  
		Last Modified: Tue, 13 Oct 2026 21:09:33 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3` - unknown; unknown

```console
$ docker pull couchdb@sha256:514b108684cdcc7b05745c3794cc1f9c998b337c74647f63d72886ed6ed79935
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4227704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d03ac47afe9c0c925d1e83ce96de19ab47ec05870787243dda97bbc83352e6e`

```dockerfile
```

-	Layers:
	-	`sha256:43da62329a1f0a3cbc9459f8dacd7a1888ea5c40d4c1f888951e594d680130a3`  
		Last Modified: Tue, 13 Oct 2026 21:09:31 GMT  
		Size: 4.2 MB (4196152 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f68cdef84395b2cf3cca035923dccd1c42c4518fc9c4469f14f4a5ced0d109d9`  
		Last Modified: Tue, 13 Oct 2026 21:09:30 GMT  
		Size: 31.6 KB (31552 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3-nouveau`

```console
$ docker pull couchdb@sha256:a39587ed1b8cb1165ff26324d1aaf800841b0c200d4db32afa57b676d7e7272e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3-nouveau` - linux; amd64

```console
$ docker pull couchdb@sha256:24f0d12d29093da720a2269224c40597daa26363d6d9884cc1ea369b9c421cf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.0 MB (150972227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2db9b2fa2b3307b3dee794dbbfa1eb960d7672cb2f9735984e3befd74cc6cc7`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 13 Oct 2026 21:08:21 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 13 Oct 2026 21:08:21 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Tue, 13 Oct 2026 21:08:28 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 21:08:33 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 21:08:36 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 13 Oct 2026 21:08:36 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 13 Oct 2026 21:08:41 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 21:08:42 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 13 Oct 2026 21:08:47 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends             couchdb-nouveau=3.5.3~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Tue, 13 Oct 2026 21:08:47 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Tue, 13 Oct 2026 21:08:47 GMT
VOLUME [/opt/nouveau/data]
# Tue, 13 Oct 2026 21:08:47 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Tue, 13 Oct 2026 21:08:47 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bdab854b474521eebc77abd2abb526514604a5f8b0c486cf59d4252a2a10819`  
		Last Modified: Tue, 13 Oct 2026 21:09:01 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe8fe91fe9db62299d98ef57db6066ed5223c5abdecaac730351c97c807afe56`  
		Last Modified: Tue, 13 Oct 2026 21:09:02 GMT  
		Size: 7.5 MB (7492040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9b38b7c8505dcaeaf5b08af9e74bb1e7d726cf1baed0f77c9168ed9e9560a61`  
		Last Modified: Tue, 13 Oct 2026 21:09:04 GMT  
		Size: 70.1 MB (70053164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:082577d59405505f8ef29e2540b9ba69d2e8a49552eeba699f4077c1e3d505ac`  
		Last Modified: Tue, 13 Oct 2026 21:09:02 GMT  
		Size: 425.8 KB (425830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ef3ecda44343d626710ecb4c5f8b4a378d541e871e8a5f501fc2264c78870f6`  
		Last Modified: Tue, 13 Oct 2026 21:09:03 GMT  
		Size: 347.4 KB (347350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1965a3c79c63c54d176e4c7c5a6541cc6bf13e9bac1772b8b0c40ad1d3f6d03`  
		Last Modified: Tue, 13 Oct 2026 21:09:03 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b9bdeb6a248dc599851e5badf9c1e5efe9a8bcf98924d360d07b2d98caed8ca`  
		Last Modified: Tue, 13 Oct 2026 21:09:05 GMT  
		Size: 42.8 MB (42808609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7561079cd59bbb8d691d28876847de8ed27572bc4e1fb4ab8376a3f71abd1860`  
		Last Modified: Tue, 13 Oct 2026 21:09:04 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:4df6e1c97938f2c02027f773216e0d7c30c34a24048a13be9d5a28f3f6a64d54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3394622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0b5940b842d70d9bd6262345492a338bc32a2fc75a7c5a89f5fb3d95e0de38f`

```dockerfile
```

-	Layers:
	-	`sha256:13dc6e1755af5f337f2f91e38d8d8c3e8a6be656eda2dc1439da9a3be3df79f4`  
		Last Modified: Tue, 13 Oct 2026 21:09:02 GMT  
		Size: 3.4 MB (3370365 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:25433a11dda183b96bdc52ef204c6b6fa63278c8d7ee0c71768e2ded12e25a29`  
		Last Modified: Tue, 13 Oct 2026 21:09:01 GMT  
		Size: 24.3 KB (24257 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3-nouveau` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:9951bddba02058daa482f1b62934eaddb3cdf866d7cd218dc84c341399b0cad0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150126474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5ec932688d600a29e97e4104811c3f1de6b1fb9e527ee269548bbca77141241`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 13 Oct 2026 21:08:48 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 13 Oct 2026 21:08:48 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Tue, 13 Oct 2026 21:08:55 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 21:09:02 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 21:09:05 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 13 Oct 2026 21:09:05 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 13 Oct 2026 21:09:11 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 21:09:11 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 13 Oct 2026 21:09:17 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends             couchdb-nouveau=3.5.3~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Tue, 13 Oct 2026 21:09:17 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Tue, 13 Oct 2026 21:09:17 GMT
VOLUME [/opt/nouveau/data]
# Tue, 13 Oct 2026 21:09:17 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Tue, 13 Oct 2026 21:09:17 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e61b7a056b2ce0b9aeb3d72c9663ebb4200813dbc921a50186e531171944f2e`  
		Last Modified: Tue, 13 Oct 2026 21:09:31 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ae343b6961473f125bae92bdf2f5e6a0b06d040cd088ab2092255908ca90d4e`  
		Last Modified: Tue, 13 Oct 2026 21:09:32 GMT  
		Size: 7.3 MB (7261081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aed1734e6c96f9ad4d3eb345b95a967cb6d2d6132aa2518f149898c816339353`  
		Last Modified: Tue, 13 Oct 2026 21:09:33 GMT  
		Size: 69.2 MB (69192999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58c66f495d4b06a3f3fbbeefe7fb2c9f95cbee6899dec35c8b8348d406099fb8`  
		Last Modified: Tue, 13 Oct 2026 21:09:32 GMT  
		Size: 390.2 KB (390182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e2b5e3d694de371bd7bcc3cee90b0d65fff922fdfc2752f071df8be1eefe233`  
		Last Modified: Tue, 13 Oct 2026 21:09:32 GMT  
		Size: 347.5 KB (347501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e413cd6ba46e17d35c49950a4d557744b71759f779f14be3b69c6e148dfbc87`  
		Last Modified: Tue, 13 Oct 2026 21:09:33 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa208f446f7be8ffbe0c9b527f7ab84f4b9614d9f875edd651da77aecf9fd252`  
		Last Modified: Tue, 13 Oct 2026 21:09:34 GMT  
		Size: 42.7 MB (42732552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c918f271b57c7157b7c16eba06fdacd9212dc46ae8d52f6c21dd01a9674dccff`  
		Last Modified: Tue, 13 Oct 2026 21:09:34 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:60593665e3748a4007e695dc427a921db0e0e2474489fe7c6af1dc5be747e07a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3393445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beb0e2c170c46f99ce29cbf8cba122cbb3763ef86b58f77db1724dbf5c0c542f`

```dockerfile
```

-	Layers:
	-	`sha256:47b0cc5e8de0012f88c0aaca92c5dc2d311fb5c13ddd3534d4bba3d84d235b18`  
		Last Modified: Tue, 13 Oct 2026 21:09:31 GMT  
		Size: 3.4 MB (3369006 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d8a4b3eed8f8e181bdb9fd1f8f2dcc08eb3e71008c49fbf5e3d842b7d4d8c671`  
		Last Modified: Tue, 13 Oct 2026 21:09:31 GMT  
		Size: 24.4 KB (24439 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.5`

```console
$ docker pull couchdb@sha256:3611ce43bd32fe2368997fd41ec6e7270ec8d84aa5fc13c9828e5b15fd6bafe8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3.5` - linux; amd64

```console
$ docker pull couchdb@sha256:e2c5ab14061cb87c9986f2b8b8b7088e73508acfc4985293d16bd0b2a729d25e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.8 MB (150823612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc9316ca158c1b8b575e64cc49466af5d320d373d52a7fd227667fdcf8c7b301`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 13 Oct 2026 21:08:19 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 13 Oct 2026 21:08:19 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Tue, 13 Oct 2026 21:08:25 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 21:08:28 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 13 Oct 2026 21:08:28 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 13 Oct 2026 21:08:33 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 21:08:33 GMT
ENV COUCHDB_VERSION=3.5.3
# Tue, 13 Oct 2026 21:08:33 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 13 Oct 2026 21:08:45 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 13 Oct 2026 21:08:45 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Tue, 13 Oct 2026 21:08:45 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Tue, 13 Oct 2026 21:08:45 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 13 Oct 2026 21:08:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Tue, 13 Oct 2026 21:08:45 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 13 Oct 2026 21:08:45 GMT
VOLUME [/opt/couchdb/data]
# Tue, 13 Oct 2026 21:08:45 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Tue, 13 Oct 2026 21:08:45 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:723dc04aea0616e5e99a19587acbb6e83935b62afbca4eea693d12b9e26f7054`  
		Last Modified: Tue, 13 Oct 2026 21:08:58 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a3e86681408caf899345f80f11c1498df576b15499d979c29c9723d92df5b78`  
		Last Modified: Tue, 13 Oct 2026 21:08:59 GMT  
		Size: 7.5 MB (7492062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4636f38fc150bfcd99b8689956f647774e41994a83c21f3ed4fcdd24506e77f`  
		Last Modified: Tue, 13 Oct 2026 21:08:59 GMT  
		Size: 417.4 KB (417434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a99a1248f03fb01c8ef34256eb5301c512cd5934e547bb414edeb661535c442b`  
		Last Modified: Tue, 13 Oct 2026 21:08:59 GMT  
		Size: 338.6 KB (338591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48410a7ff023290627fe801c271581d431527f5e77b902c4bd36784c22cd82c5`  
		Last Modified: Tue, 13 Oct 2026 21:09:00 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f91502e0a6ce73d4d60a7d756c4829633accc6e0e37f7288004627e4ba1ef8d1`  
		Last Modified: Tue, 13 Oct 2026 21:09:02 GMT  
		Size: 112.7 MB (112726749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da04c245afd94552ea2631fa586e3f83354ec710bbe54ae06bdae2e3d7c2979e`  
		Last Modified: Tue, 13 Oct 2026 21:09:00 GMT  
		Size: 377.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff39dd95b33c8b5d9a799866de0f797033a586780adccaca1c0e2c8d1a310675`  
		Last Modified: Tue, 13 Oct 2026 21:09:00 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79ad3edd08d562008f5e14535eb1476478e7d06b3753de415fdd111211bf5b56`  
		Last Modified: Tue, 13 Oct 2026 21:09:01 GMT  
		Size: 2.2 KB (2227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:806e488cfebc777626c05aa67db41407ad90e80931dc2b8106f6b6d87b674d9b`  
		Last Modified: Tue, 13 Oct 2026 21:09:01 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5` - unknown; unknown

```console
$ docker pull couchdb@sha256:122b142982570d47d9e9e3f6d4d51a4128a7bab0a999ec3d6e5c40a6b4bee0a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4227214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:996cc0a8a87deca894e07ce68a54463d75443d55fbdcc46fface64c79ecfc211`

```dockerfile
```

-	Layers:
	-	`sha256:14b0a4e908869737d371d05afa85fa429b7b60103fc0f6af4b45ef8763e1a791`  
		Last Modified: Tue, 13 Oct 2026 21:08:59 GMT  
		Size: 4.2 MB (4195856 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2269caa0ab5def5f11d8ca089fa90243661c2e4abe3fba0367620855f5b4f227`  
		Last Modified: Tue, 13 Oct 2026 21:08:59 GMT  
		Size: 31.4 KB (31358 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.5` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:e9a1ecae9ab034af5f3bb68cb69bdc77ba29d1a4cb9a3869e1ca17db72796211
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.5 MB (150538073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f9d6826a0306f864d8a530ff604eb4fcc6d859fcd63cffcb00f08cb63687df9`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 13 Oct 2026 21:08:43 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 13 Oct 2026 21:08:43 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Tue, 13 Oct 2026 21:08:51 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 21:08:55 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 13 Oct 2026 21:08:55 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 13 Oct 2026 21:09:01 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 21:09:01 GMT
ENV COUCHDB_VERSION=3.5.3
# Tue, 13 Oct 2026 21:09:02 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 13 Oct 2026 21:09:16 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 13 Oct 2026 21:09:16 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Tue, 13 Oct 2026 21:09:16 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Tue, 13 Oct 2026 21:09:16 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 13 Oct 2026 21:09:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Tue, 13 Oct 2026 21:09:16 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 13 Oct 2026 21:09:16 GMT
VOLUME [/opt/couchdb/data]
# Tue, 13 Oct 2026 21:09:16 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Tue, 13 Oct 2026 21:09:16 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:010b098cd721f4226489cb9128342af92c2c53efb223bf3da133ec6307e084a1`  
		Last Modified: Tue, 13 Oct 2026 21:09:30 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ad2aa89912375d0c4e36a45759fe2a076127c5ba06a5edafa17c7a1f1275d6d`  
		Last Modified: Tue, 13 Oct 2026 21:09:30 GMT  
		Size: 7.3 MB (7261171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a941f02186ca70172bd2f59c180ecddd8104a2547e196fcacba999fd32a1fe3d`  
		Last Modified: Tue, 13 Oct 2026 21:09:30 GMT  
		Size: 382.4 KB (382446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d2a81c9b661ba2c16d7bc5f4ea804cd0c34c666a1c66e83762bc3d840ee4be0`  
		Last Modified: Tue, 13 Oct 2026 21:09:30 GMT  
		Size: 338.8 KB (338756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e837c4c272c0baa93d7c97d158b008505819e4f48cb4c48c30540cf0f5f76399`  
		Last Modified: Tue, 13 Oct 2026 21:09:32 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a9cdadcc6bb505e784492932903ef63be9a6a1d6a0993f14e66001c2f094728`  
		Last Modified: Tue, 13 Oct 2026 21:09:34 GMT  
		Size: 112.3 MB (112349985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b8d6b709b7cc7e41f57e00a359e844e3dd4f241b9f18f79a5762fdba71cd089`  
		Last Modified: Tue, 13 Oct 2026 21:09:32 GMT  
		Size: 381.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21ff847c3a444ab8e7108b04e79e97d283067a3f360cbfc8fa6211df86dc8f72`  
		Last Modified: Tue, 13 Oct 2026 21:09:32 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:880af9c29f852ea53a775ed9ce0971453641d0e45824cc8cf56113b0cd361a14`  
		Last Modified: Tue, 13 Oct 2026 21:09:33 GMT  
		Size: 2.2 KB (2226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92a268002830f52a886dbd5226ca4c5d43e16c7042cce5e978ef64ea516ba637`  
		Last Modified: Tue, 13 Oct 2026 21:09:33 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5` - unknown; unknown

```console
$ docker pull couchdb@sha256:514b108684cdcc7b05745c3794cc1f9c998b337c74647f63d72886ed6ed79935
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4227704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d03ac47afe9c0c925d1e83ce96de19ab47ec05870787243dda97bbc83352e6e`

```dockerfile
```

-	Layers:
	-	`sha256:43da62329a1f0a3cbc9459f8dacd7a1888ea5c40d4c1f888951e594d680130a3`  
		Last Modified: Tue, 13 Oct 2026 21:09:31 GMT  
		Size: 4.2 MB (4196152 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f68cdef84395b2cf3cca035923dccd1c42c4518fc9c4469f14f4a5ced0d109d9`  
		Last Modified: Tue, 13 Oct 2026 21:09:30 GMT  
		Size: 31.6 KB (31552 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.5-nouveau`

```console
$ docker pull couchdb@sha256:a39587ed1b8cb1165ff26324d1aaf800841b0c200d4db32afa57b676d7e7272e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3.5-nouveau` - linux; amd64

```console
$ docker pull couchdb@sha256:24f0d12d29093da720a2269224c40597daa26363d6d9884cc1ea369b9c421cf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.0 MB (150972227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2db9b2fa2b3307b3dee794dbbfa1eb960d7672cb2f9735984e3befd74cc6cc7`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 13 Oct 2026 21:08:21 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 13 Oct 2026 21:08:21 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Tue, 13 Oct 2026 21:08:28 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 21:08:33 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 21:08:36 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 13 Oct 2026 21:08:36 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 13 Oct 2026 21:08:41 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 21:08:42 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 13 Oct 2026 21:08:47 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends             couchdb-nouveau=3.5.3~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Tue, 13 Oct 2026 21:08:47 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Tue, 13 Oct 2026 21:08:47 GMT
VOLUME [/opt/nouveau/data]
# Tue, 13 Oct 2026 21:08:47 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Tue, 13 Oct 2026 21:08:47 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bdab854b474521eebc77abd2abb526514604a5f8b0c486cf59d4252a2a10819`  
		Last Modified: Tue, 13 Oct 2026 21:09:01 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe8fe91fe9db62299d98ef57db6066ed5223c5abdecaac730351c97c807afe56`  
		Last Modified: Tue, 13 Oct 2026 21:09:02 GMT  
		Size: 7.5 MB (7492040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9b38b7c8505dcaeaf5b08af9e74bb1e7d726cf1baed0f77c9168ed9e9560a61`  
		Last Modified: Tue, 13 Oct 2026 21:09:04 GMT  
		Size: 70.1 MB (70053164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:082577d59405505f8ef29e2540b9ba69d2e8a49552eeba699f4077c1e3d505ac`  
		Last Modified: Tue, 13 Oct 2026 21:09:02 GMT  
		Size: 425.8 KB (425830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ef3ecda44343d626710ecb4c5f8b4a378d541e871e8a5f501fc2264c78870f6`  
		Last Modified: Tue, 13 Oct 2026 21:09:03 GMT  
		Size: 347.4 KB (347350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1965a3c79c63c54d176e4c7c5a6541cc6bf13e9bac1772b8b0c40ad1d3f6d03`  
		Last Modified: Tue, 13 Oct 2026 21:09:03 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b9bdeb6a248dc599851e5badf9c1e5efe9a8bcf98924d360d07b2d98caed8ca`  
		Last Modified: Tue, 13 Oct 2026 21:09:05 GMT  
		Size: 42.8 MB (42808609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7561079cd59bbb8d691d28876847de8ed27572bc4e1fb4ab8376a3f71abd1860`  
		Last Modified: Tue, 13 Oct 2026 21:09:04 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:4df6e1c97938f2c02027f773216e0d7c30c34a24048a13be9d5a28f3f6a64d54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3394622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0b5940b842d70d9bd6262345492a338bc32a2fc75a7c5a89f5fb3d95e0de38f`

```dockerfile
```

-	Layers:
	-	`sha256:13dc6e1755af5f337f2f91e38d8d8c3e8a6be656eda2dc1439da9a3be3df79f4`  
		Last Modified: Tue, 13 Oct 2026 21:09:02 GMT  
		Size: 3.4 MB (3370365 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:25433a11dda183b96bdc52ef204c6b6fa63278c8d7ee0c71768e2ded12e25a29`  
		Last Modified: Tue, 13 Oct 2026 21:09:01 GMT  
		Size: 24.3 KB (24257 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.5-nouveau` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:9951bddba02058daa482f1b62934eaddb3cdf866d7cd218dc84c341399b0cad0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150126474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5ec932688d600a29e97e4104811c3f1de6b1fb9e527ee269548bbca77141241`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 13 Oct 2026 21:08:48 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 13 Oct 2026 21:08:48 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Tue, 13 Oct 2026 21:08:55 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 21:09:02 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 21:09:05 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 13 Oct 2026 21:09:05 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 13 Oct 2026 21:09:11 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 21:09:11 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 13 Oct 2026 21:09:17 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends             couchdb-nouveau=3.5.3~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Tue, 13 Oct 2026 21:09:17 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Tue, 13 Oct 2026 21:09:17 GMT
VOLUME [/opt/nouveau/data]
# Tue, 13 Oct 2026 21:09:17 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Tue, 13 Oct 2026 21:09:17 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e61b7a056b2ce0b9aeb3d72c9663ebb4200813dbc921a50186e531171944f2e`  
		Last Modified: Tue, 13 Oct 2026 21:09:31 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ae343b6961473f125bae92bdf2f5e6a0b06d040cd088ab2092255908ca90d4e`  
		Last Modified: Tue, 13 Oct 2026 21:09:32 GMT  
		Size: 7.3 MB (7261081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aed1734e6c96f9ad4d3eb345b95a967cb6d2d6132aa2518f149898c816339353`  
		Last Modified: Tue, 13 Oct 2026 21:09:33 GMT  
		Size: 69.2 MB (69192999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58c66f495d4b06a3f3fbbeefe7fb2c9f95cbee6899dec35c8b8348d406099fb8`  
		Last Modified: Tue, 13 Oct 2026 21:09:32 GMT  
		Size: 390.2 KB (390182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e2b5e3d694de371bd7bcc3cee90b0d65fff922fdfc2752f071df8be1eefe233`  
		Last Modified: Tue, 13 Oct 2026 21:09:32 GMT  
		Size: 347.5 KB (347501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e413cd6ba46e17d35c49950a4d557744b71759f779f14be3b69c6e148dfbc87`  
		Last Modified: Tue, 13 Oct 2026 21:09:33 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa208f446f7be8ffbe0c9b527f7ab84f4b9614d9f875edd651da77aecf9fd252`  
		Last Modified: Tue, 13 Oct 2026 21:09:34 GMT  
		Size: 42.7 MB (42732552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c918f271b57c7157b7c16eba06fdacd9212dc46ae8d52f6c21dd01a9674dccff`  
		Last Modified: Tue, 13 Oct 2026 21:09:34 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:60593665e3748a4007e695dc427a921db0e0e2474489fe7c6af1dc5be747e07a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3393445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beb0e2c170c46f99ce29cbf8cba122cbb3763ef86b58f77db1724dbf5c0c542f`

```dockerfile
```

-	Layers:
	-	`sha256:47b0cc5e8de0012f88c0aaca92c5dc2d311fb5c13ddd3534d4bba3d84d235b18`  
		Last Modified: Tue, 13 Oct 2026 21:09:31 GMT  
		Size: 3.4 MB (3369006 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d8a4b3eed8f8e181bdb9fd1f8f2dcc08eb3e71008c49fbf5e3d842b7d4d8c671`  
		Last Modified: Tue, 13 Oct 2026 21:09:31 GMT  
		Size: 24.4 KB (24439 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.5.3`

```console
$ docker pull couchdb@sha256:3611ce43bd32fe2368997fd41ec6e7270ec8d84aa5fc13c9828e5b15fd6bafe8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3.5.3` - linux; amd64

```console
$ docker pull couchdb@sha256:e2c5ab14061cb87c9986f2b8b8b7088e73508acfc4985293d16bd0b2a729d25e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.8 MB (150823612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc9316ca158c1b8b575e64cc49466af5d320d373d52a7fd227667fdcf8c7b301`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 13 Oct 2026 21:08:19 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 13 Oct 2026 21:08:19 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Tue, 13 Oct 2026 21:08:25 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 21:08:28 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 13 Oct 2026 21:08:28 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 13 Oct 2026 21:08:33 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 21:08:33 GMT
ENV COUCHDB_VERSION=3.5.3
# Tue, 13 Oct 2026 21:08:33 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 13 Oct 2026 21:08:45 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 13 Oct 2026 21:08:45 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Tue, 13 Oct 2026 21:08:45 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Tue, 13 Oct 2026 21:08:45 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 13 Oct 2026 21:08:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Tue, 13 Oct 2026 21:08:45 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 13 Oct 2026 21:08:45 GMT
VOLUME [/opt/couchdb/data]
# Tue, 13 Oct 2026 21:08:45 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Tue, 13 Oct 2026 21:08:45 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:723dc04aea0616e5e99a19587acbb6e83935b62afbca4eea693d12b9e26f7054`  
		Last Modified: Tue, 13 Oct 2026 21:08:58 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a3e86681408caf899345f80f11c1498df576b15499d979c29c9723d92df5b78`  
		Last Modified: Tue, 13 Oct 2026 21:08:59 GMT  
		Size: 7.5 MB (7492062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4636f38fc150bfcd99b8689956f647774e41994a83c21f3ed4fcdd24506e77f`  
		Last Modified: Tue, 13 Oct 2026 21:08:59 GMT  
		Size: 417.4 KB (417434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a99a1248f03fb01c8ef34256eb5301c512cd5934e547bb414edeb661535c442b`  
		Last Modified: Tue, 13 Oct 2026 21:08:59 GMT  
		Size: 338.6 KB (338591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48410a7ff023290627fe801c271581d431527f5e77b902c4bd36784c22cd82c5`  
		Last Modified: Tue, 13 Oct 2026 21:09:00 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f91502e0a6ce73d4d60a7d756c4829633accc6e0e37f7288004627e4ba1ef8d1`  
		Last Modified: Tue, 13 Oct 2026 21:09:02 GMT  
		Size: 112.7 MB (112726749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da04c245afd94552ea2631fa586e3f83354ec710bbe54ae06bdae2e3d7c2979e`  
		Last Modified: Tue, 13 Oct 2026 21:09:00 GMT  
		Size: 377.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff39dd95b33c8b5d9a799866de0f797033a586780adccaca1c0e2c8d1a310675`  
		Last Modified: Tue, 13 Oct 2026 21:09:00 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79ad3edd08d562008f5e14535eb1476478e7d06b3753de415fdd111211bf5b56`  
		Last Modified: Tue, 13 Oct 2026 21:09:01 GMT  
		Size: 2.2 KB (2227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:806e488cfebc777626c05aa67db41407ad90e80931dc2b8106f6b6d87b674d9b`  
		Last Modified: Tue, 13 Oct 2026 21:09:01 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5.3` - unknown; unknown

```console
$ docker pull couchdb@sha256:122b142982570d47d9e9e3f6d4d51a4128a7bab0a999ec3d6e5c40a6b4bee0a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4227214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:996cc0a8a87deca894e07ce68a54463d75443d55fbdcc46fface64c79ecfc211`

```dockerfile
```

-	Layers:
	-	`sha256:14b0a4e908869737d371d05afa85fa429b7b60103fc0f6af4b45ef8763e1a791`  
		Last Modified: Tue, 13 Oct 2026 21:08:59 GMT  
		Size: 4.2 MB (4195856 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2269caa0ab5def5f11d8ca089fa90243661c2e4abe3fba0367620855f5b4f227`  
		Last Modified: Tue, 13 Oct 2026 21:08:59 GMT  
		Size: 31.4 KB (31358 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.5.3` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:e9a1ecae9ab034af5f3bb68cb69bdc77ba29d1a4cb9a3869e1ca17db72796211
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.5 MB (150538073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f9d6826a0306f864d8a530ff604eb4fcc6d859fcd63cffcb00f08cb63687df9`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 13 Oct 2026 21:08:43 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 13 Oct 2026 21:08:43 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Tue, 13 Oct 2026 21:08:51 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 21:08:55 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 13 Oct 2026 21:08:55 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 13 Oct 2026 21:09:01 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 21:09:01 GMT
ENV COUCHDB_VERSION=3.5.3
# Tue, 13 Oct 2026 21:09:02 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 13 Oct 2026 21:09:16 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 13 Oct 2026 21:09:16 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Tue, 13 Oct 2026 21:09:16 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Tue, 13 Oct 2026 21:09:16 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 13 Oct 2026 21:09:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Tue, 13 Oct 2026 21:09:16 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 13 Oct 2026 21:09:16 GMT
VOLUME [/opt/couchdb/data]
# Tue, 13 Oct 2026 21:09:16 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Tue, 13 Oct 2026 21:09:16 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:010b098cd721f4226489cb9128342af92c2c53efb223bf3da133ec6307e084a1`  
		Last Modified: Tue, 13 Oct 2026 21:09:30 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ad2aa89912375d0c4e36a45759fe2a076127c5ba06a5edafa17c7a1f1275d6d`  
		Last Modified: Tue, 13 Oct 2026 21:09:30 GMT  
		Size: 7.3 MB (7261171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a941f02186ca70172bd2f59c180ecddd8104a2547e196fcacba999fd32a1fe3d`  
		Last Modified: Tue, 13 Oct 2026 21:09:30 GMT  
		Size: 382.4 KB (382446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d2a81c9b661ba2c16d7bc5f4ea804cd0c34c666a1c66e83762bc3d840ee4be0`  
		Last Modified: Tue, 13 Oct 2026 21:09:30 GMT  
		Size: 338.8 KB (338756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e837c4c272c0baa93d7c97d158b008505819e4f48cb4c48c30540cf0f5f76399`  
		Last Modified: Tue, 13 Oct 2026 21:09:32 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a9cdadcc6bb505e784492932903ef63be9a6a1d6a0993f14e66001c2f094728`  
		Last Modified: Tue, 13 Oct 2026 21:09:34 GMT  
		Size: 112.3 MB (112349985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b8d6b709b7cc7e41f57e00a359e844e3dd4f241b9f18f79a5762fdba71cd089`  
		Last Modified: Tue, 13 Oct 2026 21:09:32 GMT  
		Size: 381.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21ff847c3a444ab8e7108b04e79e97d283067a3f360cbfc8fa6211df86dc8f72`  
		Last Modified: Tue, 13 Oct 2026 21:09:32 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:880af9c29f852ea53a775ed9ce0971453641d0e45824cc8cf56113b0cd361a14`  
		Last Modified: Tue, 13 Oct 2026 21:09:33 GMT  
		Size: 2.2 KB (2226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92a268002830f52a886dbd5226ca4c5d43e16c7042cce5e978ef64ea516ba637`  
		Last Modified: Tue, 13 Oct 2026 21:09:33 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5.3` - unknown; unknown

```console
$ docker pull couchdb@sha256:514b108684cdcc7b05745c3794cc1f9c998b337c74647f63d72886ed6ed79935
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4227704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d03ac47afe9c0c925d1e83ce96de19ab47ec05870787243dda97bbc83352e6e`

```dockerfile
```

-	Layers:
	-	`sha256:43da62329a1f0a3cbc9459f8dacd7a1888ea5c40d4c1f888951e594d680130a3`  
		Last Modified: Tue, 13 Oct 2026 21:09:31 GMT  
		Size: 4.2 MB (4196152 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f68cdef84395b2cf3cca035923dccd1c42c4518fc9c4469f14f4a5ced0d109d9`  
		Last Modified: Tue, 13 Oct 2026 21:09:30 GMT  
		Size: 31.6 KB (31552 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.5.3-nouveau`

```console
$ docker pull couchdb@sha256:a39587ed1b8cb1165ff26324d1aaf800841b0c200d4db32afa57b676d7e7272e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3.5.3-nouveau` - linux; amd64

```console
$ docker pull couchdb@sha256:24f0d12d29093da720a2269224c40597daa26363d6d9884cc1ea369b9c421cf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.0 MB (150972227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2db9b2fa2b3307b3dee794dbbfa1eb960d7672cb2f9735984e3befd74cc6cc7`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 13 Oct 2026 21:08:21 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 13 Oct 2026 21:08:21 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Tue, 13 Oct 2026 21:08:28 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 21:08:33 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 21:08:36 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 13 Oct 2026 21:08:36 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 13 Oct 2026 21:08:41 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 21:08:42 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 13 Oct 2026 21:08:47 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends             couchdb-nouveau=3.5.3~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Tue, 13 Oct 2026 21:08:47 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Tue, 13 Oct 2026 21:08:47 GMT
VOLUME [/opt/nouveau/data]
# Tue, 13 Oct 2026 21:08:47 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Tue, 13 Oct 2026 21:08:47 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bdab854b474521eebc77abd2abb526514604a5f8b0c486cf59d4252a2a10819`  
		Last Modified: Tue, 13 Oct 2026 21:09:01 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe8fe91fe9db62299d98ef57db6066ed5223c5abdecaac730351c97c807afe56`  
		Last Modified: Tue, 13 Oct 2026 21:09:02 GMT  
		Size: 7.5 MB (7492040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9b38b7c8505dcaeaf5b08af9e74bb1e7d726cf1baed0f77c9168ed9e9560a61`  
		Last Modified: Tue, 13 Oct 2026 21:09:04 GMT  
		Size: 70.1 MB (70053164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:082577d59405505f8ef29e2540b9ba69d2e8a49552eeba699f4077c1e3d505ac`  
		Last Modified: Tue, 13 Oct 2026 21:09:02 GMT  
		Size: 425.8 KB (425830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ef3ecda44343d626710ecb4c5f8b4a378d541e871e8a5f501fc2264c78870f6`  
		Last Modified: Tue, 13 Oct 2026 21:09:03 GMT  
		Size: 347.4 KB (347350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1965a3c79c63c54d176e4c7c5a6541cc6bf13e9bac1772b8b0c40ad1d3f6d03`  
		Last Modified: Tue, 13 Oct 2026 21:09:03 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b9bdeb6a248dc599851e5badf9c1e5efe9a8bcf98924d360d07b2d98caed8ca`  
		Last Modified: Tue, 13 Oct 2026 21:09:05 GMT  
		Size: 42.8 MB (42808609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7561079cd59bbb8d691d28876847de8ed27572bc4e1fb4ab8376a3f71abd1860`  
		Last Modified: Tue, 13 Oct 2026 21:09:04 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5.3-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:4df6e1c97938f2c02027f773216e0d7c30c34a24048a13be9d5a28f3f6a64d54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3394622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0b5940b842d70d9bd6262345492a338bc32a2fc75a7c5a89f5fb3d95e0de38f`

```dockerfile
```

-	Layers:
	-	`sha256:13dc6e1755af5f337f2f91e38d8d8c3e8a6be656eda2dc1439da9a3be3df79f4`  
		Last Modified: Tue, 13 Oct 2026 21:09:02 GMT  
		Size: 3.4 MB (3370365 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:25433a11dda183b96bdc52ef204c6b6fa63278c8d7ee0c71768e2ded12e25a29`  
		Last Modified: Tue, 13 Oct 2026 21:09:01 GMT  
		Size: 24.3 KB (24257 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.5.3-nouveau` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:9951bddba02058daa482f1b62934eaddb3cdf866d7cd218dc84c341399b0cad0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150126474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5ec932688d600a29e97e4104811c3f1de6b1fb9e527ee269548bbca77141241`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 13 Oct 2026 21:08:48 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 13 Oct 2026 21:08:48 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Tue, 13 Oct 2026 21:08:55 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 21:09:02 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 21:09:05 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 13 Oct 2026 21:09:05 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 13 Oct 2026 21:09:11 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 21:09:11 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 13 Oct 2026 21:09:17 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends             couchdb-nouveau=3.5.3~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Tue, 13 Oct 2026 21:09:17 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Tue, 13 Oct 2026 21:09:17 GMT
VOLUME [/opt/nouveau/data]
# Tue, 13 Oct 2026 21:09:17 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Tue, 13 Oct 2026 21:09:17 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e61b7a056b2ce0b9aeb3d72c9663ebb4200813dbc921a50186e531171944f2e`  
		Last Modified: Tue, 13 Oct 2026 21:09:31 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ae343b6961473f125bae92bdf2f5e6a0b06d040cd088ab2092255908ca90d4e`  
		Last Modified: Tue, 13 Oct 2026 21:09:32 GMT  
		Size: 7.3 MB (7261081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aed1734e6c96f9ad4d3eb345b95a967cb6d2d6132aa2518f149898c816339353`  
		Last Modified: Tue, 13 Oct 2026 21:09:33 GMT  
		Size: 69.2 MB (69192999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58c66f495d4b06a3f3fbbeefe7fb2c9f95cbee6899dec35c8b8348d406099fb8`  
		Last Modified: Tue, 13 Oct 2026 21:09:32 GMT  
		Size: 390.2 KB (390182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e2b5e3d694de371bd7bcc3cee90b0d65fff922fdfc2752f071df8be1eefe233`  
		Last Modified: Tue, 13 Oct 2026 21:09:32 GMT  
		Size: 347.5 KB (347501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e413cd6ba46e17d35c49950a4d557744b71759f779f14be3b69c6e148dfbc87`  
		Last Modified: Tue, 13 Oct 2026 21:09:33 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa208f446f7be8ffbe0c9b527f7ab84f4b9614d9f875edd651da77aecf9fd252`  
		Last Modified: Tue, 13 Oct 2026 21:09:34 GMT  
		Size: 42.7 MB (42732552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c918f271b57c7157b7c16eba06fdacd9212dc46ae8d52f6c21dd01a9674dccff`  
		Last Modified: Tue, 13 Oct 2026 21:09:34 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5.3-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:60593665e3748a4007e695dc427a921db0e0e2474489fe7c6af1dc5be747e07a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3393445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beb0e2c170c46f99ce29cbf8cba122cbb3763ef86b58f77db1724dbf5c0c542f`

```dockerfile
```

-	Layers:
	-	`sha256:47b0cc5e8de0012f88c0aaca92c5dc2d311fb5c13ddd3534d4bba3d84d235b18`  
		Last Modified: Tue, 13 Oct 2026 21:09:31 GMT  
		Size: 3.4 MB (3369006 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d8a4b3eed8f8e181bdb9fd1f8f2dcc08eb3e71008c49fbf5e3d842b7d4d8c671`  
		Last Modified: Tue, 13 Oct 2026 21:09:31 GMT  
		Size: 24.4 KB (24439 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:latest`

```console
$ docker pull couchdb@sha256:3611ce43bd32fe2368997fd41ec6e7270ec8d84aa5fc13c9828e5b15fd6bafe8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:latest` - linux; amd64

```console
$ docker pull couchdb@sha256:e2c5ab14061cb87c9986f2b8b8b7088e73508acfc4985293d16bd0b2a729d25e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.8 MB (150823612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc9316ca158c1b8b575e64cc49466af5d320d373d52a7fd227667fdcf8c7b301`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 13 Oct 2026 21:08:19 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 13 Oct 2026 21:08:19 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Tue, 13 Oct 2026 21:08:25 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 21:08:28 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 13 Oct 2026 21:08:28 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 13 Oct 2026 21:08:33 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 21:08:33 GMT
ENV COUCHDB_VERSION=3.5.3
# Tue, 13 Oct 2026 21:08:33 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 13 Oct 2026 21:08:45 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 13 Oct 2026 21:08:45 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Tue, 13 Oct 2026 21:08:45 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Tue, 13 Oct 2026 21:08:45 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 13 Oct 2026 21:08:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Tue, 13 Oct 2026 21:08:45 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 13 Oct 2026 21:08:45 GMT
VOLUME [/opt/couchdb/data]
# Tue, 13 Oct 2026 21:08:45 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Tue, 13 Oct 2026 21:08:45 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:723dc04aea0616e5e99a19587acbb6e83935b62afbca4eea693d12b9e26f7054`  
		Last Modified: Tue, 13 Oct 2026 21:08:58 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a3e86681408caf899345f80f11c1498df576b15499d979c29c9723d92df5b78`  
		Last Modified: Tue, 13 Oct 2026 21:08:59 GMT  
		Size: 7.5 MB (7492062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4636f38fc150bfcd99b8689956f647774e41994a83c21f3ed4fcdd24506e77f`  
		Last Modified: Tue, 13 Oct 2026 21:08:59 GMT  
		Size: 417.4 KB (417434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a99a1248f03fb01c8ef34256eb5301c512cd5934e547bb414edeb661535c442b`  
		Last Modified: Tue, 13 Oct 2026 21:08:59 GMT  
		Size: 338.6 KB (338591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48410a7ff023290627fe801c271581d431527f5e77b902c4bd36784c22cd82c5`  
		Last Modified: Tue, 13 Oct 2026 21:09:00 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f91502e0a6ce73d4d60a7d756c4829633accc6e0e37f7288004627e4ba1ef8d1`  
		Last Modified: Tue, 13 Oct 2026 21:09:02 GMT  
		Size: 112.7 MB (112726749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da04c245afd94552ea2631fa586e3f83354ec710bbe54ae06bdae2e3d7c2979e`  
		Last Modified: Tue, 13 Oct 2026 21:09:00 GMT  
		Size: 377.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff39dd95b33c8b5d9a799866de0f797033a586780adccaca1c0e2c8d1a310675`  
		Last Modified: Tue, 13 Oct 2026 21:09:00 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79ad3edd08d562008f5e14535eb1476478e7d06b3753de415fdd111211bf5b56`  
		Last Modified: Tue, 13 Oct 2026 21:09:01 GMT  
		Size: 2.2 KB (2227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:806e488cfebc777626c05aa67db41407ad90e80931dc2b8106f6b6d87b674d9b`  
		Last Modified: Tue, 13 Oct 2026 21:09:01 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:latest` - unknown; unknown

```console
$ docker pull couchdb@sha256:122b142982570d47d9e9e3f6d4d51a4128a7bab0a999ec3d6e5c40a6b4bee0a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4227214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:996cc0a8a87deca894e07ce68a54463d75443d55fbdcc46fface64c79ecfc211`

```dockerfile
```

-	Layers:
	-	`sha256:14b0a4e908869737d371d05afa85fa429b7b60103fc0f6af4b45ef8763e1a791`  
		Last Modified: Tue, 13 Oct 2026 21:08:59 GMT  
		Size: 4.2 MB (4195856 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2269caa0ab5def5f11d8ca089fa90243661c2e4abe3fba0367620855f5b4f227`  
		Last Modified: Tue, 13 Oct 2026 21:08:59 GMT  
		Size: 31.4 KB (31358 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:latest` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:e9a1ecae9ab034af5f3bb68cb69bdc77ba29d1a4cb9a3869e1ca17db72796211
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.5 MB (150538073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f9d6826a0306f864d8a530ff604eb4fcc6d859fcd63cffcb00f08cb63687df9`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 13 Oct 2026 21:08:43 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 13 Oct 2026 21:08:43 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Tue, 13 Oct 2026 21:08:51 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 21:08:55 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 13 Oct 2026 21:08:55 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 13 Oct 2026 21:09:01 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 21:09:01 GMT
ENV COUCHDB_VERSION=3.5.3
# Tue, 13 Oct 2026 21:09:02 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 13 Oct 2026 21:09:16 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 13 Oct 2026 21:09:16 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Tue, 13 Oct 2026 21:09:16 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Tue, 13 Oct 2026 21:09:16 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 13 Oct 2026 21:09:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Tue, 13 Oct 2026 21:09:16 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 13 Oct 2026 21:09:16 GMT
VOLUME [/opt/couchdb/data]
# Tue, 13 Oct 2026 21:09:16 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Tue, 13 Oct 2026 21:09:16 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:010b098cd721f4226489cb9128342af92c2c53efb223bf3da133ec6307e084a1`  
		Last Modified: Tue, 13 Oct 2026 21:09:30 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ad2aa89912375d0c4e36a45759fe2a076127c5ba06a5edafa17c7a1f1275d6d`  
		Last Modified: Tue, 13 Oct 2026 21:09:30 GMT  
		Size: 7.3 MB (7261171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a941f02186ca70172bd2f59c180ecddd8104a2547e196fcacba999fd32a1fe3d`  
		Last Modified: Tue, 13 Oct 2026 21:09:30 GMT  
		Size: 382.4 KB (382446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d2a81c9b661ba2c16d7bc5f4ea804cd0c34c666a1c66e83762bc3d840ee4be0`  
		Last Modified: Tue, 13 Oct 2026 21:09:30 GMT  
		Size: 338.8 KB (338756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e837c4c272c0baa93d7c97d158b008505819e4f48cb4c48c30540cf0f5f76399`  
		Last Modified: Tue, 13 Oct 2026 21:09:32 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a9cdadcc6bb505e784492932903ef63be9a6a1d6a0993f14e66001c2f094728`  
		Last Modified: Tue, 13 Oct 2026 21:09:34 GMT  
		Size: 112.3 MB (112349985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b8d6b709b7cc7e41f57e00a359e844e3dd4f241b9f18f79a5762fdba71cd089`  
		Last Modified: Tue, 13 Oct 2026 21:09:32 GMT  
		Size: 381.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21ff847c3a444ab8e7108b04e79e97d283067a3f360cbfc8fa6211df86dc8f72`  
		Last Modified: Tue, 13 Oct 2026 21:09:32 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:880af9c29f852ea53a775ed9ce0971453641d0e45824cc8cf56113b0cd361a14`  
		Last Modified: Tue, 13 Oct 2026 21:09:33 GMT  
		Size: 2.2 KB (2226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92a268002830f52a886dbd5226ca4c5d43e16c7042cce5e978ef64ea516ba637`  
		Last Modified: Tue, 13 Oct 2026 21:09:33 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:latest` - unknown; unknown

```console
$ docker pull couchdb@sha256:514b108684cdcc7b05745c3794cc1f9c998b337c74647f63d72886ed6ed79935
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4227704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d03ac47afe9c0c925d1e83ce96de19ab47ec05870787243dda97bbc83352e6e`

```dockerfile
```

-	Layers:
	-	`sha256:43da62329a1f0a3cbc9459f8dacd7a1888ea5c40d4c1f888951e594d680130a3`  
		Last Modified: Tue, 13 Oct 2026 21:09:31 GMT  
		Size: 4.2 MB (4196152 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f68cdef84395b2cf3cca035923dccd1c42c4518fc9c4469f14f4a5ced0d109d9`  
		Last Modified: Tue, 13 Oct 2026 21:09:30 GMT  
		Size: 31.6 KB (31552 bytes)  
		MIME: application/vnd.in-toto+json
