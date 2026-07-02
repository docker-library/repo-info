## `influxdb:3-enterprise`

```console
$ docker pull influxdb@sha256:615e24f191b17b5c2c6328b6dfdcd9cec3fe23ef9e1a69875b293ad908562a35
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3-enterprise` - linux; amd64

```console
$ docker pull influxdb@sha256:475c25516b6f1461a1be676213829b848ac0b8bf8bca68e71bbd2d6177e9ec25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.6 MB (164590993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffc65b174eff3b6657317497dd797b6b1f1e8b160bc71a6aa6853cc05c40bf58`
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
# Thu, 02 Jul 2026 02:29:37 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Thu, 02 Jul 2026 02:29:37 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Thu, 02 Jul 2026 02:29:43 GMT
ENV INFLUXDB_VERSION=3.10.2
# Thu, 02 Jul 2026 02:29:43 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Thu, 02 Jul 2026 02:29:43 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:29:43 GMT
USER influxdb3
# Thu, 02 Jul 2026 02:29:43 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Thu, 02 Jul 2026 02:29:43 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Thu, 02 Jul 2026 02:29:43 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Thu, 02 Jul 2026 02:29:43 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Thu, 02 Jul 2026 02:29:43 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Thu, 02 Jul 2026 02:29:43 GMT
ENV LOG_FILTER=info
# Thu, 02 Jul 2026 02:29:43 GMT
EXPOSE map[8181/tcp:{}]
# Thu, 02 Jul 2026 02:29:43 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Thu, 02 Jul 2026 02:29:43 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b16173d24f4868a8eb89560ab87957c647b1882051a9fa3d067784bbb1c85165`  
		Last Modified: Thu, 02 Jul 2026 02:30:05 GMT  
		Size: 6.6 MB (6626972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9d2430bcf57fef7a48793ce4fc6f5d2f8d8df6d85c581255b51686d95bce048`  
		Last Modified: Thu, 02 Jul 2026 02:30:04 GMT  
		Size: 3.7 KB (3655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d12fe65fae10080eb027bd42399224e66b5860146c4f8553649e317683df81a6`  
		Last Modified: Thu, 02 Jul 2026 02:30:08 GMT  
		Size: 128.2 MB (128224095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9a74cb36ac2d82a210a23a4cac7bff4c1ef786fb12397726e6fac2fc7a8f67f`  
		Last Modified: Thu, 02 Jul 2026 02:30:04 GMT  
		Size: 521.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74a6da886419f38bc9676d9ea5fed6bc6ac6a67591a578ed1473a088326043d5`  
		Last Modified: Thu, 02 Jul 2026 02:30:06 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:32905118300972246c103b994650db8fe111ba2319d9486694f859ab3df66598
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82a9a9554184eb901d8d4c46743aa951585e819f85f22e0714312be101d56c4f`

```dockerfile
```

-	Layers:
	-	`sha256:261baf80f1ec8be4ebc8aa6c94dd53ef839c3fc933306f25d24d4e4d40e385db`  
		Last Modified: Thu, 02 Jul 2026 02:30:05 GMT  
		Size: 2.3 MB (2294421 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a6a782962e4456a3acbdf9432b1890d7fb9db78a9f8107eba5c4fe702ef79fe1`  
		Last Modified: Thu, 02 Jul 2026 02:30:04 GMT  
		Size: 17.8 KB (17809 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3-enterprise` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:113aa8d20358ce1182ddc7eff829152abc9d0492767b0c711732138e4bf29514
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.6 MB (155573384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6821f913433ef8a4f410a703d3166bf894d0b8d5b0cdd5bec5d7a16bf09ac6ce`
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
# Thu, 02 Jul 2026 02:28:34 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Thu, 02 Jul 2026 02:28:34 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Thu, 02 Jul 2026 02:28:39 GMT
ENV INFLUXDB_VERSION=3.10.2
# Thu, 02 Jul 2026 02:28:39 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Thu, 02 Jul 2026 02:28:39 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:28:39 GMT
USER influxdb3
# Thu, 02 Jul 2026 02:28:39 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Thu, 02 Jul 2026 02:28:39 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Thu, 02 Jul 2026 02:28:39 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Thu, 02 Jul 2026 02:28:39 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Thu, 02 Jul 2026 02:28:39 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Thu, 02 Jul 2026 02:28:39 GMT
ENV LOG_FILTER=info
# Thu, 02 Jul 2026 02:28:39 GMT
EXPOSE map[8181/tcp:{}]
# Thu, 02 Jul 2026 02:28:39 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Thu, 02 Jul 2026 02:28:39 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:822903170ec125e9642f4794077938a3114f2b186e00c9a86bcb68ed73ef99c8`  
		Last Modified: Thu, 02 Jul 2026 02:28:58 GMT  
		Size: 6.6 MB (6641911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c421bc386f4cacfe437d43a326b98c4a35702606b5088c816efa805afdf6015`  
		Last Modified: Thu, 02 Jul 2026 02:28:57 GMT  
		Size: 3.6 KB (3649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31a7bb409f1803d1070c348b7926dd2692f0530a4ab81651196e9ac68d7eacab`  
		Last Modified: Thu, 02 Jul 2026 02:29:01 GMT  
		Size: 120.0 MB (120042974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08494702d0012bebaeaaef346b2dff85b98f7804e787a054c771416104a603c4`  
		Last Modified: Thu, 02 Jul 2026 02:28:57 GMT  
		Size: 521.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcea41360dc397b047f1f00beaaee054a7cc499146881f522f653ababecc552f`  
		Last Modified: Thu, 02 Jul 2026 02:28:59 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:b28efcb54368679b5603430864738aacb4af95e5d652638af145bdbc59b32d06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2313461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14b91953a7ecb2c86e18c39e012cf4840a2e1ff25cd1ec6e1bf35402d5da505c`

```dockerfile
```

-	Layers:
	-	`sha256:538040557295e3c63eb0bb4b0418567e3e3869445d4b4f2077bed47cff7eaf9d`  
		Last Modified: Thu, 02 Jul 2026 02:28:57 GMT  
		Size: 2.3 MB (2295503 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c9510cc6129aea151225093d352d2ab2715dc77effd029e37652c40e5c9755e`  
		Last Modified: Thu, 02 Jul 2026 02:28:57 GMT  
		Size: 18.0 KB (17958 bytes)  
		MIME: application/vnd.in-toto+json
