## `influxdb:3-enterprise`

```console
$ docker pull influxdb@sha256:6c7075ab07ff9d94b0441dafa06b6432fd4edb50068be6f1a3092778703d3a51
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3-enterprise` - linux; amd64

```console
$ docker pull influxdb@sha256:eb39671b43dc4f3f0613fa62e7205f4150a4d2ab03f0a9e7ea79dd07916c6a63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.1 MB (183086868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a0987248734dfc76f0b0514886e8d3860a2ef320022224dc4f9c1cf7925a9d6`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:32:23 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Wed, 09 Sep 2026 02:32:23 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Wed, 09 Sep 2026 02:32:30 GMT
ENV INFLUXDB_VERSION=3.11.4
# Wed, 09 Sep 2026 02:32:30 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Wed, 09 Sep 2026 02:32:30 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:32:30 GMT
USER influxdb3
# Wed, 09 Sep 2026 02:32:30 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Wed, 09 Sep 2026 02:32:30 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Wed, 09 Sep 2026 02:32:30 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Wed, 09 Sep 2026 02:32:30 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Wed, 09 Sep 2026 02:32:30 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Wed, 09 Sep 2026 02:32:30 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Wed, 09 Sep 2026 02:32:30 GMT
EXPOSE map[8181/tcp:{}]
# Wed, 09 Sep 2026 02:32:30 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Wed, 09 Sep 2026 02:32:30 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be4a72bbd2aead85edaa2728f29b8bc47b6f3ae0bf3fb39131e3bbbd26a59b07`  
		Last Modified: Wed, 09 Sep 2026 02:32:51 GMT  
		Size: 6.6 MB (6631484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6970f67f6188bcadb3e87dc9867813d201eab5b66f7e4862f041e78befcda6d6`  
		Last Modified: Wed, 09 Sep 2026 02:32:51 GMT  
		Size: 3.7 KB (3651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538c3a6d0d47bd16f7af2f91f4189681f26fea8da228953b1b2f9e31ab6c0e41`  
		Last Modified: Wed, 09 Sep 2026 02:32:54 GMT  
		Size: 146.7 MB (146687810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f924245bc40271b0e7067cc39274be52f6818f8143c823755ef55d08ecc76ca`  
		Last Modified: Wed, 09 Sep 2026 02:32:51 GMT  
		Size: 520.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b0ea6a54cac8094412111c587d7980a28ca37eee6e7e943054473800865a825`  
		Last Modified: Wed, 09 Sep 2026 02:32:52 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:cd658b3200dba43e897f4dd1a73393b48ac11ba7fafc70d524f1faa866d60ee2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2326502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55e3a7e0a8561822393c8aa962438d8788de680df6a9aaa2565d718b474ba2e7`

```dockerfile
```

-	Layers:
	-	`sha256:2cadd7252e93e572c19d37bb3f289620997aa16a2946d7027f3101a56d60842f`  
		Last Modified: Wed, 09 Sep 2026 02:32:51 GMT  
		Size: 2.3 MB (2308681 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a3007390c4e63294b47b74e6bd2935b6b74cb07fc5d72344892dd49ed34b350`  
		Last Modified: Wed, 09 Sep 2026 02:32:51 GMT  
		Size: 17.8 KB (17821 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3-enterprise` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:908d5830fac117e85753b866aa7482d216733b81d519516b4ead9b40153821f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173733806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18ca72fb87a7b65d69c88eb69641c42485ca7feb7b2824eb589405cba3d586ab`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:27:09 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Wed, 09 Sep 2026 02:27:09 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Wed, 09 Sep 2026 02:27:46 GMT
ENV INFLUXDB_VERSION=3.11.4
# Wed, 09 Sep 2026 02:27:46 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Wed, 09 Sep 2026 02:27:46 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:27:46 GMT
USER influxdb3
# Wed, 09 Sep 2026 02:27:47 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Wed, 09 Sep 2026 02:27:47 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Wed, 09 Sep 2026 02:27:47 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Wed, 09 Sep 2026 02:27:47 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Wed, 09 Sep 2026 02:27:47 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Wed, 09 Sep 2026 02:27:47 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Wed, 09 Sep 2026 02:27:47 GMT
EXPOSE map[8181/tcp:{}]
# Wed, 09 Sep 2026 02:27:47 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Wed, 09 Sep 2026 02:27:47 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbfdd2674e936f1925214589e18adf511683673e906c64cb483a92d524967649`  
		Last Modified: Wed, 09 Sep 2026 02:27:31 GMT  
		Size: 6.6 MB (6644855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdb9aa9bb27f3ca3dda464c64dbb10c6716b688896c530de9afb300fdd39ddc3`  
		Last Modified: Wed, 09 Sep 2026 02:27:30 GMT  
		Size: 3.6 KB (3648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dca808dcc472d66e57cdc0ad3ee8cae4eb727a240200ba8e60fb49cc45dd7da9`  
		Last Modified: Wed, 09 Sep 2026 02:28:08 GMT  
		Size: 138.1 MB (138144622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be9f6bf3c1bfe6fa37ea716a42a76ea8810ecde309abd5e5de26f5f0f4d304af`  
		Last Modified: Wed, 09 Sep 2026 02:28:05 GMT  
		Size: 518.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f983659ae093a92bf838df120a71ff79f6527c9825bf9a1b409a0adbb4e9764c`  
		Last Modified: Wed, 09 Sep 2026 02:28:06 GMT  
		Size: 148.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:12fa2a22371ac7f6b940f3c791d038c6c22e49cb34ee91de14797b9cee0154e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2327733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6587a48859a7c6b348bf8a6182c40a8b96de771dcdaeef1d078d69617a1bdf4`

```dockerfile
```

-	Layers:
	-	`sha256:9f597da5e8b4146f0e20fdb39d6f1c53d4bda29d18c2e2d0555420aef93b3e8e`  
		Last Modified: Wed, 09 Sep 2026 02:28:05 GMT  
		Size: 2.3 MB (2309763 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc98b4920e80627623684f33f88cbc4df4ab094f14874b04ce6909c106a7521c`  
		Last Modified: Wed, 09 Sep 2026 02:28:05 GMT  
		Size: 18.0 KB (17970 bytes)  
		MIME: application/vnd.in-toto+json
