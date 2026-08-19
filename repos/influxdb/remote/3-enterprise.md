## `influxdb:3-enterprise`

```console
$ docker pull influxdb@sha256:71c5e14a5d696b9339f1f3313cc349024b6d963dc33c8e8808e75043b6fe22c4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3-enterprise` - linux; amd64

```console
$ docker pull influxdb@sha256:0d87c06f05222ba5300a22e51d4601beec718ed99165f4371c83af0717371d76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.8 MB (182812257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b382f5c8bf5ec202c2b4244ce5cd74b69d962590c59ab977c6a976190bea800c`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:22:50 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 18 Aug 2026 19:22:50 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 18 Aug 2026 19:23:38 GMT
ENV INFLUXDB_VERSION=3.11.1
# Tue, 18 Aug 2026 19:23:38 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 18 Aug 2026 19:23:38 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 18 Aug 2026 19:23:38 GMT
USER influxdb3
# Tue, 18 Aug 2026 19:23:38 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 18 Aug 2026 19:23:38 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 18 Aug 2026 19:23:38 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 18 Aug 2026 19:23:38 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 18 Aug 2026 19:23:38 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 18 Aug 2026 19:23:38 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Tue, 18 Aug 2026 19:23:38 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 18 Aug 2026 19:23:38 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 18 Aug 2026 19:23:38 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9f7fe0d14e778288aba84107cb97ba8ce6306c58621f419f9f8b645dff9efc2`  
		Last Modified: Tue, 18 Aug 2026 19:23:18 GMT  
		Size: 6.6 MB (6628185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ac413070ccf417971e293ff6a7598c48b69a17335969662d8b05ef9ad5986ad`  
		Last Modified: Tue, 18 Aug 2026 19:23:18 GMT  
		Size: 3.7 KB (3657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82c9ad0ded8c0bf24bb2d3d3c50439204ecae22111ccdc1fa049eaf5a00cd331`  
		Last Modified: Tue, 18 Aug 2026 19:24:03 GMT  
		Size: 146.4 MB (146426938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6270fed7330c730b96fb0cfcde4b5edeb9660083c8f3e2f4ba4a7e36679f164b`  
		Last Modified: Tue, 18 Aug 2026 19:24:00 GMT  
		Size: 521.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5a9631a1cce46741b8db5bf04fc340b2e68b725f8d27cce3a17d8de740c1c70`  
		Last Modified: Tue, 18 Aug 2026 19:24:00 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:0163ec3bce98b35c48cee78aa29d65ac455be5d457a8e8e85ee6ca2e0927665a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96d029eb4cb7f63db71ddf6b302ad0b5b588e868434d7afe44b30cf541ec6cac`

```dockerfile
```

-	Layers:
	-	`sha256:28c9a70e43c8c4e6e38d191f05a521c901095974c87d97c1c44bcc45854d2fcd`  
		Last Modified: Tue, 18 Aug 2026 19:24:00 GMT  
		Size: 2.3 MB (2294447 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3fb2db05095e8561d8ceec93b4511da03c7379b272a9232f4652614d447da4e1`  
		Last Modified: Tue, 18 Aug 2026 19:24:00 GMT  
		Size: 17.8 KB (17821 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3-enterprise` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:75765de5c102adac842864ed3d9c2d6faa664aea0c54e7014aaf340dd9a30d14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.3 MB (173333853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:862c1e2e5798bd5444f060fd847fde1f1df7c7dc4b6d3dca5003edfd9b01a480`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:22:47 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 18 Aug 2026 19:22:47 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 18 Aug 2026 19:23:33 GMT
ENV INFLUXDB_VERSION=3.11.1
# Tue, 18 Aug 2026 19:23:33 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 18 Aug 2026 19:23:33 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 18 Aug 2026 19:23:33 GMT
USER influxdb3
# Tue, 18 Aug 2026 19:23:33 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 18 Aug 2026 19:23:33 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 18 Aug 2026 19:23:33 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 18 Aug 2026 19:23:33 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 18 Aug 2026 19:23:33 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 18 Aug 2026 19:23:33 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Tue, 18 Aug 2026 19:23:33 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 18 Aug 2026 19:23:33 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 18 Aug 2026 19:23:33 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f249ca4e5af0779972f19ff326dcb2fc6ea6a0e4c52c632cb93b60cff0d2deb1`  
		Last Modified: Tue, 18 Aug 2026 19:23:11 GMT  
		Size: 6.6 MB (6642258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d1e30ebb943b9800ceba8507c130ff0d4739baa6699f23a5d9a6549e14108da`  
		Last Modified: Tue, 18 Aug 2026 19:23:11 GMT  
		Size: 3.7 KB (3654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b082ea95486a46bb86fa4289a31b7ae5c00c6de71ee7632fe172c92fd0398e4a`  
		Last Modified: Tue, 18 Aug 2026 19:23:56 GMT  
		Size: 137.8 MB (137800036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e2d72de720d46242ca44f325bbace62709b2ce32b9d30cd7dc89ebca7c54088`  
		Last Modified: Tue, 18 Aug 2026 19:23:53 GMT  
		Size: 520.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b899ff39d28141e089a99e53f49e3a642546b1066412b3e2f3bc6c4e051dd40`  
		Last Modified: Tue, 18 Aug 2026 19:23:53 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:a60e93c40a1459fd16206d08f5ac834339339be517827977846435db24eadc39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2313499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:200718a4c24914a525c05b90b42ce9d5ca63f91d1c73604f288efd02df01faae`

```dockerfile
```

-	Layers:
	-	`sha256:297774bd19454821834bec839a394ade139c73c2c393e4f458f6320f8ec71a18`  
		Last Modified: Tue, 18 Aug 2026 19:23:53 GMT  
		Size: 2.3 MB (2295529 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1dd134abcdf576cedfea87c3d93a4374610b6d71c8a3e071c70f948f6677a9cf`  
		Last Modified: Tue, 18 Aug 2026 19:23:52 GMT  
		Size: 18.0 KB (17970 bytes)  
		MIME: application/vnd.in-toto+json
