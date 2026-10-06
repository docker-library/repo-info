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

## `couchdb:3.4`

```console
$ docker pull couchdb@sha256:d9b6609989f1d47822e84005946cecc2fd49e4be5e4f35da960d4379f6c60de0
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
$ docker pull couchdb@sha256:67c4a24dd47d9a9728eb7205cdc44619d540da648f74c6ebbbf03a9c57533f2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138855628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daee1c5dfb71d506cafbcec49dc7cea8d7ca22307a3b960181a5a320599715b1`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:41:30 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 06 Oct 2026 01:41:30 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Tue, 06 Oct 2026 01:41:36 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:41:39 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 06 Oct 2026 01:41:39 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 06 Oct 2026 01:41:44 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt-key list;     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:41:44 GMT
ENV COUCHDB_VERSION=3.4.3
# Tue, 06 Oct 2026 01:41:44 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 06 Oct 2026 01:41:56 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages             couchdb="$COUCHDB_VERSION"~bookworm     ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 06 Oct 2026 01:41:56 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Tue, 06 Oct 2026 01:41:56 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Tue, 06 Oct 2026 01:41:57 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 06 Oct 2026 01:41:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:41:57 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:41:57 GMT
VOLUME [/opt/couchdb/data]
# Tue, 06 Oct 2026 01:41:57 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Tue, 06 Oct 2026 01:41:57 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2ada362729d3a9ab8a27b105da82bf4ff43825c71ca606d62b7b721e89f6bf6`  
		Last Modified: Tue, 06 Oct 2026 01:42:10 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94418d2f9cb9d39436398b8d64513d5898863693cdf45457e954f27f383ad6f9`  
		Last Modified: Tue, 06 Oct 2026 01:42:10 GMT  
		Size: 7.7 MB (7701502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96bb9909b87a41d6b3d50bd7d8afd60d5d55c1a0de2a239757e680592689500c`  
		Last Modified: Tue, 06 Oct 2026 01:42:10 GMT  
		Size: 401.8 KB (401787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad37080074ae36438e7b0680373e584ffe4e9c4fcea36dcfb981ec65506e4c50`  
		Last Modified: Tue, 06 Oct 2026 01:42:10 GMT  
		Size: 76.5 KB (76533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b0bce2bbccbaa21baafeb38a4b6fb805fba533326633440536e81a93e8f450c`  
		Last Modified: Tue, 06 Oct 2026 01:42:11 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15e3136e6070c9bfdde39468c5247c9cfea4ff28d6ec9bfd11c7c67cbb1a5948`  
		Last Modified: Tue, 06 Oct 2026 01:42:13 GMT  
		Size: 102.4 MB (102421053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:454b194ebe591d9ee3c737ed49d5ce2817e40360d952a8fd5ba0c286b3f2cf9f`  
		Last Modified: Tue, 06 Oct 2026 01:42:11 GMT  
		Size: 379.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea3d8f7f909136e8e698f83aa5ba4d043d39380ce39a8e40cba6a2c3123623cb`  
		Last Modified: Tue, 06 Oct 2026 01:42:11 GMT  
		Size: 1.2 KB (1242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b9bcd57835fa25616fd2a6bfb01b69e8710692d85d6ebd563d4572688b1be47`  
		Last Modified: Tue, 06 Oct 2026 01:42:12 GMT  
		Size: 2.2 KB (2228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7075cabdf0e0d4aa4c3984dbf8aaefe24f30511dc1a1ceaa0a5c816ebf5e470c`  
		Last Modified: Tue, 06 Oct 2026 01:42:12 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4` - unknown; unknown

```console
$ docker pull couchdb@sha256:d407d72044166090039d29fbc96496b04f50b36b980410fff02bbc7ef1a8b384
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4161882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa3fecfd28545095c12c091fe81249c4f6461fa48c1af1e22c1f743e94e8e7ca`

```dockerfile
```

-	Layers:
	-	`sha256:4a281207952eeb514ebea81c429641d889593e41fb26784b2fbbdde9ee5c10fc`  
		Last Modified: Tue, 06 Oct 2026 01:42:10 GMT  
		Size: 4.1 MB (4130734 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a0fcbd1fa954009b3a7bcd2375975d418c7088cc8d13a155d06461e1912b9ec`  
		Last Modified: Tue, 06 Oct 2026 01:42:09 GMT  
		Size: 31.1 KB (31148 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.4` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:475b19bfc8fa1bffd7cb7ef9a9be79fb4c221bd46ac931de1b0f3040f5543cef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.3 MB (138277708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5753c33ed70001583ea8018ad9716488c15261b1d8c083cf5899650903db1904`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:44:46 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 06 Oct 2026 01:44:46 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Tue, 06 Oct 2026 01:44:52 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:44:54 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 06 Oct 2026 01:44:54 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 06 Oct 2026 01:44:59 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt-key list;     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:44:59 GMT
ENV COUCHDB_VERSION=3.4.3
# Tue, 06 Oct 2026 01:44:59 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 06 Oct 2026 01:45:11 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages             couchdb="$COUCHDB_VERSION"~bookworm     ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 06 Oct 2026 01:45:12 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Tue, 06 Oct 2026 01:45:12 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Tue, 06 Oct 2026 01:45:12 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 06 Oct 2026 01:45:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:45:12 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:45:12 GMT
VOLUME [/opt/couchdb/data]
# Tue, 06 Oct 2026 01:45:12 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Tue, 06 Oct 2026 01:45:12 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95a36714927a461178f592052a2de038ee6320cc1cec7de56f1a6b5e635dd804`  
		Last Modified: Tue, 06 Oct 2026 01:45:25 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e608311794a24a6519693eaf8fc49063652a7199fcac995f390287120643a96`  
		Last Modified: Tue, 06 Oct 2026 01:45:25 GMT  
		Size: 7.5 MB (7517526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afb56eb3d3a9b882610190c9d8006834cce1964322685a95df46e0e9e2049a9a`  
		Last Modified: Tue, 06 Oct 2026 01:45:25 GMT  
		Size: 370.6 KB (370573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:128fd60737fd9f4a5b1f65008c2c1ac3c7b33e6b9b050e5f94a4e6904a434c7f`  
		Last Modified: Tue, 06 Oct 2026 01:45:25 GMT  
		Size: 76.5 KB (76487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6db365bbe7cac4c1326b9236990f0606ebab6930b0800c80a6254e7dafeef06`  
		Last Modified: Tue, 06 Oct 2026 01:45:26 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e6ea6f7aea0479df924d1ae0fcc3db6c6246eeabc9f873ffdb8de20f6944880`  
		Last Modified: Tue, 06 Oct 2026 01:45:29 GMT  
		Size: 102.2 MB (102170508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcdb6ac63ef15f5edf0fe177d267d895c94bcd6eb9d3084a3c5e44f65b9653ed`  
		Last Modified: Tue, 06 Oct 2026 01:45:26 GMT  
		Size: 379.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:629346a10edfde4740efc0469cb522da27b9c8a6e5d2a4cabe83ac990c34c794`  
		Last Modified: Tue, 06 Oct 2026 01:45:27 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85a053b3413f56665a685ddbd44e83f2f7f22dca349f6839225ec39f884e453f`  
		Last Modified: Tue, 06 Oct 2026 01:45:28 GMT  
		Size: 2.2 KB (2228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1653a2143577c0a7e694d43dcb0a1aea8eb764530095d4e7ec2a0208da8412d`  
		Last Modified: Tue, 06 Oct 2026 01:45:28 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4` - unknown; unknown

```console
$ docker pull couchdb@sha256:a521808ae52db8bc90cd50b1dfa9627bd04d325e409785b756c3dfa1363572e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4162321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fa0093c0b7023bf38e816a900088b2815173d1e741750b22e54b0724fd3fa80`

```dockerfile
```

-	Layers:
	-	`sha256:2e1377a7f53d81e603c0f7def94b77fffe1657d838c61e2813d7e903acb57956`  
		Last Modified: Tue, 06 Oct 2026 01:45:25 GMT  
		Size: 4.1 MB (4131003 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14076f1e63905005b16af00334e19cd33732fe2be4545f8538194b72dd49d459`  
		Last Modified: Tue, 06 Oct 2026 01:45:25 GMT  
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
$ docker pull couchdb@sha256:8c9773278a446f3feb9dfc218bf4325d9ebccc465ba30e68d20cc8c44d9968f6
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
$ docker pull couchdb@sha256:7f2c085db8046942e8c1d85be7f05e9663f3b376a9d4e92878a0d1d615982e6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.4 MB (156406458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22f4dce1ee97eb196669eda610276f19af86ae37bb11b37887dac2521230ff8a`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:41:31 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 06 Oct 2026 01:41:31 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Tue, 06 Oct 2026 01:41:38 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:41:46 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-17-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:41:48 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 06 Oct 2026 01:41:48 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 06 Oct 2026 01:41:53 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt-key list;    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:41:53 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ bookworm main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 06 Oct 2026 01:41:58 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages --no-install-recommends             couchdb-nouveau=3.4.3~bookworm;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Tue, 06 Oct 2026 01:41:58 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Tue, 06 Oct 2026 01:41:58 GMT
VOLUME [/opt/nouveau/data]
# Tue, 06 Oct 2026 01:41:58 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Tue, 06 Oct 2026 01:41:58 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36d1c81de6b8a6b388fce61bba6a7a6cf79743278ead3d7a109803020da58fa2`  
		Last Modified: Tue, 06 Oct 2026 01:42:13 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c6dc8b0305d9c590c6d19ada37a4f8c829a92804ff4d3c33be4b9d46737dee4`  
		Last Modified: Tue, 06 Oct 2026 01:42:14 GMT  
		Size: 7.7 MB (7701448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5d39f5351f61c11d8383c4e63f20bf769e9f29370023bb13e3bfd407f3c77e1`  
		Last Modified: Tue, 06 Oct 2026 01:42:15 GMT  
		Size: 77.5 MB (77492619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad6f03c69d7beacb4f1e32616a1a2328a8123ae006c0b11136f1d28798fcdb95`  
		Last Modified: Tue, 06 Oct 2026 01:42:13 GMT  
		Size: 424.3 KB (424284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ab4418cc77791e319009e68a8e82695a64089eccccd350625ed680fee0fcaa6`  
		Last Modified: Tue, 06 Oct 2026 01:42:14 GMT  
		Size: 99.8 KB (99750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9272d34525c724e028adb7f1e36d266b47835b9b6cf24bd7ad1170fb7fa14f3`  
		Last Modified: Tue, 06 Oct 2026 01:42:14 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e58666698c5bc4fb4c8d41dc82c3d3b80a4eb23270e5388f898c66e64a57b75`  
		Last Modified: Tue, 06 Oct 2026 01:42:16 GMT  
		Size: 42.4 MB (42437154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1092219de87c5f2fa603d72d786a86675c700d13f059a7fb1d226a7a3426af71`  
		Last Modified: Tue, 06 Oct 2026 01:42:16 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:2be80f79634d590e39ff2f9e97eddf97c45ed9a8b413c2a1efc539353af31c2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3688271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f0bbc1afb3bc11c591d600fd8a8d113dcf0f4559c7d12fea18abbf8fb995616`

```dockerfile
```

-	Layers:
	-	`sha256:044d3b9bbdb7834875754eedf7c22844d45ddfcee0483ce48ab5d7e142f82340`  
		Last Modified: Tue, 06 Oct 2026 01:42:13 GMT  
		Size: 3.7 MB (3664056 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e2977aaaf83f13025b723b610c59f8a35082340c874d011562d03f16e7fd29d`  
		Last Modified: Tue, 06 Oct 2026 01:42:13 GMT  
		Size: 24.2 KB (24215 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.4-nouveau` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:130e63f11a8e3d80fb4cf0c988c478934d02ac1b27837f044dcdc9b4a58649c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.3 MB (155301516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fb51ae248f7470c96d8cede1e904d6be3474c565c974c9e4d5330cdec8a5ea8`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:44:47 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 06 Oct 2026 01:44:47 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Tue, 06 Oct 2026 01:44:53 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:45:01 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-17-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:45:04 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 06 Oct 2026 01:45:04 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 06 Oct 2026 01:45:09 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt-key list;    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:45:09 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ bookworm main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 06 Oct 2026 01:45:15 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages --no-install-recommends             couchdb-nouveau=3.4.3~bookworm;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Tue, 06 Oct 2026 01:45:15 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Tue, 06 Oct 2026 01:45:15 GMT
VOLUME [/opt/nouveau/data]
# Tue, 06 Oct 2026 01:45:15 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Tue, 06 Oct 2026 01:45:15 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62d5e1ef1ca5713924edc8c796b7a72da8c4c5262cf31336afb70572d968e52e`  
		Last Modified: Tue, 06 Oct 2026 01:45:30 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96d4efe72b0fcb25353248943fdd11dc004b969ac0be766544287e13273d5cae`  
		Last Modified: Tue, 06 Oct 2026 01:45:30 GMT  
		Size: 7.5 MB (7517549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4f5d32884dcf52f49d91047f051a312aac3ec219aae80d0942cc3ba7580b1e9`  
		Last Modified: Tue, 06 Oct 2026 01:45:32 GMT  
		Size: 76.8 MB (76813061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46e3992a3ed0f0a7e363618c441371b96a4b170255fbfca7cd37b52c86253a8f`  
		Last Modified: Tue, 06 Oct 2026 01:45:30 GMT  
		Size: 393.0 KB (392966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:191889179d2e3f5561fb65797f2b3c3e77c7a41cadc4738565b26a2f56b6dc24`  
		Last Modified: Tue, 06 Oct 2026 01:45:31 GMT  
		Size: 99.7 KB (99691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98a78284cd2e46b386f68d58b768788a57c5f9b50fb38d249139a5c839ec3302`  
		Last Modified: Tue, 06 Oct 2026 01:45:31 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:207b02194a905bfd1815d0f4987722f3ac1eefa3f43b18654757041b3d398870`  
		Last Modified: Tue, 06 Oct 2026 01:45:32 GMT  
		Size: 42.3 MB (42339189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efa67de869f0090d4328f7bee887da364caf7dcfa5b564b9a13274e34e1f3f76`  
		Last Modified: Tue, 06 Oct 2026 01:45:32 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:9581538a0d7c8065b105f2050e5727e17edb1855cf035b22e65cb7091eed94d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3687109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db650bf718f08754b621fc6f3a4fea3686b7687b18033d8150aefe98c34feabf`

```dockerfile
```

-	Layers:
	-	`sha256:62183418a7cd2e221328ee7f4746d6e32f45c77dd2314a1fbe1bbe2c0ecb1108`  
		Last Modified: Tue, 06 Oct 2026 01:45:30 GMT  
		Size: 3.7 MB (3662724 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df5205faf1f2400aa874c7d9581a1b883088d91ba59629b6508f0002855ada91`  
		Last Modified: Tue, 06 Oct 2026 01:45:29 GMT  
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
$ docker pull couchdb@sha256:d9b6609989f1d47822e84005946cecc2fd49e4be5e4f35da960d4379f6c60de0
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
$ docker pull couchdb@sha256:67c4a24dd47d9a9728eb7205cdc44619d540da648f74c6ebbbf03a9c57533f2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138855628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daee1c5dfb71d506cafbcec49dc7cea8d7ca22307a3b960181a5a320599715b1`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:41:30 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 06 Oct 2026 01:41:30 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Tue, 06 Oct 2026 01:41:36 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:41:39 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 06 Oct 2026 01:41:39 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 06 Oct 2026 01:41:44 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt-key list;     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:41:44 GMT
ENV COUCHDB_VERSION=3.4.3
# Tue, 06 Oct 2026 01:41:44 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 06 Oct 2026 01:41:56 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages             couchdb="$COUCHDB_VERSION"~bookworm     ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 06 Oct 2026 01:41:56 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Tue, 06 Oct 2026 01:41:56 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Tue, 06 Oct 2026 01:41:57 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 06 Oct 2026 01:41:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:41:57 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:41:57 GMT
VOLUME [/opt/couchdb/data]
# Tue, 06 Oct 2026 01:41:57 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Tue, 06 Oct 2026 01:41:57 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2ada362729d3a9ab8a27b105da82bf4ff43825c71ca606d62b7b721e89f6bf6`  
		Last Modified: Tue, 06 Oct 2026 01:42:10 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94418d2f9cb9d39436398b8d64513d5898863693cdf45457e954f27f383ad6f9`  
		Last Modified: Tue, 06 Oct 2026 01:42:10 GMT  
		Size: 7.7 MB (7701502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96bb9909b87a41d6b3d50bd7d8afd60d5d55c1a0de2a239757e680592689500c`  
		Last Modified: Tue, 06 Oct 2026 01:42:10 GMT  
		Size: 401.8 KB (401787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad37080074ae36438e7b0680373e584ffe4e9c4fcea36dcfb981ec65506e4c50`  
		Last Modified: Tue, 06 Oct 2026 01:42:10 GMT  
		Size: 76.5 KB (76533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b0bce2bbccbaa21baafeb38a4b6fb805fba533326633440536e81a93e8f450c`  
		Last Modified: Tue, 06 Oct 2026 01:42:11 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15e3136e6070c9bfdde39468c5247c9cfea4ff28d6ec9bfd11c7c67cbb1a5948`  
		Last Modified: Tue, 06 Oct 2026 01:42:13 GMT  
		Size: 102.4 MB (102421053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:454b194ebe591d9ee3c737ed49d5ce2817e40360d952a8fd5ba0c286b3f2cf9f`  
		Last Modified: Tue, 06 Oct 2026 01:42:11 GMT  
		Size: 379.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea3d8f7f909136e8e698f83aa5ba4d043d39380ce39a8e40cba6a2c3123623cb`  
		Last Modified: Tue, 06 Oct 2026 01:42:11 GMT  
		Size: 1.2 KB (1242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b9bcd57835fa25616fd2a6bfb01b69e8710692d85d6ebd563d4572688b1be47`  
		Last Modified: Tue, 06 Oct 2026 01:42:12 GMT  
		Size: 2.2 KB (2228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7075cabdf0e0d4aa4c3984dbf8aaefe24f30511dc1a1ceaa0a5c816ebf5e470c`  
		Last Modified: Tue, 06 Oct 2026 01:42:12 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4.3` - unknown; unknown

```console
$ docker pull couchdb@sha256:d407d72044166090039d29fbc96496b04f50b36b980410fff02bbc7ef1a8b384
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4161882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa3fecfd28545095c12c091fe81249c4f6461fa48c1af1e22c1f743e94e8e7ca`

```dockerfile
```

-	Layers:
	-	`sha256:4a281207952eeb514ebea81c429641d889593e41fb26784b2fbbdde9ee5c10fc`  
		Last Modified: Tue, 06 Oct 2026 01:42:10 GMT  
		Size: 4.1 MB (4130734 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a0fcbd1fa954009b3a7bcd2375975d418c7088cc8d13a155d06461e1912b9ec`  
		Last Modified: Tue, 06 Oct 2026 01:42:09 GMT  
		Size: 31.1 KB (31148 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.4.3` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:475b19bfc8fa1bffd7cb7ef9a9be79fb4c221bd46ac931de1b0f3040f5543cef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.3 MB (138277708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5753c33ed70001583ea8018ad9716488c15261b1d8c083cf5899650903db1904`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/couchdb\/bin\/couchdb"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:44:46 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 06 Oct 2026 01:44:46 GMT
RUN groupadd -g 5984 -r couchdb && useradd -u 5984 -d /opt/couchdb -g couchdb couchdb # buildkit
# Tue, 06 Oct 2026 01:44:52 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:44:54 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 06 Oct 2026 01:44:54 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 06 Oct 2026 01:44:59 GMT
RUN set -eux;     apt-get update;     apt-get install -y curl;     export GNUPGHOME="$(mktemp -d)";     curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;     gpg --batch --import keys.asc;     gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;     command -v gpgconf && gpgconf --kill all || :;     rm -rf "$GNUPGHOME";     apt-key list;     apt purge -y --autoremove curl;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:44:59 GMT
ENV COUCHDB_VERSION=3.4.3
# Tue, 06 Oct 2026 01:44:59 GMT
RUN . /etc/os-release;     echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ ${VERSION_CODENAME} main" |         tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 06 Oct 2026 01:45:11 GMT
RUN set -eux;     apt-get update;         echo "couchdb couchdb/mode select none" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages             couchdb="$COUCHDB_VERSION"~bookworm     ;     rmdir /var/lib/couchdb /var/log/couchdb;     rm /opt/couchdb/data /opt/couchdb/var/log;     mkdir -p /opt/couchdb/data /opt/couchdb/var/log;     chown couchdb:couchdb /opt/couchdb/data /opt/couchdb/var/log;     chmod 777 /opt/couchdb/data /opt/couchdb/var/log;     rm /opt/couchdb/etc/default.d/10-filelog.ini;     find /opt/couchdb \! \( -user couchdb -group couchdb \) -exec chown -f couchdb:couchdb '{}' +;     find /opt/couchdb/etc -type d ! -perm 0755 -exec chmod -f 0755 '{}' +;     find /opt/couchdb/etc -type f ! -perm 0644 -exec chmod -f 0644 '{}' +;     chmod -f 0777 /opt/couchdb/etc/local.d;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 06 Oct 2026 01:45:12 GMT
COPY --chown=couchdb:couchdb 10-docker-default.ini /opt/couchdb/etc/default.d/ # buildkit
# Tue, 06 Oct 2026 01:45:12 GMT
COPY --chown=couchdb:couchdb vm.args /opt/couchdb/etc/ # buildkit
# Tue, 06 Oct 2026 01:45:12 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 06 Oct 2026 01:45:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /docker-entrypoint.sh # backwards compat # buildkit
# Tue, 06 Oct 2026 01:45:12 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:45:12 GMT
VOLUME [/opt/couchdb/data]
# Tue, 06 Oct 2026 01:45:12 GMT
EXPOSE map[4369/tcp:{} 5984/tcp:{} 9100/tcp:{}]
# Tue, 06 Oct 2026 01:45:12 GMT
CMD ["/opt/couchdb/bin/couchdb"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95a36714927a461178f592052a2de038ee6320cc1cec7de56f1a6b5e635dd804`  
		Last Modified: Tue, 06 Oct 2026 01:45:25 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e608311794a24a6519693eaf8fc49063652a7199fcac995f390287120643a96`  
		Last Modified: Tue, 06 Oct 2026 01:45:25 GMT  
		Size: 7.5 MB (7517526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afb56eb3d3a9b882610190c9d8006834cce1964322685a95df46e0e9e2049a9a`  
		Last Modified: Tue, 06 Oct 2026 01:45:25 GMT  
		Size: 370.6 KB (370573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:128fd60737fd9f4a5b1f65008c2c1ac3c7b33e6b9b050e5f94a4e6904a434c7f`  
		Last Modified: Tue, 06 Oct 2026 01:45:25 GMT  
		Size: 76.5 KB (76487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6db365bbe7cac4c1326b9236990f0606ebab6930b0800c80a6254e7dafeef06`  
		Last Modified: Tue, 06 Oct 2026 01:45:26 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e6ea6f7aea0479df924d1ae0fcc3db6c6246eeabc9f873ffdb8de20f6944880`  
		Last Modified: Tue, 06 Oct 2026 01:45:29 GMT  
		Size: 102.2 MB (102170508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcdb6ac63ef15f5edf0fe177d267d895c94bcd6eb9d3084a3c5e44f65b9653ed`  
		Last Modified: Tue, 06 Oct 2026 01:45:26 GMT  
		Size: 379.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:629346a10edfde4740efc0469cb522da27b9c8a6e5d2a4cabe83ac990c34c794`  
		Last Modified: Tue, 06 Oct 2026 01:45:27 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85a053b3413f56665a685ddbd44e83f2f7f22dca349f6839225ec39f884e453f`  
		Last Modified: Tue, 06 Oct 2026 01:45:28 GMT  
		Size: 2.2 KB (2228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1653a2143577c0a7e694d43dcb0a1aea8eb764530095d4e7ec2a0208da8412d`  
		Last Modified: Tue, 06 Oct 2026 01:45:28 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4.3` - unknown; unknown

```console
$ docker pull couchdb@sha256:a521808ae52db8bc90cd50b1dfa9627bd04d325e409785b756c3dfa1363572e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4162321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fa0093c0b7023bf38e816a900088b2815173d1e741750b22e54b0724fd3fa80`

```dockerfile
```

-	Layers:
	-	`sha256:2e1377a7f53d81e603c0f7def94b77fffe1657d838c61e2813d7e903acb57956`  
		Last Modified: Tue, 06 Oct 2026 01:45:25 GMT  
		Size: 4.1 MB (4131003 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14076f1e63905005b16af00334e19cd33732fe2be4545f8538194b72dd49d459`  
		Last Modified: Tue, 06 Oct 2026 01:45:25 GMT  
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
$ docker pull couchdb@sha256:8c9773278a446f3feb9dfc218bf4325d9ebccc465ba30e68d20cc8c44d9968f6
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
$ docker pull couchdb@sha256:7f2c085db8046942e8c1d85be7f05e9663f3b376a9d4e92878a0d1d615982e6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.4 MB (156406458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22f4dce1ee97eb196669eda610276f19af86ae37bb11b37887dac2521230ff8a`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:41:31 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 06 Oct 2026 01:41:31 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Tue, 06 Oct 2026 01:41:38 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:41:46 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-17-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:41:48 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 06 Oct 2026 01:41:48 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 06 Oct 2026 01:41:53 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt-key list;    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:41:53 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ bookworm main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 06 Oct 2026 01:41:58 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages --no-install-recommends             couchdb-nouveau=3.4.3~bookworm;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Tue, 06 Oct 2026 01:41:58 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Tue, 06 Oct 2026 01:41:58 GMT
VOLUME [/opt/nouveau/data]
# Tue, 06 Oct 2026 01:41:58 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Tue, 06 Oct 2026 01:41:58 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36d1c81de6b8a6b388fce61bba6a7a6cf79743278ead3d7a109803020da58fa2`  
		Last Modified: Tue, 06 Oct 2026 01:42:13 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c6dc8b0305d9c590c6d19ada37a4f8c829a92804ff4d3c33be4b9d46737dee4`  
		Last Modified: Tue, 06 Oct 2026 01:42:14 GMT  
		Size: 7.7 MB (7701448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5d39f5351f61c11d8383c4e63f20bf769e9f29370023bb13e3bfd407f3c77e1`  
		Last Modified: Tue, 06 Oct 2026 01:42:15 GMT  
		Size: 77.5 MB (77492619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad6f03c69d7beacb4f1e32616a1a2328a8123ae006c0b11136f1d28798fcdb95`  
		Last Modified: Tue, 06 Oct 2026 01:42:13 GMT  
		Size: 424.3 KB (424284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ab4418cc77791e319009e68a8e82695a64089eccccd350625ed680fee0fcaa6`  
		Last Modified: Tue, 06 Oct 2026 01:42:14 GMT  
		Size: 99.8 KB (99750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9272d34525c724e028adb7f1e36d266b47835b9b6cf24bd7ad1170fb7fa14f3`  
		Last Modified: Tue, 06 Oct 2026 01:42:14 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e58666698c5bc4fb4c8d41dc82c3d3b80a4eb23270e5388f898c66e64a57b75`  
		Last Modified: Tue, 06 Oct 2026 01:42:16 GMT  
		Size: 42.4 MB (42437154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1092219de87c5f2fa603d72d786a86675c700d13f059a7fb1d226a7a3426af71`  
		Last Modified: Tue, 06 Oct 2026 01:42:16 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4.3-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:2be80f79634d590e39ff2f9e97eddf97c45ed9a8b413c2a1efc539353af31c2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3688271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f0bbc1afb3bc11c591d600fd8a8d113dcf0f4559c7d12fea18abbf8fb995616`

```dockerfile
```

-	Layers:
	-	`sha256:044d3b9bbdb7834875754eedf7c22844d45ddfcee0483ce48ab5d7e142f82340`  
		Last Modified: Tue, 06 Oct 2026 01:42:13 GMT  
		Size: 3.7 MB (3664056 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e2977aaaf83f13025b723b610c59f8a35082340c874d011562d03f16e7fd29d`  
		Last Modified: Tue, 06 Oct 2026 01:42:13 GMT  
		Size: 24.2 KB (24215 bytes)  
		MIME: application/vnd.in-toto+json

### `couchdb:3.4.3-nouveau` - linux; arm64 variant v8

```console
$ docker pull couchdb@sha256:130e63f11a8e3d80fb4cf0c988c478934d02ac1b27837f044dcdc9b4a58649c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.3 MB (155301516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fb51ae248f7470c96d8cede1e904d6be3474c565c974c9e4d5330cdec8a5ea8`
-	Default Command: `["\/usr\/bin\/java","-server","-Djava.awt.headless=true","-Xmx2g","-jar","\/opt\/nouveau\/lib\/nouveau-1.0-SNAPSHOT.jar","server","\/opt\/nouveau\/etc\/nouveau.yaml"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:44:47 GMT
LABEL maintainer=CouchDB Developers dev@couchdb.apache.org
# Tue, 06 Oct 2026 01:44:47 GMT
RUN groupadd -g 5984 -r nouveau && useradd -u 5984 -d /opt/nouveau -g nouveau nouveau # buildkit
# Tue, 06 Oct 2026 01:44:53 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         apt-transport-https         ca-certificates         dirmngr         gnupg      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:45:01 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         openjdk-17-jre-headless      ;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:45:04 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends tini;     rm -rf /var/lib/apt/lists/*;     tini --version # buildkit
# Tue, 06 Oct 2026 01:45:04 GMT
ENV GPG_COUCH_KEY=390EF70BB1EA12B2773962950EE62FB37A00258D
# Tue, 06 Oct 2026 01:45:09 GMT
RUN set -eux;    apt-get update;    apt-get install -y curl;    export GNUPGHOME="$(mktemp -d)";    curl -fL -o keys.asc https://couchdb.apache.org/repo/keys.asc;    gpg --batch --import keys.asc;    gpg --batch --export "${GPG_COUCH_KEY}" > /usr/share/keyrings/couchdb-archive-keyring.gpg;    command -v gpgconf && gpgconf --kill all || :;    rm -rf "$GNUPGHOME";    apt-key list;    apt purge -y --autoremove curl;    rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:45:09 GMT
RUN . /etc/os-release;    echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ bookworm main" |        tee /etc/apt/sources.list.d/couchdb.list >/dev/null # buildkit
# Tue, 06 Oct 2026 01:45:15 GMT
RUN set -eux;     apt-get update;         echo "couchdb-nouveau couchdb-nouveau/enable select false" | debconf-set-selections;     DEBIAN_FRONTEND=noninteractive COUCHDB_NOUVEAU_ENABLE=1 apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages --no-install-recommends             couchdb-nouveau=3.4.3~bookworm;     rm -rf /var/lib/apt/lists/*;     chown -R nouveau:nouveau /opt/nouveau # buildkit
# Tue, 06 Oct 2026 01:45:15 GMT
COPY --chown=nouveau:nouveau nouveau.yaml /opt/nouveau/etc/nouveau.yaml # buildkit
# Tue, 06 Oct 2026 01:45:15 GMT
VOLUME [/opt/nouveau/data]
# Tue, 06 Oct 2026 01:45:15 GMT
EXPOSE map[5987/tcp:{} 5988/tcp:{}]
# Tue, 06 Oct 2026 01:45:15 GMT
CMD ["/usr/bin/java" "-server" "-Djava.awt.headless=true" "-Xmx2g" "-jar" "/opt/nouveau/lib/nouveau-1.0-SNAPSHOT.jar" "server" "/opt/nouveau/etc/nouveau.yaml"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62d5e1ef1ca5713924edc8c796b7a72da8c4c5262cf31336afb70572d968e52e`  
		Last Modified: Tue, 06 Oct 2026 01:45:30 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96d4efe72b0fcb25353248943fdd11dc004b969ac0be766544287e13273d5cae`  
		Last Modified: Tue, 06 Oct 2026 01:45:30 GMT  
		Size: 7.5 MB (7517549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4f5d32884dcf52f49d91047f051a312aac3ec219aae80d0942cc3ba7580b1e9`  
		Last Modified: Tue, 06 Oct 2026 01:45:32 GMT  
		Size: 76.8 MB (76813061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46e3992a3ed0f0a7e363618c441371b96a4b170255fbfca7cd37b52c86253a8f`  
		Last Modified: Tue, 06 Oct 2026 01:45:30 GMT  
		Size: 393.0 KB (392966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:191889179d2e3f5561fb65797f2b3c3e77c7a41cadc4738565b26a2f56b6dc24`  
		Last Modified: Tue, 06 Oct 2026 01:45:31 GMT  
		Size: 99.7 KB (99691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98a78284cd2e46b386f68d58b768788a57c5f9b50fb38d249139a5c839ec3302`  
		Last Modified: Tue, 06 Oct 2026 01:45:31 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:207b02194a905bfd1815d0f4987722f3ac1eefa3f43b18654757041b3d398870`  
		Last Modified: Tue, 06 Oct 2026 01:45:32 GMT  
		Size: 42.3 MB (42339189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efa67de869f0090d4328f7bee887da364caf7dcfa5b564b9a13274e34e1f3f76`  
		Last Modified: Tue, 06 Oct 2026 01:45:32 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchdb:3.4.3-nouveau` - unknown; unknown

```console
$ docker pull couchdb@sha256:9581538a0d7c8065b105f2050e5727e17edb1855cf035b22e65cb7091eed94d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3687109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db650bf718f08754b621fc6f3a4fea3686b7687b18033d8150aefe98c34feabf`

```dockerfile
```

-	Layers:
	-	`sha256:62183418a7cd2e221328ee7f4746d6e32f45c77dd2314a1fbe1bbe2c0ecb1108`  
		Last Modified: Tue, 06 Oct 2026 01:45:30 GMT  
		Size: 3.7 MB (3662724 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df5205faf1f2400aa874c7d9581a1b883088d91ba59629b6508f0002855ada91`  
		Last Modified: Tue, 06 Oct 2026 01:45:29 GMT  
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

## `couchdb:3.5.2`

```console
$ docker pull couchdb@sha256:5fc596110eac7f412173a7d9de14f70aa5d3e816790fb6e70642755d4a4cf464
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3.5.2` - linux; amd64

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

### `couchdb:3.5.2` - unknown; unknown

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

### `couchdb:3.5.2` - linux; arm64 variant v8

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

### `couchdb:3.5.2` - unknown; unknown

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

## `couchdb:3.5.2-nouveau`

```console
$ docker pull couchdb@sha256:fa1a4c4126f99d0528ca13f220b95410d5f5ef74c95845496e56c2bbde5aeea2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3.5.2-nouveau` - linux; amd64

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

### `couchdb:3.5.2-nouveau` - unknown; unknown

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

### `couchdb:3.5.2-nouveau` - linux; arm64 variant v8

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

### `couchdb:3.5.2-nouveau` - unknown; unknown

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

## `couchdb:3.5.2.1`

```console
$ docker pull couchdb@sha256:5fc596110eac7f412173a7d9de14f70aa5d3e816790fb6e70642755d4a4cf464
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3.5.2.1` - linux; amd64

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

### `couchdb:3.5.2.1` - unknown; unknown

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

### `couchdb:3.5.2.1` - linux; arm64 variant v8

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

### `couchdb:3.5.2.1` - unknown; unknown

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

## `couchdb:3.5.2.1-nouveau`

```console
$ docker pull couchdb@sha256:fa1a4c4126f99d0528ca13f220b95410d5f5ef74c95845496e56c2bbde5aeea2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchdb:3.5.2.1-nouveau` - linux; amd64

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

### `couchdb:3.5.2.1-nouveau` - unknown; unknown

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

### `couchdb:3.5.2.1-nouveau` - linux; arm64 variant v8

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

### `couchdb:3.5.2.1-nouveau` - unknown; unknown

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
