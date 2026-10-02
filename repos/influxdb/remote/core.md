## `influxdb:core`

```console
$ docker pull influxdb@sha256:19aa6e68a0627d8d7bd7cc3b7b26585fdb4c8bfa51c745e6abca16d32d818548
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:core` - linux; amd64

```console
$ docker pull influxdb@sha256:836dc105771ceb55c2a88dadd68327b290f9ebbccd43588d679fa3545e3ba570
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.1 MB (158143726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d319338b36390bfd6a08ddc75aafe7024ed87c425dd8d1d45a5351f1bddb04d`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Thu, 01 Oct 2026 23:50:07 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Thu, 01 Oct 2026 23:50:07 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Thu, 01 Oct 2026 23:50:14 GMT
ENV INFLUXDB_VERSION=3.12.0
# Thu, 01 Oct 2026 23:50:14 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Thu, 01 Oct 2026 23:50:14 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Thu, 01 Oct 2026 23:50:14 GMT
USER influxdb3
# Thu, 01 Oct 2026 23:50:14 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Thu, 01 Oct 2026 23:50:14 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Thu, 01 Oct 2026 23:50:14 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Thu, 01 Oct 2026 23:50:14 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Thu, 01 Oct 2026 23:50:14 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Thu, 01 Oct 2026 23:50:14 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Thu, 01 Oct 2026 23:50:14 GMT
EXPOSE map[8181/tcp:{}]
# Thu, 01 Oct 2026 23:50:14 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Thu, 01 Oct 2026 23:50:14 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19d513a61648438f4f0cddb68ca2d88b8fc4d697ed772b875c0961f6d3ab3812`  
		Last Modified: Thu, 01 Oct 2026 23:50:34 GMT  
		Size: 9.0 MB (9039354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cf7beeae1802aeb868f9b3487ac585289cc41537899e264693eae1515caaad7`  
		Last Modified: Thu, 01 Oct 2026 23:50:34 GMT  
		Size: 3.6 KB (3648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62acfd041ade67122030e2cf225f3f217d38b9b4ea9c02d27cd93f717a7d70d0`  
		Last Modified: Thu, 01 Oct 2026 23:50:37 GMT  
		Size: 119.3 MB (119335940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:396f46c3c6a3c19f24eff4ca26ebd38942029365cc7cec13b394adfc0df3eda0`  
		Last Modified: Thu, 01 Oct 2026 23:50:34 GMT  
		Size: 518.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e426fd256adaecfdc93553c2b6e97dcbaeefba693f170be8860ac6ebc70b407`  
		Last Modified: Thu, 01 Oct 2026 23:50:35 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:core` - unknown; unknown

```console
$ docker pull influxdb@sha256:2cc66e3edaa68d943b7e0e5cdd1ddc1fe6995c7023b1f2ca3e9238a918a4f02d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2326284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5ba3c437442e9adc59ecfc74541c77e57ed7db5943889828bdcc4ede3943114`

```dockerfile
```

-	Layers:
	-	`sha256:24d377570279e029a6df6e4104867b189b7cf11421ee5c08d02d939f1407088f`  
		Last Modified: Thu, 01 Oct 2026 23:50:34 GMT  
		Size: 2.3 MB (2308643 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7cc0cc0b2e43b2aedf41440ecf171d3c57c89bacf8a90cddc4cca63651edf151`  
		Last Modified: Thu, 01 Oct 2026 23:50:34 GMT  
		Size: 17.6 KB (17641 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:core` - linux; arm64 variant v8

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

### `influxdb:core` - unknown; unknown

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
