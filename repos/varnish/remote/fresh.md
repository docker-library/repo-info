## `varnish:fresh`

```console
$ docker pull varnish@sha256:2b2f4efc79f6172af8513e48d8b37bc03bb91b34470122f4e3ccec29aeb0afc9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:fresh` - linux; amd64

```console
$ docker pull varnish@sha256:d6048518d9d00ddd659e6de25d4d36d750969c596ded8acf7e7cb1b46d30de4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (132980763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37820760379585f60008e27c44683a69c553fc4ac78100e49f990ccc763423d4`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Wed, 23 Sep 2026 23:04:57 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 23 Sep 2026 23:04:57 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Wed, 23 Sep 2026 23:04:57 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 23 Sep 2026 23:04:57 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 23 Sep 2026 23:04:57 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 23 Sep 2026 23:04:57 GMT
ENV VARNISH_SIZE=100M
# Wed, 23 Sep 2026 23:04:57 GMT
ENV VSM_NOPID=1
# Wed, 23 Sep 2026 23:04:57 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 23 Sep 2026 23:04:57 GMT
WORKDIR /etc/varnish
# Wed, 23 Sep 2026 23:04:57 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 23:04:57 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 23 Sep 2026 23:04:57 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 23 Sep 2026 23:04:57 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 23 Sep 2026 23:04:57 GMT
USER varnish
# Wed, 23 Sep 2026 23:04:57 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 23 Sep 2026 23:04:57 GMT
CMD []
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1467269b5053a1f8817df51b88cf5c5340b5679474e11e0c5c6288cac65e67b0`  
		Last Modified: Wed, 23 Sep 2026 23:05:12 GMT  
		Size: 103.1 MB (103147462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3af45e8e15cf7d52ebfa95cedf7d6e2499efbd316bdd4d41ca96163bdd93ad47`  
		Last Modified: Wed, 23 Sep 2026 23:05:10 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23cc519b78f8e4f79b9db4980de72098625e690610c2c5f767ae583c4d974ec4`  
		Last Modified: Wed, 23 Sep 2026 23:05:10 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51916c48dc92df91aa9b30dfd7bbdb67f944053b0255c56310dded779dd3ff6b`  
		Last Modified: Wed, 23 Sep 2026 23:05:10 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:fresh` - unknown; unknown

```console
$ docker pull varnish@sha256:21e345e8408ff92133e99a0b05fa03ddda479b0c73710458f20771ef51ca33d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d944c43941234f1a461de6b0a31e080d3903376488e5dba414496f485004c85`

```dockerfile
```

-	Layers:
	-	`sha256:2e9ab3ad1400f3e74fccd4a99d787161c0b9165662e3301f92b6ad888aa4a946`  
		Last Modified: Wed, 23 Sep 2026 23:05:10 GMT  
		Size: 20.7 KB (20743 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:fresh` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:9f15995af051433778a59616b665670e487303ef986da86a659c2340335bdb98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126108193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0ca1580ec3399e4f0374e6d14222657130567835bfc5467de648ca41e2c0225`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Wed, 23 Sep 2026 23:04:49 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Wed, 23 Sep 2026 23:04:49 GMT
ARG VARNISH_VERSION_NUMBER=9.1.0-2
# Wed, 23 Sep 2026 23:04:49 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Wed, 23 Sep 2026 23:04:49 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Wed, 23 Sep 2026 23:04:49 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Wed, 23 Sep 2026 23:04:49 GMT
ENV VARNISH_SIZE=100M
# Wed, 23 Sep 2026 23:04:49 GMT
ENV VSM_NOPID=1
# Wed, 23 Sep 2026 23:04:49 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.1.0-2 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Wed, 23 Sep 2026 23:04:49 GMT
WORKDIR /etc/varnish
# Wed, 23 Sep 2026 23:04:49 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 23:04:49 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Wed, 23 Sep 2026 23:04:49 GMT
COPY index.html /var/www/html/ # buildkit
# Wed, 23 Sep 2026 23:04:49 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Wed, 23 Sep 2026 23:04:49 GMT
USER varnish
# Wed, 23 Sep 2026 23:04:49 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Wed, 23 Sep 2026 23:04:49 GMT
CMD []
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa4a6ad11e60a5294e29dd92e7c5dbac7a9b41e41368d813dc5001ddd2481b59`  
		Last Modified: Wed, 23 Sep 2026 23:05:04 GMT  
		Size: 95.9 MB (95915617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88e146336566a705567ec0988d9a32c6b4c30ddc913af67c2a2c3bc6b62cfb7f`  
		Last Modified: Wed, 23 Sep 2026 23:05:01 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5719cc96cceb042d4b211e9f9c83f742beffeba9ef9c21f54b40a3d1f44d61f`  
		Last Modified: Wed, 23 Sep 2026 23:05:01 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db493ff6e1c4fb862ca41c8374cf9afb7fe44b82efb264e075f5e1a7102d31b9`  
		Last Modified: Wed, 23 Sep 2026 23:05:01 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:fresh` - unknown; unknown

```console
$ docker pull varnish@sha256:8742de5d9d76f588310d4f56560a23c3453b0890b7c4c63c3262126a0bd9ef20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 KB (20867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6afa6a59909d343ee1889cd2c7d47b60b836365488f3005022d788eda979b718`

```dockerfile
```

-	Layers:
	-	`sha256:53dda76f2e837d1d86fa89332168848f6c732524c775000b03ee7e12c61ace73`  
		Last Modified: Wed, 23 Sep 2026 23:05:01 GMT  
		Size: 20.9 KB (20867 bytes)  
		MIME: application/vnd.in-toto+json
