## `varnish:latest`

```console
$ docker pull varnish@sha256:4c6066279af88edcdd97d35a45579c77f363e551cd9cb5597644ac856d8ebbdf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:latest` - linux; amd64

```console
$ docker pull varnish@sha256:b4a3fad9d3da8f1700c31868df3f8b3fb91d13b94eac6e5d7fceba0860966c21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (133007730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8c24905edfa2a55185744480c78e74f6be475f48c86b11e2f5c19d3b1a7e2f5`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:34:12 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 28 Oct 2026 01:34:12 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Wed, 28 Oct 2026 01:34:12 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 28 Oct 2026 01:34:12 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 28 Oct 2026 01:34:12 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 28 Oct 2026 01:34:12 GMT
ENV VARNISH_SIZE=100M
# Wed, 28 Oct 2026 01:34:12 GMT
ENV VSM_NOPID=1
# Wed, 28 Oct 2026 01:34:12 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 28 Oct 2026 01:34:12 GMT
WORKDIR /etc/varnish
# Wed, 28 Oct 2026 01:34:12 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:34:12 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 28 Oct 2026 01:34:12 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 28 Oct 2026 01:34:12 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 28 Oct 2026 01:34:12 GMT
USER varnish
# Wed, 28 Oct 2026 01:34:12 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 28 Oct 2026 01:34:12 GMT
CMD []
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90d6c4a09b86a8f50001c5d8775ea3e8e19bbb432de8187b4e4a8ca5bb16d697`  
		Last Modified: Wed, 28 Oct 2026 01:34:27 GMT  
		Size: 103.1 MB (103149611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b573411db82f056fbf48b84a90dd4da5a40a8ccb19a7a0f4818e1d264b5bc5b9`  
		Last Modified: Wed, 28 Oct 2026 01:34:24 GMT  
		Size: 497.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c29b645e5fe662ebab1ebc624741b74e1fad613e4253b537bddb708a084d094f`  
		Last Modified: Wed, 28 Oct 2026 01:34:25 GMT  
		Size: 1.0 KB (1005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:520186a2d8254b054e2d5259624475594893bc79ffd2dffcb6611895a6075f6b`  
		Last Modified: Wed, 28 Oct 2026 01:34:25 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:latest` - unknown; unknown

```console
$ docker pull varnish@sha256:a5f35c607d56b45cbfca3ddbf7ca86041831b25c949f31c30182d2134b93ef44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e21058e5574a5e5764af544533568f7b397a723c92f7741f22d4c29e1f3e1ec`

```dockerfile
```

-	Layers:
	-	`sha256:7c9288065469f70eb90361a7cb5239b55b0ee76e374630f558348cd5389cb9ca`  
		Last Modified: Wed, 28 Oct 2026 01:34:24 GMT  
		Size: 20.7 KB (20744 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:latest` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:6dbd8c5cd9d385cfe8e706a42a3b620790bede56c32a55b1bae389490efa71e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126130139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a0d076ebdac2c9950ff568055a256e4f0f37a2ede3f35a07c66b823792220e3`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:37:22 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 28 Oct 2026 01:37:22 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Wed, 28 Oct 2026 01:37:22 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 28 Oct 2026 01:37:22 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 28 Oct 2026 01:37:22 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 28 Oct 2026 01:37:22 GMT
ENV VARNISH_SIZE=100M
# Wed, 28 Oct 2026 01:37:22 GMT
ENV VSM_NOPID=1
# Wed, 28 Oct 2026 01:37:22 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 28 Oct 2026 01:37:22 GMT
WORKDIR /etc/varnish
# Wed, 28 Oct 2026 01:37:22 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:37:22 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 28 Oct 2026 01:37:22 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 28 Oct 2026 01:37:22 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 28 Oct 2026 01:37:22 GMT
USER varnish
# Wed, 28 Oct 2026 01:37:22 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 28 Oct 2026 01:37:22 GMT
CMD []
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ecefc5ee8e7bf5163f27800aa93dbba9dfe535b25c2504462be5572020a3e30`  
		Last Modified: Wed, 28 Oct 2026 01:37:37 GMT  
		Size: 95.9 MB (95913756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e60aea5d95874c6f42c072f04a4d1f70af987c1740e9cf7988fd4991c36e159b`  
		Last Modified: Wed, 28 Oct 2026 01:37:34 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9dec42474c5c6662e8dbfa0ea1c7ce5b7d69b63448b01d72032ec315491f2e5`  
		Last Modified: Wed, 28 Oct 2026 01:37:34 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55832e74f2e0ebca4ef76f4cb226b70c5178ae0de92830a5962d7b5603245616`  
		Last Modified: Wed, 28 Oct 2026 01:37:34 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:latest` - unknown; unknown

```console
$ docker pull varnish@sha256:2d0fedc5080201ec252aa9d1c7f772998fd30489ed9c0dabab68e76af7337659
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 KB (20866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:951f4b76c377f6ae2cf26ceae7e9b1f9d1be11a05b54a21b3113a02a14cb20e2`

```dockerfile
```

-	Layers:
	-	`sha256:503d81c2bd5fbcf309bf807db848247687d8ccfa2ba243cdb9ab20e9a52f4959`  
		Last Modified: Wed, 28 Oct 2026 01:37:34 GMT  
		Size: 20.9 KB (20866 bytes)  
		MIME: application/vnd.in-toto+json
