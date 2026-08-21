## `influxdb:3-core`

```console
$ docker pull influxdb@sha256:f4a6d4a76f0ed0a196cc997da472cd0b7ae52a766430493a1bead807ab8c1217
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3-core` - linux; amd64

```console
$ docker pull influxdb@sha256:3fd7b4c049281b59941473d2ccfa2776b37097c7a598557374ebb6bd723a19ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148752544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:657aa846b6ffad91a8f7ee9b316ee12305300e467d7b36760950420d25c54303`
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
# Fri, 21 Aug 2026 00:11:39 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 21 Aug 2026 00:11:39 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 21 Aug 2026 00:11:44 GMT
ENV INFLUXDB_VERSION=3.11.2
# Fri, 21 Aug 2026 00:11:44 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 21 Aug 2026 00:11:44 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 21 Aug 2026 00:11:44 GMT
USER influxdb3
# Fri, 21 Aug 2026 00:11:45 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 21 Aug 2026 00:11:45 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 21 Aug 2026 00:11:45 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 21 Aug 2026 00:11:45 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 21 Aug 2026 00:11:45 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 21 Aug 2026 00:11:45 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 21 Aug 2026 00:11:45 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 21 Aug 2026 00:11:45 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 21 Aug 2026 00:11:45 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fca5c734a9e8b1ee1738e726a6b0032a97524c9df918bb7d1ad9abc0b7179926`  
		Last Modified: Fri, 21 Aug 2026 00:12:03 GMT  
		Size: 6.6 MB (6628662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:869bfdd061f0884e41642343eb999dfa5725add2c0527afbecd0281e4bf75218`  
		Last Modified: Fri, 21 Aug 2026 00:12:03 GMT  
		Size: 3.7 KB (3654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1990311f832de26b9f2f8ead2190893c7b9aa4160de5411736659062f3a858a8`  
		Last Modified: Fri, 21 Aug 2026 00:12:05 GMT  
		Size: 112.4 MB (112366750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a29bc24595019267a11de33569bcca7e600c8eed2df21b5c8e67dcfe252c95a8`  
		Last Modified: Fri, 21 Aug 2026 00:12:03 GMT  
		Size: 521.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be8db16aca7e821f467be353e192d1749fe0ae4639ff0281ce4d3fe6b40c7f56`  
		Last Modified: Fri, 21 Aug 2026 00:12:04 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:81a23a22fcb7208c141df3e4014dfc86c54840e087e0ce40b01fa5ba19918ab1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d4479f805cd516263057be17f6e8324fe575449410f5565c3848961e24ee82a`

```dockerfile
```

-	Layers:
	-	`sha256:aa2056c057b63ec911cecd253150da4673159d7cc2d783a642a867bd99a3f79a`  
		Last Modified: Fri, 21 Aug 2026 00:12:03 GMT  
		Size: 2.3 MB (2294399 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b431d281ead2b2cbf70d3cb893e97d75f778d5357d8bf68884f54c4f246bf224`  
		Last Modified: Fri, 21 Aug 2026 00:12:02 GMT  
		Size: 17.6 KB (17640 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3-core` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:954889ddc239d076f5a2accc480561cb511e3991f1955cfc1fb20d12d1321514
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.0 MB (140020224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1f159333ef0277d4b0685067586020123c1bcb61324afd8ce1ba5b32e8b31de`
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
# Fri, 21 Aug 2026 00:11:30 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 21 Aug 2026 00:11:31 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 21 Aug 2026 00:11:39 GMT
ENV INFLUXDB_VERSION=3.11.2
# Fri, 21 Aug 2026 00:11:39 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 21 Aug 2026 00:11:39 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 21 Aug 2026 00:11:39 GMT
USER influxdb3
# Fri, 21 Aug 2026 00:11:40 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 21 Aug 2026 00:11:40 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 21 Aug 2026 00:11:40 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 21 Aug 2026 00:11:40 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 21 Aug 2026 00:11:40 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 21 Aug 2026 00:11:40 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 21 Aug 2026 00:11:40 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 21 Aug 2026 00:11:40 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 21 Aug 2026 00:11:40 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:196fac50616879f64c1bfb593c970fdca576f2cdb93dd79a862cde5c4ced73c7`  
		Last Modified: Fri, 21 Aug 2026 00:11:56 GMT  
		Size: 6.6 MB (6642945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67d3c987ea49a5a21f6960392531cc691e18d722059515df3259dd2a7baf55d7`  
		Last Modified: Fri, 21 Aug 2026 00:11:56 GMT  
		Size: 3.7 KB (3657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3e6cb4f07f841b318902907f29c695289029c300c43e54e0c43b711fe576884`  
		Last Modified: Fri, 21 Aug 2026 00:11:59 GMT  
		Size: 104.5 MB (104485718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc977fade2fc1da64e478206bd0a12f089fb1c2013ad72836cc16393b851e574`  
		Last Modified: Fri, 21 Aug 2026 00:11:56 GMT  
		Size: 519.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:643c2b6aa95ca9cdd8546749c7f0f77542322b23094265796eba101a6f2c946f`  
		Last Modified: Fri, 21 Aug 2026 00:11:57 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:52f43d318e993f3bf1102af10efcd431c1cb854ad05ab094a3db6fdbd9b50d59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2313271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6c68f7864c2b17a844f4b2ef7b6d3be1afe0b302d03b73fb3279259e73b23ae`

```dockerfile
```

-	Layers:
	-	`sha256:8b81a2105cabf39cbe112a3a431a30692975f95f6f3f38c25d1511bacd32a658`  
		Last Modified: Fri, 21 Aug 2026 00:11:56 GMT  
		Size: 2.3 MB (2295481 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:596ff1c375ac23dae3d89e88e74b3f0e12eb77d5320ad4fcae6ffb3cb4505ba6`  
		Last Modified: Fri, 21 Aug 2026 00:11:56 GMT  
		Size: 17.8 KB (17790 bytes)  
		MIME: application/vnd.in-toto+json
