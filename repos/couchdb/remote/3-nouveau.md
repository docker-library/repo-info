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
