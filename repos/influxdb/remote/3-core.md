## `influxdb:3-core`

```console
$ docker pull influxdb@sha256:624d69bca6bf6fb174aca5a974e1d96e5c5486994e6ae35bc9b4fe02b9520076
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3-core` - linux; amd64

```console
$ docker pull influxdb@sha256:534135013148362e1bc3e76d4f166b1a9750ef9d99794a9680b9400396ed6182
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.1 MB (158144097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4b1090d57d74d3526abaf89af19bb7678549ae8187b02a06c5b2ff5fbc0cc7f`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:29:56 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 02 Oct 2026 01:29:56 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 02 Oct 2026 01:30:01 GMT
ENV INFLUXDB_VERSION=3.12.0
# Fri, 02 Oct 2026 01:30:01 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 02 Oct 2026 01:30:01 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:30:01 GMT
USER influxdb3
# Fri, 02 Oct 2026 01:30:01 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 02 Oct 2026 01:30:01 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 02 Oct 2026 01:30:01 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 02 Oct 2026 01:30:01 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 02 Oct 2026 01:30:01 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 02 Oct 2026 01:30:01 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 02 Oct 2026 01:30:01 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 02 Oct 2026 01:30:01 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 02 Oct 2026 01:30:01 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6e21c139091813c9290b9185590b823b17b1b72bd38e79e7d1bcdfcff49ca17`  
		Last Modified: Fri, 02 Oct 2026 01:30:20 GMT  
		Size: 9.0 MB (9039455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d885b701d5d669b3b37f9720aebb4874ef71967c07ff3eb390afd279362473c`  
		Last Modified: Fri, 02 Oct 2026 01:30:20 GMT  
		Size: 3.7 KB (3653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f317c9a39e3b5e6a211bad93cded6acc24e96fda66b40374a47ab1eeee0fe13`  
		Last Modified: Fri, 02 Oct 2026 01:30:23 GMT  
		Size: 119.3 MB (119335901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95b1d3c796f28b0c44da1743efdf54b600a9116f986799064db97d467e5de518`  
		Last Modified: Fri, 02 Oct 2026 01:30:20 GMT  
		Size: 518.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c124f09af4428703c1d763c52db8960b749e7bfce17dc73cc0068d99b7f93f98`  
		Last Modified: Fri, 02 Oct 2026 01:30:21 GMT  
		Size: 148.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:f6297b428fed0a903e6d6bf844bec1e037c84702dcf832ee6cd4d8c10600acb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2326284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08ef2363a7dec9c4bcae98bcdf3d1e9f63fd4e1ab981b0987d72a116cf04d0da`

```dockerfile
```

-	Layers:
	-	`sha256:1f99d81a9fdff641bd93341d9524478953e36275df2001da178cf9025cd0463b`  
		Last Modified: Fri, 02 Oct 2026 01:30:20 GMT  
		Size: 2.3 MB (2308643 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:907f8f756dd72d963f1a7b2b77c49f872db20837d268ab9dfdc77e800d8304da`  
		Last Modified: Fri, 02 Oct 2026 01:30:20 GMT  
		Size: 17.6 KB (17641 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3-core` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:69fecc08684d2144e36c1706ff3039b2cb08361a7ba1abb4ae1c8cce0a748430
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.8 MB (147831442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:683491b16341fcb1e345b21ce5e87ffb6df69dcc0ab4d5d5b3f003fa95f2b864`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:29:53 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 02 Oct 2026 01:29:53 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 02 Oct 2026 01:29:58 GMT
ENV INFLUXDB_VERSION=3.12.0
# Fri, 02 Oct 2026 01:29:58 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 02 Oct 2026 01:29:58 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:29:58 GMT
USER influxdb3
# Fri, 02 Oct 2026 01:29:58 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 02 Oct 2026 01:29:58 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 02 Oct 2026 01:29:58 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 02 Oct 2026 01:29:58 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 02 Oct 2026 01:29:58 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 02 Oct 2026 01:29:58 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 02 Oct 2026 01:29:58 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 02 Oct 2026 01:29:58 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 02 Oct 2026 01:29:58 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f9987e73c4ec27a3b64900740567f57d7c5a4f6f85ed600297b4c58308ef6ec`  
		Last Modified: Fri, 02 Oct 2026 01:30:16 GMT  
		Size: 8.9 MB (8908428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65a114dc4c67c4d2a214ec66ef6d4f65634dba5910d73051ac2b40aa32a1d926`  
		Last Modified: Fri, 02 Oct 2026 01:30:16 GMT  
		Size: 3.7 KB (3654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76e0a81909840459cc2d1baaba49e62abbbb5efa1ac522d3008a0012d52c65e8`  
		Last Modified: Fri, 02 Oct 2026 01:30:18 GMT  
		Size: 110.0 MB (109978606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df6f720defa31f1096d6ca0c73c7d6776fcff334ff842ded041a774cd49a51ce`  
		Last Modified: Fri, 02 Oct 2026 01:30:16 GMT  
		Size: 518.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1c5960469ba840f1b6b63dc92cd074f79812fabecf48a8ab602977a0ad1f342`  
		Last Modified: Fri, 02 Oct 2026 01:30:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:b34ddba78e219f81b9ea8be7ddf5a2c40eae9d894210a5069dec2825f399cc15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2327515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dd6276547f1aadd881bb4374a47e10401a63fb6b3cc254a18710872d55aec39`

```dockerfile
```

-	Layers:
	-	`sha256:d85da917b27ac883211c3e8ffca3ca69bfb37a5a9f8d83f3ef35370e6d6b589f`  
		Last Modified: Fri, 02 Oct 2026 01:30:16 GMT  
		Size: 2.3 MB (2309725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:33bdcb49971cbe5d2f0149493c9556b300b5dd78921e23ede438a15801bfc239`  
		Last Modified: Fri, 02 Oct 2026 01:30:16 GMT  
		Size: 17.8 KB (17790 bytes)  
		MIME: application/vnd.in-toto+json
