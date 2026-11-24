<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `varnish`

-	[`varnish:9`](#varnish9)
-	[`varnish:9.0`](#varnish90)
-	[`varnish:9.0.4`](#varnish904)
-	[`varnish:9.0.4-5`](#varnish904-5)
-	[`varnish:9.1`](#varnish91)
-	[`varnish:9.1.0`](#varnish910)
-	[`varnish:9.1.0-2`](#varnish910-2)
-	[`varnish:fresh`](#varnishfresh)
-	[`varnish:latest`](#varnishlatest)
-	[`varnish:old`](#varnishold)
-	[`varnish:stable`](#varnishstable)

## `varnish:9`

```console
$ docker pull varnish@sha256:a1bcb3c09d4f7e8496ee42c342b8bbe8395c3631256c41e5856676a9e7f3bdff
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:9` - linux; amd64

```console
$ docker pull varnish@sha256:e9c1507f58e9a2a85c4abad2e70bb0704b5a4f97ab8362e49cd1e8c5fcfffcb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (132993420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1907caad3fef0b749673377c033349f1c8ddcaa7dc3859b14839a83368fb480e`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:33:58 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 24 Nov 2026 04:33:58 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Tue, 24 Nov 2026 04:33:58 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 24 Nov 2026 04:33:58 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 24 Nov 2026 04:33:58 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 24 Nov 2026 04:33:58 GMT
ENV VARNISH_SIZE=100M
# Tue, 24 Nov 2026 04:33:58 GMT
ENV VSM_NOPID=1
# Tue, 24 Nov 2026 04:33:58 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 24 Nov 2026 04:33:58 GMT
WORKDIR /etc/varnish
# Tue, 24 Nov 2026 04:33:58 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:33:58 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 24 Nov 2026 04:33:58 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 24 Nov 2026 04:33:58 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 24 Nov 2026 04:33:58 GMT
USER varnish
# Tue, 24 Nov 2026 04:33:58 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 24 Nov 2026 04:33:58 GMT
CMD []
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6043165e5702f535608d834e20b2417847fbbb12471b7985ebd28cca0b31ff99`  
		Last Modified: Tue, 24 Nov 2026 04:34:12 GMT  
		Size: 103.1 MB (103148143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c4912fb4f852854b1fff14791eb42e39ad0c69a22bb22223891e5a458769809`  
		Last Modified: Tue, 24 Nov 2026 04:34:09 GMT  
		Size: 701.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42dee8e7bd2c8544ab70a07d0e94d595e6c1cf15bfa78464fe0b9d9d9de7bf16`  
		Last Modified: Tue, 24 Nov 2026 04:34:10 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2b0870e872933cf29a5913778ae148ae608c0ea3a6e532b8dd200c4d7446eab`  
		Last Modified: Tue, 24 Nov 2026 04:34:10 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9` - unknown; unknown

```console
$ docker pull varnish@sha256:fe3af1b076d9d7cc7881d18be3be559b33a1d8e7176fffe2677faa2edab00055
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.0 KB (21044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f336634784f685bcda1a3286a0ae0e7864adcab4c1b62555ba31f010ce3d4111`

```dockerfile
```

-	Layers:
	-	`sha256:8a8d5a80d6490fd089440829a879c18c3527a05a9a4942c0fa14a9d0c81dc7b3`  
		Last Modified: Tue, 24 Nov 2026 04:34:09 GMT  
		Size: 21.0 KB (21044 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:9` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:a2db4d9bc583d80e5efa2c42fd32be76309119a7d92449522a8990e0593695d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126112489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:804381eb181fe579d2ccf2580ad69079c2475962fcb140b0cc868987d1eafc49`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:38:07 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 24 Nov 2026 04:38:07 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Tue, 24 Nov 2026 04:38:07 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 24 Nov 2026 04:38:07 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 24 Nov 2026 04:38:07 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 24 Nov 2026 04:38:07 GMT
ENV VARNISH_SIZE=100M
# Tue, 24 Nov 2026 04:38:07 GMT
ENV VSM_NOPID=1
# Tue, 24 Nov 2026 04:38:07 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 24 Nov 2026 04:38:07 GMT
WORKDIR /etc/varnish
# Tue, 24 Nov 2026 04:38:08 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:38:08 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 24 Nov 2026 04:38:08 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 24 Nov 2026 04:38:08 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 24 Nov 2026 04:38:08 GMT
USER varnish
# Tue, 24 Nov 2026 04:38:08 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 24 Nov 2026 04:38:08 GMT
CMD []
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2718554ff0c3363abf6fb0f15eaa4fa458c3424d20dc79ee6ed6231c4b166bb4`  
		Last Modified: Tue, 24 Nov 2026 04:38:21 GMT  
		Size: 95.9 MB (95911362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:953d817bd2f1eb69086d04f5d268c1fbf5bb24c2e903a8d0ca98b0c3872194cd`  
		Last Modified: Tue, 24 Nov 2026 04:38:19 GMT  
		Size: 701.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e84e4d8d13a70378b08cce0c56471343af798f2e0f1bde8e4364c52e37fafce`  
		Last Modified: Tue, 24 Nov 2026 04:38:19 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df766028c4d83b48a91787c33ff3713a1a25fa2ba8e896b61c42c1f17446827b`  
		Last Modified: Tue, 24 Nov 2026 04:38:19 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9` - unknown; unknown

```console
$ docker pull varnish@sha256:a299f500fd1907931ea5a49160ac9670a42c6b54dcf78e85fd3f4a41c3839363
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 KB (21179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe8393f7c166a2aa57f09661d1c3de424766bb5ba044a969eb5545b901f23d4c`

```dockerfile
```

-	Layers:
	-	`sha256:825b127baa67313eb88210eda632fef5d64c5775e469e6ac4fe710012fac52e0`  
		Last Modified: Tue, 24 Nov 2026 04:38:19 GMT  
		Size: 21.2 KB (21179 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:9.0`

```console
$ docker pull varnish@sha256:4b6c608fd364a89e984e5da2fe782d990dfb26ffdf43a0e3e66ce7c04ede01cb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:9.0` - linux; amd64

```console
$ docker pull varnish@sha256:b412684582b45a45ca0bb875566024aca217c45c1d7001b79939ba1dce93b0be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132500426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:583563d43b6f2e6e8436d37e470f0bd5216ef22b30b8aaf123c39de89de3d3f2`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:34:18 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 24 Nov 2026 04:34:18 GMT
ARG VARNISH_VERSION_NUMBER=9.0.4-5
# Tue, 24 Nov 2026 04:34:18 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 24 Nov 2026 04:34:18 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 24 Nov 2026 04:34:18 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 24 Nov 2026 04:34:18 GMT
ENV VARNISH_SIZE=100M
# Tue, 24 Nov 2026 04:34:18 GMT
ENV VSM_NOPID=1
# Tue, 24 Nov 2026 04:34:18 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.4-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 24 Nov 2026 04:34:19 GMT
WORKDIR /etc/varnish
# Tue, 24 Nov 2026 04:34:19 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:34:19 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 24 Nov 2026 04:34:19 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 24 Nov 2026 04:34:19 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 24 Nov 2026 04:34:19 GMT
USER varnish
# Tue, 24 Nov 2026 04:34:19 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 24 Nov 2026 04:34:19 GMT
CMD []
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cc99e837a55ab9923af56a8b0248b37db5dfc0e2acc80d5e97a19bb6b5c5e32`  
		Last Modified: Tue, 24 Nov 2026 04:34:34 GMT  
		Size: 102.7 MB (102655357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81b73b6b7ca90a36e5d1cbd57701101942e6ea1958d707e38494c4db4b74268b`  
		Last Modified: Tue, 24 Nov 2026 04:34:32 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fac4437d89140c11d453100600cf62bb9436bc2958a39bf6595e1b4ee3df826`  
		Last Modified: Tue, 24 Nov 2026 04:34:32 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e629050035200383ecd127cd6be5a17e886f76b4913987b6d145c35cb7aa3811`  
		Last Modified: Tue, 24 Nov 2026 04:34:32 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.0` - unknown; unknown

```console
$ docker pull varnish@sha256:2a1901d06bee85ce666558bf302c7ad4db8a99b6781d828331bb7799dbdc5f15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.1 KB (20144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7005e1ee519c2dfa775695987fec14fd1fe8acf6322ffe2cbc34b5bbe8f54f96`

```dockerfile
```

-	Layers:
	-	`sha256:29c3c6b1c4d560b50423fd2a25c6b39cfe788e67bfb98350e7fb98e70b662b20`  
		Last Modified: Tue, 24 Nov 2026 04:34:32 GMT  
		Size: 20.1 KB (20144 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:9.0` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:f3df946cd8ddcc22ac2ed03613a90938579ac3036f32a178b3e365476789dbed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125613952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fd72191c36ade9e17965c1d70028afd38e7185f5eb8c420a8c5c0b20b970c80`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:38:16 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 24 Nov 2026 04:38:16 GMT
ARG VARNISH_VERSION_NUMBER=9.0.4-5
# Tue, 24 Nov 2026 04:38:16 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 24 Nov 2026 04:38:16 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 24 Nov 2026 04:38:16 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 24 Nov 2026 04:38:16 GMT
ENV VARNISH_SIZE=100M
# Tue, 24 Nov 2026 04:38:16 GMT
ENV VSM_NOPID=1
# Tue, 24 Nov 2026 04:38:16 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.4-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 24 Nov 2026 04:38:16 GMT
WORKDIR /etc/varnish
# Tue, 24 Nov 2026 04:38:16 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:38:16 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 24 Nov 2026 04:38:16 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 24 Nov 2026 04:38:16 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 24 Nov 2026 04:38:16 GMT
USER varnish
# Tue, 24 Nov 2026 04:38:16 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 24 Nov 2026 04:38:16 GMT
CMD []
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b707d55a8a878c38c46fdadd919d6fbcb8fef03f930fc4d2f0b47c2f73b7a10c`  
		Last Modified: Tue, 24 Nov 2026 04:38:30 GMT  
		Size: 95.4 MB (95413036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2d244212d4f86653eb2fd7ebc9e844663c7bb9e69093b8c75852f4527ee89d3`  
		Last Modified: Tue, 24 Nov 2026 04:38:28 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:580514e7f7b7e137c9d30f24c681cfbd29b26ec7c33ed16752c6b4c0a9513e4a`  
		Last Modified: Tue, 24 Nov 2026 04:38:28 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eed0cb2278515003576009cac801e34a99de9f0c9169313cc32ceb99dabd9a2`  
		Last Modified: Tue, 24 Nov 2026 04:38:28 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.0` - unknown; unknown

```console
$ docker pull varnish@sha256:8735d0d2c35d44363fb8d6391c671187b11a4929c9e736f580b20bd7088b302a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 KB (20243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0406f1be89293afce2d9fedaf6730ae0f9297ea554ed20ab01df1b315fa2a1e`

```dockerfile
```

-	Layers:
	-	`sha256:59b07db7cd4e4b3421caae3fafe5825484ac36defca38c731eac9f1ab4dac49f`  
		Last Modified: Tue, 24 Nov 2026 04:38:28 GMT  
		Size: 20.2 KB (20243 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:9.0.4`

```console
$ docker pull varnish@sha256:4b6c608fd364a89e984e5da2fe782d990dfb26ffdf43a0e3e66ce7c04ede01cb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:9.0.4` - linux; amd64

```console
$ docker pull varnish@sha256:b412684582b45a45ca0bb875566024aca217c45c1d7001b79939ba1dce93b0be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132500426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:583563d43b6f2e6e8436d37e470f0bd5216ef22b30b8aaf123c39de89de3d3f2`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:34:18 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 24 Nov 2026 04:34:18 GMT
ARG VARNISH_VERSION_NUMBER=9.0.4-5
# Tue, 24 Nov 2026 04:34:18 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 24 Nov 2026 04:34:18 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 24 Nov 2026 04:34:18 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 24 Nov 2026 04:34:18 GMT
ENV VARNISH_SIZE=100M
# Tue, 24 Nov 2026 04:34:18 GMT
ENV VSM_NOPID=1
# Tue, 24 Nov 2026 04:34:18 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.4-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 24 Nov 2026 04:34:19 GMT
WORKDIR /etc/varnish
# Tue, 24 Nov 2026 04:34:19 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:34:19 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 24 Nov 2026 04:34:19 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 24 Nov 2026 04:34:19 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 24 Nov 2026 04:34:19 GMT
USER varnish
# Tue, 24 Nov 2026 04:34:19 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 24 Nov 2026 04:34:19 GMT
CMD []
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cc99e837a55ab9923af56a8b0248b37db5dfc0e2acc80d5e97a19bb6b5c5e32`  
		Last Modified: Tue, 24 Nov 2026 04:34:34 GMT  
		Size: 102.7 MB (102655357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81b73b6b7ca90a36e5d1cbd57701101942e6ea1958d707e38494c4db4b74268b`  
		Last Modified: Tue, 24 Nov 2026 04:34:32 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fac4437d89140c11d453100600cf62bb9436bc2958a39bf6595e1b4ee3df826`  
		Last Modified: Tue, 24 Nov 2026 04:34:32 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e629050035200383ecd127cd6be5a17e886f76b4913987b6d145c35cb7aa3811`  
		Last Modified: Tue, 24 Nov 2026 04:34:32 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.0.4` - unknown; unknown

```console
$ docker pull varnish@sha256:2a1901d06bee85ce666558bf302c7ad4db8a99b6781d828331bb7799dbdc5f15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.1 KB (20144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7005e1ee519c2dfa775695987fec14fd1fe8acf6322ffe2cbc34b5bbe8f54f96`

```dockerfile
```

-	Layers:
	-	`sha256:29c3c6b1c4d560b50423fd2a25c6b39cfe788e67bfb98350e7fb98e70b662b20`  
		Last Modified: Tue, 24 Nov 2026 04:34:32 GMT  
		Size: 20.1 KB (20144 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:9.0.4` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:f3df946cd8ddcc22ac2ed03613a90938579ac3036f32a178b3e365476789dbed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125613952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fd72191c36ade9e17965c1d70028afd38e7185f5eb8c420a8c5c0b20b970c80`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:38:16 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 24 Nov 2026 04:38:16 GMT
ARG VARNISH_VERSION_NUMBER=9.0.4-5
# Tue, 24 Nov 2026 04:38:16 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 24 Nov 2026 04:38:16 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 24 Nov 2026 04:38:16 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 24 Nov 2026 04:38:16 GMT
ENV VARNISH_SIZE=100M
# Tue, 24 Nov 2026 04:38:16 GMT
ENV VSM_NOPID=1
# Tue, 24 Nov 2026 04:38:16 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.4-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 24 Nov 2026 04:38:16 GMT
WORKDIR /etc/varnish
# Tue, 24 Nov 2026 04:38:16 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:38:16 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 24 Nov 2026 04:38:16 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 24 Nov 2026 04:38:16 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 24 Nov 2026 04:38:16 GMT
USER varnish
# Tue, 24 Nov 2026 04:38:16 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 24 Nov 2026 04:38:16 GMT
CMD []
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b707d55a8a878c38c46fdadd919d6fbcb8fef03f930fc4d2f0b47c2f73b7a10c`  
		Last Modified: Tue, 24 Nov 2026 04:38:30 GMT  
		Size: 95.4 MB (95413036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2d244212d4f86653eb2fd7ebc9e844663c7bb9e69093b8c75852f4527ee89d3`  
		Last Modified: Tue, 24 Nov 2026 04:38:28 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:580514e7f7b7e137c9d30f24c681cfbd29b26ec7c33ed16752c6b4c0a9513e4a`  
		Last Modified: Tue, 24 Nov 2026 04:38:28 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eed0cb2278515003576009cac801e34a99de9f0c9169313cc32ceb99dabd9a2`  
		Last Modified: Tue, 24 Nov 2026 04:38:28 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.0.4` - unknown; unknown

```console
$ docker pull varnish@sha256:8735d0d2c35d44363fb8d6391c671187b11a4929c9e736f580b20bd7088b302a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 KB (20243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0406f1be89293afce2d9fedaf6730ae0f9297ea554ed20ab01df1b315fa2a1e`

```dockerfile
```

-	Layers:
	-	`sha256:59b07db7cd4e4b3421caae3fafe5825484ac36defca38c731eac9f1ab4dac49f`  
		Last Modified: Tue, 24 Nov 2026 04:38:28 GMT  
		Size: 20.2 KB (20243 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:9.0.4-5`

```console
$ docker pull varnish@sha256:4b6c608fd364a89e984e5da2fe782d990dfb26ffdf43a0e3e66ce7c04ede01cb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:9.0.4-5` - linux; amd64

```console
$ docker pull varnish@sha256:b412684582b45a45ca0bb875566024aca217c45c1d7001b79939ba1dce93b0be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132500426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:583563d43b6f2e6e8436d37e470f0bd5216ef22b30b8aaf123c39de89de3d3f2`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:34:18 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 24 Nov 2026 04:34:18 GMT
ARG VARNISH_VERSION_NUMBER=9.0.4-5
# Tue, 24 Nov 2026 04:34:18 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 24 Nov 2026 04:34:18 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 24 Nov 2026 04:34:18 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 24 Nov 2026 04:34:18 GMT
ENV VARNISH_SIZE=100M
# Tue, 24 Nov 2026 04:34:18 GMT
ENV VSM_NOPID=1
# Tue, 24 Nov 2026 04:34:18 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.4-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 24 Nov 2026 04:34:19 GMT
WORKDIR /etc/varnish
# Tue, 24 Nov 2026 04:34:19 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:34:19 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 24 Nov 2026 04:34:19 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 24 Nov 2026 04:34:19 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 24 Nov 2026 04:34:19 GMT
USER varnish
# Tue, 24 Nov 2026 04:34:19 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 24 Nov 2026 04:34:19 GMT
CMD []
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cc99e837a55ab9923af56a8b0248b37db5dfc0e2acc80d5e97a19bb6b5c5e32`  
		Last Modified: Tue, 24 Nov 2026 04:34:34 GMT  
		Size: 102.7 MB (102655357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81b73b6b7ca90a36e5d1cbd57701101942e6ea1958d707e38494c4db4b74268b`  
		Last Modified: Tue, 24 Nov 2026 04:34:32 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fac4437d89140c11d453100600cf62bb9436bc2958a39bf6595e1b4ee3df826`  
		Last Modified: Tue, 24 Nov 2026 04:34:32 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e629050035200383ecd127cd6be5a17e886f76b4913987b6d145c35cb7aa3811`  
		Last Modified: Tue, 24 Nov 2026 04:34:32 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.0.4-5` - unknown; unknown

```console
$ docker pull varnish@sha256:2a1901d06bee85ce666558bf302c7ad4db8a99b6781d828331bb7799dbdc5f15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.1 KB (20144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7005e1ee519c2dfa775695987fec14fd1fe8acf6322ffe2cbc34b5bbe8f54f96`

```dockerfile
```

-	Layers:
	-	`sha256:29c3c6b1c4d560b50423fd2a25c6b39cfe788e67bfb98350e7fb98e70b662b20`  
		Last Modified: Tue, 24 Nov 2026 04:34:32 GMT  
		Size: 20.1 KB (20144 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:9.0.4-5` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:f3df946cd8ddcc22ac2ed03613a90938579ac3036f32a178b3e365476789dbed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125613952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fd72191c36ade9e17965c1d70028afd38e7185f5eb8c420a8c5c0b20b970c80`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:38:16 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 24 Nov 2026 04:38:16 GMT
ARG VARNISH_VERSION_NUMBER=9.0.4-5
# Tue, 24 Nov 2026 04:38:16 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 24 Nov 2026 04:38:16 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 24 Nov 2026 04:38:16 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 24 Nov 2026 04:38:16 GMT
ENV VARNISH_SIZE=100M
# Tue, 24 Nov 2026 04:38:16 GMT
ENV VSM_NOPID=1
# Tue, 24 Nov 2026 04:38:16 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.4-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 24 Nov 2026 04:38:16 GMT
WORKDIR /etc/varnish
# Tue, 24 Nov 2026 04:38:16 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:38:16 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 24 Nov 2026 04:38:16 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 24 Nov 2026 04:38:16 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 24 Nov 2026 04:38:16 GMT
USER varnish
# Tue, 24 Nov 2026 04:38:16 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 24 Nov 2026 04:38:16 GMT
CMD []
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b707d55a8a878c38c46fdadd919d6fbcb8fef03f930fc4d2f0b47c2f73b7a10c`  
		Last Modified: Tue, 24 Nov 2026 04:38:30 GMT  
		Size: 95.4 MB (95413036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2d244212d4f86653eb2fd7ebc9e844663c7bb9e69093b8c75852f4527ee89d3`  
		Last Modified: Tue, 24 Nov 2026 04:38:28 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:580514e7f7b7e137c9d30f24c681cfbd29b26ec7c33ed16752c6b4c0a9513e4a`  
		Last Modified: Tue, 24 Nov 2026 04:38:28 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eed0cb2278515003576009cac801e34a99de9f0c9169313cc32ceb99dabd9a2`  
		Last Modified: Tue, 24 Nov 2026 04:38:28 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.0.4-5` - unknown; unknown

```console
$ docker pull varnish@sha256:8735d0d2c35d44363fb8d6391c671187b11a4929c9e736f580b20bd7088b302a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 KB (20243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0406f1be89293afce2d9fedaf6730ae0f9297ea554ed20ab01df1b315fa2a1e`

```dockerfile
```

-	Layers:
	-	`sha256:59b07db7cd4e4b3421caae3fafe5825484ac36defca38c731eac9f1ab4dac49f`  
		Last Modified: Tue, 24 Nov 2026 04:38:28 GMT  
		Size: 20.2 KB (20243 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:9.1`

```console
$ docker pull varnish@sha256:a1bcb3c09d4f7e8496ee42c342b8bbe8395c3631256c41e5856676a9e7f3bdff
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:9.1` - linux; amd64

```console
$ docker pull varnish@sha256:e9c1507f58e9a2a85c4abad2e70bb0704b5a4f97ab8362e49cd1e8c5fcfffcb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (132993420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1907caad3fef0b749673377c033349f1c8ddcaa7dc3859b14839a83368fb480e`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:33:58 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 24 Nov 2026 04:33:58 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Tue, 24 Nov 2026 04:33:58 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 24 Nov 2026 04:33:58 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 24 Nov 2026 04:33:58 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 24 Nov 2026 04:33:58 GMT
ENV VARNISH_SIZE=100M
# Tue, 24 Nov 2026 04:33:58 GMT
ENV VSM_NOPID=1
# Tue, 24 Nov 2026 04:33:58 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 24 Nov 2026 04:33:58 GMT
WORKDIR /etc/varnish
# Tue, 24 Nov 2026 04:33:58 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:33:58 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 24 Nov 2026 04:33:58 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 24 Nov 2026 04:33:58 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 24 Nov 2026 04:33:58 GMT
USER varnish
# Tue, 24 Nov 2026 04:33:58 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 24 Nov 2026 04:33:58 GMT
CMD []
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6043165e5702f535608d834e20b2417847fbbb12471b7985ebd28cca0b31ff99`  
		Last Modified: Tue, 24 Nov 2026 04:34:12 GMT  
		Size: 103.1 MB (103148143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c4912fb4f852854b1fff14791eb42e39ad0c69a22bb22223891e5a458769809`  
		Last Modified: Tue, 24 Nov 2026 04:34:09 GMT  
		Size: 701.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42dee8e7bd2c8544ab70a07d0e94d595e6c1cf15bfa78464fe0b9d9d9de7bf16`  
		Last Modified: Tue, 24 Nov 2026 04:34:10 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2b0870e872933cf29a5913778ae148ae608c0ea3a6e532b8dd200c4d7446eab`  
		Last Modified: Tue, 24 Nov 2026 04:34:10 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.1` - unknown; unknown

```console
$ docker pull varnish@sha256:fe3af1b076d9d7cc7881d18be3be559b33a1d8e7176fffe2677faa2edab00055
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.0 KB (21044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f336634784f685bcda1a3286a0ae0e7864adcab4c1b62555ba31f010ce3d4111`

```dockerfile
```

-	Layers:
	-	`sha256:8a8d5a80d6490fd089440829a879c18c3527a05a9a4942c0fa14a9d0c81dc7b3`  
		Last Modified: Tue, 24 Nov 2026 04:34:09 GMT  
		Size: 21.0 KB (21044 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:9.1` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:a2db4d9bc583d80e5efa2c42fd32be76309119a7d92449522a8990e0593695d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126112489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:804381eb181fe579d2ccf2580ad69079c2475962fcb140b0cc868987d1eafc49`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:38:07 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 24 Nov 2026 04:38:07 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Tue, 24 Nov 2026 04:38:07 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 24 Nov 2026 04:38:07 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 24 Nov 2026 04:38:07 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 24 Nov 2026 04:38:07 GMT
ENV VARNISH_SIZE=100M
# Tue, 24 Nov 2026 04:38:07 GMT
ENV VSM_NOPID=1
# Tue, 24 Nov 2026 04:38:07 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 24 Nov 2026 04:38:07 GMT
WORKDIR /etc/varnish
# Tue, 24 Nov 2026 04:38:08 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:38:08 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 24 Nov 2026 04:38:08 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 24 Nov 2026 04:38:08 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 24 Nov 2026 04:38:08 GMT
USER varnish
# Tue, 24 Nov 2026 04:38:08 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 24 Nov 2026 04:38:08 GMT
CMD []
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2718554ff0c3363abf6fb0f15eaa4fa458c3424d20dc79ee6ed6231c4b166bb4`  
		Last Modified: Tue, 24 Nov 2026 04:38:21 GMT  
		Size: 95.9 MB (95911362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:953d817bd2f1eb69086d04f5d268c1fbf5bb24c2e903a8d0ca98b0c3872194cd`  
		Last Modified: Tue, 24 Nov 2026 04:38:19 GMT  
		Size: 701.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e84e4d8d13a70378b08cce0c56471343af798f2e0f1bde8e4364c52e37fafce`  
		Last Modified: Tue, 24 Nov 2026 04:38:19 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df766028c4d83b48a91787c33ff3713a1a25fa2ba8e896b61c42c1f17446827b`  
		Last Modified: Tue, 24 Nov 2026 04:38:19 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.1` - unknown; unknown

```console
$ docker pull varnish@sha256:a299f500fd1907931ea5a49160ac9670a42c6b54dcf78e85fd3f4a41c3839363
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 KB (21179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe8393f7c166a2aa57f09661d1c3de424766bb5ba044a969eb5545b901f23d4c`

```dockerfile
```

-	Layers:
	-	`sha256:825b127baa67313eb88210eda632fef5d64c5775e469e6ac4fe710012fac52e0`  
		Last Modified: Tue, 24 Nov 2026 04:38:19 GMT  
		Size: 21.2 KB (21179 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:9.1.0`

```console
$ docker pull varnish@sha256:a1bcb3c09d4f7e8496ee42c342b8bbe8395c3631256c41e5856676a9e7f3bdff
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:9.1.0` - linux; amd64

```console
$ docker pull varnish@sha256:e9c1507f58e9a2a85c4abad2e70bb0704b5a4f97ab8362e49cd1e8c5fcfffcb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (132993420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1907caad3fef0b749673377c033349f1c8ddcaa7dc3859b14839a83368fb480e`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:33:58 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 24 Nov 2026 04:33:58 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Tue, 24 Nov 2026 04:33:58 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 24 Nov 2026 04:33:58 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 24 Nov 2026 04:33:58 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 24 Nov 2026 04:33:58 GMT
ENV VARNISH_SIZE=100M
# Tue, 24 Nov 2026 04:33:58 GMT
ENV VSM_NOPID=1
# Tue, 24 Nov 2026 04:33:58 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 24 Nov 2026 04:33:58 GMT
WORKDIR /etc/varnish
# Tue, 24 Nov 2026 04:33:58 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:33:58 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 24 Nov 2026 04:33:58 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 24 Nov 2026 04:33:58 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 24 Nov 2026 04:33:58 GMT
USER varnish
# Tue, 24 Nov 2026 04:33:58 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 24 Nov 2026 04:33:58 GMT
CMD []
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6043165e5702f535608d834e20b2417847fbbb12471b7985ebd28cca0b31ff99`  
		Last Modified: Tue, 24 Nov 2026 04:34:12 GMT  
		Size: 103.1 MB (103148143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c4912fb4f852854b1fff14791eb42e39ad0c69a22bb22223891e5a458769809`  
		Last Modified: Tue, 24 Nov 2026 04:34:09 GMT  
		Size: 701.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42dee8e7bd2c8544ab70a07d0e94d595e6c1cf15bfa78464fe0b9d9d9de7bf16`  
		Last Modified: Tue, 24 Nov 2026 04:34:10 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2b0870e872933cf29a5913778ae148ae608c0ea3a6e532b8dd200c4d7446eab`  
		Last Modified: Tue, 24 Nov 2026 04:34:10 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.1.0` - unknown; unknown

```console
$ docker pull varnish@sha256:fe3af1b076d9d7cc7881d18be3be559b33a1d8e7176fffe2677faa2edab00055
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.0 KB (21044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f336634784f685bcda1a3286a0ae0e7864adcab4c1b62555ba31f010ce3d4111`

```dockerfile
```

-	Layers:
	-	`sha256:8a8d5a80d6490fd089440829a879c18c3527a05a9a4942c0fa14a9d0c81dc7b3`  
		Last Modified: Tue, 24 Nov 2026 04:34:09 GMT  
		Size: 21.0 KB (21044 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:9.1.0` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:a2db4d9bc583d80e5efa2c42fd32be76309119a7d92449522a8990e0593695d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126112489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:804381eb181fe579d2ccf2580ad69079c2475962fcb140b0cc868987d1eafc49`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:38:07 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 24 Nov 2026 04:38:07 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Tue, 24 Nov 2026 04:38:07 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 24 Nov 2026 04:38:07 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 24 Nov 2026 04:38:07 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 24 Nov 2026 04:38:07 GMT
ENV VARNISH_SIZE=100M
# Tue, 24 Nov 2026 04:38:07 GMT
ENV VSM_NOPID=1
# Tue, 24 Nov 2026 04:38:07 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 24 Nov 2026 04:38:07 GMT
WORKDIR /etc/varnish
# Tue, 24 Nov 2026 04:38:08 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:38:08 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 24 Nov 2026 04:38:08 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 24 Nov 2026 04:38:08 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 24 Nov 2026 04:38:08 GMT
USER varnish
# Tue, 24 Nov 2026 04:38:08 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 24 Nov 2026 04:38:08 GMT
CMD []
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2718554ff0c3363abf6fb0f15eaa4fa458c3424d20dc79ee6ed6231c4b166bb4`  
		Last Modified: Tue, 24 Nov 2026 04:38:21 GMT  
		Size: 95.9 MB (95911362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:953d817bd2f1eb69086d04f5d268c1fbf5bb24c2e903a8d0ca98b0c3872194cd`  
		Last Modified: Tue, 24 Nov 2026 04:38:19 GMT  
		Size: 701.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e84e4d8d13a70378b08cce0c56471343af798f2e0f1bde8e4364c52e37fafce`  
		Last Modified: Tue, 24 Nov 2026 04:38:19 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df766028c4d83b48a91787c33ff3713a1a25fa2ba8e896b61c42c1f17446827b`  
		Last Modified: Tue, 24 Nov 2026 04:38:19 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.1.0` - unknown; unknown

```console
$ docker pull varnish@sha256:a299f500fd1907931ea5a49160ac9670a42c6b54dcf78e85fd3f4a41c3839363
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 KB (21179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe8393f7c166a2aa57f09661d1c3de424766bb5ba044a969eb5545b901f23d4c`

```dockerfile
```

-	Layers:
	-	`sha256:825b127baa67313eb88210eda632fef5d64c5775e469e6ac4fe710012fac52e0`  
		Last Modified: Tue, 24 Nov 2026 04:38:19 GMT  
		Size: 21.2 KB (21179 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:9.1.0-2`

```console
$ docker pull varnish@sha256:a1bcb3c09d4f7e8496ee42c342b8bbe8395c3631256c41e5856676a9e7f3bdff
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:9.1.0-2` - linux; amd64

```console
$ docker pull varnish@sha256:e9c1507f58e9a2a85c4abad2e70bb0704b5a4f97ab8362e49cd1e8c5fcfffcb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (132993420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1907caad3fef0b749673377c033349f1c8ddcaa7dc3859b14839a83368fb480e`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:33:58 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 24 Nov 2026 04:33:58 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Tue, 24 Nov 2026 04:33:58 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 24 Nov 2026 04:33:58 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 24 Nov 2026 04:33:58 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 24 Nov 2026 04:33:58 GMT
ENV VARNISH_SIZE=100M
# Tue, 24 Nov 2026 04:33:58 GMT
ENV VSM_NOPID=1
# Tue, 24 Nov 2026 04:33:58 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 24 Nov 2026 04:33:58 GMT
WORKDIR /etc/varnish
# Tue, 24 Nov 2026 04:33:58 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:33:58 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 24 Nov 2026 04:33:58 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 24 Nov 2026 04:33:58 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 24 Nov 2026 04:33:58 GMT
USER varnish
# Tue, 24 Nov 2026 04:33:58 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 24 Nov 2026 04:33:58 GMT
CMD []
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6043165e5702f535608d834e20b2417847fbbb12471b7985ebd28cca0b31ff99`  
		Last Modified: Tue, 24 Nov 2026 04:34:12 GMT  
		Size: 103.1 MB (103148143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c4912fb4f852854b1fff14791eb42e39ad0c69a22bb22223891e5a458769809`  
		Last Modified: Tue, 24 Nov 2026 04:34:09 GMT  
		Size: 701.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42dee8e7bd2c8544ab70a07d0e94d595e6c1cf15bfa78464fe0b9d9d9de7bf16`  
		Last Modified: Tue, 24 Nov 2026 04:34:10 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2b0870e872933cf29a5913778ae148ae608c0ea3a6e532b8dd200c4d7446eab`  
		Last Modified: Tue, 24 Nov 2026 04:34:10 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.1.0-2` - unknown; unknown

```console
$ docker pull varnish@sha256:fe3af1b076d9d7cc7881d18be3be559b33a1d8e7176fffe2677faa2edab00055
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.0 KB (21044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f336634784f685bcda1a3286a0ae0e7864adcab4c1b62555ba31f010ce3d4111`

```dockerfile
```

-	Layers:
	-	`sha256:8a8d5a80d6490fd089440829a879c18c3527a05a9a4942c0fa14a9d0c81dc7b3`  
		Last Modified: Tue, 24 Nov 2026 04:34:09 GMT  
		Size: 21.0 KB (21044 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:9.1.0-2` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:a2db4d9bc583d80e5efa2c42fd32be76309119a7d92449522a8990e0593695d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126112489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:804381eb181fe579d2ccf2580ad69079c2475962fcb140b0cc868987d1eafc49`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:38:07 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 24 Nov 2026 04:38:07 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Tue, 24 Nov 2026 04:38:07 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 24 Nov 2026 04:38:07 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 24 Nov 2026 04:38:07 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 24 Nov 2026 04:38:07 GMT
ENV VARNISH_SIZE=100M
# Tue, 24 Nov 2026 04:38:07 GMT
ENV VSM_NOPID=1
# Tue, 24 Nov 2026 04:38:07 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 24 Nov 2026 04:38:07 GMT
WORKDIR /etc/varnish
# Tue, 24 Nov 2026 04:38:08 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:38:08 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 24 Nov 2026 04:38:08 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 24 Nov 2026 04:38:08 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 24 Nov 2026 04:38:08 GMT
USER varnish
# Tue, 24 Nov 2026 04:38:08 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 24 Nov 2026 04:38:08 GMT
CMD []
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2718554ff0c3363abf6fb0f15eaa4fa458c3424d20dc79ee6ed6231c4b166bb4`  
		Last Modified: Tue, 24 Nov 2026 04:38:21 GMT  
		Size: 95.9 MB (95911362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:953d817bd2f1eb69086d04f5d268c1fbf5bb24c2e903a8d0ca98b0c3872194cd`  
		Last Modified: Tue, 24 Nov 2026 04:38:19 GMT  
		Size: 701.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e84e4d8d13a70378b08cce0c56471343af798f2e0f1bde8e4364c52e37fafce`  
		Last Modified: Tue, 24 Nov 2026 04:38:19 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df766028c4d83b48a91787c33ff3713a1a25fa2ba8e896b61c42c1f17446827b`  
		Last Modified: Tue, 24 Nov 2026 04:38:19 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:9.1.0-2` - unknown; unknown

```console
$ docker pull varnish@sha256:a299f500fd1907931ea5a49160ac9670a42c6b54dcf78e85fd3f4a41c3839363
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 KB (21179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe8393f7c166a2aa57f09661d1c3de424766bb5ba044a969eb5545b901f23d4c`

```dockerfile
```

-	Layers:
	-	`sha256:825b127baa67313eb88210eda632fef5d64c5775e469e6ac4fe710012fac52e0`  
		Last Modified: Tue, 24 Nov 2026 04:38:19 GMT  
		Size: 21.2 KB (21179 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:fresh`

```console
$ docker pull varnish@sha256:a1bcb3c09d4f7e8496ee42c342b8bbe8395c3631256c41e5856676a9e7f3bdff
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:fresh` - linux; amd64

```console
$ docker pull varnish@sha256:e9c1507f58e9a2a85c4abad2e70bb0704b5a4f97ab8362e49cd1e8c5fcfffcb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (132993420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1907caad3fef0b749673377c033349f1c8ddcaa7dc3859b14839a83368fb480e`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:33:58 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 24 Nov 2026 04:33:58 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Tue, 24 Nov 2026 04:33:58 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 24 Nov 2026 04:33:58 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 24 Nov 2026 04:33:58 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 24 Nov 2026 04:33:58 GMT
ENV VARNISH_SIZE=100M
# Tue, 24 Nov 2026 04:33:58 GMT
ENV VSM_NOPID=1
# Tue, 24 Nov 2026 04:33:58 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 24 Nov 2026 04:33:58 GMT
WORKDIR /etc/varnish
# Tue, 24 Nov 2026 04:33:58 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:33:58 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 24 Nov 2026 04:33:58 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 24 Nov 2026 04:33:58 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 24 Nov 2026 04:33:58 GMT
USER varnish
# Tue, 24 Nov 2026 04:33:58 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 24 Nov 2026 04:33:58 GMT
CMD []
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6043165e5702f535608d834e20b2417847fbbb12471b7985ebd28cca0b31ff99`  
		Last Modified: Tue, 24 Nov 2026 04:34:12 GMT  
		Size: 103.1 MB (103148143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c4912fb4f852854b1fff14791eb42e39ad0c69a22bb22223891e5a458769809`  
		Last Modified: Tue, 24 Nov 2026 04:34:09 GMT  
		Size: 701.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42dee8e7bd2c8544ab70a07d0e94d595e6c1cf15bfa78464fe0b9d9d9de7bf16`  
		Last Modified: Tue, 24 Nov 2026 04:34:10 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2b0870e872933cf29a5913778ae148ae608c0ea3a6e532b8dd200c4d7446eab`  
		Last Modified: Tue, 24 Nov 2026 04:34:10 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:fresh` - unknown; unknown

```console
$ docker pull varnish@sha256:fe3af1b076d9d7cc7881d18be3be559b33a1d8e7176fffe2677faa2edab00055
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.0 KB (21044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f336634784f685bcda1a3286a0ae0e7864adcab4c1b62555ba31f010ce3d4111`

```dockerfile
```

-	Layers:
	-	`sha256:8a8d5a80d6490fd089440829a879c18c3527a05a9a4942c0fa14a9d0c81dc7b3`  
		Last Modified: Tue, 24 Nov 2026 04:34:09 GMT  
		Size: 21.0 KB (21044 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:fresh` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:a2db4d9bc583d80e5efa2c42fd32be76309119a7d92449522a8990e0593695d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126112489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:804381eb181fe579d2ccf2580ad69079c2475962fcb140b0cc868987d1eafc49`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:38:07 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 24 Nov 2026 04:38:07 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Tue, 24 Nov 2026 04:38:07 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 24 Nov 2026 04:38:07 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 24 Nov 2026 04:38:07 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 24 Nov 2026 04:38:07 GMT
ENV VARNISH_SIZE=100M
# Tue, 24 Nov 2026 04:38:07 GMT
ENV VSM_NOPID=1
# Tue, 24 Nov 2026 04:38:07 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 24 Nov 2026 04:38:07 GMT
WORKDIR /etc/varnish
# Tue, 24 Nov 2026 04:38:08 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:38:08 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 24 Nov 2026 04:38:08 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 24 Nov 2026 04:38:08 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 24 Nov 2026 04:38:08 GMT
USER varnish
# Tue, 24 Nov 2026 04:38:08 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 24 Nov 2026 04:38:08 GMT
CMD []
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2718554ff0c3363abf6fb0f15eaa4fa458c3424d20dc79ee6ed6231c4b166bb4`  
		Last Modified: Tue, 24 Nov 2026 04:38:21 GMT  
		Size: 95.9 MB (95911362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:953d817bd2f1eb69086d04f5d268c1fbf5bb24c2e903a8d0ca98b0c3872194cd`  
		Last Modified: Tue, 24 Nov 2026 04:38:19 GMT  
		Size: 701.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e84e4d8d13a70378b08cce0c56471343af798f2e0f1bde8e4364c52e37fafce`  
		Last Modified: Tue, 24 Nov 2026 04:38:19 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df766028c4d83b48a91787c33ff3713a1a25fa2ba8e896b61c42c1f17446827b`  
		Last Modified: Tue, 24 Nov 2026 04:38:19 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:fresh` - unknown; unknown

```console
$ docker pull varnish@sha256:a299f500fd1907931ea5a49160ac9670a42c6b54dcf78e85fd3f4a41c3839363
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 KB (21179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe8393f7c166a2aa57f09661d1c3de424766bb5ba044a969eb5545b901f23d4c`

```dockerfile
```

-	Layers:
	-	`sha256:825b127baa67313eb88210eda632fef5d64c5775e469e6ac4fe710012fac52e0`  
		Last Modified: Tue, 24 Nov 2026 04:38:19 GMT  
		Size: 21.2 KB (21179 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:latest`

```console
$ docker pull varnish@sha256:a1bcb3c09d4f7e8496ee42c342b8bbe8395c3631256c41e5856676a9e7f3bdff
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:latest` - linux; amd64

```console
$ docker pull varnish@sha256:e9c1507f58e9a2a85c4abad2e70bb0704b5a4f97ab8362e49cd1e8c5fcfffcb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (132993420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1907caad3fef0b749673377c033349f1c8ddcaa7dc3859b14839a83368fb480e`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:33:58 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 24 Nov 2026 04:33:58 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Tue, 24 Nov 2026 04:33:58 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 24 Nov 2026 04:33:58 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 24 Nov 2026 04:33:58 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 24 Nov 2026 04:33:58 GMT
ENV VARNISH_SIZE=100M
# Tue, 24 Nov 2026 04:33:58 GMT
ENV VSM_NOPID=1
# Tue, 24 Nov 2026 04:33:58 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 24 Nov 2026 04:33:58 GMT
WORKDIR /etc/varnish
# Tue, 24 Nov 2026 04:33:58 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:33:58 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 24 Nov 2026 04:33:58 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 24 Nov 2026 04:33:58 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 24 Nov 2026 04:33:58 GMT
USER varnish
# Tue, 24 Nov 2026 04:33:58 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 24 Nov 2026 04:33:58 GMT
CMD []
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6043165e5702f535608d834e20b2417847fbbb12471b7985ebd28cca0b31ff99`  
		Last Modified: Tue, 24 Nov 2026 04:34:12 GMT  
		Size: 103.1 MB (103148143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c4912fb4f852854b1fff14791eb42e39ad0c69a22bb22223891e5a458769809`  
		Last Modified: Tue, 24 Nov 2026 04:34:09 GMT  
		Size: 701.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42dee8e7bd2c8544ab70a07d0e94d595e6c1cf15bfa78464fe0b9d9d9de7bf16`  
		Last Modified: Tue, 24 Nov 2026 04:34:10 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2b0870e872933cf29a5913778ae148ae608c0ea3a6e532b8dd200c4d7446eab`  
		Last Modified: Tue, 24 Nov 2026 04:34:10 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:latest` - unknown; unknown

```console
$ docker pull varnish@sha256:fe3af1b076d9d7cc7881d18be3be559b33a1d8e7176fffe2677faa2edab00055
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.0 KB (21044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f336634784f685bcda1a3286a0ae0e7864adcab4c1b62555ba31f010ce3d4111`

```dockerfile
```

-	Layers:
	-	`sha256:8a8d5a80d6490fd089440829a879c18c3527a05a9a4942c0fa14a9d0c81dc7b3`  
		Last Modified: Tue, 24 Nov 2026 04:34:09 GMT  
		Size: 21.0 KB (21044 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:latest` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:a2db4d9bc583d80e5efa2c42fd32be76309119a7d92449522a8990e0593695d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126112489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:804381eb181fe579d2ccf2580ad69079c2475962fcb140b0cc868987d1eafc49`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:38:07 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 24 Nov 2026 04:38:07 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Tue, 24 Nov 2026 04:38:07 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 24 Nov 2026 04:38:07 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 24 Nov 2026 04:38:07 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 24 Nov 2026 04:38:07 GMT
ENV VARNISH_SIZE=100M
# Tue, 24 Nov 2026 04:38:07 GMT
ENV VSM_NOPID=1
# Tue, 24 Nov 2026 04:38:07 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 24 Nov 2026 04:38:07 GMT
WORKDIR /etc/varnish
# Tue, 24 Nov 2026 04:38:08 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:38:08 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 24 Nov 2026 04:38:08 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 24 Nov 2026 04:38:08 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 24 Nov 2026 04:38:08 GMT
USER varnish
# Tue, 24 Nov 2026 04:38:08 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 24 Nov 2026 04:38:08 GMT
CMD []
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2718554ff0c3363abf6fb0f15eaa4fa458c3424d20dc79ee6ed6231c4b166bb4`  
		Last Modified: Tue, 24 Nov 2026 04:38:21 GMT  
		Size: 95.9 MB (95911362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:953d817bd2f1eb69086d04f5d268c1fbf5bb24c2e903a8d0ca98b0c3872194cd`  
		Last Modified: Tue, 24 Nov 2026 04:38:19 GMT  
		Size: 701.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e84e4d8d13a70378b08cce0c56471343af798f2e0f1bde8e4364c52e37fafce`  
		Last Modified: Tue, 24 Nov 2026 04:38:19 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df766028c4d83b48a91787c33ff3713a1a25fa2ba8e896b61c42c1f17446827b`  
		Last Modified: Tue, 24 Nov 2026 04:38:19 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:latest` - unknown; unknown

```console
$ docker pull varnish@sha256:a299f500fd1907931ea5a49160ac9670a42c6b54dcf78e85fd3f4a41c3839363
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 KB (21179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe8393f7c166a2aa57f09661d1c3de424766bb5ba044a969eb5545b901f23d4c`

```dockerfile
```

-	Layers:
	-	`sha256:825b127baa67313eb88210eda632fef5d64c5775e469e6ac4fe710012fac52e0`  
		Last Modified: Tue, 24 Nov 2026 04:38:19 GMT  
		Size: 21.2 KB (21179 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:old`

```console
$ docker pull varnish@sha256:4b6c608fd364a89e984e5da2fe782d990dfb26ffdf43a0e3e66ce7c04ede01cb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:old` - linux; amd64

```console
$ docker pull varnish@sha256:b412684582b45a45ca0bb875566024aca217c45c1d7001b79939ba1dce93b0be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132500426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:583563d43b6f2e6e8436d37e470f0bd5216ef22b30b8aaf123c39de89de3d3f2`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:34:18 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 24 Nov 2026 04:34:18 GMT
ARG VARNISH_VERSION_NUMBER=9.0.4-5
# Tue, 24 Nov 2026 04:34:18 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 24 Nov 2026 04:34:18 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 24 Nov 2026 04:34:18 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 24 Nov 2026 04:34:18 GMT
ENV VARNISH_SIZE=100M
# Tue, 24 Nov 2026 04:34:18 GMT
ENV VSM_NOPID=1
# Tue, 24 Nov 2026 04:34:18 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.4-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 24 Nov 2026 04:34:19 GMT
WORKDIR /etc/varnish
# Tue, 24 Nov 2026 04:34:19 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:34:19 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 24 Nov 2026 04:34:19 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 24 Nov 2026 04:34:19 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 24 Nov 2026 04:34:19 GMT
USER varnish
# Tue, 24 Nov 2026 04:34:19 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 24 Nov 2026 04:34:19 GMT
CMD []
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cc99e837a55ab9923af56a8b0248b37db5dfc0e2acc80d5e97a19bb6b5c5e32`  
		Last Modified: Tue, 24 Nov 2026 04:34:34 GMT  
		Size: 102.7 MB (102655357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81b73b6b7ca90a36e5d1cbd57701101942e6ea1958d707e38494c4db4b74268b`  
		Last Modified: Tue, 24 Nov 2026 04:34:32 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fac4437d89140c11d453100600cf62bb9436bc2958a39bf6595e1b4ee3df826`  
		Last Modified: Tue, 24 Nov 2026 04:34:32 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e629050035200383ecd127cd6be5a17e886f76b4913987b6d145c35cb7aa3811`  
		Last Modified: Tue, 24 Nov 2026 04:34:32 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:old` - unknown; unknown

```console
$ docker pull varnish@sha256:2a1901d06bee85ce666558bf302c7ad4db8a99b6781d828331bb7799dbdc5f15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.1 KB (20144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7005e1ee519c2dfa775695987fec14fd1fe8acf6322ffe2cbc34b5bbe8f54f96`

```dockerfile
```

-	Layers:
	-	`sha256:29c3c6b1c4d560b50423fd2a25c6b39cfe788e67bfb98350e7fb98e70b662b20`  
		Last Modified: Tue, 24 Nov 2026 04:34:32 GMT  
		Size: 20.1 KB (20144 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:old` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:f3df946cd8ddcc22ac2ed03613a90938579ac3036f32a178b3e365476789dbed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125613952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fd72191c36ade9e17965c1d70028afd38e7185f5eb8c420a8c5c0b20b970c80`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:38:16 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 24 Nov 2026 04:38:16 GMT
ARG VARNISH_VERSION_NUMBER=9.0.4-5
# Tue, 24 Nov 2026 04:38:16 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 24 Nov 2026 04:38:16 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 24 Nov 2026 04:38:16 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 24 Nov 2026 04:38:16 GMT
ENV VARNISH_SIZE=100M
# Tue, 24 Nov 2026 04:38:16 GMT
ENV VSM_NOPID=1
# Tue, 24 Nov 2026 04:38:16 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.4-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 24 Nov 2026 04:38:16 GMT
WORKDIR /etc/varnish
# Tue, 24 Nov 2026 04:38:16 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:38:16 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 24 Nov 2026 04:38:16 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 24 Nov 2026 04:38:16 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 24 Nov 2026 04:38:16 GMT
USER varnish
# Tue, 24 Nov 2026 04:38:16 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 24 Nov 2026 04:38:16 GMT
CMD []
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b707d55a8a878c38c46fdadd919d6fbcb8fef03f930fc4d2f0b47c2f73b7a10c`  
		Last Modified: Tue, 24 Nov 2026 04:38:30 GMT  
		Size: 95.4 MB (95413036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2d244212d4f86653eb2fd7ebc9e844663c7bb9e69093b8c75852f4527ee89d3`  
		Last Modified: Tue, 24 Nov 2026 04:38:28 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:580514e7f7b7e137c9d30f24c681cfbd29b26ec7c33ed16752c6b4c0a9513e4a`  
		Last Modified: Tue, 24 Nov 2026 04:38:28 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eed0cb2278515003576009cac801e34a99de9f0c9169313cc32ceb99dabd9a2`  
		Last Modified: Tue, 24 Nov 2026 04:38:28 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:old` - unknown; unknown

```console
$ docker pull varnish@sha256:8735d0d2c35d44363fb8d6391c671187b11a4929c9e736f580b20bd7088b302a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 KB (20243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0406f1be89293afce2d9fedaf6730ae0f9297ea554ed20ab01df1b315fa2a1e`

```dockerfile
```

-	Layers:
	-	`sha256:59b07db7cd4e4b3421caae3fafe5825484ac36defca38c731eac9f1ab4dac49f`  
		Last Modified: Tue, 24 Nov 2026 04:38:28 GMT  
		Size: 20.2 KB (20243 bytes)  
		MIME: application/vnd.in-toto+json

## `varnish:stable`

```console
$ docker pull varnish@sha256:a1bcb3c09d4f7e8496ee42c342b8bbe8395c3631256c41e5856676a9e7f3bdff
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:stable` - linux; amd64

```console
$ docker pull varnish@sha256:e9c1507f58e9a2a85c4abad2e70bb0704b5a4f97ab8362e49cd1e8c5fcfffcb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (132993420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1907caad3fef0b749673377c033349f1c8ddcaa7dc3859b14839a83368fb480e`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:33:58 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 24 Nov 2026 04:33:58 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Tue, 24 Nov 2026 04:33:58 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 24 Nov 2026 04:33:58 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 24 Nov 2026 04:33:58 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 24 Nov 2026 04:33:58 GMT
ENV VARNISH_SIZE=100M
# Tue, 24 Nov 2026 04:33:58 GMT
ENV VSM_NOPID=1
# Tue, 24 Nov 2026 04:33:58 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 24 Nov 2026 04:33:58 GMT
WORKDIR /etc/varnish
# Tue, 24 Nov 2026 04:33:58 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:33:58 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 24 Nov 2026 04:33:58 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 24 Nov 2026 04:33:58 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 24 Nov 2026 04:33:58 GMT
USER varnish
# Tue, 24 Nov 2026 04:33:58 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 24 Nov 2026 04:33:58 GMT
CMD []
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6043165e5702f535608d834e20b2417847fbbb12471b7985ebd28cca0b31ff99`  
		Last Modified: Tue, 24 Nov 2026 04:34:12 GMT  
		Size: 103.1 MB (103148143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c4912fb4f852854b1fff14791eb42e39ad0c69a22bb22223891e5a458769809`  
		Last Modified: Tue, 24 Nov 2026 04:34:09 GMT  
		Size: 701.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42dee8e7bd2c8544ab70a07d0e94d595e6c1cf15bfa78464fe0b9d9d9de7bf16`  
		Last Modified: Tue, 24 Nov 2026 04:34:10 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2b0870e872933cf29a5913778ae148ae608c0ea3a6e532b8dd200c4d7446eab`  
		Last Modified: Tue, 24 Nov 2026 04:34:10 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:stable` - unknown; unknown

```console
$ docker pull varnish@sha256:fe3af1b076d9d7cc7881d18be3be559b33a1d8e7176fffe2677faa2edab00055
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.0 KB (21044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f336634784f685bcda1a3286a0ae0e7864adcab4c1b62555ba31f010ce3d4111`

```dockerfile
```

-	Layers:
	-	`sha256:8a8d5a80d6490fd089440829a879c18c3527a05a9a4942c0fa14a9d0c81dc7b3`  
		Last Modified: Tue, 24 Nov 2026 04:34:09 GMT  
		Size: 21.0 KB (21044 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:stable` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:a2db4d9bc583d80e5efa2c42fd32be76309119a7d92449522a8990e0593695d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126112489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:804381eb181fe579d2ccf2580ad69079c2475962fcb140b0cc868987d1eafc49`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:38:07 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 24 Nov 2026 04:38:07 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Tue, 24 Nov 2026 04:38:07 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 24 Nov 2026 04:38:07 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 24 Nov 2026 04:38:07 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 24 Nov 2026 04:38:07 GMT
ENV VARNISH_SIZE=100M
# Tue, 24 Nov 2026 04:38:07 GMT
ENV VSM_NOPID=1
# Tue, 24 Nov 2026 04:38:07 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 24 Nov 2026 04:38:07 GMT
WORKDIR /etc/varnish
# Tue, 24 Nov 2026 04:38:08 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:38:08 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 24 Nov 2026 04:38:08 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 24 Nov 2026 04:38:08 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 24 Nov 2026 04:38:08 GMT
USER varnish
# Tue, 24 Nov 2026 04:38:08 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 24 Nov 2026 04:38:08 GMT
CMD []
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2718554ff0c3363abf6fb0f15eaa4fa458c3424d20dc79ee6ed6231c4b166bb4`  
		Last Modified: Tue, 24 Nov 2026 04:38:21 GMT  
		Size: 95.9 MB (95911362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:953d817bd2f1eb69086d04f5d268c1fbf5bb24c2e903a8d0ca98b0c3872194cd`  
		Last Modified: Tue, 24 Nov 2026 04:38:19 GMT  
		Size: 701.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e84e4d8d13a70378b08cce0c56471343af798f2e0f1bde8e4364c52e37fafce`  
		Last Modified: Tue, 24 Nov 2026 04:38:19 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df766028c4d83b48a91787c33ff3713a1a25fa2ba8e896b61c42c1f17446827b`  
		Last Modified: Tue, 24 Nov 2026 04:38:19 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:stable` - unknown; unknown

```console
$ docker pull varnish@sha256:a299f500fd1907931ea5a49160ac9670a42c6b54dcf78e85fd3f4a41c3839363
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 KB (21179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe8393f7c166a2aa57f09661d1c3de424766bb5ba044a969eb5545b901f23d4c`

```dockerfile
```

-	Layers:
	-	`sha256:825b127baa67313eb88210eda632fef5d64c5775e469e6ac4fe710012fac52e0`  
		Last Modified: Tue, 24 Nov 2026 04:38:19 GMT  
		Size: 21.2 KB (21179 bytes)  
		MIME: application/vnd.in-toto+json
