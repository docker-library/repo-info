## `varnish:stable`

```console
$ docker pull varnish@sha256:05c583aa2bb69d17ed41a2c80e01de2e7181d49e54a3483277c54ee4dbe0378e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:stable` - linux; amd64

```console
$ docker pull varnish@sha256:7b7e88dbf3a2ed3ed886d84006af84e736c2ce60cf20dfffd3297a2a47a93029
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.9 MB (121892562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1176fffba2ebf74600f5af171f16e1c312295accca1eedf724bf371daf6a9213`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:39:21 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 01:39:21 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Tue, 14 Jul 2026 01:39:21 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 01:39:21 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 01:39:21 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 01:39:21 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:39:21 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 01:39:21 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 01:39:21 GMT
CMD []
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f90a565b87e254c342e59689b58e0c029b658e2efd3fb28256ffd6cc69db5d75`  
		Last Modified: Tue, 14 Jul 2026 01:39:35 GMT  
		Size: 93.7 MB (93659166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2dd2421a0b3a92fa3b87384ecf9c1833bcdfaa6f4333ee7eae5cc036f66fd38`  
		Last Modified: Tue, 14 Jul 2026 01:39:32 GMT  
		Size: 721.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:stable` - unknown; unknown

```console
$ docker pull varnish@sha256:807f78fc0394bb7a1c7908707be4fdccec0f3b8c3fb30bbbee4bffd38aa0d85c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 KB (13263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:443aacbad366320a47fd7b34d5e55da1be135cd50b884e798b7878c9ce5adf39`

```dockerfile
```

-	Layers:
	-	`sha256:dd8d86208044292e0d3ba1d073202e0d7a817c66e6f48b2eb11acdb3547d621b`  
		Last Modified: Tue, 14 Jul 2026 01:39:32 GMT  
		Size: 13.3 KB (13263 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:stable` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:46279ea82babc12127f76364b386f33304f92f3c04d32eff9fb9931b069fbfc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.3 MB (116330996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a652ebcbbe413fc3f1ee3e94b10aa19b368a2f745636510aabac0d2b24e2b19d`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:42:09 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 01:42:09 GMT
ARG VARNISH_VERSION_NUMBER=6.0.18-1
# Tue, 14 Jul 2026 01:42:09 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 01:42:09 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=6.0.18-1
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="curl gpg";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION};     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 01:42:09 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 01:42:09 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:42:09 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 01:42:09 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 01:42:09 GMT
CMD []
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cf25f2626b9a59c60dd8217e3322ee049596f690c32a6be955b4ba59cbf527e`  
		Last Modified: Tue, 14 Jul 2026 01:42:23 GMT  
		Size: 88.2 MB (88212987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62a4463bcecf21b861ab4b000b97e2057b5ee891d6acf9e96b55cf3c552bf436`  
		Last Modified: Tue, 14 Jul 2026 01:42:20 GMT  
		Size: 722.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:stable` - unknown; unknown

```console
$ docker pull varnish@sha256:7b26b126559591fd7757d1a423be1dc455c8c6ae07195be7df5fbae12081e386
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 KB (13379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53cd6a317b67d537e4ce5bf4f3282f9939cc4d3371de208ab93a83a1002cc20d`

```dockerfile
```

-	Layers:
	-	`sha256:19b476306e275796a9e0b39b21386eb32a7f22897c20a3e3f60fba720ec78828`  
		Last Modified: Tue, 14 Jul 2026 01:42:20 GMT  
		Size: 13.4 KB (13379 bytes)  
		MIME: application/vnd.in-toto+json
