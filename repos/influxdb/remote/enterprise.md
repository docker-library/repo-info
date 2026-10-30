## `influxdb:enterprise`

```console
$ docker pull influxdb@sha256:804f7f495a57d3d830c1adfc7701fa52d4a93a1bdda3d89cf832b4d1cf83fb35
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:enterprise` - linux; amd64

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

### `influxdb:enterprise` - unknown; unknown

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

### `influxdb:enterprise` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:8d5d3ae26578d33fd4778b1d22003d482b4411abaf7661a6d0cd28aacb904898
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.4 MB (189442749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d7e8df29f7ede2aef84653c7f37b2b277e2ed7490c561a36b8484698f8c4a6b`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Thu, 29 Oct 2026 23:31:27 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Thu, 29 Oct 2026 23:31:27 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Thu, 29 Oct 2026 23:32:15 GMT
ENV INFLUXDB_VERSION=3.12.2
# Thu, 29 Oct 2026 23:32:15 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Thu, 29 Oct 2026 23:32:15 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Thu, 29 Oct 2026 23:32:15 GMT
USER influxdb3
# Thu, 29 Oct 2026 23:32:15 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Thu, 29 Oct 2026 23:32:15 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Thu, 29 Oct 2026 23:32:15 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Thu, 29 Oct 2026 23:32:15 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Thu, 29 Oct 2026 23:32:15 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Thu, 29 Oct 2026 23:32:15 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Thu, 29 Oct 2026 23:32:15 GMT
EXPOSE map[8181/tcp:{}]
# Thu, 29 Oct 2026 23:32:15 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Thu, 29 Oct 2026 23:32:15 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c67d498ede6a9144c0f91f039913f03f87b35ba8d744f2fa176fad898f89e72`  
		Last Modified: Thu, 29 Oct 2026 23:31:53 GMT  
		Size: 6.6 MB (6646006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7362055e32c675eec6294583a6d5a825516dbb167c08a38344aa2f90d0155138`  
		Last Modified: Thu, 29 Oct 2026 23:31:52 GMT  
		Size: 3.6 KB (3649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e32ed9d4a425914c9b4adddfb499e63177bb6828971715cb5acf37418fbc8e7f`  
		Last Modified: Thu, 29 Oct 2026 23:32:39 GMT  
		Size: 153.9 MB (153852300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28c00da26c02ef17703b77a0a54163ae6762c71ec9fdec48371a7ea8c75bbcc8`  
		Last Modified: Thu, 29 Oct 2026 23:32:36 GMT  
		Size: 520.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8424935a8e6ca358639aaa62590ec048c45dbf314ab45652339233dab899ad38`  
		Last Modified: Thu, 29 Oct 2026 23:32:36 GMT  
		Size: 148.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:9cc5480782165120ee05a3ef278aedd094fb63e283fdfddc36eaf00f907c6d84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2327119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b740e62fc72d1e61bcce271b78b22cc2aeb3a76a54452734965c67c5f22690e9`

```dockerfile
```

-	Layers:
	-	`sha256:dd4d20c10bdebb8a51922b9d47816658c8857cd5162666b2cddc4dfc013e3889`  
		Last Modified: Thu, 29 Oct 2026 23:32:36 GMT  
		Size: 2.3 MB (2309149 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f6f5be9d7f892ac99f1affba3531887a8b9f7e8e64b03bf0ac6279137782e0e1`  
		Last Modified: Thu, 29 Oct 2026 23:32:36 GMT  
		Size: 18.0 KB (17970 bytes)  
		MIME: application/vnd.in-toto+json
