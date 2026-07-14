## `varnish:old`

```console
$ docker pull varnish@sha256:4b595728592a5b9709c9aac15368ca492e9742fb269ed12466b434a62b2c1b63
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:old` - linux; amd64

```console
$ docker pull varnish@sha256:adf7e703e6d587af2b4650de70577b539bb23327d9f0b6108b57f7c38ffd491f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.3 MB (120253544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6af3863ad31fd396961b4403df3c93c7e85c144020b632a76621328ffe0c1578`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 18:12:25 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 18:12:25 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2-1
# Tue, 14 Jul 2026 18:12:25 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Tue, 14 Jul 2026 18:12:25 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Tue, 14 Jul 2026 18:12:25 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 18:12:25 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 14 Jul 2026 18:12:25 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 18:12:25 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 18:12:25 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=8.0.2-1 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION} 				libgetdns10t64 				netbase;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 18:12:25 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 18:12:25 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 18:12:25 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 18:12:25 GMT
COPY index.html /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 18:12:25 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 18:12:25 GMT
USER varnish
# Tue, 14 Jul 2026 18:12:25 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 18:12:25 GMT
CMD []
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:497eee8f588e2e60b98a30bf2b86bc4b0b2e5aefe1233abdf5467c34cc6c1441`  
		Last Modified: Tue, 14 Jul 2026 18:12:40 GMT  
		Size: 90.5 MB (90469518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afbc4ff9f1854eb0685ec29af4c58d2436a7abed97d78fe50f7612f689f5b266`  
		Last Modified: Tue, 14 Jul 2026 18:12:37 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65384e8a5dd88be9c6f80e83481c924a10cdab8af6739eaf48ad147bcf1774b6`  
		Last Modified: Tue, 14 Jul 2026 18:12:38 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b61819120a864512478198cf549576f552c547afde73c2c0b780d7f79a63c6f7`  
		Last Modified: Tue, 14 Jul 2026 18:12:38 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:old` - unknown; unknown

```console
$ docker pull varnish@sha256:4e7e3ee91ccbe5b54d075acabe98d43f11ccda4954a15d5946b57d106be1cc67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.0 KB (20997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d51132c7b2b54bcf62bb55c4a339485564920be81b870b0e9f2d97963a03e61e`

```dockerfile
```

-	Layers:
	-	`sha256:089428c41929c3ba226ffee068cb057c70cf467c8d09c0ab30613cde491a0ecb`  
		Last Modified: Tue, 14 Jul 2026 18:12:37 GMT  
		Size: 21.0 KB (20997 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:old` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:9907dcca0b773dc33db1e5b078d446cb3008b600921a1d505a55c526a92c0d41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114257623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70b37ef742bd5b893ef81f7e39a30d2543706a0440025f1788464f5bfe81c281`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 18:00:03 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 18:00:03 GMT
ARG VARNISH_VERSION_NUMBER=8.0.2-1
# Tue, 14 Jul 2026 18:00:03 GMT
ARG VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72
# Tue, 14 Jul 2026 18:00:03 GMT
ARG VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881
# Tue, 14 Jul 2026 18:00:03 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 18:00:03 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 14 Jul 2026 18:00:03 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 18:00:03 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 18:00:03 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=8.0.2-1 VMOD_DYNAMIC_COMMIT=99f72bc4958dca3555dbfeeb43512f243b004a72 VMOD_DYNAMIC_SHA512SUM=6f7b635c3fd9b8acfff6130e4bbe88d0bb97dc0ac178918c2288670951dace70742d9c8d7d798fe885ef908707a21ba2e6ca15c1524d531a59c80d4fdc9c5881 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION} 				libgetdns10t64 				netbase;         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         SKIP_CHECK=1 install-vmod https://github.com/gquintard/libvmod-dynamic/archive/$VMOD_DYNAMIC_COMMIT.tar.gz $VMOD_DYNAMIC_SHA512SUM;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 18:00:03 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 18:00:03 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 18:00:03 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 18:00:03 GMT
COPY index.html /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 18:00:03 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 18:00:03 GMT
USER varnish
# Tue, 14 Jul 2026 18:00:03 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 18:00:03 GMT
CMD []
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98bcd9d50c954f71fbe6c8147e4f8ec8a795892548a16df9f5b32b82b7857a00`  
		Last Modified: Tue, 14 Jul 2026 18:00:17 GMT  
		Size: 84.1 MB (84110794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d2bc88cf0621115589a1875ac197fb46bfac354faee80878b35b3e092116c01`  
		Last Modified: Tue, 14 Jul 2026 18:00:15 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:509b10e6b3dcf70c575c643b0d31354056597c2c8dd63d63b1916c0267195b26`  
		Last Modified: Tue, 14 Jul 2026 18:00:15 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8be1db79de26c45bdbd37998e78e62c041a0df56ab46680dfd35ace802339743`  
		Last Modified: Tue, 14 Jul 2026 18:00:15 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:old` - unknown; unknown

```console
$ docker pull varnish@sha256:643e479da0e35b9bd55d8473b0b7396a23760d0315603c41a277ea6cbdbc4284
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.1 KB (21112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f7b02498ca9736460c6b90f4b49e013ad92d78eef2f56d0cddf606b832fa727`

```dockerfile
```

-	Layers:
	-	`sha256:64fb5f61d8cc58ff61ae7ee554aa19f39db04ae59f85dcf6c6154689a69efa50`  
		Last Modified: Tue, 14 Jul 2026 18:00:15 GMT  
		Size: 21.1 KB (21112 bytes)  
		MIME: application/vnd.in-toto+json
