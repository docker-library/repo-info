## `influxdb:3-enterprise`

```console
$ docker pull influxdb@sha256:c9c06d1aab5f513a8a8670a61734850875009f896ca8acfb186e3aca13afb4c3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3-enterprise` - linux; amd64

```console
$ docker pull influxdb@sha256:beb3a1668427184536abfa23e6baffcff8356d43d013955e353debb74fc4d461
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.4 MB (201376814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ebad1caeccd63ff9d0f9216377e0d3d839c56850672d345456c79280e3d8476`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:30:56 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Sat, 17 Oct 2026 00:30:56 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Sat, 17 Oct 2026 00:31:05 GMT
ENV INFLUXDB_VERSION=3.12.1
# Sat, 17 Oct 2026 00:31:05 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Sat, 17 Oct 2026 00:31:05 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:31:05 GMT
USER influxdb3
# Sat, 17 Oct 2026 00:31:05 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Sat, 17 Oct 2026 00:31:05 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Sat, 17 Oct 2026 00:31:05 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Sat, 17 Oct 2026 00:31:05 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Sat, 17 Oct 2026 00:31:05 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Sat, 17 Oct 2026 00:31:05 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Sat, 17 Oct 2026 00:31:05 GMT
EXPOSE map[8181/tcp:{}]
# Sat, 17 Oct 2026 00:31:05 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Sat, 17 Oct 2026 00:31:05 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7cc138461648ba48eaf4d05d5f6bbea965121e96ca99829ecb34ae56309e1c5`  
		Last Modified: Sat, 17 Oct 2026 00:31:31 GMT  
		Size: 6.6 MB (6634999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99ff204509479e784dc673d2f4858087ee450f463cb17f773a69fb28ae0a0e0f`  
		Last Modified: Sat, 17 Oct 2026 00:31:31 GMT  
		Size: 3.7 KB (3653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cef918ba2043b07334271352ebfb881dc76a54d5cd1ad6f8f220ae83a90d429`  
		Last Modified: Sat, 17 Oct 2026 00:31:34 GMT  
		Size: 165.0 MB (164971731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:694089981e26e6859251962cb4523420e52557395cf851b5652f90bbdd5fd7b2`  
		Last Modified: Sat, 17 Oct 2026 00:31:30 GMT  
		Size: 523.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e0cdb7a80167989e790be5b7bc0abdf3d72929f2148d427e851da461a90d07f`  
		Last Modified: Sat, 17 Oct 2026 00:31:32 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:5c2d058e531deff6b4c7a51e6e4cb2df8a81df2af8df6145ce9b707ca733d9ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2326518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0120feffc97412818b12a344a1a2353238fdcf48f7733094fc3a7c81f16090b0`

```dockerfile
```

-	Layers:
	-	`sha256:a538e510913d1893f24d1a28b084551debfe8e889d4e399f7eb6a7cb708c5366`  
		Last Modified: Sat, 17 Oct 2026 00:31:31 GMT  
		Size: 2.3 MB (2308697 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37e3db259030fb155236293ad1e35d2a77b4c7676c45d1f306ee6ea8a5e3df44`  
		Last Modified: Sat, 17 Oct 2026 00:31:31 GMT  
		Size: 17.8 KB (17821 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3-enterprise` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:cc02c3981564d3697fa99b182f1c8974e1250e2cd2046f287f052d298a9108e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.0 MB (189038892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2806188b6e2d4f8bd56c3619b8f47e36312b6ad5f00fa1e2f33d902f00322b05`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:30:44 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Sat, 17 Oct 2026 00:30:44 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Sat, 17 Oct 2026 00:30:52 GMT
ENV INFLUXDB_VERSION=3.12.1
# Sat, 17 Oct 2026 00:30:52 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Sat, 17 Oct 2026 00:30:52 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:30:52 GMT
USER influxdb3
# Sat, 17 Oct 2026 00:30:52 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Sat, 17 Oct 2026 00:30:52 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Sat, 17 Oct 2026 00:30:52 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Sat, 17 Oct 2026 00:30:52 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Sat, 17 Oct 2026 00:30:52 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Sat, 17 Oct 2026 00:30:52 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Sat, 17 Oct 2026 00:30:52 GMT
EXPOSE map[8181/tcp:{}]
# Sat, 17 Oct 2026 00:30:52 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Sat, 17 Oct 2026 00:30:52 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3765c2fc0eb4c0f77728c521307f4f2d529cadbdda6d5abd7f1ff280ff7bad9`  
		Last Modified: Sat, 17 Oct 2026 00:31:13 GMT  
		Size: 6.6 MB (6646789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4774ed1d49201e2d9a4f6e1b389041f53f9d1438701b72d3831a13d9f07b9b21`  
		Last Modified: Sat, 17 Oct 2026 00:31:13 GMT  
		Size: 3.7 KB (3652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88c4e7d29539017803f10dec7c297cd189a86fe2d61a5c64d625a5bf80521732`  
		Last Modified: Sat, 17 Oct 2026 00:31:17 GMT  
		Size: 153.4 MB (153448020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edfa95521de789ddfa8d108c3d58f8306de7607b98f41fc6b1a4a4d7807160ef`  
		Last Modified: Sat, 17 Oct 2026 00:31:14 GMT  
		Size: 521.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89e3985666000ecffd524ed61ace96d383173d4f5a10f647309d034acc3d214c`  
		Last Modified: Sat, 17 Oct 2026 00:31:14 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:eec3977ede29a2af27afd539f57f386d8d95e41b440e497c9e27f18dddd83c40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2327749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcd765c39d7e52a629c467fae25b391592ce4896da759fae3580cd41b4c69cc8`

```dockerfile
```

-	Layers:
	-	`sha256:84508c0a593a236af5eea207c13085eea5b5e4b685044acbb88bdb430394a3f8`  
		Last Modified: Sat, 17 Oct 2026 00:31:13 GMT  
		Size: 2.3 MB (2309779 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ed68aaf1bbfa0d9c97c1082ca087cc8f8dfda84cbfcd7f6a401b1b2be0f208e`  
		Last Modified: Sat, 17 Oct 2026 00:31:13 GMT  
		Size: 18.0 KB (17970 bytes)  
		MIME: application/vnd.in-toto+json
