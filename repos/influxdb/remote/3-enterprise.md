## `influxdb:3-enterprise`

```console
$ docker pull influxdb@sha256:73d7127741b0061f5a3a9289988ba4dde6c8e895cd045106750daed67658319b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3-enterprise` - linux; amd64

```console
$ docker pull influxdb@sha256:2e37f9be0581059d21942c82d7c06246b784c14daf1f3233f410ce3717d6db02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.8 MB (184838479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eb1a2b9a21d37d8b94502244b627afa4d468fbe27bbfd7199b2fff81f067b2f`
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
# Thu, 30 Jul 2026 19:32:19 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Thu, 30 Jul 2026 19:32:19 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Thu, 30 Jul 2026 19:32:26 GMT
ENV INFLUXDB_VERSION=3.11.0
# Thu, 30 Jul 2026 19:32:26 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Thu, 30 Jul 2026 19:32:26 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Thu, 30 Jul 2026 19:32:26 GMT
USER influxdb3
# Thu, 30 Jul 2026 19:32:26 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Thu, 30 Jul 2026 19:32:26 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Thu, 30 Jul 2026 19:32:26 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Thu, 30 Jul 2026 19:32:26 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Thu, 30 Jul 2026 19:32:26 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Thu, 30 Jul 2026 19:32:26 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Thu, 30 Jul 2026 19:32:26 GMT
EXPOSE map[8181/tcp:{}]
# Thu, 30 Jul 2026 19:32:26 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Thu, 30 Jul 2026 19:32:26 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e5a66f5596b08e54794a6a27c2d217b557a9c802fdddf81a75bfffd235a7b11`  
		Last Modified: Thu, 30 Jul 2026 19:32:49 GMT  
		Size: 9.0 MB (9033416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:250b4b3c73f3a03b2d488978bf1fd591a2b57c02107a3e117f70895532eb6985`  
		Last Modified: Thu, 30 Jul 2026 19:32:49 GMT  
		Size: 3.7 KB (3654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84b58c0cd082791102a73c7ff9897cdb114cb59cd5e041711b2ad7a184710ff5`  
		Last Modified: Thu, 30 Jul 2026 19:32:52 GMT  
		Size: 146.1 MB (146065140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d003c9e5df9b4017fe4f13d7b22df5fc84919af7af35ae78c4a8c65399492e8`  
		Last Modified: Thu, 30 Jul 2026 19:32:48 GMT  
		Size: 520.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b1d0bfe6a9d47989f7de5aca2baab6b931ffb0f38d00f5e903516b1adea639f`  
		Last Modified: Thu, 30 Jul 2026 19:32:50 GMT  
		Size: 148.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:dcef77e2459aa6785a97c4baca97e92ace43d3c1d71c18ede2e8e072dc6845f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8dc678bf5bbab1e2a866a2fca288838029f42120cfcbbb240bee83cdbdff222`

```dockerfile
```

-	Layers:
	-	`sha256:e8025ac0d34d363ce7ae6a230c87e85b415d28b916b1abb5c3d0fb54218bf0d4`  
		Last Modified: Thu, 30 Jul 2026 19:32:48 GMT  
		Size: 2.3 MB (2294421 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba4a8520064ba5ad3edd809a7daf2beaed7acbf70a4738da50526f124d19d4d6`  
		Last Modified: Thu, 30 Jul 2026 19:32:49 GMT  
		Size: 17.8 KB (17821 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3-enterprise` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:179edb9193bdf7053e0ca2037da2ba22ac024a521bb2c0bff6646f0ba3a540cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.1 MB (175126278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ebef5253fb9cb0e8bb47e7b1036010bfd9b58db46fd0ca050698699fd5811e8`
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
# Thu, 30 Jul 2026 19:59:21 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Thu, 30 Jul 2026 19:59:21 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Thu, 30 Jul 2026 19:59:28 GMT
ENV INFLUXDB_VERSION=3.11.0
# Thu, 30 Jul 2026 19:59:28 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Thu, 30 Jul 2026 19:59:28 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Thu, 30 Jul 2026 19:59:28 GMT
USER influxdb3
# Thu, 30 Jul 2026 19:59:28 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Thu, 30 Jul 2026 19:59:28 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Thu, 30 Jul 2026 19:59:28 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Thu, 30 Jul 2026 19:59:28 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Thu, 30 Jul 2026 19:59:28 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Thu, 30 Jul 2026 19:59:28 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Thu, 30 Jul 2026 19:59:28 GMT
EXPOSE map[8181/tcp:{}]
# Thu, 30 Jul 2026 19:59:28 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Thu, 30 Jul 2026 19:59:28 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e7e7733f32d1e8d3cd4e24a9906e95a0c97967e2aa1c0db5fd175659d8d96b1`  
		Last Modified: Thu, 30 Jul 2026 19:59:48 GMT  
		Size: 8.9 MB (8858782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b587c6249cc1b0bd15c806f7a2130676bb7a4ecdfe04934e0e7a88ffec1b6b85`  
		Last Modified: Thu, 30 Jul 2026 19:59:44 GMT  
		Size: 3.6 KB (3649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4db94aefd748487574b5b2feef3e5f452f288dba7b04053ff26065aeb5e2536b`  
		Last Modified: Thu, 30 Jul 2026 19:59:51 GMT  
		Size: 137.4 MB (137378998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7508515c52c5f81e9f474c89453b3dc010058cd1a864326859bea20ce4ac2b4`  
		Last Modified: Thu, 30 Jul 2026 19:59:47 GMT  
		Size: 520.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d5282e390ce29412cf320892548b6dac1c1dfb9f8808e0bce63d71aec4aa32c`  
		Last Modified: Thu, 30 Jul 2026 19:59:47 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:bc89c92cee59f930c453ed7fca9f0f6e6ef703ef1d0e6356eb05803cd762c05e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2313472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58e6d898a01e7946d209526fc9a0ee39671f1e6dde0732727ddbe2a5bd0bc488`

```dockerfile
```

-	Layers:
	-	`sha256:1437a45b7c7311189f5e776ef25f3fee1252bb11f65b89e8b1b22ce774d855f4`  
		Last Modified: Thu, 30 Jul 2026 19:59:47 GMT  
		Size: 2.3 MB (2295503 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:800e48b5cb491c82c1fd39b135b75f9a4180673422da7d2817d2877876ad3fa2`  
		Last Modified: Thu, 30 Jul 2026 19:59:47 GMT  
		Size: 18.0 KB (17969 bytes)  
		MIME: application/vnd.in-toto+json
