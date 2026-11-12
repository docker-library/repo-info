## `influxdb:3-enterprise`

```console
$ docker pull influxdb@sha256:b3e92b2d12a843a7a64f20b1926b248d0d0e9cc77327b6427ecd792c737a1e51
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3-enterprise` - linux; amd64

```console
$ docker pull influxdb@sha256:85456d3b972771e3de6c0d20fd8daf1b0042d01735778203a805ce002efe5cdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.1 MB (202123489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e5015b528631325da275c057f1090520de5bcac03e80dc3ed6c67e145842110`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Thu, 29 Oct 2026 23:31:44 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Thu, 29 Oct 2026 23:31:44 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Thu, 29 Oct 2026 23:32:26 GMT
ENV INFLUXDB_VERSION=3.12.2
# Thu, 29 Oct 2026 23:32:26 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Thu, 29 Oct 2026 23:32:26 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Thu, 29 Oct 2026 23:32:26 GMT
USER influxdb3
# Thu, 29 Oct 2026 23:32:26 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Thu, 29 Oct 2026 23:32:26 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Thu, 29 Oct 2026 23:32:26 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Thu, 29 Oct 2026 23:32:26 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Thu, 29 Oct 2026 23:32:26 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Thu, 29 Oct 2026 23:32:26 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Thu, 29 Oct 2026 23:32:26 GMT
EXPOSE map[8181/tcp:{}]
# Thu, 29 Oct 2026 23:32:26 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Thu, 29 Oct 2026 23:32:26 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c03ab86dc441885fff89506530ee6010b0f90608ff6fe3f9a71bfd5443512ac0`  
		Last Modified: Thu, 29 Oct 2026 23:32:08 GMT  
		Size: 6.6 MB (6633007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46d8174dddb7afef120ae8259d3fbf9eb75ac7154e16db25a632358f29e8d678`  
		Last Modified: Thu, 29 Oct 2026 23:32:07 GMT  
		Size: 3.7 KB (3652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bcb860a5b533900d5fb1019b24aeccb91c14105fbe3a10b65e4a9e4f7ebeaf8`  
		Last Modified: Thu, 29 Oct 2026 23:32:52 GMT  
		Size: 165.7 MB (165718550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d30aeb58d63b6e40b1cadf4e9977de5da8ec8ffce55b1755ab0e1ca650b2518`  
		Last Modified: Thu, 29 Oct 2026 23:32:49 GMT  
		Size: 518.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9423e28e97fd622ef778c7d01bc24941623088aab877f52c04926b47ac204a76`  
		Last Modified: Thu, 29 Oct 2026 23:32:49 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:9793174f440277aff863662553ab4c3021ace64fba7b87e94c2aa214ea351010
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2325887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9dbd80c4318307ba4bff83fc107f68a120c464995e2049c0563ebd1e030bb5c`

```dockerfile
```

-	Layers:
	-	`sha256:96ea5fef91d21453fd942a399ecf7e670fe9bd881b07d7a4cb878d682587c59b`  
		Last Modified: Thu, 29 Oct 2026 23:32:49 GMT  
		Size: 2.3 MB (2308067 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b2546510158ba0a78e47389028adaaa84f6e95d22c4f4205ec59a6dadd67f30`  
		Last Modified: Thu, 29 Oct 2026 23:32:49 GMT  
		Size: 17.8 KB (17820 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3-enterprise` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:cddf4f702a6597e36fd5feee911ae743d1910271e45029e9e8b5768bcf93357a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.5 MB (189469951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b150d37a266f3777eba2b3f0091c7c0edbe1702e26cab892f96a8a615a9c368`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:31:42 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Wed, 11 Nov 2026 23:31:42 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Wed, 11 Nov 2026 23:32:26 GMT
ENV INFLUXDB_VERSION=3.12.2
# Wed, 11 Nov 2026 23:32:26 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Wed, 11 Nov 2026 23:32:26 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:32:26 GMT
USER influxdb3
# Wed, 11 Nov 2026 23:32:26 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Wed, 11 Nov 2026 23:32:26 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Wed, 11 Nov 2026 23:32:26 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Wed, 11 Nov 2026 23:32:26 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Wed, 11 Nov 2026 23:32:26 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Wed, 11 Nov 2026 23:32:26 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Wed, 11 Nov 2026 23:32:26 GMT
EXPOSE map[8181/tcp:{}]
# Wed, 11 Nov 2026 23:32:26 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Wed, 11 Nov 2026 23:32:26 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da2a286e2953c7f0e3c65e644b02f87bc7c6b279215179bf507e6e7a3e185127`  
		Last Modified: Wed, 11 Nov 2026 23:32:08 GMT  
		Size: 6.6 MB (6648156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0230db113d76e607f7ad61eadd58b8476e17f82f4015a4f7575946a6d78da914`  
		Last Modified: Wed, 11 Nov 2026 23:32:07 GMT  
		Size: 3.7 KB (3651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64dafee2ef02720ef2a06f610a7812ff24b9d6a529b1d6195a7316f0ddf0b1cf`  
		Last Modified: Wed, 11 Nov 2026 23:32:50 GMT  
		Size: 153.9 MB (153852219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cf4ade063ad94478c557708b4570ce4b086b331b9976f64812859cbd91294f7`  
		Last Modified: Wed, 11 Nov 2026 23:32:47 GMT  
		Size: 517.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc9a033bfdbef888bffb0e4e5ac2805501d92b936f3dd3545572569721bba812`  
		Last Modified: Wed, 11 Nov 2026 23:32:47 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:1a5c162b43f1270a32267ef8a45518203450da137355ca9109674d828a0fea6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2327723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ed5a8d688f676cc7ea2be5eaa3e4fdfd75f629d176016cefc377adbbc8ff584`

```dockerfile
```

-	Layers:
	-	`sha256:43c413647c27f8c4f3ecbd92a7acb66386445de5cf94e93fe8834f105d03e52a`  
		Last Modified: Wed, 11 Nov 2026 23:32:47 GMT  
		Size: 2.3 MB (2309753 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9384406baeb4b1b19a5818737244d9855982e859c434516042557902086a9112`  
		Last Modified: Wed, 11 Nov 2026 23:32:47 GMT  
		Size: 18.0 KB (17970 bytes)  
		MIME: application/vnd.in-toto+json
