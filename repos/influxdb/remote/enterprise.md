## `influxdb:enterprise`

```console
$ docker pull influxdb@sha256:c0d88d4480d19bf6ea9725bf1a2765cd7045ee22238b3db18e6f3a62d74779d7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:enterprise` - linux; amd64

```console
$ docker pull influxdb@sha256:d63afa43352e3abaa318539226ab7c145ab3ac6634481e5c6f98cd95521a8fa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.2 MB (185216126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b0eb47e6620ddb1174d0ca4ee5f2dcc4760408580fe0a83d74031fc7fad53e3`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Wed, 12 Aug 2026 21:01:02 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Wed, 12 Aug 2026 21:01:02 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Wed, 12 Aug 2026 21:01:42 GMT
ENV INFLUXDB_VERSION=3.11.1
# Wed, 12 Aug 2026 21:01:42 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Wed, 12 Aug 2026 21:01:42 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Wed, 12 Aug 2026 21:01:42 GMT
USER influxdb3
# Wed, 12 Aug 2026 21:01:42 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Wed, 12 Aug 2026 21:01:42 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Wed, 12 Aug 2026 21:01:42 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Wed, 12 Aug 2026 21:01:42 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Wed, 12 Aug 2026 21:01:42 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Wed, 12 Aug 2026 21:01:42 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Wed, 12 Aug 2026 21:01:42 GMT
EXPOSE map[8181/tcp:{}]
# Wed, 12 Aug 2026 21:01:42 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Wed, 12 Aug 2026 21:01:42 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddc004047b26f404b10b8697ec05ac7eaab2912f81af40422f10417e344f54fa`  
		Last Modified: Wed, 12 Aug 2026 21:01:27 GMT  
		Size: 9.0 MB (9033767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d056a8c7ab0ef0a8776fd538a1ad06ed4cae0f7dc8194b2f194aebe84d070e8`  
		Last Modified: Wed, 12 Aug 2026 21:01:27 GMT  
		Size: 3.7 KB (3652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc9d2a55773cc2005372393824e04b39153d8997e2065863be26eb1ae6f92509`  
		Last Modified: Wed, 12 Aug 2026 21:02:07 GMT  
		Size: 146.4 MB (146426929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a9298fe3faf9eb74ee5ca97b025d4f3940c62ebb8ba957795180b1f7691358c`  
		Last Modified: Wed, 12 Aug 2026 21:02:04 GMT  
		Size: 520.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e51043af60340e95858b37b3e32370d6d5b0497091fcb5031c9543c7d8c6471`  
		Last Modified: Wed, 12 Aug 2026 21:02:04 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:19c7b2e91b4f2cb51c9d8e22d57308f8c4840b2239726dafad713f241aed6dae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff232f1947540d2669b0c4ca4721bd6a180bcce2509dcb9f52ba64361b64b793`

```dockerfile
```

-	Layers:
	-	`sha256:64feb35dd1e633f6fc1a91be840639a0ca220e73e11cbb29a755a1632abb3f21`  
		Last Modified: Wed, 12 Aug 2026 21:02:04 GMT  
		Size: 2.3 MB (2294447 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3bbcb10f656c8087f48b12fb6634a10f1b120547683d8e41b810abf1aa2aa69a`  
		Last Modified: Wed, 12 Aug 2026 21:02:03 GMT  
		Size: 17.8 KB (17821 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:enterprise` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:567e989f0fdd7c456cc2b296c338d9b612b3556dd58a575332ceb0aa0c470089
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.3 MB (173332839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d32c5aaa1d735fdb08855554c72dd71e87ce8eaf91eb9259711ad1d0c062c85e`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Wed, 12 Aug 2026 21:01:26 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Wed, 12 Aug 2026 21:01:26 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Wed, 12 Aug 2026 21:02:05 GMT
ENV INFLUXDB_VERSION=3.11.1
# Wed, 12 Aug 2026 21:02:05 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Wed, 12 Aug 2026 21:02:05 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Wed, 12 Aug 2026 21:02:05 GMT
USER influxdb3
# Wed, 12 Aug 2026 21:02:05 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Wed, 12 Aug 2026 21:02:05 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Wed, 12 Aug 2026 21:02:05 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Wed, 12 Aug 2026 21:02:05 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Wed, 12 Aug 2026 21:02:05 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Wed, 12 Aug 2026 21:02:05 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Wed, 12 Aug 2026 21:02:05 GMT
EXPOSE map[8181/tcp:{}]
# Wed, 12 Aug 2026 21:02:05 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Wed, 12 Aug 2026 21:02:05 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4ab8cae1a2f42028735c3cc0937b5f2241f0805bb765dd93da7b47985d36248`  
		Last Modified: Wed, 12 Aug 2026 21:01:48 GMT  
		Size: 6.6 MB (6641712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82cd091117dbac46132f62a00e7383de140c183cab26c380f1e9c7449f4001b0`  
		Last Modified: Wed, 12 Aug 2026 21:01:48 GMT  
		Size: 3.6 KB (3650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cca18137bc592e10182d7b5b5b5a48b162e658830baf25b0e4b9f97eb066735`  
		Last Modified: Wed, 12 Aug 2026 21:02:27 GMT  
		Size: 137.8 MB (137799991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4103bd1c420ce0148dcee5a3fa7e473f4f38b685947e6666bdca6d6ce3784c3b`  
		Last Modified: Wed, 12 Aug 2026 21:02:24 GMT  
		Size: 518.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:279e2830133b1f7b5001d23243d1cc2305ed52cc6aa8b926e10e8b432ef50ab4`  
		Last Modified: Wed, 12 Aug 2026 21:02:24 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:510eb79c5aca39f5aef9f6efa98fa54c4742e96e82a62a3bacaa9f08c72d4749
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2313498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ea7d62ecfabbba268b86b7e1bc1a9eb740b574f9af73372c22a4ab5d7b6b575`

```dockerfile
```

-	Layers:
	-	`sha256:5b653938b59c480fe031221bf0c30753e2c051b8ce0fbc19ae8372e31e04cc60`  
		Last Modified: Wed, 12 Aug 2026 21:02:24 GMT  
		Size: 2.3 MB (2295529 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4a0a115b20aaddd0572fbdc6b5fc2bad595cfb5061af9ebfb11bd0f3c0a1299`  
		Last Modified: Wed, 12 Aug 2026 21:02:24 GMT  
		Size: 18.0 KB (17969 bytes)  
		MIME: application/vnd.in-toto+json
