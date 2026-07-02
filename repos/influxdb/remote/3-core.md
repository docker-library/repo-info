## `influxdb:3-core`

```console
$ docker pull influxdb@sha256:0b534010deb0ab0d32b4429758d2a768576ba21e57e30fba4af8ea5dcef5d3c9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3-core` - linux; amd64

```console
$ docker pull influxdb@sha256:aafc2cf3fa84cbf42bfea4f495f8de8fc1ea989d3a44777cbcaa2483ab4d2b3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.6 MB (149595186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c323ac6776022497c40a32dc7b045f99ceaedc552eb5dad555338fd964b63a24`
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
# Thu, 02 Jul 2026 02:29:34 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Thu, 02 Jul 2026 02:29:34 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Thu, 02 Jul 2026 02:29:41 GMT
ENV INFLUXDB_VERSION=3.10.1
# Thu, 02 Jul 2026 02:29:41 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Thu, 02 Jul 2026 02:29:41 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:29:41 GMT
USER influxdb3
# Thu, 02 Jul 2026 02:29:41 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Thu, 02 Jul 2026 02:29:41 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Thu, 02 Jul 2026 02:29:41 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Thu, 02 Jul 2026 02:29:41 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Thu, 02 Jul 2026 02:29:41 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Thu, 02 Jul 2026 02:29:41 GMT
ENV LOG_FILTER=info
# Thu, 02 Jul 2026 02:29:41 GMT
EXPOSE map[8181/tcp:{}]
# Thu, 02 Jul 2026 02:29:41 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Thu, 02 Jul 2026 02:29:41 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d38222571419e98d13dee5720079c14f6f7e380f6c77eb08d094caacdb554dd`  
		Last Modified: Thu, 02 Jul 2026 02:30:01 GMT  
		Size: 6.6 MB (6626975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:800b943e6cd2cb262218e2c554f2eca3ebd83cb648644724d2f6793d80d914e8`  
		Last Modified: Thu, 02 Jul 2026 02:30:00 GMT  
		Size: 3.7 KB (3655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:751eda3425d71ed9e48bf37a1ca8b28dfbe938bc8e0d4f1d5ac9d8d13d7deb0c`  
		Last Modified: Thu, 02 Jul 2026 02:30:03 GMT  
		Size: 113.2 MB (113228286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfb723d3274f4b5189a45c4295c99a41d2b4fbf9f8502309e25c3cf50b53bd0f`  
		Last Modified: Thu, 02 Jul 2026 02:30:00 GMT  
		Size: 519.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43d3bdb27b18adfe5f6fa4b9f8bdccca35ec31d29683133e914674416b01110f`  
		Last Modified: Thu, 02 Jul 2026 02:30:02 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:c98939164b675669d992b3a4a443c3aa0ba7877c7b2cb7ad15eccd490ee82548
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1291e0e68558195ada12a7cc5ab79bdbd94952d98d38957b22f5339915413a37`

```dockerfile
```

-	Layers:
	-	`sha256:0e13997436e155b5ab0568dc973395bfa744d2662c25f874e0d10a6438fb60b6`  
		Last Modified: Thu, 02 Jul 2026 02:30:00 GMT  
		Size: 2.3 MB (2294373 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:51823a20486815483c1b64da3aa9ce3d327b052cacd1cb5bedf8e86d6f49d39e`  
		Last Modified: Thu, 02 Jul 2026 02:30:01 GMT  
		Size: 17.6 KB (17629 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3-core` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:96bf986f2e120816f7035b325ec91220406217cb0c4d47a689ce85b333677d07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.8 MB (140785036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e47cbf1e9dd214044e02201e8b5968c5f750d4a281ae98dc70a1a7f725301716`
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
# Thu, 02 Jul 2026 02:28:35 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Thu, 02 Jul 2026 02:28:35 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Thu, 02 Jul 2026 02:28:41 GMT
ENV INFLUXDB_VERSION=3.10.1
# Thu, 02 Jul 2026 02:28:41 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Thu, 02 Jul 2026 02:28:41 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:28:41 GMT
USER influxdb3
# Thu, 02 Jul 2026 02:28:42 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Thu, 02 Jul 2026 02:28:42 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Thu, 02 Jul 2026 02:28:42 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Thu, 02 Jul 2026 02:28:42 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Thu, 02 Jul 2026 02:28:42 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Thu, 02 Jul 2026 02:28:42 GMT
ENV LOG_FILTER=info
# Thu, 02 Jul 2026 02:28:42 GMT
EXPOSE map[8181/tcp:{}]
# Thu, 02 Jul 2026 02:28:42 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Thu, 02 Jul 2026 02:28:42 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71769ac6c0ede7ce4e38cfcba389d20e08f2289a7e7e001124b469b9450cc6d5`  
		Last Modified: Thu, 02 Jul 2026 02:28:59 GMT  
		Size: 6.6 MB (6641951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f607ff5bcee0c10e7616bd709ef2e428fd532dae38571f1c852ed0d1cbb0ad59`  
		Last Modified: Thu, 02 Jul 2026 02:28:58 GMT  
		Size: 3.7 KB (3653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bc48c7148267b92a8027bb5ba546bf6d5813f647f085bc39009ee6a0a804f9f`  
		Last Modified: Thu, 02 Jul 2026 02:29:01 GMT  
		Size: 105.3 MB (105254584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e563ccdbe1de20c0459943b2f87a4215f359577b3e58161cda2dfbccbf553c00`  
		Last Modified: Thu, 02 Jul 2026 02:28:58 GMT  
		Size: 518.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e52e6f630e8e45d519469eb699be1bc4a1db17d8a52e943ba70166a5b3896bfd`  
		Last Modified: Thu, 02 Jul 2026 02:28:59 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:5c3528e160f7e62674e6471997ca42ee66631db44b4f900b6e1f4575285421cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2313233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2303474b6da9efa53c07872bc9f55bcbbc67526037ae8a309d46ebf6834d8536`

```dockerfile
```

-	Layers:
	-	`sha256:5039278bedb62262bcd7498b130533bde4a66835e9b7e7f5d9a199db9eaf6082`  
		Last Modified: Thu, 02 Jul 2026 02:28:58 GMT  
		Size: 2.3 MB (2295455 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a417bf280fcd872889bd568d24da5ec7c1a42ed4db4f528306c0f3b93c35474`  
		Last Modified: Thu, 02 Jul 2026 02:28:58 GMT  
		Size: 17.8 KB (17778 bytes)  
		MIME: application/vnd.in-toto+json
