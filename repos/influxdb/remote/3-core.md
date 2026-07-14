## `influxdb:3-core`

```console
$ docker pull influxdb@sha256:3d525d6ba814ae173dfa18b13cc713fbd2057235ef2a5dd89729a1382baa41a6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3-core` - linux; amd64

```console
$ docker pull influxdb@sha256:dc3865129a8f14964f44e89e6eb7edb5b5433bad598064dbbb3dcd49ff06b92d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.6 MB (149595109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9963d29627e89492415e4e3ee75560ad1852d1ff8cb6b0f60f2fc569efc4c5b`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Tue, 14 Jul 2026 17:43:21 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 14 Jul 2026 17:43:21 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 14 Jul 2026 17:43:26 GMT
ENV INFLUXDB_VERSION=3.10.1
# Tue, 14 Jul 2026 17:43:26 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 14 Jul 2026 17:43:27 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 14 Jul 2026 17:43:27 GMT
USER influxdb3
# Tue, 14 Jul 2026 17:43:27 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 14 Jul 2026 17:43:27 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 14 Jul 2026 17:43:27 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 14 Jul 2026 17:43:27 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 14 Jul 2026 17:43:27 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 14 Jul 2026 17:43:27 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Tue, 14 Jul 2026 17:43:27 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 14 Jul 2026 17:43:27 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 14 Jul 2026 17:43:27 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c4ce1ac1a37326bb1ee4d4717cfe78cf03cb2e5ccb5c67fdeb13051e97d92ba`  
		Last Modified: Tue, 14 Jul 2026 17:43:46 GMT  
		Size: 6.6 MB (6626918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fc3fcfeed417b097c5e72b15b6c7f09470c5be991f5687fb4ace754d32f8754`  
		Last Modified: Tue, 14 Jul 2026 17:43:46 GMT  
		Size: 3.7 KB (3654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:942a410cf539fa9e206c964f0d553f4b87a32804cbb891967be2e5f862ee2ce3`  
		Last Modified: Tue, 14 Jul 2026 17:43:49 GMT  
		Size: 113.2 MB (113228267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a43a64a8d4e8dc3b45f5ca2ca2fe029a093442637724e2a16ac6de347c39c8d8`  
		Last Modified: Tue, 14 Jul 2026 17:43:46 GMT  
		Size: 521.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a993c3ceb66c21e51ca4018cd5a76be04d5aaf4fe2ab1467d21c69638e9a3f0`  
		Last Modified: Tue, 14 Jul 2026 17:43:47 GMT  
		Size: 148.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:3b040e6e764a20821466c9485d70be094b5f252bcacea1fe25e0acef8bc83de4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:693276aebd4e0422e7391e84141eeb967ba4b0c2c2658ec6dc5e9e6bfb97abbb`

```dockerfile
```

-	Layers:
	-	`sha256:4dda952ccc1cc6896f73e94231df049bc9697e9b5e839d0c5c7c3c520064b954`  
		Last Modified: Tue, 14 Jul 2026 17:43:46 GMT  
		Size: 2.3 MB (2294373 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ecf64ccd27df294e0166f5ef912a6fee32ced9aee7d59015d2d4eee5344597a6`  
		Last Modified: Tue, 14 Jul 2026 17:43:46 GMT  
		Size: 17.6 KB (17639 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3-core` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:8e1c0c598254f10400b53f7c74d36227d1d30925b6ff824063814315f1f13650
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.8 MB (140783952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02a418d4dfef91ef6e9f7667f82f5dd617ca06703cf1755a366449d8164c0339`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Tue, 14 Jul 2026 17:42:57 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 14 Jul 2026 17:42:58 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 14 Jul 2026 17:43:03 GMT
ENV INFLUXDB_VERSION=3.10.1
# Tue, 14 Jul 2026 17:43:03 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 14 Jul 2026 17:43:03 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 14 Jul 2026 17:43:03 GMT
USER influxdb3
# Tue, 14 Jul 2026 17:43:03 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 14 Jul 2026 17:43:03 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 14 Jul 2026 17:43:03 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 14 Jul 2026 17:43:03 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 14 Jul 2026 17:43:03 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 14 Jul 2026 17:43:03 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Tue, 14 Jul 2026 17:43:03 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 14 Jul 2026 17:43:03 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 14 Jul 2026 17:43:03 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eff225dce7b655dd5e1e57d29f75471a579cb58812ea46557d54dcdbc7a4d1b`  
		Last Modified: Tue, 14 Jul 2026 17:43:20 GMT  
		Size: 6.6 MB (6641005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f140b7847ae08da0148cd82f4bb3691dc84054d1df16a097d7eb61675398f57c`  
		Last Modified: Tue, 14 Jul 2026 17:43:19 GMT  
		Size: 3.7 KB (3655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5761dd955f0207f4fed66dec187473fd339037db68b87dcfd1c6a32604b4d269`  
		Last Modified: Tue, 14 Jul 2026 17:43:22 GMT  
		Size: 105.3 MB (105254441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f379d8008ec41319773bbcbbff0252c3fa1ed81dd471faa69be1c2182178d7c9`  
		Last Modified: Tue, 14 Jul 2026 17:43:19 GMT  
		Size: 521.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd48b5b79ceb99b3461f1829a65c2fcab9d221fe12c605da00fd8b00a20a7d87`  
		Last Modified: Tue, 14 Jul 2026 17:43:21 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:431472bbffb30c386dc61e00c6690031bd827b3b82ae9827ba490d6f295218be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2313245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad19e2f751ad2719594c93089b477609f827dd21e9e65fbc3ba14933a740f109`

```dockerfile
```

-	Layers:
	-	`sha256:54bcdae74c2ed635a10a127b26999f04d765e4b58c7645dbe5d8165ed202c7c9`  
		Last Modified: Tue, 14 Jul 2026 17:43:19 GMT  
		Size: 2.3 MB (2295455 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8860464cd2f33460e3f2f97027238c6094cad1413eb71ca5fadfe42ac854b36a`  
		Last Modified: Tue, 14 Jul 2026 17:43:19 GMT  
		Size: 17.8 KB (17790 bytes)  
		MIME: application/vnd.in-toto+json
