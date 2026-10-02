## `influxdb:3-enterprise`

```console
$ docker pull influxdb@sha256:20fc6ba3a6bc25a05e0623bd3e8ef949bc177502d828915c98662beccbe33479
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3-enterprise` - linux; amd64

```console
$ docker pull influxdb@sha256:e3c2cdc4ec27dbce4217315889c10a9dde0621a414a0b441e75033daaf963b85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.7 MB (203702522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea622b0ad5deb3867845dbc052eb5ac86ab647f319b3b4142a873d4373a78091`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:30:02 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 02 Oct 2026 01:30:02 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 02 Oct 2026 01:30:09 GMT
ENV INFLUXDB_VERSION=3.12.0
# Fri, 02 Oct 2026 01:30:09 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 02 Oct 2026 01:30:10 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:30:10 GMT
USER influxdb3
# Fri, 02 Oct 2026 01:30:10 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 02 Oct 2026 01:30:10 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 02 Oct 2026 01:30:10 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 02 Oct 2026 01:30:10 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 02 Oct 2026 01:30:10 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 02 Oct 2026 01:30:10 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 02 Oct 2026 01:30:10 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 02 Oct 2026 01:30:10 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 02 Oct 2026 01:30:10 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36589870997a190633d96d10496c42edbf7d13c79e04faa07444b0a3ed01750c`  
		Last Modified: Fri, 02 Oct 2026 01:30:32 GMT  
		Size: 9.0 MB (9039489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7286f8e9835e0979cf07f1131c33715107a2dca603bfa3bca0f955d53265e7c7`  
		Last Modified: Fri, 02 Oct 2026 01:30:32 GMT  
		Size: 3.7 KB (3655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95e635ef6304c88dfb79e038a1d0a6e697f8a4908314119a29967e3f73facd5e`  
		Last Modified: Fri, 02 Oct 2026 01:30:36 GMT  
		Size: 164.9 MB (164894287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1263b57cf00a757b866d1641a4ce5ae2631483702d8ecab5ebee5e1aa6d2e3e`  
		Last Modified: Fri, 02 Oct 2026 01:30:32 GMT  
		Size: 520.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b1b5d66f9e0c9fd0e826c6eee82d73f959c4204b9ddb94c8add7230812eb2a9`  
		Last Modified: Fri, 02 Oct 2026 01:30:33 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:c5c12ef8064d4a3a7c662d96954bc226a7dabb94eb5f7e74b54af9205018ebdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2326510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bb8f58ea1b5f25d40b397a4fc833fde5246df4d974e05393f307702464ac2ea`

```dockerfile
```

-	Layers:
	-	`sha256:57eabbe019b0f628f3d6d2d7df098eef56d732e1cd6771b84923a51076c19a08`  
		Last Modified: Fri, 02 Oct 2026 01:30:32 GMT  
		Size: 2.3 MB (2308691 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ffce2796591034441cea4a5f84b7cc7599948a382040b5af2b88acf26641d8b0`  
		Last Modified: Fri, 02 Oct 2026 01:30:31 GMT  
		Size: 17.8 KB (17819 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3-enterprise` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:14eb5637431a5d5a23a294fe8c219c1c855240d2900bc52b5ec81cef5964af06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.1 MB (191088622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4623a62f6d097cce32943257a66ef74abaca6ae3bdfab481d25120fdb8c0723b`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:29:55 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 02 Oct 2026 01:29:56 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 02 Oct 2026 01:30:03 GMT
ENV INFLUXDB_VERSION=3.12.0
# Fri, 02 Oct 2026 01:30:03 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 02 Oct 2026 01:30:03 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:30:03 GMT
USER influxdb3
# Fri, 02 Oct 2026 01:30:03 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 02 Oct 2026 01:30:03 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 02 Oct 2026 01:30:03 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 02 Oct 2026 01:30:03 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 02 Oct 2026 01:30:03 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 02 Oct 2026 01:30:03 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 02 Oct 2026 01:30:03 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 02 Oct 2026 01:30:03 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 02 Oct 2026 01:30:03 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e06835899084b08227a0656f5dcf0d3df2b7d5283885a9d0c5a53f0ea8438243`  
		Last Modified: Fri, 02 Oct 2026 01:30:24 GMT  
		Size: 8.9 MB (8908449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8dba4ffbbe1a0f9649d774686096778acb207e9fab1ad1460b9ee748dbf6462`  
		Last Modified: Fri, 02 Oct 2026 01:30:24 GMT  
		Size: 3.7 KB (3654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ebf58d030dc20364ffcea47149a988669e6d661f6acb7d73d6435da00e3c27d`  
		Last Modified: Fri, 02 Oct 2026 01:30:27 GMT  
		Size: 153.2 MB (153235765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d7966148574dd098d540ff7906d5594629f16ea0c37450f8e750fca562d679d`  
		Last Modified: Fri, 02 Oct 2026 01:30:24 GMT  
		Size: 518.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5be37cb9c60473616307be8f83691134fca7d35434966ff49ad8892e2c3e8311`  
		Last Modified: Fri, 02 Oct 2026 01:30:25 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:be10ef5c87509b90b5bcf2c06254cec13cd61fc43a84af485a9cb33a45585a62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2327743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01655774ae65cc44c86ec041e18a19041dc375220adda6ddd7ab6d82b9e93f9f`

```dockerfile
```

-	Layers:
	-	`sha256:50bd60f3b211cddecb76dceeaa8d183ad9829f246691f6728b9e56debcad4eb9`  
		Last Modified: Fri, 02 Oct 2026 01:30:24 GMT  
		Size: 2.3 MB (2309773 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a6ff37ea616872e6754371cec684dc66169cf4d25eb7ec59728cccb5118a050`  
		Last Modified: Fri, 02 Oct 2026 01:30:24 GMT  
		Size: 18.0 KB (17970 bytes)  
		MIME: application/vnd.in-toto+json
