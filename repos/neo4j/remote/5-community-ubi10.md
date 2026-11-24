## `neo4j:5-community-ubi10`

```console
$ docker pull neo4j@sha256:479e9f09ddf79f00b2ee6a24d0c6ec0a2f719c009443936f521659dffef6fc31
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:5-community-ubi10` - linux; amd64

```console
$ docker pull neo4j@sha256:f0212a5085555ffd61dcff3f58c873b9b36cbfdcb2218cc6205888d548805571
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.3 MB (261304309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dc8f05c568fdf26db904eae6905329d820c5e652147348188425c00c042a2b7`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Fri, 20 Nov 2026 17:51:16 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 20 Nov 2026 17:51:16 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 20 Nov 2026 17:51:16 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 20 Nov 2026 17:51:16 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.3"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       distribution-scope="public"
# Fri, 20 Nov 2026 17:51:16 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 20 Nov 2026 17:51:16 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Fri, 20 Nov 2026 17:51:16 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 17:51:16 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 17:51:16 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Fri, 20 Nov 2026 17:51:16 GMT
LABEL io.openshift.expose-services=""
# Fri, 20 Nov 2026 17:51:16 GMT
LABEL io.openshift.tags="minimal rhel10"
# Fri, 20 Nov 2026 17:51:16 GMT
ENV container oci
# Fri, 20 Nov 2026 17:51:17 GMT
COPY dir:fb43f9b318d9eb1385df7a36cdfa57b8acbd84afb7b61664d2e25101a312d55a in /      
# Fri, 20 Nov 2026 17:51:17 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Fri, 20 Nov 2026 17:51:17 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 17:51:17 GMT
COPY dir:9facee0b5cdcedad16ad4e0b1c536c91a058e00f974062e8ebf605fae2363b30 in /usr/share/buildinfo/      
# Fri, 20 Nov 2026 17:51:17 GMT
COPY dir:9facee0b5cdcedad16ad4e0b1c536c91a058e00f974062e8ebf605fae2363b30 in /root/buildinfo/      
# Fri, 20 Nov 2026 17:51:18 GMT
LABEL "org.opencontainers.image.created"="2026-11-20T17:50:47Z" "org.opencontainers.image.revision"="0b769d32f2673a0a3230de4ecb28b42ea251c690" "build-date"="2026-11-20T17:50:47Z" "architecture"="x86_64" "vcs-ref"="0b769d32f2673a0a3230de4ecb28b42ea251c690" "vcs-type"="git" "release"="1795196920"org.opencontainers.image.created=2026-11-20T17:50:47Z,org.opencontainers.image.revision=0b769d32f2673a0a3230de4ecb28b42ea251c690
# Mon, 23 Nov 2026 22:10:34 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-21-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Mon, 23 Nov 2026 22:10:34 GMT
ENV NEO4J_SHA256=a7dff070b505b1df7508df50b13bf15fe523cf7e0d2e344618e88be61b01a9eb NEO4J_TARBALL=neo4j-community-5.26.34-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Mon, 23 Nov 2026 22:10:34 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.34-unix.tar.gz
# Mon, 23 Nov 2026 22:10:34 GMT
COPY ./local-package/* /startup/ # buildkit
# Mon, 23 Nov 2026 22:10:37 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.34-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Mon, 23 Nov 2026 22:10:37 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 22:10:37 GMT
WORKDIR /var/lib/neo4j
# Mon, 23 Nov 2026 22:10:37 GMT
VOLUME [/data /logs]
# Mon, 23 Nov 2026 22:10:37 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Mon, 23 Nov 2026 22:10:37 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Mon, 23 Nov 2026 22:10:37 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:69350ad525f7b897d7ee64aead074bc110259aa291005b87b0609cc9f54f5aac`  
		Last Modified: Fri, 20 Nov 2026 19:50:01 GMT  
		Size: 35.0 MB (34957031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:337beda0df7e06f3a678dc21ea98bcaca18af377b5f64da327b9669d73a2e200`  
		Last Modified: Mon, 23 Nov 2026 22:10:55 GMT  
		Size: 86.5 MB (86479499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29b5123f00cd82f114016342c93402c81d3a3a2c939bcfde02cc5d1f12a13d3b`  
		Last Modified: Mon, 23 Nov 2026 22:10:51 GMT  
		Size: 10.1 KB (10076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:543de295fd53b3efae64c1331e9d48996668b6057b76ede99cf4265ad901d1bb`  
		Last Modified: Mon, 23 Nov 2026 22:10:56 GMT  
		Size: 139.9 MB (139857671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-community-ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:12e6c5dd46c692e6a719f2922a1dfeefe38b250ece51781d7fe8351e39d2cfe7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.6 MB (1617522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a6829b22fd85d6f177090a755361ebf69910c4fcbc9f67afbe902b7425ea21e`

```dockerfile
```

-	Layers:
	-	`sha256:78f24d909953048918b520626b37d16e773413597aa99eae0a8a2ba3988dd98e`  
		Last Modified: Mon, 23 Nov 2026 22:10:52 GMT  
		Size: 1.6 MB (1596573 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d1d540a17e36029972c99c47a0f1da79b06e42f59bc1b772c763d013bab9ae4`  
		Last Modified: Mon, 23 Nov 2026 22:10:52 GMT  
		Size: 20.9 KB (20949 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:5-community-ubi10` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:dbff13ef2da0ba0991d8a5f2159127051a403bc3eba487d6f0eb82e6d1f42446
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.3 MB (258322280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de4c662d7d3fe52ab839aebcc54148b2e9c688ba56443855cc98b9b59b25b82a`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Fri, 20 Nov 2026 17:53:38 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 20 Nov 2026 17:53:38 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 20 Nov 2026 17:53:38 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 20 Nov 2026 17:53:38 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.3"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       distribution-scope="public"
# Fri, 20 Nov 2026 17:53:38 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 20 Nov 2026 17:53:38 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Fri, 20 Nov 2026 17:53:38 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 17:53:38 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 17:53:39 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Fri, 20 Nov 2026 17:53:39 GMT
LABEL io.openshift.expose-services=""
# Fri, 20 Nov 2026 17:53:39 GMT
LABEL io.openshift.tags="minimal rhel10"
# Fri, 20 Nov 2026 17:53:39 GMT
ENV container oci
# Fri, 20 Nov 2026 17:53:40 GMT
COPY dir:3393e986fa09bafe58a0c8dda4610ca6bdfcdf4191fc82a2323e5c063224307b in /      
# Fri, 20 Nov 2026 17:53:40 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Fri, 20 Nov 2026 17:53:40 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 17:53:41 GMT
COPY dir:49c56089b2ac1702df93cb0b5cda1a4916a11c8c990bbba3f067ed09e9f3883f in /usr/share/buildinfo/      
# Fri, 20 Nov 2026 17:53:41 GMT
COPY dir:49c56089b2ac1702df93cb0b5cda1a4916a11c8c990bbba3f067ed09e9f3883f in /root/buildinfo/      
# Fri, 20 Nov 2026 17:53:41 GMT
LABEL "org.opencontainers.image.created"="2026-11-20T17:53:10Z" "org.opencontainers.image.revision"="0b769d32f2673a0a3230de4ecb28b42ea251c690" "build-date"="2026-11-20T17:53:10Z" "architecture"="aarch64" "vcs-ref"="0b769d32f2673a0a3230de4ecb28b42ea251c690" "vcs-type"="git" "release"="1795196920"org.opencontainers.image.created=2026-11-20T17:53:10Z,org.opencontainers.image.revision=0b769d32f2673a0a3230de4ecb28b42ea251c690
# Mon, 23 Nov 2026 22:09:10 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-21-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Mon, 23 Nov 2026 22:09:10 GMT
ENV NEO4J_SHA256=a7dff070b505b1df7508df50b13bf15fe523cf7e0d2e344618e88be61b01a9eb NEO4J_TARBALL=neo4j-community-5.26.34-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Mon, 23 Nov 2026 22:09:10 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.34-unix.tar.gz
# Mon, 23 Nov 2026 22:09:10 GMT
COPY ./local-package/* /startup/ # buildkit
# Mon, 23 Nov 2026 22:09:12 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.34-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Mon, 23 Nov 2026 22:09:12 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 22:09:12 GMT
WORKDIR /var/lib/neo4j
# Mon, 23 Nov 2026 22:09:12 GMT
VOLUME [/data /logs]
# Mon, 23 Nov 2026 22:09:12 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Mon, 23 Nov 2026 22:09:12 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Mon, 23 Nov 2026 22:09:12 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:16a7622b10038f372ff7d46da684e3e1ab3565f4760320adfafdae2b1af5e869`  
		Last Modified: Sat, 21 Nov 2026 00:28:05 GMT  
		Size: 33.0 MB (33048313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ec17ead7df2f55dba96f43b582bedc1346110d44a850412b69eb44e7019b66e`  
		Last Modified: Mon, 23 Nov 2026 22:09:32 GMT  
		Size: 85.4 MB (85406171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c62eb932ff1696354af6fe46684b7a3d2341678d5d89416728ee9ff65123ce37`  
		Last Modified: Mon, 23 Nov 2026 22:09:29 GMT  
		Size: 10.1 KB (10078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a7710e7c96be89083917d7d65e91f9f0eb153b05167f4ddefa7e65e4db0a680`  
		Last Modified: Mon, 23 Nov 2026 22:09:33 GMT  
		Size: 139.9 MB (139857686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-community-ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:49d3fb9d0fbf999a4a4a861830e208c516d7618c430ecb9ee77d84796bd85c1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.6 MB (1616940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:140c990f3eda452bdf9ea9e58cc98086ba07b6907437f8d5171d2f55f182bc12`

```dockerfile
```

-	Layers:
	-	`sha256:9529eff54de811962a4a8e840f89a077d3013aa0267a67722f75fa31a42ba8a6`  
		Last Modified: Mon, 23 Nov 2026 22:09:29 GMT  
		Size: 1.6 MB (1595856 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c9cd4287b1ccb22a58aec2e984e6d7222f53773b6c6ed55cfc197838ab69fb6c`  
		Last Modified: Mon, 23 Nov 2026 22:09:29 GMT  
		Size: 21.1 KB (21084 bytes)  
		MIME: application/vnd.in-toto+json
