## `varnish:fresh`

```console
$ docker pull varnish@sha256:73d7da8ba87f83564131a79b7901f14bc36937a4e2a11b8f90940855b144b4a5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:fresh` - linux; amd64

```console
$ docker pull varnish@sha256:e7079ee088d3646ce4e7169f695b7202c137ebfd8f3ac0603ec1e32a4b016cb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132490673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04d1c7f707ce7ec7ec7ede50766fb238ff6127812347a322cb611ab70cbb4830`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:39:33 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Sat, 19 Sep 2026 00:39:33 GMT
ARG VARNISH_VERSION_NUMBER=9.0.4-5
# Sat, 19 Sep 2026 00:39:33 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Sat, 19 Sep 2026 00:39:33 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Sat, 19 Sep 2026 00:39:33 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Sat, 19 Sep 2026 00:39:33 GMT
ENV VARNISH_SIZE=100M
# Sat, 19 Sep 2026 00:39:33 GMT
ENV VSM_NOPID=1
# Sat, 19 Sep 2026 00:39:33 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.4-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Sat, 19 Sep 2026 00:39:33 GMT
WORKDIR /etc/varnish
# Sat, 19 Sep 2026 00:39:33 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:39:33 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Sat, 19 Sep 2026 00:39:33 GMT
COPY index.html /var/www/html/ # buildkit
# Sat, 19 Sep 2026 00:39:33 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Sat, 19 Sep 2026 00:39:33 GMT
USER varnish
# Sat, 19 Sep 2026 00:39:33 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Sat, 19 Sep 2026 00:39:33 GMT
CMD []
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df12b0d15431cc5487847e0537a6a8ab62a59aec00366bf53581e2dc7431bd4b`  
		Last Modified: Sat, 19 Sep 2026 00:39:47 GMT  
		Size: 102.7 MB (102657369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48b88fca4339aa152d4787c30a0dee1676cde4a0345ae04205fb40e45476735a`  
		Last Modified: Sat, 19 Sep 2026 00:39:45 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad309b2c6e4d248f697cd92036e681522f653e1a86aac80d80a32d0a558ea39f`  
		Last Modified: Sat, 19 Sep 2026 00:39:45 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19431f24944551b24ed9cc25839cddccfdb9a386f593438bc9ff6d53f37017dd`  
		Last Modified: Sat, 19 Sep 2026 00:39:45 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:fresh` - unknown; unknown

```console
$ docker pull varnish@sha256:e4a066d6640cbd6590168d910b1ba345614c89606d1af8b223dc33362814b5de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 KB (20744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77412792382cc2ada88f42615fcdea9831226fc090a467e0bccd83f7c3e16485`

```dockerfile
```

-	Layers:
	-	`sha256:d3af7cec00151e2b818f4939b209c895bbb5dc928a2abf70b9f7c707d3a06938`  
		Last Modified: Sat, 19 Sep 2026 00:39:45 GMT  
		Size: 20.7 KB (20744 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:fresh` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:5e2ce0e48bbc1c68fa83c048c8e16d96ad778acfaabb5b69e8699333b535a31f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125611425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4b6a89860d6cf51ba3e5a38015d9d46faccd51beae119ea40413dbe0c7581de`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:42:36 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Sat, 19 Sep 2026 00:42:36 GMT
ARG VARNISH_VERSION_NUMBER=9.0.4-5
# Sat, 19 Sep 2026 00:42:36 GMT
ARG VARNISH_OTEL_VERSION_NUMBER=3.0.0-1
# Sat, 19 Sep 2026 00:42:36 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Sat, 19 Sep 2026 00:42:36 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Sat, 19 Sep 2026 00:42:36 GMT
ENV VARNISH_SIZE=100M
# Sat, 19 Sep 2026 00:42:36 GMT
ENV VSM_NOPID=1
# Sat, 19 Sep 2026 00:42:36 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.4-5 VARNISH_OTEL_VERSION_NUMBER=3.0.0-1 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     VARNISH_OTEL_VERSION=$VARNISH_OTEL_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				varnish-otel=$VARNISH_OTEL_VERSION 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Sat, 19 Sep 2026 00:42:36 GMT
WORKDIR /etc/varnish
# Sat, 19 Sep 2026 00:42:36 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:42:36 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Sat, 19 Sep 2026 00:42:36 GMT
COPY index.html /var/www/html/ # buildkit
# Sat, 19 Sep 2026 00:42:36 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Sat, 19 Sep 2026 00:42:36 GMT
USER varnish
# Sat, 19 Sep 2026 00:42:36 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Sat, 19 Sep 2026 00:42:36 GMT
CMD []
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98069c1c5aa6c562f6d398547f27ca0994b7f37a18ff8fb0ccc8243fd2f10284`  
		Last Modified: Sat, 19 Sep 2026 00:42:51 GMT  
		Size: 95.4 MB (95418853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb9927f29cabc66896a0143f2cef23a17cda51c604602a84c221175872cebb84`  
		Last Modified: Sat, 19 Sep 2026 00:42:48 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:380827a7d2ac30f3ab87e4944a03042d2112d6cb9efb293768469d462ecf6350`  
		Last Modified: Sat, 19 Sep 2026 00:42:48 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2d2e5cc8b7b5ccab29ffb90241af07a38ae28127ca1df9ff05b0b65bdfdee2b`  
		Last Modified: Sat, 19 Sep 2026 00:42:48 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:fresh` - unknown; unknown

```console
$ docker pull varnish@sha256:021d777de39e0b6fa49acd7e243f02027700f956afac35cb3eaf0f3d3d549124
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 KB (20866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b3d024a3ee035eb3fb4ee2002aaa9b60c58196379457c71ba632304943c7ed7`

```dockerfile
```

-	Layers:
	-	`sha256:6c437f17b849cd6211248a7545d0524d49cdd4594364b290008919e36a143f19`  
		Last Modified: Sat, 19 Sep 2026 00:42:48 GMT  
		Size: 20.9 KB (20866 bytes)  
		MIME: application/vnd.in-toto+json
