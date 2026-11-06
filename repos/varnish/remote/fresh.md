## `varnish:fresh`

```console
$ docker pull varnish@sha256:f97e894d90bccc585e5847e766696b7785c98046c29f76007f06d2e2c3228a4e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:fresh` - linux; amd64

```console
$ docker pull varnish@sha256:3c5aeb87e8467ac3a1ed720d83ef13fd766bb5406366a594a1c7d600445cb658
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (133008396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05d7497b95f161b7c2781945aee05f2d6613343b95270d8f30a502208b0a25b3`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 23:45:41 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Thu, 05 Nov 2026 23:45:41 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Thu, 05 Nov 2026 23:45:41 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Thu, 05 Nov 2026 23:45:41 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Thu, 05 Nov 2026 23:45:41 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Thu, 05 Nov 2026 23:45:41 GMT
ENV VARNISH_SIZE=100M
# Thu, 05 Nov 2026 23:45:41 GMT
ENV VSM_NOPID=1
# Thu, 05 Nov 2026 23:45:41 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Thu, 05 Nov 2026 23:45:41 GMT
WORKDIR /etc/varnish
# Thu, 05 Nov 2026 23:45:41 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 23:45:41 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Thu, 05 Nov 2026 23:45:41 GMT
COPY index.html /var/www/html/ # buildkit
# Thu, 05 Nov 2026 23:45:41 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Thu, 05 Nov 2026 23:45:41 GMT
USER varnish
# Thu, 05 Nov 2026 23:45:41 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Thu, 05 Nov 2026 23:45:41 GMT
CMD []
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fae7d6653d5962bce2d5cb39c78e6079cc0f4a21dff1d8d0f9154feafd78d649`  
		Last Modified: Thu, 05 Nov 2026 23:45:56 GMT  
		Size: 103.1 MB (103149175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:910d78034472839e60281bb35d6b7bb2f8412f9ac8e8c9b50dbbad8bd4560d40`  
		Last Modified: Thu, 05 Nov 2026 23:45:53 GMT  
		Size: 702.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32e48be7a084b47cd8d2e91b216183779df4dbde4b63c15fbd923d2838982e99`  
		Last Modified: Thu, 05 Nov 2026 23:45:53 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49e6896c942b0e72ee5cbed5bd35af3aee533971379d45f114b38fa670d21aa6`  
		Last Modified: Thu, 05 Nov 2026 23:45:53 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:fresh` - unknown; unknown

```console
$ docker pull varnish@sha256:97bb490a4ae0c4cc52630ef869254193103a4c6c35548e15acdf910951f883e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.0 KB (21044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:054c8d9169154075c34f73402ab89162c9bbd8a69dff2d15bb753e2c3171c4d5`

```dockerfile
```

-	Layers:
	-	`sha256:9b1555471838f0ada3cb200f0cce06830c52ba7619ccfb5450660b36643b9ac4`  
		Last Modified: Thu, 05 Nov 2026 23:45:53 GMT  
		Size: 21.0 KB (21044 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:fresh` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:ba65dcaa4c7168dc8c35045ca8846d35fc11ebe1235758911a0e7325755a483c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126131187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b47eb0b138c6f849fd60bf465c224bdeed7b49d4e9345894cc6630edb40b354`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 23:44:39 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Thu, 05 Nov 2026 23:44:39 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Thu, 05 Nov 2026 23:44:39 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Thu, 05 Nov 2026 23:44:39 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Thu, 05 Nov 2026 23:44:39 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Thu, 05 Nov 2026 23:44:39 GMT
ENV VARNISH_SIZE=100M
# Thu, 05 Nov 2026 23:44:39 GMT
ENV VSM_NOPID=1
# Thu, 05 Nov 2026 23:44:39 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Thu, 05 Nov 2026 23:44:39 GMT
WORKDIR /etc/varnish
# Thu, 05 Nov 2026 23:44:39 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 23:44:39 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Thu, 05 Nov 2026 23:44:39 GMT
COPY index.html /var/www/html/ # buildkit
# Thu, 05 Nov 2026 23:44:39 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Thu, 05 Nov 2026 23:44:39 GMT
USER varnish
# Thu, 05 Nov 2026 23:44:39 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Thu, 05 Nov 2026 23:44:39 GMT
CMD []
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:390b4b2fefe107b5c4ac026946f150765498c3a475a7676cc7b39c86abfe2c1f`  
		Last Modified: Thu, 05 Nov 2026 23:44:53 GMT  
		Size: 95.9 MB (95914062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:026cdfd1aae940aefaaeda280fce3fed30d86e519d2c417e42ff874fecd251e9`  
		Last Modified: Thu, 05 Nov 2026 23:44:51 GMT  
		Size: 702.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:516e11d63685a4e4c3339a75a04c887e68bd80e6d48c4ad92ed1ceb0900ce79a`  
		Last Modified: Thu, 05 Nov 2026 23:44:51 GMT  
		Size: 1.0 KB (1006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1db0d531fa5be50028fd3dac9e8f89a0f3750b48690f256a0f47cbd53089d57d`  
		Last Modified: Thu, 05 Nov 2026 23:44:51 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:fresh` - unknown; unknown

```console
$ docker pull varnish@sha256:09f3ebcbcfdef4831dd891e891ac6696a312c724285565dff18dd608e1d45afd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 KB (21179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b56489ae4abef2569169b530d13b6d89a001844d852b9729eb687ae775336dd1`

```dockerfile
```

-	Layers:
	-	`sha256:21abe917081bebc4b930ea9c7824f9609694eaf0f4c9a57074454224fef8f02c`  
		Last Modified: Thu, 05 Nov 2026 23:44:51 GMT  
		Size: 21.2 KB (21179 bytes)  
		MIME: application/vnd.in-toto+json
