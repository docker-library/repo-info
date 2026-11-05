## `varnish:fresh`

```console
$ docker pull varnish@sha256:4409aea551fa3033e0ba32d004be3417baedcbbce361790db93e2d759a3f200f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:fresh` - linux; amd64

```console
$ docker pull varnish@sha256:d8bbf5d2326ac24c24fb8efc87d2bc94ab544793cc845d3db1244c7e424f9d10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (133008408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03d9048866aad1d6ec6b04ff6891ebb00feb5ba2e52919afb369ab4a7a9ad1fa`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:33:23 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Thu, 05 Nov 2026 07:33:23 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Thu, 05 Nov 2026 07:33:23 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Thu, 05 Nov 2026 07:33:23 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Thu, 05 Nov 2026 07:33:23 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Thu, 05 Nov 2026 07:33:23 GMT
ENV VARNISH_SIZE=100M
# Thu, 05 Nov 2026 07:33:23 GMT
ENV VSM_NOPID=1
# Thu, 05 Nov 2026 07:33:23 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Thu, 05 Nov 2026 07:33:23 GMT
WORKDIR /etc/varnish
# Thu, 05 Nov 2026 07:33:23 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:33:23 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Thu, 05 Nov 2026 07:33:23 GMT
COPY index.html /var/www/html/ # buildkit
# Thu, 05 Nov 2026 07:33:23 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Thu, 05 Nov 2026 07:33:23 GMT
USER varnish
# Thu, 05 Nov 2026 07:33:23 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Thu, 05 Nov 2026 07:33:23 GMT
CMD []
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b17bc6fb9f1fa8a48c8e06653f681f9e37f2c9907f253aadbb3a879dfd6c40f`  
		Last Modified: Thu, 05 Nov 2026 07:33:39 GMT  
		Size: 103.1 MB (103149390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:943af175f892497b3b2a4877c0991e59b87251f0811668e57507cac18907d28c`  
		Last Modified: Thu, 05 Nov 2026 07:33:37 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a70701f079c2f3023f787ca30e7a9e09639e552ceeab0ccc51df4095affb36a`  
		Last Modified: Thu, 05 Nov 2026 07:33:37 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4edbfba5635465d61d9a0b14a7e1bdf6b2be3b0f0ffd6c4a5ba79a9fdf7a01ab`  
		Last Modified: Thu, 05 Nov 2026 07:33:37 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:fresh` - unknown; unknown

```console
$ docker pull varnish@sha256:9cacc90ea323facf50330d1195741f756fdad75ffee52e940b138e4ab01450fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45f2baed954172571fd57af956f325cedb7977a83d3991fc971e45067a7d00db`

```dockerfile
```

-	Layers:
	-	`sha256:aec1ec3830c0bc7ff20d9331b8b84422bcecd848346185d3c602ddf34672b11b`  
		Last Modified: Thu, 05 Nov 2026 07:33:37 GMT  
		Size: 20.7 KB (20744 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:fresh` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:d5773ac981a9290702661b42c86e1ba7fb96ca90f2d0dd8a751fb0b64bf9fd19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126130932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:963dc9620134c751326158e9f17bf23a0673267d737bcf0359eb7ed4b37ae229`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:36:38 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Thu, 05 Nov 2026 07:36:38 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Thu, 05 Nov 2026 07:36:38 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Thu, 05 Nov 2026 07:36:38 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Thu, 05 Nov 2026 07:36:38 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Thu, 05 Nov 2026 07:36:38 GMT
ENV VARNISH_SIZE=100M
# Thu, 05 Nov 2026 07:36:38 GMT
ENV VSM_NOPID=1
# Thu, 05 Nov 2026 07:36:38 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Thu, 05 Nov 2026 07:36:38 GMT
WORKDIR /etc/varnish
# Thu, 05 Nov 2026 07:36:38 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:36:38 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Thu, 05 Nov 2026 07:36:38 GMT
COPY index.html /var/www/html/ # buildkit
# Thu, 05 Nov 2026 07:36:38 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Thu, 05 Nov 2026 07:36:38 GMT
USER varnish
# Thu, 05 Nov 2026 07:36:38 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Thu, 05 Nov 2026 07:36:38 GMT
CMD []
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7074c89d9cf480e16952f870d67e2498adcc76710e4319a6b46f58545587fabb`  
		Last Modified: Thu, 05 Nov 2026 07:36:54 GMT  
		Size: 95.9 MB (95914007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c46e5fd5505f2b9987ac0a630747bf4d3cbbcb1912fb3db051d7c26fc3670cb8`  
		Last Modified: Thu, 05 Nov 2026 07:36:51 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:285bfd36dd90d8d1ee526259dc95717151600f3ed9a576a4e1e1683d6dfa3cef`  
		Last Modified: Thu, 05 Nov 2026 07:36:51 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:477eacea337706556c187f63f7e62f208f98340d3b40d1a20ce8ad91f94bd214`  
		Last Modified: Thu, 05 Nov 2026 07:36:51 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:fresh` - unknown; unknown

```console
$ docker pull varnish@sha256:0bd7891312bbc8900e5cb1f2b8999e7b4f9b7e5620294523134aec6273e3ca1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 KB (20867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1e61369533905d5a4179a6d267ac0febe4a9881ba1def5454bb8ad64c091016`

```dockerfile
```

-	Layers:
	-	`sha256:68d6f8ea395c887029212e41b4a380c29f631c546732a3a0b545ee5e480d6476`  
		Last Modified: Thu, 05 Nov 2026 07:36:51 GMT  
		Size: 20.9 KB (20867 bytes)  
		MIME: application/vnd.in-toto+json
