## `varnish:old`

```console
$ docker pull varnish@sha256:8630ca5549864dd6ab87572286e83ab1011e04e160c23630e6da45cfadc23fdf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:old` - linux; amd64

```console
$ docker pull varnish@sha256:cc8a07ee425059bc496c5742789806383bd82fde5f9ce542216c3eb53272eb91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132501930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6e711e2c8b5dc246d88a50b249bc7f550451062d9037fb22aad267aeed3de44`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:36:25 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 06 Oct 2026 01:36:25 GMT
ARG VARNISH_VERSION_NUMBER=9.0.4-5
# Tue, 06 Oct 2026 01:36:25 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 06 Oct 2026 01:36:25 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 06 Oct 2026 01:36:25 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 06 Oct 2026 01:36:25 GMT
ENV VARNISH_SIZE=100M
# Tue, 06 Oct 2026 01:36:25 GMT
ENV VSM_NOPID=1
# Tue, 06 Oct 2026 01:36:25 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.4-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 06 Oct 2026 01:36:25 GMT
WORKDIR /etc/varnish
# Tue, 06 Oct 2026 01:36:25 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:36:25 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 06 Oct 2026 01:36:25 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 06 Oct 2026 01:36:25 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 06 Oct 2026 01:36:25 GMT
USER varnish
# Tue, 06 Oct 2026 01:36:25 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 06 Oct 2026 01:36:25 GMT
CMD []
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3b4a1c97fbc79a0c7782cb7e1bbe81c0cb37f0c8d458d9268c8e7e4d015c336`  
		Last Modified: Tue, 06 Oct 2026 01:36:41 GMT  
		Size: 102.7 MB (102655696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:495eafed19f3d1d1d1e47e3f33dc8569d8d128b6f5b12486ac1c00e9555c0dc6`  
		Last Modified: Tue, 06 Oct 2026 01:36:39 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeb79b49d0880abf031ff6f45ce7839e133639ce10c80bd9980d2c122f6836a3`  
		Last Modified: Tue, 06 Oct 2026 01:36:39 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0692f4cba6b69ff7042b46e454e69947360557980fe9c3efcd131397e629700b`  
		Last Modified: Tue, 06 Oct 2026 01:36:39 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:old` - unknown; unknown

```console
$ docker pull varnish@sha256:2507c03412ebaf6eb08b8c5f9a93bf1cbb9d19ca69b72b325cf09dbaf0c65f59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.1 KB (20144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdcb56be31e7da94e0204156594b8f9f0ac4908fa83a0ae3234371bb898a6100`

```dockerfile
```

-	Layers:
	-	`sha256:49b0090e203ecabd1bc5b37243ef519c68f32ca4bd8d5e78fcd939cfaf0978de`  
		Last Modified: Tue, 06 Oct 2026 01:36:39 GMT  
		Size: 20.1 KB (20144 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:old` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:e9a6fff9a325e186e6046e6cd277ac472add5870d222e44669286c2b0a8e5932
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125621488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c12e998210eec8efd7b8ddf21930cbb61387c2980588941eb2dd30b45b0e24c`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:39:20 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 06 Oct 2026 01:39:20 GMT
ARG VARNISH_VERSION_NUMBER=9.0.4-5
# Tue, 06 Oct 2026 01:39:20 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Tue, 06 Oct 2026 01:39:20 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 06 Oct 2026 01:39:20 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 06 Oct 2026 01:39:20 GMT
ENV VARNISH_SIZE=100M
# Tue, 06 Oct 2026 01:39:20 GMT
ENV VSM_NOPID=1
# Tue, 06 Oct 2026 01:39:20 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.4-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 06 Oct 2026 01:39:20 GMT
WORKDIR /etc/varnish
# Tue, 06 Oct 2026 01:39:20 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:39:20 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 06 Oct 2026 01:39:20 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 06 Oct 2026 01:39:20 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 06 Oct 2026 01:39:20 GMT
USER varnish
# Tue, 06 Oct 2026 01:39:20 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 06 Oct 2026 01:39:20 GMT
CMD []
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12a6222d8ef884bd9c687a296014069f240580ec9ea27254803b41d3aeac5aff`  
		Last Modified: Tue, 06 Oct 2026 01:39:35 GMT  
		Size: 95.4 MB (95418322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56745d3248f8f36dd2d6d30abb6ec6c31e037a2482fbb96daa1389d383e5285d`  
		Last Modified: Tue, 06 Oct 2026 01:39:32 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cbf2120c09137b7928c4d059e0ab70aa83ea663d95d2cb878d68939e3b43eb1`  
		Last Modified: Tue, 06 Oct 2026 01:39:32 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38abdbdcaa678039c78f2c678a12fbcd1290bfcdf8a9b5827c1be9889d808256`  
		Last Modified: Tue, 06 Oct 2026 01:39:32 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:old` - unknown; unknown

```console
$ docker pull varnish@sha256:15967b49f5d8a24e40b423c6e96fc3ba548ca33d45905d7a2163a2417ca849e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 KB (20243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bd80d5201869d0458d0ecdf71cde30c2f26a4837fb2f9f1fecab944c91bd764`

```dockerfile
```

-	Layers:
	-	`sha256:c8118e5b9975910c617e09b161f2f9e2a124c9abcb77408fdad05306c29d1c8d`  
		Last Modified: Tue, 06 Oct 2026 01:39:32 GMT  
		Size: 20.2 KB (20243 bytes)  
		MIME: application/vnd.in-toto+json
