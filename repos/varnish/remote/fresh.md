## `varnish:fresh`

```console
$ docker pull varnish@sha256:5bc4e05a10570fb234fff01d13eb25ecac697f5c66a2c26ba7353ce491ac5500
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `varnish:fresh` - linux; amd64

```console
$ docker pull varnish@sha256:a8ea39fa449f671271992ff118c78ec6d5059b8aba146b06b42a393794cc09fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.0 MB (125044011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:920a1ff6367629ce82455f55766d77d3e9d973fbf7173a93613d42d857b213ea`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 18:11:12 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 18:11:12 GMT
ARG VARNISH_VERSION_NUMBER=9.0.3-3
# Tue, 14 Jul 2026 18:11:12 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 18:11:12 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 14 Jul 2026 18:11:12 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 18:11:12 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 18:11:12 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.3-3 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 18:11:12 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 18:11:12 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 18:11:12 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 18:11:12 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 14 Jul 2026 18:11:12 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 18:11:12 GMT
USER varnish
# Tue, 14 Jul 2026 18:11:12 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 18:11:12 GMT
CMD []
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:927c16520d846410bc0ece14c1a8a67007c93500e4ac8aa695f9fb086a8e41bd`  
		Last Modified: Tue, 14 Jul 2026 18:11:27 GMT  
		Size: 95.3 MB (95260231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cfecb8a2153a6d71b66b0ccb1c27930a0491bf3f472339e5b4ee41bce4ee33c`  
		Last Modified: Tue, 14 Jul 2026 18:11:25 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bde9b0dce60139ddcf974d4ed819fb526e9d46a145f6633f1a457f8e8694963`  
		Last Modified: Tue, 14 Jul 2026 18:11:25 GMT  
		Size: 1.0 KB (1003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:191c0fbfd7b3d2cecfe297e5efb6b5f9054c4d20e46bb0e88a4f1445273f8a3a`  
		Last Modified: Tue, 14 Jul 2026 18:11:25 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:fresh` - unknown; unknown

```console
$ docker pull varnish@sha256:d0806b4004e277795c9057adfa63988a4c955ae2940417f813b9aa139bf73823
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 KB (20291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d87c112e7169439e4d7479edeccb5e22ab831248fd576db02af241d3c6877fa5`

```dockerfile
```

-	Layers:
	-	`sha256:f4b2dcf3c5c7cd8d0b97d655f45c93d00e58ad56157cf30d6a72640d9f59f3e5`  
		Last Modified: Tue, 14 Jul 2026 18:11:25 GMT  
		Size: 20.3 KB (20291 bytes)  
		MIME: application/vnd.in-toto+json

### `varnish:fresh` - linux; arm64 variant v8

```console
$ docker pull varnish@sha256:06ea45e2435d3a7ec5dc5575aa075bd504b26d18502b8ae67416f838b0331e38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118868434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f53709de323137b4f7617f26dc99107bdd5424680de27800846cba0219a92fc2`
-	Entrypoint: `["\/usr\/local\/bin\/docker-varnish-entrypoint"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 17:58:41 GMT
ARG REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344
# Tue, 14 Jul 2026 17:58:41 GMT
ARG VARNISH_VERSION_NUMBER=9.0.3-3
# Tue, 14 Jul 2026 17:58:41 GMT
ARG TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
# Tue, 14 Jul 2026 17:58:41 GMT
ENV VMOD_DEPS=autoconf-archive automake curl libtool make pkg-config python3-sphinx varnish-dev
# Tue, 14 Jul 2026 17:58:41 GMT
ENV VARNISH_SIZE=100M
# Tue, 14 Jul 2026 17:58:41 GMT
ENV VSM_NOPID=1
# Tue, 14 Jul 2026 17:58:41 GMT
# ARGS: REPO_FINGERPRINT=694566269779DFAC975ED9BDD0525EAE838B3344 VARNISH_VERSION_NUMBER=9.0.3-3 TOOLBOX_COMMIT=da1c5ce23d2ad81032bb45627d10a8dcb2c6f1d9
RUN set -ex;     . /etc/os-release;     VARNISH_VERSION=$VARNISH_VERSION_NUMBER~$VERSION_CODENAME;     BASE_PKGS="apt-utils automake git gpg libgetdns-dev libtool make pkg-config python3-docutils";     export DEBIAN_FRONTEND=noninteractive;     export DEBCONF_NONINTERACTIVE_SEEN=true;         apt-get update;     apt-get install -y curl $BASE_PKGS;     mkdir -p /etc/apt/keyrings;     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys $REPO_FINGERPRINT;     gpg --batch --armor --export "$REPO_FINGERPRINT" > /etc/apt/keyrings/varnish.gpg;     echo "deb [signed-by=/etc/apt/keyrings/varnish.gpg] https://packages.varnish-software.com/varnish/$ID $VERSION_CODENAME main" | tee -a /etc/apt/sources.list.d/varnish.list;     apt-get update;     adduser --uid 1000 --quiet --system --no-create-home --home /nonexistent --group varnish;     adduser --uid 1001 --quiet --system --no-create-home --home /nonexistent --ingroup varnish vcache;     adduser --uid 1002 --quiet --system --no-create-home --home /nonexistent --ingroup varnish varnishlog;         apt-get update;     apt-get install -y --no-install-recommends 				varnish=${VARNISH_VERSION} 				varnish-dev=${VARNISH_VERSION} 				varnish-modules=${VARNISH_VERSION} 				vmod-cfg=${VARNISH_VERSION} 				vmod-digest=${VARNISH_VERSION} 				vmod-fileserver=${VARNISH_VERSION} 				vmod-geoip2=${VARNISH_VERSION} 				vmod-k8s-endpoint=${VARNISH_VERSION} 				vmod-jq=${VARNISH_VERSION} 				vmod-querystring=${VARNISH_VERSION} 				vmod-redis=${VARNISH_VERSION} 				vmod-reqwest=${VARNISH_VERSION} 				vmod-rers=${VARNISH_VERSION} 				vmod-uuid=${VARNISH_VERSION};         git clone https://github.com/varnish/toolbox.git;     cd toolbox;     git checkout $TOOLBOX_COMMIT;     cp install-vmod/install-vmod /usr/local/bin/;     cp vcls/verbose_builtin/verbose_builtin.vcl vcls/hit-miss/hit-miss.vcl /etc/varnish/;         apt-mark hold varnish;     apt-get -y purge --auto-remove $BASE_PKGS varnish-dev;     rm -rf /var/lib/apt/lists/* /usr/lib/varnish/vmods/libvmod_*.la;     rm -rf ~/.gnupg;     chown varnish /var/lib/varnish;     mkdir -p -m 1777 /var/lib/varnish/varnishd # buildkit
# Tue, 14 Jul 2026 17:58:41 GMT
WORKDIR /etc/varnish
# Tue, 14 Jul 2026 17:58:41 GMT
COPY scripts/ /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 17:58:41 GMT
COPY default.vcl /etc/varnish/ # buildkit
# Tue, 14 Jul 2026 17:58:41 GMT
COPY index.html /var/www/html/ # buildkit
# Tue, 14 Jul 2026 17:58:41 GMT
ENTRYPOINT ["/usr/local/bin/docker-varnish-entrypoint"]
# Tue, 14 Jul 2026 17:58:41 GMT
USER varnish
# Tue, 14 Jul 2026 17:58:41 GMT
EXPOSE map[80/tcp:{} 8443/tcp:{}]
# Tue, 14 Jul 2026 17:58:41 GMT
CMD []
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb4d8aa892c41184a1923c223f64f1b89bb9734f5a14e8015f29e67c84f74d84`  
		Last Modified: Tue, 14 Jul 2026 17:58:56 GMT  
		Size: 88.7 MB (88721849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98aa80fb57659661aeb21e5455bb87d436e064edd7ec1b6a5807a9b95caada62`  
		Last Modified: Tue, 14 Jul 2026 17:58:54 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b794725c116bd583540faa8e3869b55eacd539515c2d192604d43619ecaf724f`  
		Last Modified: Tue, 14 Jul 2026 17:58:53 GMT  
		Size: 1.0 KB (1006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:953e94d63dfe9abc4d0935c4b079c491caa63777e4d8bf3ffc276b0a92aae907`  
		Last Modified: Tue, 14 Jul 2026 17:58:54 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `varnish:fresh` - unknown; unknown

```console
$ docker pull varnish@sha256:37a721df8a30b9b540006d3dbdb8c93d3c07c43f59ae66456add79b7f6f8adac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.4 KB (20421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4da822d7d06e3296f528434ffc2e9ea436f4973acfd1799c32a0f7dfce49806`

```dockerfile
```

-	Layers:
	-	`sha256:1f898191fad47116218d186ad4e5ac9d28fd42d69a46081c8623956ba73ead62`  
		Last Modified: Tue, 14 Jul 2026 17:58:54 GMT  
		Size: 20.4 KB (20421 bytes)  
		MIME: application/vnd.in-toto+json
