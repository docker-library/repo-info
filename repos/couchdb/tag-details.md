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
$ docker pull couchdb@sha256:5fc596110eac7f412173a7d9de14f70aa5d3e816790fb6e70642755d4a4cf464
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3` - linux; amd64

```console
$ docker pull couchdb@sha256:6785bd4bec3d406fbba8d60f8ec258e6ddec38bf0fbfd700916790b697f9ab8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.9 MB (148902286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43a86062d33a0a3d24538a13834983fe5ef147dc14ea68c3ab71c8667071d18b`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:41:24 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 06 Oct 2026 01:41:24 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Tue, 06 Oct 2026 01:41:30 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:41:33 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 06 Oct 2026 01:41:33 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 06 Oct 2026 01:41:39 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:41:39 GMT
ENV COUCHDB_VERSION=3.5.2.1
# Tue, 06 Oct 2026 01:41:39 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 06 Oct 2026 01:41:51 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 06 Oct 2026 01:41:51 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Tue, 06 Oct 2026 01:41:51 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Tue, 06 Oct 2026 01:41:51 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 06 Oct 2026 01:41:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:41:51 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:41:51 GMT
VOLUME [/opt/couchdb/data]
# Tue, 06 Oct 2026 01:41:51 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Tue, 06 Oct 2026 01:41:51 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb2ab07060dfe649fbe42f895af62a76f0fe0fff8c30e4811eab752ea5e45ace`  
		Last Modified: Tue, 06 Oct 2026 01:42:03 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aad01a028f2bb172750eb4149f711d2fc3d317747b5cf6bda0d677a30025a83a`  
		Last Modified: Tue, 06 Oct 2026 01:42:04 GMT  
		Size: 7.5 MB (7492125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:430da43108f9255fd226c997aa7a32f314e92065c183d767154e42058bc44023`  
		Last Modified: Tue, 06 Oct 2026 01:42:04 GMT  
		Size: 417.4 KB (417437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69668ab032a6990b75396e16fe900259ff67549bf31807809110b8c3b3a53873`  
		Last Modified: Tue, 06 Oct 2026 01:42:04 GMT  
		Size: 338.6 KB (338593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:627865088f474828067415abcd8775e03d3459d80db85c383e5e6b0504a4eb9e`  
		Last Modified: Tue, 06 Oct 2026 01:42:05 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3192f57d8f90051db511cef027750f615624f8f74079b9697ac342a338608ba3`  
		Last Modified: Tue, 06 Oct 2026 01:42:07 GMT  
		Size: 110.8 MB (110805351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:607a502c5030ee535a516375b3202d4c2bb267023954b863ea8331cb5d9ab763`  
		Last Modified: Tue, 06 Oct 2026 01:42:05 GMT  
		Size: 378.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17d0ff2d7c05ddd6877ac0076588fda74744d9d9a09a722e9da86b2741cda44a`  
		Last Modified: Tue, 06 Oct 2026 01:42:05 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4245f6d5a46823d3b46a13adc9086dcb956f9227973f02d84cf364a4320da32`  
		Last Modified: Tue, 06 Oct 2026 01:42:06 GMT  
		Size: 2.2 KB (2227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9fd7497b5cac60859fe03da3e11be58ee4203a2efc2045e3adce21313962fa2`  
		Last Modified: Tue, 06 Oct 2026 01:42:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3` - unknown; unknown

```console
$ docker pull couchdb@sha256:c84555466270b14f8c94a9c442b5e2a5915b4728e26b398f64f81261546beb1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4218063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29631bb59eb68937eda9cb5d4f009079147104068cc5baa5af7b2ab19f4bc8b7`

```dockerfile
```

-	Layers:
	-	`sha256:e413a901f999eaccd9f63e182a26b57fe451eae4cb5056f08c42bd5a60127064`  
		Last Modified: Tue, 06 Oct 2026 01:42:04 GMT  
		Size: 4.2 MB (4186387 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65984895338159c8f00a78e3bb6e0cb60ec40485aea54dcf5a97dd202f31a51d`  
		Last Modified: Tue, 06 Oct 2026 01:42:03 GMT  
		Size: 31.7 KB (31676 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:5a1991c184104a164e1df74139989f0bd7c8cac320ac79de3e15cb3c194d3eb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.7 MB (148663906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16f125595d0796bfdb8a1a791b59ae8742b8220c054e63f845c7c57b6a1664bc`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:44:36 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 06 Oct 2026 01:44:36 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Tue, 06 Oct 2026 01:44:43 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:44:47 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 06 Oct 2026 01:44:47 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 06 Oct 2026 01:44:53 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:44:53 GMT
ENV COUCHDB_VERSION=3.5.2.1
# Tue, 06 Oct 2026 01:44:53 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 06 Oct 2026 01:45:06 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 06 Oct 2026 01:45:07 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Tue, 06 Oct 2026 01:45:07 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Tue, 06 Oct 2026 01:45:07 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 06 Oct 2026 01:45:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:45:07 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:45:07 GMT
VOLUME [/opt/couchdb/data]
# Tue, 06 Oct 2026 01:45:07 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Tue, 06 Oct 2026 01:45:07 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85e090b8ba51ea5658c4951fadd763861fd9e9e6de502a92c796d7f44dbd13a7`  
		Last Modified: Tue, 06 Oct 2026 01:45:20 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da66b34ee39206257d8b378a4979feab5d67fd3b65c7eac3804e1fa564443e64`  
		Last Modified: Tue, 06 Oct 2026 01:45:20 GMT  
		Size: 7.3 MB (7261123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:357f0bb8186eee78cb9496ee31aeb451c270c4c991c805c2c9fe0a3c9c8cff14`  
		Last Modified: Tue, 06 Oct 2026 01:45:20 GMT  
		Size: 382.4 KB (382446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b92b9dff053929066cec934f3f75ebc93859abbc2c18f80973f828102e167c58`  
		Last Modified: Tue, 06 Oct 2026 01:45:20 GMT  
		Size: 338.8 KB (338758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b88e1d10124bb30d4ef257031f60b9231ed2ad9b78f041a4172ae201532caf0a`  
		Last Modified: Tue, 06 Oct 2026 01:45:21 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37f5c9dc872139c7ed38ca1c5a4f858122b304ea3314ee46f3efdff53e282fcb`  
		Last Modified: Tue, 06 Oct 2026 01:45:24 GMT  
		Size: 110.5 MB (110475866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f51e4b85f684c8e385f1d775819c3db0e26bb2df785529882985973e9226a6b4`  
		Last Modified: Tue, 06 Oct 2026 01:45:21 GMT  
		Size: 380.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74274205fd7ee5bc1c659c3e64cc8bf4f1f100ab28cf09b3f2b6f0fc19f363c5`  
		Last Modified: Tue, 06 Oct 2026 01:45:22 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96bc29c9a47b022085203f709aa43724a7c39ee244090617dc6e5f8b1fa5336a`  
		Last Modified: Tue, 06 Oct 2026 01:45:23 GMT  
		Size: 2.2 KB (2226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b59c1a18e8425dc655c372e13730140094cb4440771a38df52fabf1e45de82d`  
		Last Modified: Tue, 06 Oct 2026 01:45:23 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3` - unknown; unknown

```console
$ docker pull couchdb@sha256:216f5178059563de938b4056b60ab5e86fdef183ec35b9f06c26a65f9f00ab26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4218577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edd4404d6a4a3f097384ce2bfad62e7aa5f8200926b71200555c83b1a65da297`

```dockerfile
```

-	Layers:
	-	`sha256:e61ff33afbadaf2456403d00404bbde77bc7deb0083a47edc4d88b8507fb9ff7`  
		Last Modified: Tue, 06 Oct 2026 01:45:20 GMT  
		Size: 4.2 MB (4186695 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1eff34332ff40f1c964178879dd11ce95d67e13d69eb142417e567b71531e94f`  
		Last Modified: Tue, 06 Oct 2026 01:45:20 GMT  
		Size: 31.9 KB (31882 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3-nouveau`

```console
$ docker pull couchdb@sha256:fa1a4c4126f99d0528ca13f220b95410d5f5ef74c95845496e56c2bbde5aeea2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3-nouveau` - linux; amd64

```console
$ docker pull couchdb@sha256:dd5c49cdde13432f67121e9c19ee703ba2579d459f19285e3d52a97ac9606131
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.0 MB (150978962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2452e013c03d55a0460f86f845a427c201ad2a80a010ff8ed0ed06ae6c396025`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:41:26 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 06 Oct 2026 01:41:26 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Tue, 06 Oct 2026 01:41:33 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:41:38 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:41:41 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 06 Oct 2026 01:41:41 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 06 Oct 2026 01:41:45 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:41:45 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 06 Oct 2026 01:41:50 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends couchdb-nouveau=3.5.2.1~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Tue, 06 Oct 2026 01:41:50 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Tue, 06 Oct 2026 01:41:50 GMT
VOLUME [/opt/nouveau/data]
# Tue, 06 Oct 2026 01:41:50 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Tue, 06 Oct 2026 01:41:50 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf81c00ee84a8af29f1b1e29b90e5dc0b10e30fa6d51a7710509f79e61d5233f`  
		Last Modified: Tue, 06 Oct 2026 01:42:03 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8623ebb418980a29df9e8fa29d4dea61575d0545b7c7225ed60c8495b60c6cc`  
		Last Modified: Tue, 06 Oct 2026 01:42:04 GMT  
		Size: 7.5 MB (7492127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ce7b82b18b765fa8e96eef25f28a745e88596fc060f3f099077c6467794635a`  
		Last Modified: Tue, 06 Oct 2026 01:42:05 GMT  
		Size: 70.1 MB (70053146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61453f4af6ce52fce9d5d238681cc116f30fbf6e8b0eeb12976133bf469d9c72`  
		Last Modified: Tue, 06 Oct 2026 01:42:03 GMT  
		Size: 425.9 KB (425859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb6934ca2fe6c809affaf12abd195ba8926601be60dcdb9e0cba960c5d59d083`  
		Last Modified: Tue, 06 Oct 2026 01:42:04 GMT  
		Size: 347.1 KB (347142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:312cf22d898eec0703f7e9212e5e1ec406290773798ecce0001f45da4e8cca5d`  
		Last Modified: Tue, 06 Oct 2026 01:42:05 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:564386ecb3c9292f285deb1fa27f7aa70ff7d777bdfd3331ade35851075781c6`  
		Last Modified: Tue, 06 Oct 2026 01:42:06 GMT  
		Size: 42.8 MB (42815459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de122994f128614b712668c4605ce694165465b075c61b0de175265c0d55d9ab`  
		Last Modified: Tue, 06 Oct 2026 01:42:06 GMT  
		Size: 417.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:552d3d14c5b69e65c8e61673444c7caff7d14358678fe3e4b3fd4fd6f0f6c50b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3395206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:076a6d0ec2e14ba5b0b3a0f26e49525e7828e5efcde86662d058d3059f9486ec`

```dockerfile
```

-	Layers:
	-	`sha256:65fae99b4d74bc22f0bf6e867febc81a138c7c2e1e26e38258246ca62e45ed25`  
		Last Modified: Tue, 06 Oct 2026 01:42:03 GMT  
		Size: 3.4 MB (3370691 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f2832669eb88085c134204ce824aaec56d1e1efbb6d28cb1c2390527ec717f4`  
		Last Modified: Tue, 06 Oct 2026 01:42:03 GMT  
		Size: 24.5 KB (24515 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3-nouveau` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:2845fde5c374b7551ca38a4f544a086d5bec1c3690022f397aee5a018e0acf82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150126209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a015b456eaa31bc20ff72fcb6ef698b236d88b0b0549ce217caac8607458b8a6`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:44:40 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 06 Oct 2026 01:44:40 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Tue, 06 Oct 2026 01:44:48 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:44:54 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:44:57 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 06 Oct 2026 01:44:57 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 06 Oct 2026 01:45:03 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:45:03 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 06 Oct 2026 01:45:08 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends couchdb-nouveau=3.5.2.1~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Tue, 06 Oct 2026 01:45:08 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Tue, 06 Oct 2026 01:45:08 GMT
VOLUME [/opt/nouveau/data]
# Tue, 06 Oct 2026 01:45:08 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Tue, 06 Oct 2026 01:45:08 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3df326ee6d7f4ada462deda43e52356d0993bd26dfe5e8c129eb83b9acf3b696`  
		Last Modified: Tue, 06 Oct 2026 01:45:23 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b26c383a67c0602d5c2af44ef8fad7fa97bb8ff84669cce6da5d0f4e54a0ffac`  
		Last Modified: Tue, 06 Oct 2026 01:45:23 GMT  
		Size: 7.3 MB (7261131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66548fc27857928ad43840c976e6f3492841b9d30c5a7903513e0d71ccd3b608`  
		Last Modified: Tue, 06 Oct 2026 01:45:25 GMT  
		Size: 69.2 MB (69193094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4ae8ff7799c53ec502d52844861f949b568c0bf0ef1b2e9163cfdfa61c5fcb2`  
		Last Modified: Tue, 06 Oct 2026 01:45:23 GMT  
		Size: 390.2 KB (390181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03d852ef3b158bdcacc0ca6d6e5906c466b60229cae290d1cad3f99936f61802`  
		Last Modified: Tue, 06 Oct 2026 01:45:24 GMT  
		Size: 347.5 KB (347494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6a33fbe80d20ac0709d9565f2dfde1c7debc8e2b51c9d3d156c3c75ea014b84`  
		Last Modified: Tue, 06 Oct 2026 01:45:24 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3861ace4408e0cf4305a0436de63e71ab39e9c8d1f8decb111d7e00029adc8b9`  
		Last Modified: Tue, 06 Oct 2026 01:45:26 GMT  
		Size: 42.7 MB (42732150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a49441218628550567217741bec1bab52f623afb9ac0f6db9c5f268af3b9e146`  
		Last Modified: Tue, 06 Oct 2026 01:45:25 GMT  
		Size: 416.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:2e7d7bc21b3394ac75f93e515ea9d9d495ccc7459f67a5fa95265d7b066a5b64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3394053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:251c529ce39fccf11704bdfbce6c6f6fac10c702e6638d1f599b090e169a7800`

```dockerfile
```

-	Layers:
	-	`sha256:eaeb8ebf0d00d9ac053d98316505e360fbcc76b6f7d179ca63e9f00fffda1d59`  
		Last Modified: Tue, 06 Oct 2026 01:45:23 GMT  
		Size: 3.4 MB (3369344 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dfd3fbd9fc3137f465c79739565554010182372827c0f1e39116a034745af247`  
		Last Modified: Tue, 06 Oct 2026 01:45:23 GMT  
		Size: 24.7 KB (24709 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.5`

```console
$ docker pull couchdb@sha256:5fc596110eac7f412173a7d9de14f70aa5d3e816790fb6e70642755d4a4cf464
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3.5` - linux; amd64

```console
$ docker pull couchdb@sha256:6785bd4bec3d406fbba8d60f8ec258e6ddec38bf0fbfd700916790b697f9ab8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.9 MB (148902286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43a86062d33a0a3d24538a13834983fe5ef147dc14ea68c3ab71c8667071d18b`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:41:24 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 06 Oct 2026 01:41:24 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Tue, 06 Oct 2026 01:41:30 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:41:33 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 06 Oct 2026 01:41:33 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 06 Oct 2026 01:41:39 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:41:39 GMT
ENV COUCHDB_VERSION=3.5.2.1
# Tue, 06 Oct 2026 01:41:39 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 06 Oct 2026 01:41:51 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 06 Oct 2026 01:41:51 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Tue, 06 Oct 2026 01:41:51 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Tue, 06 Oct 2026 01:41:51 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 06 Oct 2026 01:41:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:41:51 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:41:51 GMT
VOLUME [/opt/couchdb/data]
# Tue, 06 Oct 2026 01:41:51 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Tue, 06 Oct 2026 01:41:51 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb2ab07060dfe649fbe42f895af62a76f0fe0fff8c30e4811eab752ea5e45ace`  
		Last Modified: Tue, 06 Oct 2026 01:42:03 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aad01a028f2bb172750eb4149f711d2fc3d317747b5cf6bda0d677a30025a83a`  
		Last Modified: Tue, 06 Oct 2026 01:42:04 GMT  
		Size: 7.5 MB (7492125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:430da43108f9255fd226c997aa7a32f314e92065c183d767154e42058bc44023`  
		Last Modified: Tue, 06 Oct 2026 01:42:04 GMT  
		Size: 417.4 KB (417437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69668ab032a6990b75396e16fe900259ff67549bf31807809110b8c3b3a53873`  
		Last Modified: Tue, 06 Oct 2026 01:42:04 GMT  
		Size: 338.6 KB (338593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:627865088f474828067415abcd8775e03d3459d80db85c383e5e6b0504a4eb9e`  
		Last Modified: Tue, 06 Oct 2026 01:42:05 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3192f57d8f90051db511cef027750f615624f8f74079b9697ac342a338608ba3`  
		Last Modified: Tue, 06 Oct 2026 01:42:07 GMT  
		Size: 110.8 MB (110805351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:607a502c5030ee535a516375b3202d4c2bb267023954b863ea8331cb5d9ab763`  
		Last Modified: Tue, 06 Oct 2026 01:42:05 GMT  
		Size: 378.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17d0ff2d7c05ddd6877ac0076588fda74744d9d9a09a722e9da86b2741cda44a`  
		Last Modified: Tue, 06 Oct 2026 01:42:05 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4245f6d5a46823d3b46a13adc9086dcb956f9227973f02d84cf364a4320da32`  
		Last Modified: Tue, 06 Oct 2026 01:42:06 GMT  
		Size: 2.2 KB (2227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9fd7497b5cac60859fe03da3e11be58ee4203a2efc2045e3adce21313962fa2`  
		Last Modified: Tue, 06 Oct 2026 01:42:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5` - unknown; unknown

```console
$ docker pull couchdb@sha256:c84555466270b14f8c94a9c442b5e2a5915b4728e26b398f64f81261546beb1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4218063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29631bb59eb68937eda9cb5d4f009079147104068cc5baa5af7b2ab19f4bc8b7`

```dockerfile
```

-	Layers:
	-	`sha256:e413a901f999eaccd9f63e182a26b57fe451eae4cb5056f08c42bd5a60127064`  
		Last Modified: Tue, 06 Oct 2026 01:42:04 GMT  
		Size: 4.2 MB (4186387 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65984895338159c8f00a78e3bb6e0cb60ec40485aea54dcf5a97dd202f31a51d`  
		Last Modified: Tue, 06 Oct 2026 01:42:03 GMT  
		Size: 31.7 KB (31676 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.5` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:5a1991c184104a164e1df74139989f0bd7c8cac320ac79de3e15cb3c194d3eb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.7 MB (148663906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16f125595d0796bfdb8a1a791b59ae8742b8220c054e63f845c7c57b6a1664bc`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:44:36 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 06 Oct 2026 01:44:36 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Tue, 06 Oct 2026 01:44:43 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:44:47 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 06 Oct 2026 01:44:47 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 06 Oct 2026 01:44:53 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:44:53 GMT
ENV COUCHDB_VERSION=3.5.2.1
# Tue, 06 Oct 2026 01:44:53 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 06 Oct 2026 01:45:06 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 06 Oct 2026 01:45:07 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Tue, 06 Oct 2026 01:45:07 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Tue, 06 Oct 2026 01:45:07 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 06 Oct 2026 01:45:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:45:07 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:45:07 GMT
VOLUME [/opt/couchdb/data]
# Tue, 06 Oct 2026 01:45:07 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Tue, 06 Oct 2026 01:45:07 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85e090b8ba51ea5658c4951fadd763861fd9e9e6de502a92c796d7f44dbd13a7`  
		Last Modified: Tue, 06 Oct 2026 01:45:20 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da66b34ee39206257d8b378a4979feab5d67fd3b65c7eac3804e1fa564443e64`  
		Last Modified: Tue, 06 Oct 2026 01:45:20 GMT  
		Size: 7.3 MB (7261123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:357f0bb8186eee78cb9496ee31aeb451c270c4c991c805c2c9fe0a3c9c8cff14`  
		Last Modified: Tue, 06 Oct 2026 01:45:20 GMT  
		Size: 382.4 KB (382446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b92b9dff053929066cec934f3f75ebc93859abbc2c18f80973f828102e167c58`  
		Last Modified: Tue, 06 Oct 2026 01:45:20 GMT  
		Size: 338.8 KB (338758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b88e1d10124bb30d4ef257031f60b9231ed2ad9b78f041a4172ae201532caf0a`  
		Last Modified: Tue, 06 Oct 2026 01:45:21 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37f5c9dc872139c7ed38ca1c5a4f858122b304ea3314ee46f3efdff53e282fcb`  
		Last Modified: Tue, 06 Oct 2026 01:45:24 GMT  
		Size: 110.5 MB (110475866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f51e4b85f684c8e385f1d775819c3db0e26bb2df785529882985973e9226a6b4`  
		Last Modified: Tue, 06 Oct 2026 01:45:21 GMT  
		Size: 380.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74274205fd7ee5bc1c659c3e64cc8bf4f1f100ab28cf09b3f2b6f0fc19f363c5`  
		Last Modified: Tue, 06 Oct 2026 01:45:22 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96bc29c9a47b022085203f709aa43724a7c39ee244090617dc6e5f8b1fa5336a`  
		Last Modified: Tue, 06 Oct 2026 01:45:23 GMT  
		Size: 2.2 KB (2226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b59c1a18e8425dc655c372e13730140094cb4440771a38df52fabf1e45de82d`  
		Last Modified: Tue, 06 Oct 2026 01:45:23 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5` - unknown; unknown

```console
$ docker pull couchdb@sha256:216f5178059563de938b4056b60ab5e86fdef183ec35b9f06c26a65f9f00ab26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4218577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edd4404d6a4a3f097384ce2bfad62e7aa5f8200926b71200555c83b1a65da297`

```dockerfile
```

-	Layers:
	-	`sha256:e61ff33afbadaf2456403d00404bbde77bc7deb0083a47edc4d88b8507fb9ff7`  
		Last Modified: Tue, 06 Oct 2026 01:45:20 GMT  
		Size: 4.2 MB (4186695 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1eff34332ff40f1c964178879dd11ce95d67e13d69eb142417e567b71531e94f`  
		Last Modified: Tue, 06 Oct 2026 01:45:20 GMT  
		Size: 31.9 KB (31882 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.5-nouveau`

```console
$ docker pull couchdb@sha256:fa1a4c4126f99d0528ca13f220b95410d5f5ef74c95845496e56c2bbde5aeea2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3.5-nouveau` - linux; amd64

```console
$ docker pull couchdb@sha256:dd5c49cdde13432f67121e9c19ee703ba2579d459f19285e3d52a97ac9606131
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.0 MB (150978962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2452e013c03d55a0460f86f845a427c201ad2a80a010ff8ed0ed06ae6c396025`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:41:26 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 06 Oct 2026 01:41:26 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Tue, 06 Oct 2026 01:41:33 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:41:38 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:41:41 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 06 Oct 2026 01:41:41 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 06 Oct 2026 01:41:45 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:41:45 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 06 Oct 2026 01:41:50 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends couchdb-nouveau=3.5.2.1~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Tue, 06 Oct 2026 01:41:50 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Tue, 06 Oct 2026 01:41:50 GMT
VOLUME [/opt/nouveau/data]
# Tue, 06 Oct 2026 01:41:50 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Tue, 06 Oct 2026 01:41:50 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf81c00ee84a8af29f1b1e29b90e5dc0b10e30fa6d51a7710509f79e61d5233f`  
		Last Modified: Tue, 06 Oct 2026 01:42:03 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8623ebb418980a29df9e8fa29d4dea61575d0545b7c7225ed60c8495b60c6cc`  
		Last Modified: Tue, 06 Oct 2026 01:42:04 GMT  
		Size: 7.5 MB (7492127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ce7b82b18b765fa8e96eef25f28a745e88596fc060f3f099077c6467794635a`  
		Last Modified: Tue, 06 Oct 2026 01:42:05 GMT  
		Size: 70.1 MB (70053146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61453f4af6ce52fce9d5d238681cc116f30fbf6e8b0eeb12976133bf469d9c72`  
		Last Modified: Tue, 06 Oct 2026 01:42:03 GMT  
		Size: 425.9 KB (425859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb6934ca2fe6c809affaf12abd195ba8926601be60dcdb9e0cba960c5d59d083`  
		Last Modified: Tue, 06 Oct 2026 01:42:04 GMT  
		Size: 347.1 KB (347142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:312cf22d898eec0703f7e9212e5e1ec406290773798ecce0001f45da4e8cca5d`  
		Last Modified: Tue, 06 Oct 2026 01:42:05 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:564386ecb3c9292f285deb1fa27f7aa70ff7d777bdfd3331ade35851075781c6`  
		Last Modified: Tue, 06 Oct 2026 01:42:06 GMT  
		Size: 42.8 MB (42815459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de122994f128614b712668c4605ce694165465b075c61b0de175265c0d55d9ab`  
		Last Modified: Tue, 06 Oct 2026 01:42:06 GMT  
		Size: 417.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:552d3d14c5b69e65c8e61673444c7caff7d14358678fe3e4b3fd4fd6f0f6c50b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3395206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:076a6d0ec2e14ba5b0b3a0f26e49525e7828e5efcde86662d058d3059f9486ec`

```dockerfile
```

-	Layers:
	-	`sha256:65fae99b4d74bc22f0bf6e867febc81a138c7c2e1e26e38258246ca62e45ed25`  
		Last Modified: Tue, 06 Oct 2026 01:42:03 GMT  
		Size: 3.4 MB (3370691 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f2832669eb88085c134204ce824aaec56d1e1efbb6d28cb1c2390527ec717f4`  
		Last Modified: Tue, 06 Oct 2026 01:42:03 GMT  
		Size: 24.5 KB (24515 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.5-nouveau` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:2845fde5c374b7551ca38a4f544a086d5bec1c3690022f397aee5a018e0acf82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150126209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a015b456eaa31bc20ff72fcb6ef698b236d88b0b0549ce217caac8607458b8a6`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:44:40 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 06 Oct 2026 01:44:40 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Tue, 06 Oct 2026 01:44:48 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:44:54 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-21-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:44:57 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 06 Oct 2026 01:44:57 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 06 Oct 2026 01:45:03 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:45:03 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ trixie main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 06 Oct 2026 01:45:08 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --no-install-recommends couchdb-nouveau=3.5.2.1~trixie;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Tue, 06 Oct 2026 01:45:08 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Tue, 06 Oct 2026 01:45:08 GMT
VOLUME [/opt/nouveau/data]
# Tue, 06 Oct 2026 01:45:08 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Tue, 06 Oct 2026 01:45:08 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3df326ee6d7f4ada462deda43e52356d0993bd26dfe5e8c129eb83b9acf3b696`  
		Last Modified: Tue, 06 Oct 2026 01:45:23 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b26c383a67c0602d5c2af44ef8fad7fa97bb8ff84669cce6da5d0f4e54a0ffac`  
		Last Modified: Tue, 06 Oct 2026 01:45:23 GMT  
		Size: 7.3 MB (7261131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66548fc27857928ad43840c976e6f3492841b9d30c5a7903513e0d71ccd3b608`  
		Last Modified: Tue, 06 Oct 2026 01:45:25 GMT  
		Size: 69.2 MB (69193094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4ae8ff7799c53ec502d52844861f949b568c0bf0ef1b2e9163cfdfa61c5fcb2`  
		Last Modified: Tue, 06 Oct 2026 01:45:23 GMT  
		Size: 390.2 KB (390181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03d852ef3b158bdcacc0ca6d6e5906c466b60229cae290d1cad3f99936f61802`  
		Last Modified: Tue, 06 Oct 2026 01:45:24 GMT  
		Size: 347.5 KB (347494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6a33fbe80d20ac0709d9565f2dfde1c7debc8e2b51c9d3d156c3c75ea014b84`  
		Last Modified: Tue, 06 Oct 2026 01:45:24 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3861ace4408e0cf4305a0436de63e71ab39e9c8d1f8decb111d7e00029adc8b9`  
		Last Modified: Tue, 06 Oct 2026 01:45:26 GMT  
		Size: 42.7 MB (42732150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a49441218628550567217741bec1bab52f623afb9ac0f6db9c5f268af3b9e146`  
		Last Modified: Tue, 06 Oct 2026 01:45:25 GMT  
		Size: 416.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.5-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:2e7d7bc21b3394ac75f93e515ea9d9d495ccc7459f67a5fa95265d7b066a5b64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3394053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:251c529ce39fccf11704bdfbce6c6f6fac10c702e6638d1f599b090e169a7800`

```dockerfile
```

-	Layers:
	-	`sha256:eaeb8ebf0d00d9ac053d98316505e360fbcc76b6f7d179ca63e9f00fffda1d59`  
		Last Modified: Tue, 06 Oct 2026 01:45:23 GMT  
		Size: 3.4 MB (3369344 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dfd3fbd9fc3137f465c79739565554010182372827c0f1e39116a034745af247`  
		Last Modified: Tue, 06 Oct 2026 01:45:23 GMT  
		Size: 24.7 KB (24709 bytes)  
		MIME: application/vnd.in-toto+json

## `couchdb:3.5.3`

**does not exist** (yet?)

## `couchdb:3.5.3-nouveau`

**does not exist** (yet?)

## `couchdb:latest`

```console
$ docker pull couchdb@sha256:5fc596110eac7f412173a7d9de14f70aa5d3e816790fb6e70642755d4a4cf464
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:latest` - linux; amd64

```console
$ docker pull couchdb@sha256:6785bd4bec3d406fbba8d60f8ec258e6ddec38bf0fbfd700916790b697f9ab8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.9 MB (148902286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43a86062d33a0a3d24538a13834983fe5ef147dc14ea68c3ab71c8667071d18b`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:41:24 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 06 Oct 2026 01:41:24 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Tue, 06 Oct 2026 01:41:30 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:41:33 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 06 Oct 2026 01:41:33 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 06 Oct 2026 01:41:39 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:41:39 GMT
ENV COUCHDB_VERSION=3.5.2.1
# Tue, 06 Oct 2026 01:41:39 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 06 Oct 2026 01:41:51 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 06 Oct 2026 01:41:51 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Tue, 06 Oct 2026 01:41:51 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Tue, 06 Oct 2026 01:41:51 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 06 Oct 2026 01:41:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:41:51 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:41:51 GMT
VOLUME [/opt/couchdb/data]
# Tue, 06 Oct 2026 01:41:51 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Tue, 06 Oct 2026 01:41:51 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb2ab07060dfe649fbe42f895af62a76f0fe0fff8c30e4811eab752ea5e45ace`  
		Last Modified: Tue, 06 Oct 2026 01:42:03 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aad01a028f2bb172750eb4149f711d2fc3d317747b5cf6bda0d677a30025a83a`  
		Last Modified: Tue, 06 Oct 2026 01:42:04 GMT  
		Size: 7.5 MB (7492125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:430da43108f9255fd226c997aa7a32f314e92065c183d767154e42058bc44023`  
		Last Modified: Tue, 06 Oct 2026 01:42:04 GMT  
		Size: 417.4 KB (417437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69668ab032a6990b75396e16fe900259ff67549bf31807809110b8c3b3a53873`  
		Last Modified: Tue, 06 Oct 2026 01:42:04 GMT  
		Size: 338.6 KB (338593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:627865088f474828067415abcd8775e03d3459d80db85c383e5e6b0504a4eb9e`  
		Last Modified: Tue, 06 Oct 2026 01:42:05 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3192f57d8f90051db511cef027750f615624f8f74079b9697ac342a338608ba3`  
		Last Modified: Tue, 06 Oct 2026 01:42:07 GMT  
		Size: 110.8 MB (110805351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:607a502c5030ee535a516375b3202d4c2bb267023954b863ea8331cb5d9ab763`  
		Last Modified: Tue, 06 Oct 2026 01:42:05 GMT  
		Size: 378.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17d0ff2d7c05ddd6877ac0076588fda74744d9d9a09a722e9da86b2741cda44a`  
		Last Modified: Tue, 06 Oct 2026 01:42:05 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4245f6d5a46823d3b46a13adc9086dcb956f9227973f02d84cf364a4320da32`  
		Last Modified: Tue, 06 Oct 2026 01:42:06 GMT  
		Size: 2.2 KB (2227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9fd7497b5cac60859fe03da3e11be58ee4203a2efc2045e3adce21313962fa2`  
		Last Modified: Tue, 06 Oct 2026 01:42:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:latest` - unknown; unknown

```console
$ docker pull couchdb@sha256:c84555466270b14f8c94a9c442b5e2a5915b4728e26b398f64f81261546beb1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4218063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29631bb59eb68937eda9cb5d4f009079147104068cc5baa5af7b2ab19f4bc8b7`

```dockerfile
```

-	Layers:
	-	`sha256:e413a901f999eaccd9f63e182a26b57fe451eae4cb5056f08c42bd5a60127064`  
		Last Modified: Tue, 06 Oct 2026 01:42:04 GMT  
		Size: 4.2 MB (4186387 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65984895338159c8f00a78e3bb6e0cb60ec40485aea54dcf5a97dd202f31a51d`  
		Last Modified: Tue, 06 Oct 2026 01:42:03 GMT  
		Size: 31.7 KB (31676 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:latest` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:5a1991c184104a164e1df74139989f0bd7c8cac320ac79de3e15cb3c194d3eb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.7 MB (148663906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16f125595d0796bfdb8a1a791b59ae8742b8220c054e63f845c7c57b6a1664bc`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:44:36 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 06 Oct 2026 01:44:36 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Tue, 06 Oct 2026 01:44:43 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:44:47 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 06 Oct 2026 01:44:47 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 06 Oct 2026 01:44:53 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:44:53 GMT
ENV COUCHDB_VERSION=3.5.2.1
# Tue, 06 Oct 2026 01:44:53 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 06 Oct 2026 01:45:06 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y couchdb="$COUCHDB_VERSION"~trixie ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 06 Oct 2026 01:45:07 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Tue, 06 Oct 2026 01:45:07 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Tue, 06 Oct 2026 01:45:07 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 06 Oct 2026 01:45:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:45:07 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:45:07 GMT
VOLUME [/opt/couchdb/data]
# Tue, 06 Oct 2026 01:45:07 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Tue, 06 Oct 2026 01:45:07 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85e090b8ba51ea5658c4951fadd763861fd9e9e6de502a92c796d7f44dbd13a7`  
		Last Modified: Tue, 06 Oct 2026 01:45:20 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da66b34ee39206257d8b378a4979feab5d67fd3b65c7eac3804e1fa564443e64`  
		Last Modified: Tue, 06 Oct 2026 01:45:20 GMT  
		Size: 7.3 MB (7261123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:357f0bb8186eee78cb9496ee31aeb451c270c4c991c805c2c9fe0a3c9c8cff14`  
		Last Modified: Tue, 06 Oct 2026 01:45:20 GMT  
		Size: 382.4 KB (382446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b92b9dff053929066cec934f3f75ebc93859abbc2c18f80973f828102e167c58`  
		Last Modified: Tue, 06 Oct 2026 01:45:20 GMT  
		Size: 338.8 KB (338758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b88e1d10124bb30d4ef257031f60b9231ed2ad9b78f041a4172ae201532caf0a`  
		Last Modified: Tue, 06 Oct 2026 01:45:21 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37f5c9dc872139c7ed38ca1c5a4f858122b304ea3314ee46f3efdff53e282fcb`  
		Last Modified: Tue, 06 Oct 2026 01:45:24 GMT  
		Size: 110.5 MB (110475866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f51e4b85f684c8e385f1d775819c3db0e26bb2df785529882985973e9226a6b4`  
		Last Modified: Tue, 06 Oct 2026 01:45:21 GMT  
		Size: 380.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74274205fd7ee5bc1c659c3e64cc8bf4f1f100ab28cf09b3f2b6f0fc19f363c5`  
		Last Modified: Tue, 06 Oct 2026 01:45:22 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96bc29c9a47b022085203f709aa43724a7c39ee244090617dc6e5f8b1fa5336a`  
		Last Modified: Tue, 06 Oct 2026 01:45:23 GMT  
		Size: 2.2 KB (2226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b59c1a18e8425dc655c372e13730140094cb4440771a38df52fabf1e45de82d`  
		Last Modified: Tue, 06 Oct 2026 01:45:23 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:latest` - unknown; unknown

```console
$ docker pull couchdb@sha256:216f5178059563de938b4056b60ab5e86fdef183ec35b9f06c26a65f9f00ab26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4218577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edd4404d6a4a3f097384ce2bfad62e7aa5f8200926b71200555c83b1a65da297`

```dockerfile
```

-	Layers:
	-	`sha256:e61ff33afbadaf2456403d00404bbde77bc7deb0083a47edc4d88b8507fb9ff7`  
		Last Modified: Tue, 06 Oct 2026 01:45:20 GMT  
		Size: 4.2 MB (4186695 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1eff34332ff40f1c964178879dd11ce95d67e13d69eb142417e567b71531e94f`  
		Last Modified: Tue, 06 Oct 2026 01:45:20 GMT  
		Size: 31.9 KB (31882 bytes)  
		MIME: application/vnd.in-toto+json
