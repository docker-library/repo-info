## `influxdb:enterprise`

```console
$ docker pull influxdb@sha256:9386421d69b7c315116217242c34f54898b1638c6b524f59137ab4e3a8770c34
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:enterprise` - linux; amd64

```console
$ docker pull influxdb@sha256:70f210de3dfda7c6ac65e3492558bc47908eecd693a47b1e5ff2ae5808919683
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.6 MB (164621836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13e86b5d6b9ffe758b958c8d107e065212bd4add422576c5018fff7973e5a746`
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
# Tue, 14 Jul 2026 17:44:01 GMT
ENV INFLUXDB_VERSION=3.10.3
# Tue, 14 Jul 2026 17:44:01 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 14 Jul 2026 17:44:01 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 14 Jul 2026 17:44:01 GMT
USER influxdb3
# Tue, 14 Jul 2026 17:44:01 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 14 Jul 2026 17:44:01 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 14 Jul 2026 17:44:01 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 14 Jul 2026 17:44:01 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 14 Jul 2026 17:44:01 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 14 Jul 2026 17:44:01 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Tue, 14 Jul 2026 17:44:01 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 14 Jul 2026 17:44:01 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 14 Jul 2026 17:44:01 GMT
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
	-	`sha256:d7b8d65ff9d140d20d89312c603f5aa2bcf4548561c5cd62fa534dbd3b04625b`  
		Last Modified: Tue, 14 Jul 2026 17:44:25 GMT  
		Size: 128.3 MB (128254993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80e90d756c5365df953a4cbd6a9e5aef93e9fea7bde7d1bcd5b06003e07be7bc`  
		Last Modified: Tue, 14 Jul 2026 17:44:22 GMT  
		Size: 521.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e019d0e2e6767e9d920e0b168901397de4b4d3a569cdb4b2bd56e6355f9e93d9`  
		Last Modified: Tue, 14 Jul 2026 17:44:21 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:390cd43ed2f50e7b0fd0152fe94338b6ccc7f6fbbf90f5d253ff40560b08399b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cd4adce968ebb23394c715a3aae13a61d7e6134650093e9d8d08c93f5e5ecf5`

```dockerfile
```

-	Layers:
	-	`sha256:923aa9c26aff499bc5c779b9658c48c1a90c8364fd04528aa397ca1b432a5d54`  
		Last Modified: Tue, 14 Jul 2026 17:44:21 GMT  
		Size: 2.3 MB (2294421 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b94cd785baddd6aa25550dffe4d191027e0fb96f364820c4f0ea4f46855d4cb7`  
		Last Modified: Tue, 14 Jul 2026 17:44:22 GMT  
		Size: 17.8 KB (17821 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:enterprise` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:a35bf14b789f070330047881693ea9a0a90c83b31936aeb7e2f3d5c7e0ea7c45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.6 MB (155578434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:312c817a804596e9c1202ef06ef80b3e3cb6b500e91901cb1af27600e9912c4a`
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
# Tue, 14 Jul 2026 17:43:34 GMT
ENV INFLUXDB_VERSION=3.10.3
# Tue, 14 Jul 2026 17:43:34 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 14 Jul 2026 17:43:34 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 14 Jul 2026 17:43:34 GMT
USER influxdb3
# Tue, 14 Jul 2026 17:43:35 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 14 Jul 2026 17:43:35 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 14 Jul 2026 17:43:35 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 14 Jul 2026 17:43:35 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 14 Jul 2026 17:43:35 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 14 Jul 2026 17:43:35 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Tue, 14 Jul 2026 17:43:35 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 14 Jul 2026 17:43:35 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 14 Jul 2026 17:43:35 GMT
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
	-	`sha256:aad953a6e7746274687778e47ed59332f4b2e66aca2a021609bb1ececa37208a`  
		Last Modified: Tue, 14 Jul 2026 17:43:55 GMT  
		Size: 120.0 MB (120048926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70e6455eec1c99fd2425fdc7d950fdc8e7841e42aa197a44bf8a8e8b1ec00bb6`  
		Last Modified: Tue, 14 Jul 2026 17:43:52 GMT  
		Size: 519.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccd4e99d0077a5c26579c9cf30383c703f53177014766db53dc92a5a2fd53388`  
		Last Modified: Tue, 14 Jul 2026 17:43:52 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:d5f6a29ca779038ac79f653ef43edf5c49d56c3575726edc50b70c2150f28f4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2313473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e78fe21d44242e75279d9d2b849ee7c152793d6eb562fa4255941575a03ac7db`

```dockerfile
```

-	Layers:
	-	`sha256:24ff4b6b12f24a9d7153cfd3d2f6ee9596c595ccfe9edc8727a9056ced853092`  
		Last Modified: Tue, 14 Jul 2026 17:43:52 GMT  
		Size: 2.3 MB (2295503 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b2df99f5c746235f12df535c4541f491a4e2cb7c94e2b2f8e84343da95b0236e`  
		Last Modified: Tue, 14 Jul 2026 17:43:52 GMT  
		Size: 18.0 KB (17970 bytes)  
		MIME: application/vnd.in-toto+json
