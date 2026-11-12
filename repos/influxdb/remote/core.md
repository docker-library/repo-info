## `influxdb:core`

```console
$ docker pull influxdb@sha256:f349b303abfc33e5be9ab67f475d544c4ef53ed5b3b68267842aedb112756b82
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:core` - linux; amd64

```console
$ docker pull influxdb@sha256:49b704b3efee9f25174f56958542a362f922b892cc47e284ba0003b21712e092
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.3 MB (156284358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d73add12702f2deebf2ddd33c0e50dfbe8bbbc46cb64edfcd52aeeabd9c36159`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:28:19 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Wed, 11 Nov 2026 23:28:19 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Wed, 11 Nov 2026 23:29:00 GMT
ENV INFLUXDB_VERSION=3.12.2
# Wed, 11 Nov 2026 23:29:00 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Wed, 11 Nov 2026 23:29:01 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:29:01 GMT
USER influxdb3
# Wed, 11 Nov 2026 23:29:01 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Wed, 11 Nov 2026 23:29:01 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Wed, 11 Nov 2026 23:29:01 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Wed, 11 Nov 2026 23:29:01 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Wed, 11 Nov 2026 23:29:01 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Wed, 11 Nov 2026 23:29:01 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Wed, 11 Nov 2026 23:29:01 GMT
EXPOSE map[8181/tcp:{}]
# Wed, 11 Nov 2026 23:29:01 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Wed, 11 Nov 2026 23:29:01 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fe9bcb671b3821f5af64eda9a8568d2eaae3859421443d40cb661dc53c869b0`  
		Last Modified: Wed, 11 Nov 2026 23:28:46 GMT  
		Size: 6.6 MB (6633904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:deaed9e5caf36862ad61b3bf35112b2be4ec5f96a06d7221af0adba9810f8b30`  
		Last Modified: Wed, 11 Nov 2026 23:28:44 GMT  
		Size: 3.6 KB (3649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceb62eb3389b5c4909a5d49983587b5f61578936c8396e5e0dc7ea1ac4bffe54`  
		Last Modified: Wed, 11 Nov 2026 23:29:22 GMT  
		Size: 119.9 MB (119852914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49ead43016547011f10f8d97497eb7593c8fe89d611f137ffa547c155f73a91c`  
		Last Modified: Wed, 11 Nov 2026 23:29:20 GMT  
		Size: 520.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59bba0161cd9d889527f05df60378255a7950782d7d6d9290edf76fa1c2c63d8`  
		Last Modified: Wed, 11 Nov 2026 23:29:19 GMT  
		Size: 148.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:core` - unknown; unknown

```console
$ docker pull influxdb@sha256:223e2fac453aada873fe949b42b5fb025998e73f202dd8a33ffe4b7c16348ddb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2326264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6380ddf86738854cb7bbb150913b9c9019f7c644155f18fbc306e376740570f8`

```dockerfile
```

-	Layers:
	-	`sha256:81ffb38637226727b56309fd1d11bd6cd342f87fb1785bfa6209915c2e86bd81`  
		Last Modified: Wed, 11 Nov 2026 23:29:20 GMT  
		Size: 2.3 MB (2308623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:92060ff0059d95edf81d5f53b297d9dda6ebb8800e33f85097d6732ad3682906`  
		Last Modified: Wed, 11 Nov 2026 23:29:19 GMT  
		Size: 17.6 KB (17641 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:core` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:15a5c8f80f2e1351aa4b24988b525b53ce73ff6ccd1c474c74cbaa3f226ad78a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.9 MB (145888215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91585325b4055a39698f97ec3946a5889eb1b89f292e8a617cbb72dc04e3bd4a`
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
# Wed, 11 Nov 2026 23:32:20 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Wed, 11 Nov 2026 23:32:20 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Wed, 11 Nov 2026 23:32:27 GMT
ENV INFLUXDB_VERSION=3.12.2
# Wed, 11 Nov 2026 23:32:27 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Wed, 11 Nov 2026 23:32:27 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:32:27 GMT
USER influxdb3
# Wed, 11 Nov 2026 23:32:27 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Wed, 11 Nov 2026 23:32:27 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Wed, 11 Nov 2026 23:32:27 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Wed, 11 Nov 2026 23:32:27 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Wed, 11 Nov 2026 23:32:27 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Wed, 11 Nov 2026 23:32:27 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Wed, 11 Nov 2026 23:32:27 GMT
EXPOSE map[8181/tcp:{}]
# Wed, 11 Nov 2026 23:32:27 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Wed, 11 Nov 2026 23:32:27 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3366f11037044ae1f29375e42c5dfd00b7e921814ed4ae4b5ddac66e33a96411`  
		Last Modified: Wed, 11 Nov 2026 23:32:45 GMT  
		Size: 6.6 MB (6648163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaa6d24994229411be7610c74bc30aa9556db777fc4e1beefcd7a074b75997ee`  
		Last Modified: Wed, 11 Nov 2026 23:32:44 GMT  
		Size: 3.7 KB (3651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af804a1f1992263163c2876de70311631dfb81bf8c01ef5c30ea3a1bfa6afd8c`  
		Last Modified: Wed, 11 Nov 2026 23:32:47 GMT  
		Size: 110.3 MB (110270473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dd6a182a4408d41fcc08df7428a2a7fb14bdc263bb91e311ec081e22df6c496`  
		Last Modified: Wed, 11 Nov 2026 23:32:44 GMT  
		Size: 522.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8317335ef8de4e8204229c1f92d17ffba957337f9bfcfaccb3292fa86ab31309`  
		Last Modified: Wed, 11 Nov 2026 23:32:45 GMT  
		Size: 148.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:core` - unknown; unknown

```console
$ docker pull influxdb@sha256:d1d452ac421bda073f70ade1ab0c49358161600e441b3c157fffdd23d13f9b3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2327495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4f425e45b5e6d5208aa342c2d83634a2c2f9977405948c36e3514072045b508`

```dockerfile
```

-	Layers:
	-	`sha256:6a6a4cceb8e9ae8a6f9921a1e367da7036642fe90aadb253436e41e5a82a12ad`  
		Last Modified: Wed, 11 Nov 2026 23:32:44 GMT  
		Size: 2.3 MB (2309705 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ed897490b3632a935aaac5d6a61f79f64ded44d0d7ac2513da3b6d41ffe8ffb`  
		Last Modified: Wed, 11 Nov 2026 23:32:44 GMT  
		Size: 17.8 KB (17790 bytes)  
		MIME: application/vnd.in-toto+json
