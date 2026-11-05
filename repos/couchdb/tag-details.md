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
$ docker pull couchdb@sha256:907eab5b7e55ab7cfd241d39b90b2a335ea40bef82acee5a37388c08bf201dda
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3` - linux; amd64

```console
$ docker pull couchdb@sha256:a4be8d5fe6862766844672d3b660bce2ccc203852838d08b2f3385b910e5cae2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.8 MB (150834367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d03dcfbdfdcfae9aa374ece6d2099383a52e1c892b91b18c8c2b01ff33dd034`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:38:17 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Thu, 05 Nov 2026 07:38:17 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Thu, 05 Nov 2026 07:38:24 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:38:26 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Thu, 05 Nov 2026 07:38:26 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Thu, 05 Nov 2026 07:38:32 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:38:32 GMT
ENV COUCHDB_VERSION=3.5.3
# Thu, 05 Nov 2026 07:38:32 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Thu, 05 Nov 2026 07:38:45 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Thu, 05 Nov 2026 07:38:45 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Thu, 05 Nov 2026 07:38:45 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Thu, 05 Nov 2026 07:38:45 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 07:38:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:38:45 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:38:45 GMT
VOLUME [/opt/couchdb/data]
# Thu, 05 Nov 2026 07:38:45 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Thu, 05 Nov 2026 07:38:45 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2ca97d3dddc704a2039a6f54c04dde930af5e168d0cf2fa597db9b4121c1f1f`  
		Last Modified: Thu, 05 Nov 2026 07:38:57 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3364c390e526b34b8d2bbaf85f0b9d0eadb57bc71dc64691e6e6f97ddfb4723`  
		Last Modified: Thu, 05 Nov 2026 07:38:58 GMT  
		Size: 7.5 MB (7491282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67f70979b96044a484317fec8568d555733646fa62145b40eae179c291c454ef`  
		Last Modified: Thu, 05 Nov 2026 07:38:57 GMT  
		Size: 417.5 KB (417453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f5a8725932ae5fdd2610143ad790eafbf91e0e7bea8e0b6c21365b3b886a4d3`  
		Last Modified: Thu, 05 Nov 2026 07:38:57 GMT  
		Size: 338.6 KB (338591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:744c2cdd4022102cef36f64e7360805550b8640262ab946bb922b0832065b914`  
		Last Modified: Thu, 05 Nov 2026 07:38:59 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6150cf083451225f6b75159b3a2a380b950b769ad6f9611e899d1a0972424b6e`  
		Last Modified: Thu, 05 Nov 2026 07:39:01 GMT  
		Size: 112.7 MB (112725472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de32960a04ccf46693c2e755e63a6fc314254c55b5fb513b85b86a09905d52b7`  
		Last Modified: Thu, 05 Nov 2026 07:38:59 GMT  
		Size: 380.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a16474412fa374bc1b6296e2d594430793bd1b112efabfa4d068332d54ed015`  
		Last Modified: Thu, 05 Nov 2026 07:38:59 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af55f9f6d558937cc4ebbf42684d5abba78354b79459230a763c9fa260ea8365`  
		Last Modified: Thu, 05 Nov 2026 07:39:00 GMT  
		Size: 2.2 KB (2230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b0d3e8782cf03d692cf3a47cdacd7b25fc74ebd41bfc71615d1363326dea37d`  
		Last Modified: Thu, 05 Nov 2026 07:39:00 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3` - unknown; unknown

```console
$ docker pull couchdb@sha256:75c874eb64a39e089489ca0f0ede9fcaea4999ae5c7f09323f2bdf5f4c401106
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4225965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4552dab5e475c70ede21a7b29564e985aa025e068b1c9debe64515c44b8f6cb`

```dockerfile
```

-	Layers:
	-	`sha256:90c3029bd78322058de187f52aaf4daf87b5fcc3e257f04ef6102af9ee2cbb01`  
		Last Modified: Thu, 05 Nov 2026 07:38:58 GMT  
		Size: 4.2 MB (4194607 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e36a50e207d9e16f3ed1ee588d17e0eedc6fa3924cfafd28a4669fd69214363`  
		Last Modified: Thu, 05 Nov 2026 07:38:57 GMT  
		Size: 31.4 KB (31358 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:712e099d27d129ba23b561cd9cd108382fa7f07a6d6717210a90af96b496e9a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.6 MB (150551619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfbc136f37f06eedea6642121059d57283415c5e77b10d9d1d82edd8e61adef4`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:42:05 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Thu, 05 Nov 2026 07:42:05 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Thu, 05 Nov 2026 07:42:13 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:42:17 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Thu, 05 Nov 2026 07:42:17 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Thu, 05 Nov 2026 07:42:24 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:42:24 GMT
ENV COUCHDB_VERSION=3.5.3
# Thu, 05 Nov 2026 07:42:24 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Thu, 05 Nov 2026 07:42:38 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Thu, 05 Nov 2026 07:42:38 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Thu, 05 Nov 2026 07:42:38 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Thu, 05 Nov 2026 07:42:38 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 07:42:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:42:38 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:42:38 GMT
VOLUME [/opt/couchdb/data]
# Thu, 05 Nov 2026 07:42:38 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Thu, 05 Nov 2026 07:42:38 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d642cc29e3eaa117af23d555db89828d5bafb4abd03d830d1d62381acf904bc`  
		Last Modified: Thu, 05 Nov 2026 07:42:53 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aa37f5a3d894fcc59d440edaa71120c2dbae4a5c098dbbe4bba7977ffdf4a7e`  
		Last Modified: Thu, 05 Nov 2026 07:42:53 GMT  
		Size: 7.3 MB (7257502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fd3da55620b3afe135e86eb5c5726a796a7ee475cdeb6aeea15ef9dd3153992`  
		Last Modified: Thu, 05 Nov 2026 07:42:53 GMT  
		Size: 382.5 KB (382464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c9cf74a56eac91d0e5d6c90976181d173b222b122e2af4019e52b464b7f33e3`  
		Last Modified: Thu, 05 Nov 2026 07:42:53 GMT  
		Size: 338.7 KB (338749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20c7592adb4f8054ef6e371287bbe6712e13202ff9fe4c3977fd9e0ad742c073`  
		Last Modified: Thu, 05 Nov 2026 07:42:54 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ea6e6e0330131c9760285c3d921ab811fa94f10e8a7e862b5386a69ee8d891d`  
		Last Modified: Thu, 05 Nov 2026 07:42:56 GMT  
		Size: 112.4 MB (112353432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:553531d0e539f90e3764a760654745cff321642249095e58906a8584b1113e1a`  
		Last Modified: Thu, 05 Nov 2026 07:42:54 GMT  
		Size: 378.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d42b8955f35ca6140ae33ddf682b9d6869fee8de7ac33524527fceaa70f34f57`  
		Last Modified: Thu, 05 Nov 2026 07:42:54 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b433520ac3d20af0396174e456c238a70c17a74c61d76b5683259b0682ae7090`  
		Last Modified: Thu, 05 Nov 2026 07:42:55 GMT  
		Size: 2.2 KB (2231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dd5c3210c6d0d6a6689645a08beeb52967dbaaf286347bc4cdeeeb81cbcb27d`  
		Last Modified: Thu, 05 Nov 2026 07:42:55 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3` - unknown; unknown

```console
$ docker pull couchdb@sha256:644786cd11c622eabf96fcda1abb24aa0d21b29af95ebef3bf5cc95096e0dc02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4226454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85574b1ecd2fded47bc6426217f9e4d89c4fa5c716e94a748b2f2c8d8e7ac644`

```dockerfile
```

-	Layers:
	-	`sha256:7f160b5f23691ade955bfcb5731fd58d8051f985845bdfa87db21403564ef7ab`  
		Last Modified: Thu, 05 Nov 2026 07:42:53 GMT  
		Size: 4.2 MB (4194903 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:349cfdc90538c5d4f63adb4c7c63cdf2154006b674c3dc1f46ee3fbd12bbc31c`  
		Last Modified: Thu, 05 Nov 2026 07:42:53 GMT  
		Size: 31.6 KB (31551 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3-nouveau`

```console
$ docker pull couchdb@sha256:45acdf516e8373cac3f1ab7981a1f71c61ce37b114e8c5db2f96a3508baebe48
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3-nouveau` - linux; amd64

```console
$ docker pull couchdb@sha256:34cf9f7829ffdfdec5822b06efb5ad757e11bb9743b3bd39ad440ca2e77511a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.1 MB (151116604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bc5eb39f079a53c876d0bcd9e7586007a707ca2e4817275691c751c42b22c91`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:38:20 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Thu, 05 Nov 2026 07:38:20 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Thu, 05 Nov 2026 07:38:27 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:38:32 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:38:35 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Thu, 05 Nov 2026 07:38:35 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Thu, 05 Nov 2026 07:38:40 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:38:40 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Thu, 05 Nov 2026 07:38:46 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends             couchdb-nouveau=3.5.3~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Thu, 05 Nov 2026 07:38:46 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Thu, 05 Nov 2026 07:38:46 GMT
VOLUME [/opt/nouveau/data]
# Thu, 05 Nov 2026 07:38:46 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Thu, 05 Nov 2026 07:38:46 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85ed3375b633afb7af8135a4760790297a3c4ed6cfda0ee96cf5db60c971415d`  
		Last Modified: Thu, 05 Nov 2026 07:38:59 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d303fce95c5aa91ea01f0c712206fd061075f973e8b0e1d9a1aff8ee939fa7f`  
		Last Modified: Thu, 05 Nov 2026 07:38:59 GMT  
		Size: 7.5 MB (7491331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:512a150922b79e2774c13187a1549d4e7309e8776d14c96f3fa7b8a3e9a88bc5`  
		Last Modified: Thu, 05 Nov 2026 07:39:01 GMT  
		Size: 70.2 MB (70185482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1954397f67e0df3c5182d80fd8b69e5960826a9dc11eb2b7d5f1514151dc37f`  
		Last Modified: Thu, 05 Nov 2026 07:38:59 GMT  
		Size: 425.8 KB (425816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fe4637a0cc3908c36d9ae1a777ff651ba6f46ce1075dde2fe2b5990ffc52f87`  
		Last Modified: Thu, 05 Nov 2026 07:39:00 GMT  
		Size: 347.4 KB (347437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8de57b181a9bb2c55b2a80abf44301fd772650470d8ed250ddfc0dfbee1b3966`  
		Last Modified: Thu, 05 Nov 2026 07:39:00 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e10c880d0a7442ff66b93b920d57949870ba93c22da58a09877fe24c60aa6989`  
		Last Modified: Thu, 05 Nov 2026 07:39:02 GMT  
		Size: 42.8 MB (42808527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b686d42668e5c9ee90444e6927d787b5f42f73e2cf089832958a21700ea37ab`  
		Last Modified: Thu, 05 Nov 2026 07:39:01 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:8067ee8382c5b0b0d9553e90a01ebaa8b1887174ad426435776999a8ba7617d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3393333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc2c34a477359d731cc3ffa845cf357cdcb2667bb6fc6d8874d6ca6452e2a171`

```dockerfile
```

-	Layers:
	-	`sha256:50900f81fea20bc4f6d89961e3dea6f1a79671e0e08dc205a5d61e17fc282a02`  
		Last Modified: Thu, 05 Nov 2026 07:38:59 GMT  
		Size: 3.4 MB (3369076 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45becf30c25ced9f11537c7842173cb4bc1a31cfbd5acf637ad08374f53c5e2d`  
		Last Modified: Thu, 05 Nov 2026 07:38:59 GMT  
		Size: 24.3 KB (24257 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3-nouveau` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:f3703008393de31763c887f05482454e76899e4503dec9f7df5f67335f3d0354
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.3 MB (150272716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3382ce90e740da0010f7d27decb767e1e50f2838592181e97c6d2749598e1ae5`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:42:11 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Thu, 05 Nov 2026 07:42:11 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Thu, 05 Nov 2026 07:42:19 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:42:25 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:42:28 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Thu, 05 Nov 2026 07:42:28 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Thu, 05 Nov 2026 07:42:34 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:42:34 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Thu, 05 Nov 2026 07:42:40 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends             couchdb-nouveau=3.5.3~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Thu, 05 Nov 2026 07:42:40 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Thu, 05 Nov 2026 07:42:40 GMT
VOLUME [/opt/nouveau/data]
# Thu, 05 Nov 2026 07:42:40 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Thu, 05 Nov 2026 07:42:40 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23c779568056c1ab7c52729d313b9e573f7adeb5c7c4d810c07511a9a83c24b7`  
		Last Modified: Thu, 05 Nov 2026 07:42:54 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3499d7f6a5e3147f6c2f1251230a25bced3e78bc8dd7fe34c5a3988b8b78ffac`  
		Last Modified: Thu, 05 Nov 2026 07:42:55 GMT  
		Size: 7.3 MB (7257549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2540ee6e480d9c1a2a0bce8e2d9604603ab5a47473db43f1c0ebcecda6053f67`  
		Last Modified: Thu, 05 Nov 2026 07:42:56 GMT  
		Size: 69.3 MB (69329184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e224716239086f3dce2e4d48a1efdc2ead66ec5fbf8af5f0965818c3f832071`  
		Last Modified: Thu, 05 Nov 2026 07:42:54 GMT  
		Size: 390.2 KB (390164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2364a75563e567ad29f7b0d4539e8ad0cc1ebcb0fabcb2a50fea838ecae8ea15`  
		Last Modified: Thu, 05 Nov 2026 07:42:55 GMT  
		Size: 347.4 KB (347427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5a877d8237738c0f3afdbe97306699aec8cd14b654515c502d2b1f11d448a13`  
		Last Modified: Thu, 05 Nov 2026 07:42:56 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:226a3aa187f9629c073034022f858ab8ec28991a5ad5f616fcd011dc3c196532`  
		Last Modified: Thu, 05 Nov 2026 07:42:57 GMT  
		Size: 42.7 MB (42732476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77f496559a1d1bc8c21976a110ca5864f0404d53bd3d9fd5eec1e14897b8ec07`  
		Last Modified: Thu, 05 Nov 2026 07:42:57 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:d818a022299f074dfa1e7082e628db5f12b3537cd23c92fbfa1705ffcd648420
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3392156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7b1cee1a211a77be83bff557283ca5858146b22c94142b09006a75facdcc242`

```dockerfile
```

-	Layers:
	-	`sha256:600e0e0582b21bc6d0c4a80c64c92f5a56727f77c440d7a4c2fa1ec3264cbde4`  
		Last Modified: Thu, 05 Nov 2026 07:42:54 GMT  
		Size: 3.4 MB (3367717 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ee9081bebfef81d4100f614173f5d9ce9dcebe0eb0b6455fa384f0fc2f2ae6b`  
		Last Modified: Thu, 05 Nov 2026 07:42:54 GMT  
		Size: 24.4 KB (24439 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.5`

```console
$ docker pull couchdb@sha256:907eab5b7e55ab7cfd241d39b90b2a335ea40bef82acee5a37388c08bf201dda
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3.5` - linux; amd64

```console
$ docker pull couchdb@sha256:a4be8d5fe6862766844672d3b660bce2ccc203852838d08b2f3385b910e5cae2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.8 MB (150834367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d03dcfbdfdcfae9aa374ece6d2099383a52e1c892b91b18c8c2b01ff33dd034`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:38:17 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Thu, 05 Nov 2026 07:38:17 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Thu, 05 Nov 2026 07:38:24 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:38:26 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Thu, 05 Nov 2026 07:38:26 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Thu, 05 Nov 2026 07:38:32 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:38:32 GMT
ENV COUCHDB_VERSION=3.5.3
# Thu, 05 Nov 2026 07:38:32 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Thu, 05 Nov 2026 07:38:45 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Thu, 05 Nov 2026 07:38:45 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Thu, 05 Nov 2026 07:38:45 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Thu, 05 Nov 2026 07:38:45 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 07:38:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:38:45 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:38:45 GMT
VOLUME [/opt/couchdb/data]
# Thu, 05 Nov 2026 07:38:45 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Thu, 05 Nov 2026 07:38:45 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2ca97d3dddc704a2039a6f54c04dde930af5e168d0cf2fa597db9b4121c1f1f`  
		Last Modified: Thu, 05 Nov 2026 07:38:57 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3364c390e526b34b8d2bbaf85f0b9d0eadb57bc71dc64691e6e6f97ddfb4723`  
		Last Modified: Thu, 05 Nov 2026 07:38:58 GMT  
		Size: 7.5 MB (7491282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67f70979b96044a484317fec8568d555733646fa62145b40eae179c291c454ef`  
		Last Modified: Thu, 05 Nov 2026 07:38:57 GMT  
		Size: 417.5 KB (417453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f5a8725932ae5fdd2610143ad790eafbf91e0e7bea8e0b6c21365b3b886a4d3`  
		Last Modified: Thu, 05 Nov 2026 07:38:57 GMT  
		Size: 338.6 KB (338591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:744c2cdd4022102cef36f64e7360805550b8640262ab946bb922b0832065b914`  
		Last Modified: Thu, 05 Nov 2026 07:38:59 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6150cf083451225f6b75159b3a2a380b950b769ad6f9611e899d1a0972424b6e`  
		Last Modified: Thu, 05 Nov 2026 07:39:01 GMT  
		Size: 112.7 MB (112725472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de32960a04ccf46693c2e755e63a6fc314254c55b5fb513b85b86a09905d52b7`  
		Last Modified: Thu, 05 Nov 2026 07:38:59 GMT  
		Size: 380.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a16474412fa374bc1b6296e2d594430793bd1b112efabfa4d068332d54ed015`  
		Last Modified: Thu, 05 Nov 2026 07:38:59 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af55f9f6d558937cc4ebbf42684d5abba78354b79459230a763c9fa260ea8365`  
		Last Modified: Thu, 05 Nov 2026 07:39:00 GMT  
		Size: 2.2 KB (2230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b0d3e8782cf03d692cf3a47cdacd7b25fc74ebd41bfc71615d1363326dea37d`  
		Last Modified: Thu, 05 Nov 2026 07:39:00 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5` - unknown; unknown

```console
$ docker pull couchdb@sha256:75c874eb64a39e089489ca0f0ede9fcaea4999ae5c7f09323f2bdf5f4c401106
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4225965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4552dab5e475c70ede21a7b29564e985aa025e068b1c9debe64515c44b8f6cb`

```dockerfile
```

-	Layers:
	-	`sha256:90c3029bd78322058de187f52aaf4daf87b5fcc3e257f04ef6102af9ee2cbb01`  
		Last Modified: Thu, 05 Nov 2026 07:38:58 GMT  
		Size: 4.2 MB (4194607 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e36a50e207d9e16f3ed1ee588d17e0eedc6fa3924cfafd28a4669fd69214363`  
		Last Modified: Thu, 05 Nov 2026 07:38:57 GMT  
		Size: 31.4 KB (31358 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.5` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:712e099d27d129ba23b561cd9cd108382fa7f07a6d6717210a90af96b496e9a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.6 MB (150551619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfbc136f37f06eedea6642121059d57283415c5e77b10d9d1d82edd8e61adef4`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:42:05 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Thu, 05 Nov 2026 07:42:05 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Thu, 05 Nov 2026 07:42:13 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:42:17 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Thu, 05 Nov 2026 07:42:17 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Thu, 05 Nov 2026 07:42:24 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:42:24 GMT
ENV COUCHDB_VERSION=3.5.3
# Thu, 05 Nov 2026 07:42:24 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Thu, 05 Nov 2026 07:42:38 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Thu, 05 Nov 2026 07:42:38 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Thu, 05 Nov 2026 07:42:38 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Thu, 05 Nov 2026 07:42:38 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 07:42:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:42:38 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:42:38 GMT
VOLUME [/opt/couchdb/data]
# Thu, 05 Nov 2026 07:42:38 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Thu, 05 Nov 2026 07:42:38 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d642cc29e3eaa117af23d555db89828d5bafb4abd03d830d1d62381acf904bc`  
		Last Modified: Thu, 05 Nov 2026 07:42:53 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aa37f5a3d894fcc59d440edaa71120c2dbae4a5c098dbbe4bba7977ffdf4a7e`  
		Last Modified: Thu, 05 Nov 2026 07:42:53 GMT  
		Size: 7.3 MB (7257502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fd3da55620b3afe135e86eb5c5726a796a7ee475cdeb6aeea15ef9dd3153992`  
		Last Modified: Thu, 05 Nov 2026 07:42:53 GMT  
		Size: 382.5 KB (382464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c9cf74a56eac91d0e5d6c90976181d173b222b122e2af4019e52b464b7f33e3`  
		Last Modified: Thu, 05 Nov 2026 07:42:53 GMT  
		Size: 338.7 KB (338749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20c7592adb4f8054ef6e371287bbe6712e13202ff9fe4c3977fd9e0ad742c073`  
		Last Modified: Thu, 05 Nov 2026 07:42:54 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ea6e6e0330131c9760285c3d921ab811fa94f10e8a7e862b5386a69ee8d891d`  
		Last Modified: Thu, 05 Nov 2026 07:42:56 GMT  
		Size: 112.4 MB (112353432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:553531d0e539f90e3764a760654745cff321642249095e58906a8584b1113e1a`  
		Last Modified: Thu, 05 Nov 2026 07:42:54 GMT  
		Size: 378.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d42b8955f35ca6140ae33ddf682b9d6869fee8de7ac33524527fceaa70f34f57`  
		Last Modified: Thu, 05 Nov 2026 07:42:54 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b433520ac3d20af0396174e456c238a70c17a74c61d76b5683259b0682ae7090`  
		Last Modified: Thu, 05 Nov 2026 07:42:55 GMT  
		Size: 2.2 KB (2231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dd5c3210c6d0d6a6689645a08beeb52967dbaaf286347bc4cdeeeb81cbcb27d`  
		Last Modified: Thu, 05 Nov 2026 07:42:55 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5` - unknown; unknown

```console
$ docker pull couchdb@sha256:644786cd11c622eabf96fcda1abb24aa0d21b29af95ebef3bf5cc95096e0dc02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4226454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85574b1ecd2fded47bc6426217f9e4d89c4fa5c716e94a748b2f2c8d8e7ac644`

```dockerfile
```

-	Layers:
	-	`sha256:7f160b5f23691ade955bfcb5731fd58d8051f985845bdfa87db21403564ef7ab`  
		Last Modified: Thu, 05 Nov 2026 07:42:53 GMT  
		Size: 4.2 MB (4194903 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:349cfdc90538c5d4f63adb4c7c63cdf2154006b674c3dc1f46ee3fbd12bbc31c`  
		Last Modified: Thu, 05 Nov 2026 07:42:53 GMT  
		Size: 31.6 KB (31551 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.5-nouveau`

```console
$ docker pull couchdb@sha256:45acdf516e8373cac3f1ab7981a1f71c61ce37b114e8c5db2f96a3508baebe48
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3.5-nouveau` - linux; amd64

```console
$ docker pull couchdb@sha256:34cf9f7829ffdfdec5822b06efb5ad757e11bb9743b3bd39ad440ca2e77511a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.1 MB (151116604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bc5eb39f079a53c876d0bcd9e7586007a707ca2e4817275691c751c42b22c91`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:38:20 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Thu, 05 Nov 2026 07:38:20 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Thu, 05 Nov 2026 07:38:27 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:38:32 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:38:35 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Thu, 05 Nov 2026 07:38:35 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Thu, 05 Nov 2026 07:38:40 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:38:40 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Thu, 05 Nov 2026 07:38:46 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends             couchdb-nouveau=3.5.3~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Thu, 05 Nov 2026 07:38:46 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Thu, 05 Nov 2026 07:38:46 GMT
VOLUME [/opt/nouveau/data]
# Thu, 05 Nov 2026 07:38:46 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Thu, 05 Nov 2026 07:38:46 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85ed3375b633afb7af8135a4760790297a3c4ed6cfda0ee96cf5db60c971415d`  
		Last Modified: Thu, 05 Nov 2026 07:38:59 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d303fce95c5aa91ea01f0c712206fd061075f973e8b0e1d9a1aff8ee939fa7f`  
		Last Modified: Thu, 05 Nov 2026 07:38:59 GMT  
		Size: 7.5 MB (7491331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:512a150922b79e2774c13187a1549d4e7309e8776d14c96f3fa7b8a3e9a88bc5`  
		Last Modified: Thu, 05 Nov 2026 07:39:01 GMT  
		Size: 70.2 MB (70185482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1954397f67e0df3c5182d80fd8b69e5960826a9dc11eb2b7d5f1514151dc37f`  
		Last Modified: Thu, 05 Nov 2026 07:38:59 GMT  
		Size: 425.8 KB (425816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fe4637a0cc3908c36d9ae1a777ff651ba6f46ce1075dde2fe2b5990ffc52f87`  
		Last Modified: Thu, 05 Nov 2026 07:39:00 GMT  
		Size: 347.4 KB (347437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8de57b181a9bb2c55b2a80abf44301fd772650470d8ed250ddfc0dfbee1b3966`  
		Last Modified: Thu, 05 Nov 2026 07:39:00 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e10c880d0a7442ff66b93b920d57949870ba93c22da58a09877fe24c60aa6989`  
		Last Modified: Thu, 05 Nov 2026 07:39:02 GMT  
		Size: 42.8 MB (42808527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b686d42668e5c9ee90444e6927d787b5f42f73e2cf089832958a21700ea37ab`  
		Last Modified: Thu, 05 Nov 2026 07:39:01 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:8067ee8382c5b0b0d9553e90a01ebaa8b1887174ad426435776999a8ba7617d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3393333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc2c34a477359d731cc3ffa845cf357cdcb2667bb6fc6d8874d6ca6452e2a171`

```dockerfile
```

-	Layers:
	-	`sha256:50900f81fea20bc4f6d89961e3dea6f1a79671e0e08dc205a5d61e17fc282a02`  
		Last Modified: Thu, 05 Nov 2026 07:38:59 GMT  
		Size: 3.4 MB (3369076 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45becf30c25ced9f11537c7842173cb4bc1a31cfbd5acf637ad08374f53c5e2d`  
		Last Modified: Thu, 05 Nov 2026 07:38:59 GMT  
		Size: 24.3 KB (24257 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.5-nouveau` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:f3703008393de31763c887f05482454e76899e4503dec9f7df5f67335f3d0354
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.3 MB (150272716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3382ce90e740da0010f7d27decb767e1e50f2838592181e97c6d2749598e1ae5`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:42:11 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Thu, 05 Nov 2026 07:42:11 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Thu, 05 Nov 2026 07:42:19 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:42:25 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:42:28 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Thu, 05 Nov 2026 07:42:28 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Thu, 05 Nov 2026 07:42:34 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:42:34 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Thu, 05 Nov 2026 07:42:40 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends             couchdb-nouveau=3.5.3~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Thu, 05 Nov 2026 07:42:40 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Thu, 05 Nov 2026 07:42:40 GMT
VOLUME [/opt/nouveau/data]
# Thu, 05 Nov 2026 07:42:40 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Thu, 05 Nov 2026 07:42:40 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23c779568056c1ab7c52729d313b9e573f7adeb5c7c4d810c07511a9a83c24b7`  
		Last Modified: Thu, 05 Nov 2026 07:42:54 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3499d7f6a5e3147f6c2f1251230a25bced3e78bc8dd7fe34c5a3988b8b78ffac`  
		Last Modified: Thu, 05 Nov 2026 07:42:55 GMT  
		Size: 7.3 MB (7257549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2540ee6e480d9c1a2a0bce8e2d9604603ab5a47473db43f1c0ebcecda6053f67`  
		Last Modified: Thu, 05 Nov 2026 07:42:56 GMT  
		Size: 69.3 MB (69329184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e224716239086f3dce2e4d48a1efdc2ead66ec5fbf8af5f0965818c3f832071`  
		Last Modified: Thu, 05 Nov 2026 07:42:54 GMT  
		Size: 390.2 KB (390164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2364a75563e567ad29f7b0d4539e8ad0cc1ebcb0fabcb2a50fea838ecae8ea15`  
		Last Modified: Thu, 05 Nov 2026 07:42:55 GMT  
		Size: 347.4 KB (347427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5a877d8237738c0f3afdbe97306699aec8cd14b654515c502d2b1f11d448a13`  
		Last Modified: Thu, 05 Nov 2026 07:42:56 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:226a3aa187f9629c073034022f858ab8ec28991a5ad5f616fcd011dc3c196532`  
		Last Modified: Thu, 05 Nov 2026 07:42:57 GMT  
		Size: 42.7 MB (42732476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77f496559a1d1bc8c21976a110ca5864f0404d53bd3d9fd5eec1e14897b8ec07`  
		Last Modified: Thu, 05 Nov 2026 07:42:57 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:d818a022299f074dfa1e7082e628db5f12b3537cd23c92fbfa1705ffcd648420
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3392156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7b1cee1a211a77be83bff557283ca5858146b22c94142b09006a75facdcc242`

```dockerfile
```

-	Layers:
	-	`sha256:600e0e0582b21bc6d0c4a80c64c92f5a56727f77c440d7a4c2fa1ec3264cbde4`  
		Last Modified: Thu, 05 Nov 2026 07:42:54 GMT  
		Size: 3.4 MB (3367717 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ee9081bebfef81d4100f614173f5d9ce9dcebe0eb0b6455fa384f0fc2f2ae6b`  
		Last Modified: Thu, 05 Nov 2026 07:42:54 GMT  
		Size: 24.4 KB (24439 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.5.3`

```console
$ docker pull couchdb@sha256:907eab5b7e55ab7cfd241d39b90b2a335ea40bef82acee5a37388c08bf201dda
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3.5.3` - linux; amd64

```console
$ docker pull couchdb@sha256:a4be8d5fe6862766844672d3b660bce2ccc203852838d08b2f3385b910e5cae2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.8 MB (150834367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d03dcfbdfdcfae9aa374ece6d2099383a52e1c892b91b18c8c2b01ff33dd034`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:38:17 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Thu, 05 Nov 2026 07:38:17 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Thu, 05 Nov 2026 07:38:24 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:38:26 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Thu, 05 Nov 2026 07:38:26 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Thu, 05 Nov 2026 07:38:32 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:38:32 GMT
ENV COUCHDB_VERSION=3.5.3
# Thu, 05 Nov 2026 07:38:32 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Thu, 05 Nov 2026 07:38:45 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Thu, 05 Nov 2026 07:38:45 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Thu, 05 Nov 2026 07:38:45 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Thu, 05 Nov 2026 07:38:45 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 07:38:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:38:45 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:38:45 GMT
VOLUME [/opt/couchdb/data]
# Thu, 05 Nov 2026 07:38:45 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Thu, 05 Nov 2026 07:38:45 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2ca97d3dddc704a2039a6f54c04dde930af5e168d0cf2fa597db9b4121c1f1f`  
		Last Modified: Thu, 05 Nov 2026 07:38:57 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3364c390e526b34b8d2bbaf85f0b9d0eadb57bc71dc64691e6e6f97ddfb4723`  
		Last Modified: Thu, 05 Nov 2026 07:38:58 GMT  
		Size: 7.5 MB (7491282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67f70979b96044a484317fec8568d555733646fa62145b40eae179c291c454ef`  
		Last Modified: Thu, 05 Nov 2026 07:38:57 GMT  
		Size: 417.5 KB (417453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f5a8725932ae5fdd2610143ad790eafbf91e0e7bea8e0b6c21365b3b886a4d3`  
		Last Modified: Thu, 05 Nov 2026 07:38:57 GMT  
		Size: 338.6 KB (338591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:744c2cdd4022102cef36f64e7360805550b8640262ab946bb922b0832065b914`  
		Last Modified: Thu, 05 Nov 2026 07:38:59 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6150cf083451225f6b75159b3a2a380b950b769ad6f9611e899d1a0972424b6e`  
		Last Modified: Thu, 05 Nov 2026 07:39:01 GMT  
		Size: 112.7 MB (112725472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de32960a04ccf46693c2e755e63a6fc314254c55b5fb513b85b86a09905d52b7`  
		Last Modified: Thu, 05 Nov 2026 07:38:59 GMT  
		Size: 380.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a16474412fa374bc1b6296e2d594430793bd1b112efabfa4d068332d54ed015`  
		Last Modified: Thu, 05 Nov 2026 07:38:59 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af55f9f6d558937cc4ebbf42684d5abba78354b79459230a763c9fa260ea8365`  
		Last Modified: Thu, 05 Nov 2026 07:39:00 GMT  
		Size: 2.2 KB (2230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b0d3e8782cf03d692cf3a47cdacd7b25fc74ebd41bfc71615d1363326dea37d`  
		Last Modified: Thu, 05 Nov 2026 07:39:00 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5.3` - unknown; unknown

```console
$ docker pull couchdb@sha256:75c874eb64a39e089489ca0f0ede9fcaea4999ae5c7f09323f2bdf5f4c401106
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4225965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4552dab5e475c70ede21a7b29564e985aa025e068b1c9debe64515c44b8f6cb`

```dockerfile
```

-	Layers:
	-	`sha256:90c3029bd78322058de187f52aaf4daf87b5fcc3e257f04ef6102af9ee2cbb01`  
		Last Modified: Thu, 05 Nov 2026 07:38:58 GMT  
		Size: 4.2 MB (4194607 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e36a50e207d9e16f3ed1ee588d17e0eedc6fa3924cfafd28a4669fd69214363`  
		Last Modified: Thu, 05 Nov 2026 07:38:57 GMT  
		Size: 31.4 KB (31358 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.5.3` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:712e099d27d129ba23b561cd9cd108382fa7f07a6d6717210a90af96b496e9a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.6 MB (150551619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfbc136f37f06eedea6642121059d57283415c5e77b10d9d1d82edd8e61adef4`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:42:05 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Thu, 05 Nov 2026 07:42:05 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Thu, 05 Nov 2026 07:42:13 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:42:17 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Thu, 05 Nov 2026 07:42:17 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Thu, 05 Nov 2026 07:42:24 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:42:24 GMT
ENV COUCHDB_VERSION=3.5.3
# Thu, 05 Nov 2026 07:42:24 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Thu, 05 Nov 2026 07:42:38 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Thu, 05 Nov 2026 07:42:38 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Thu, 05 Nov 2026 07:42:38 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Thu, 05 Nov 2026 07:42:38 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 07:42:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:42:38 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:42:38 GMT
VOLUME [/opt/couchdb/data]
# Thu, 05 Nov 2026 07:42:38 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Thu, 05 Nov 2026 07:42:38 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d642cc29e3eaa117af23d555db89828d5bafb4abd03d830d1d62381acf904bc`  
		Last Modified: Thu, 05 Nov 2026 07:42:53 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aa37f5a3d894fcc59d440edaa71120c2dbae4a5c098dbbe4bba7977ffdf4a7e`  
		Last Modified: Thu, 05 Nov 2026 07:42:53 GMT  
		Size: 7.3 MB (7257502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fd3da55620b3afe135e86eb5c5726a796a7ee475cdeb6aeea15ef9dd3153992`  
		Last Modified: Thu, 05 Nov 2026 07:42:53 GMT  
		Size: 382.5 KB (382464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c9cf74a56eac91d0e5d6c90976181d173b222b122e2af4019e52b464b7f33e3`  
		Last Modified: Thu, 05 Nov 2026 07:42:53 GMT  
		Size: 338.7 KB (338749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20c7592adb4f8054ef6e371287bbe6712e13202ff9fe4c3977fd9e0ad742c073`  
		Last Modified: Thu, 05 Nov 2026 07:42:54 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ea6e6e0330131c9760285c3d921ab811fa94f10e8a7e862b5386a69ee8d891d`  
		Last Modified: Thu, 05 Nov 2026 07:42:56 GMT  
		Size: 112.4 MB (112353432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:553531d0e539f90e3764a760654745cff321642249095e58906a8584b1113e1a`  
		Last Modified: Thu, 05 Nov 2026 07:42:54 GMT  
		Size: 378.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d42b8955f35ca6140ae33ddf682b9d6869fee8de7ac33524527fceaa70f34f57`  
		Last Modified: Thu, 05 Nov 2026 07:42:54 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b433520ac3d20af0396174e456c238a70c17a74c61d76b5683259b0682ae7090`  
		Last Modified: Thu, 05 Nov 2026 07:42:55 GMT  
		Size: 2.2 KB (2231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dd5c3210c6d0d6a6689645a08beeb52967dbaaf286347bc4cdeeeb81cbcb27d`  
		Last Modified: Thu, 05 Nov 2026 07:42:55 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5.3` - unknown; unknown

```console
$ docker pull couchdb@sha256:644786cd11c622eabf96fcda1abb24aa0d21b29af95ebef3bf5cc95096e0dc02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4226454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85574b1ecd2fded47bc6426217f9e4d89c4fa5c716e94a748b2f2c8d8e7ac644`

```dockerfile
```

-	Layers:
	-	`sha256:7f160b5f23691ade955bfcb5731fd58d8051f985845bdfa87db21403564ef7ab`  
		Last Modified: Thu, 05 Nov 2026 07:42:53 GMT  
		Size: 4.2 MB (4194903 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:349cfdc90538c5d4f63adb4c7c63cdf2154006b674c3dc1f46ee3fbd12bbc31c`  
		Last Modified: Thu, 05 Nov 2026 07:42:53 GMT  
		Size: 31.6 KB (31551 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.5.3-nouveau`

```console
$ docker pull couchdb@sha256:45acdf516e8373cac3f1ab7981a1f71c61ce37b114e8c5db2f96a3508baebe48
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3.5.3-nouveau` - linux; amd64

```console
$ docker pull couchdb@sha256:34cf9f7829ffdfdec5822b06efb5ad757e11bb9743b3bd39ad440ca2e77511a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.1 MB (151116604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bc5eb39f079a53c876d0bcd9e7586007a707ca2e4817275691c751c42b22c91`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:38:20 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Thu, 05 Nov 2026 07:38:20 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Thu, 05 Nov 2026 07:38:27 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:38:32 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:38:35 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Thu, 05 Nov 2026 07:38:35 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Thu, 05 Nov 2026 07:38:40 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:38:40 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Thu, 05 Nov 2026 07:38:46 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends             couchdb-nouveau=3.5.3~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Thu, 05 Nov 2026 07:38:46 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Thu, 05 Nov 2026 07:38:46 GMT
VOLUME [/opt/nouveau/data]
# Thu, 05 Nov 2026 07:38:46 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Thu, 05 Nov 2026 07:38:46 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85ed3375b633afb7af8135a4760790297a3c4ed6cfda0ee96cf5db60c971415d`  
		Last Modified: Thu, 05 Nov 2026 07:38:59 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d303fce95c5aa91ea01f0c712206fd061075f973e8b0e1d9a1aff8ee939fa7f`  
		Last Modified: Thu, 05 Nov 2026 07:38:59 GMT  
		Size: 7.5 MB (7491331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:512a150922b79e2774c13187a1549d4e7309e8776d14c96f3fa7b8a3e9a88bc5`  
		Last Modified: Thu, 05 Nov 2026 07:39:01 GMT  
		Size: 70.2 MB (70185482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1954397f67e0df3c5182d80fd8b69e5960826a9dc11eb2b7d5f1514151dc37f`  
		Last Modified: Thu, 05 Nov 2026 07:38:59 GMT  
		Size: 425.8 KB (425816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fe4637a0cc3908c36d9ae1a777ff651ba6f46ce1075dde2fe2b5990ffc52f87`  
		Last Modified: Thu, 05 Nov 2026 07:39:00 GMT  
		Size: 347.4 KB (347437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8de57b181a9bb2c55b2a80abf44301fd772650470d8ed250ddfc0dfbee1b3966`  
		Last Modified: Thu, 05 Nov 2026 07:39:00 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e10c880d0a7442ff66b93b920d57949870ba93c22da58a09877fe24c60aa6989`  
		Last Modified: Thu, 05 Nov 2026 07:39:02 GMT  
		Size: 42.8 MB (42808527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b686d42668e5c9ee90444e6927d787b5f42f73e2cf089832958a21700ea37ab`  
		Last Modified: Thu, 05 Nov 2026 07:39:01 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5.3-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:8067ee8382c5b0b0d9553e90a01ebaa8b1887174ad426435776999a8ba7617d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3393333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc2c34a477359d731cc3ffa845cf357cdcb2667bb6fc6d8874d6ca6452e2a171`

```dockerfile
```

-	Layers:
	-	`sha256:50900f81fea20bc4f6d89961e3dea6f1a79671e0e08dc205a5d61e17fc282a02`  
		Last Modified: Thu, 05 Nov 2026 07:38:59 GMT  
		Size: 3.4 MB (3369076 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45becf30c25ced9f11537c7842173cb4bc1a31cfbd5acf637ad08374f53c5e2d`  
		Last Modified: Thu, 05 Nov 2026 07:38:59 GMT  
		Size: 24.3 KB (24257 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.5.3-nouveau` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:f3703008393de31763c887f05482454e76899e4503dec9f7df5f67335f3d0354
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.3 MB (150272716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3382ce90e740da0010f7d27decb767e1e50f2838592181e97c6d2749598e1ae5`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:42:11 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Thu, 05 Nov 2026 07:42:11 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Thu, 05 Nov 2026 07:42:19 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:42:25 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:42:28 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Thu, 05 Nov 2026 07:42:28 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Thu, 05 Nov 2026 07:42:34 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:42:34 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Thu, 05 Nov 2026 07:42:40 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends             couchdb-nouveau=3.5.3~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Thu, 05 Nov 2026 07:42:40 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Thu, 05 Nov 2026 07:42:40 GMT
VOLUME [/opt/nouveau/data]
# Thu, 05 Nov 2026 07:42:40 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Thu, 05 Nov 2026 07:42:40 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23c779568056c1ab7c52729d313b9e573f7adeb5c7c4d810c07511a9a83c24b7`  
		Last Modified: Thu, 05 Nov 2026 07:42:54 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3499d7f6a5e3147f6c2f1251230a25bced3e78bc8dd7fe34c5a3988b8b78ffac`  
		Last Modified: Thu, 05 Nov 2026 07:42:55 GMT  
		Size: 7.3 MB (7257549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2540ee6e480d9c1a2a0bce8e2d9604603ab5a47473db43f1c0ebcecda6053f67`  
		Last Modified: Thu, 05 Nov 2026 07:42:56 GMT  
		Size: 69.3 MB (69329184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e224716239086f3dce2e4d48a1efdc2ead66ec5fbf8af5f0965818c3f832071`  
		Last Modified: Thu, 05 Nov 2026 07:42:54 GMT  
		Size: 390.2 KB (390164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2364a75563e567ad29f7b0d4539e8ad0cc1ebcb0fabcb2a50fea838ecae8ea15`  
		Last Modified: Thu, 05 Nov 2026 07:42:55 GMT  
		Size: 347.4 KB (347427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5a877d8237738c0f3afdbe97306699aec8cd14b654515c502d2b1f11d448a13`  
		Last Modified: Thu, 05 Nov 2026 07:42:56 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:226a3aa187f9629c073034022f858ab8ec28991a5ad5f616fcd011dc3c196532`  
		Last Modified: Thu, 05 Nov 2026 07:42:57 GMT  
		Size: 42.7 MB (42732476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77f496559a1d1bc8c21976a110ca5864f0404d53bd3d9fd5eec1e14897b8ec07`  
		Last Modified: Thu, 05 Nov 2026 07:42:57 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5.3-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:d818a022299f074dfa1e7082e628db5f12b3537cd23c92fbfa1705ffcd648420
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3392156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7b1cee1a211a77be83bff557283ca5858146b22c94142b09006a75facdcc242`

```dockerfile
```

-	Layers:
	-	`sha256:600e0e0582b21bc6d0c4a80c64c92f5a56727f77c440d7a4c2fa1ec3264cbde4`  
		Last Modified: Thu, 05 Nov 2026 07:42:54 GMT  
		Size: 3.4 MB (3367717 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ee9081bebfef81d4100f614173f5d9ce9dcebe0eb0b6455fa384f0fc2f2ae6b`  
		Last Modified: Thu, 05 Nov 2026 07:42:54 GMT  
		Size: 24.4 KB (24439 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:latest`

```console
$ docker pull couchdb@sha256:907eab5b7e55ab7cfd241d39b90b2a335ea40bef82acee5a37388c08bf201dda
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:latest` - linux; amd64

```console
$ docker pull couchdb@sha256:a4be8d5fe6862766844672d3b660bce2ccc203852838d08b2f3385b910e5cae2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.8 MB (150834367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d03dcfbdfdcfae9aa374ece6d2099383a52e1c892b91b18c8c2b01ff33dd034`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:38:17 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Thu, 05 Nov 2026 07:38:17 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Thu, 05 Nov 2026 07:38:24 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:38:26 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Thu, 05 Nov 2026 07:38:26 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Thu, 05 Nov 2026 07:38:32 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:38:32 GMT
ENV COUCHDB_VERSION=3.5.3
# Thu, 05 Nov 2026 07:38:32 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Thu, 05 Nov 2026 07:38:45 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Thu, 05 Nov 2026 07:38:45 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Thu, 05 Nov 2026 07:38:45 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Thu, 05 Nov 2026 07:38:45 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 07:38:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:38:45 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:38:45 GMT
VOLUME [/opt/couchdb/data]
# Thu, 05 Nov 2026 07:38:45 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Thu, 05 Nov 2026 07:38:45 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2ca97d3dddc704a2039a6f54c04dde930af5e168d0cf2fa597db9b4121c1f1f`  
		Last Modified: Thu, 05 Nov 2026 07:38:57 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3364c390e526b34b8d2bbaf85f0b9d0eadb57bc71dc64691e6e6f97ddfb4723`  
		Last Modified: Thu, 05 Nov 2026 07:38:58 GMT  
		Size: 7.5 MB (7491282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67f70979b96044a484317fec8568d555733646fa62145b40eae179c291c454ef`  
		Last Modified: Thu, 05 Nov 2026 07:38:57 GMT  
		Size: 417.5 KB (417453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f5a8725932ae5fdd2610143ad790eafbf91e0e7bea8e0b6c21365b3b886a4d3`  
		Last Modified: Thu, 05 Nov 2026 07:38:57 GMT  
		Size: 338.6 KB (338591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:744c2cdd4022102cef36f64e7360805550b8640262ab946bb922b0832065b914`  
		Last Modified: Thu, 05 Nov 2026 07:38:59 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6150cf083451225f6b75159b3a2a380b950b769ad6f9611e899d1a0972424b6e`  
		Last Modified: Thu, 05 Nov 2026 07:39:01 GMT  
		Size: 112.7 MB (112725472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de32960a04ccf46693c2e755e63a6fc314254c55b5fb513b85b86a09905d52b7`  
		Last Modified: Thu, 05 Nov 2026 07:38:59 GMT  
		Size: 380.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a16474412fa374bc1b6296e2d594430793bd1b112efabfa4d068332d54ed015`  
		Last Modified: Thu, 05 Nov 2026 07:38:59 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af55f9f6d558937cc4ebbf42684d5abba78354b79459230a763c9fa260ea8365`  
		Last Modified: Thu, 05 Nov 2026 07:39:00 GMT  
		Size: 2.2 KB (2230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b0d3e8782cf03d692cf3a47cdacd7b25fc74ebd41bfc71615d1363326dea37d`  
		Last Modified: Thu, 05 Nov 2026 07:39:00 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:latest` - unknown; unknown

```console
$ docker pull couchdb@sha256:75c874eb64a39e089489ca0f0ede9fcaea4999ae5c7f09323f2bdf5f4c401106
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4225965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4552dab5e475c70ede21a7b29564e985aa025e068b1c9debe64515c44b8f6cb`

```dockerfile
```

-	Layers:
	-	`sha256:90c3029bd78322058de187f52aaf4daf87b5fcc3e257f04ef6102af9ee2cbb01`  
		Last Modified: Thu, 05 Nov 2026 07:38:58 GMT  
		Size: 4.2 MB (4194607 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e36a50e207d9e16f3ed1ee588d17e0eedc6fa3924cfafd28a4669fd69214363`  
		Last Modified: Thu, 05 Nov 2026 07:38:57 GMT  
		Size: 31.4 KB (31358 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:latest` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:712e099d27d129ba23b561cd9cd108382fa7f07a6d6717210a90af96b496e9a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.6 MB (150551619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfbc136f37f06eedea6642121059d57283415c5e77b10d9d1d82edd8e61adef4`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:42:05 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Thu, 05 Nov 2026 07:42:05 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Thu, 05 Nov 2026 07:42:13 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:42:17 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Thu, 05 Nov 2026 07:42:17 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Thu, 05 Nov 2026 07:42:24 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:42:24 GMT
ENV COUCHDB_VERSION=3.5.3
# Thu, 05 Nov 2026 07:42:24 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Thu, 05 Nov 2026 07:42:38 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Thu, 05 Nov 2026 07:42:38 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Thu, 05 Nov 2026 07:42:38 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Thu, 05 Nov 2026 07:42:38 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 07:42:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Thu, 05 Nov 2026 07:42:38 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:42:38 GMT
VOLUME [/opt/couchdb/data]
# Thu, 05 Nov 2026 07:42:38 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Thu, 05 Nov 2026 07:42:38 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d642cc29e3eaa117af23d555db89828d5bafb4abd03d830d1d62381acf904bc`  
		Last Modified: Thu, 05 Nov 2026 07:42:53 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aa37f5a3d894fcc59d440edaa71120c2dbae4a5c098dbbe4bba7977ffdf4a7e`  
		Last Modified: Thu, 05 Nov 2026 07:42:53 GMT  
		Size: 7.3 MB (7257502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fd3da55620b3afe135e86eb5c5726a796a7ee475cdeb6aeea15ef9dd3153992`  
		Last Modified: Thu, 05 Nov 2026 07:42:53 GMT  
		Size: 382.5 KB (382464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c9cf74a56eac91d0e5d6c90976181d173b222b122e2af4019e52b464b7f33e3`  
		Last Modified: Thu, 05 Nov 2026 07:42:53 GMT  
		Size: 338.7 KB (338749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20c7592adb4f8054ef6e371287bbe6712e13202ff9fe4c3977fd9e0ad742c073`  
		Last Modified: Thu, 05 Nov 2026 07:42:54 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ea6e6e0330131c9760285c3d921ab811fa94f10e8a7e862b5386a69ee8d891d`  
		Last Modified: Thu, 05 Nov 2026 07:42:56 GMT  
		Size: 112.4 MB (112353432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:553531d0e539f90e3764a760654745cff321642249095e58906a8584b1113e1a`  
		Last Modified: Thu, 05 Nov 2026 07:42:54 GMT  
		Size: 378.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d42b8955f35ca6140ae33ddf682b9d6869fee8de7ac33524527fceaa70f34f57`  
		Last Modified: Thu, 05 Nov 2026 07:42:54 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b433520ac3d20af0396174e456c238a70c17a74c61d76b5683259b0682ae7090`  
		Last Modified: Thu, 05 Nov 2026 07:42:55 GMT  
		Size: 2.2 KB (2231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dd5c3210c6d0d6a6689645a08beeb52967dbaaf286347bc4cdeeeb81cbcb27d`  
		Last Modified: Thu, 05 Nov 2026 07:42:55 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:latest` - unknown; unknown

```console
$ docker pull couchdb@sha256:644786cd11c622eabf96fcda1abb24aa0d21b29af95ebef3bf5cc95096e0dc02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4226454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85574b1ecd2fded47bc6426217f9e4d89c4fa5c716e94a748b2f2c8d8e7ac644`

```dockerfile
```

-	Layers:
	-	`sha256:7f160b5f23691ade955bfcb5731fd58d8051f985845bdfa87db21403564ef7ab`  
		Last Modified: Thu, 05 Nov 2026 07:42:53 GMT  
		Size: 4.2 MB (4194903 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:349cfdc90538c5d4f63adb4c7c63cdf2154006b674c3dc1f46ee3fbd12bbc31c`  
		Last Modified: Thu, 05 Nov 2026 07:42:53 GMT  
		Size: 31.6 KB (31551 bytes)  
		MIME: application/vnd.in-toto+json
