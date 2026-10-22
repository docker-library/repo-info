## `neo4j:5-enterprise-ubi10`

```console
$ docker pull neo4j@sha256:9ca6124fb95f7b9cc89ea25ebb9be2fbc32c57aa65a3fd4f102f755ecd610b8f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:5-enterprise-ubi10` - linux; amd64

```console
$ docker pull neo4j@sha256:548e9e2c07d5b26a6f851a592fcc3e94f93b1d5f60b35fdf31a2eb9f89ee3b12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **624.4 MB (624369806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9ea524ac03d638e84dd1be86ce391321128fac6a2cb4d8d5c163598d6d222c4`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 20 Oct 2026 00:48:53 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 20 Oct 2026 00:48:53 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 20 Oct 2026 00:48:53 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 20 Oct 2026 00:48:53 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 20 Oct 2026 00:48:53 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 20 Oct 2026 00:48:53 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 20 Oct 2026 00:48:53 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 20 Oct 2026 00:48:53 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 20 Oct 2026 00:48:53 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 20 Oct 2026 00:48:53 GMT
LABEL io.openshift.expose-services=""
# Tue, 20 Oct 2026 00:48:53 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 20 Oct 2026 00:48:53 GMT
ENV container oci
# Tue, 20 Oct 2026 00:48:54 GMT
COPY dir:f1c76a6243bae0571dcb78281fcfe2c643a8f555dfdca207fe1b10b3b00283d9 in /      
# Tue, 20 Oct 2026 00:48:54 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 20 Oct 2026 00:48:54 GMT
CMD ["/bin/bash"]
# Tue, 20 Oct 2026 00:48:54 GMT
COPY dir:b5325220b21ab4bdd3b622989894128b9739c056cbb0dd5b9f66881f5434041c in /usr/share/buildinfo/      
# Tue, 20 Oct 2026 00:48:55 GMT
COPY dir:b5325220b21ab4bdd3b622989894128b9739c056cbb0dd5b9f66881f5434041c in /root/buildinfo/      
# Tue, 20 Oct 2026 00:48:55 GMT
LABEL "org.opencontainers.image.created"="2026-10-20T00:48:29Z" "org.opencontainers.image.revision"="a4525a44c38615f09f474d3b5285a2a1ea7a1905" "build-date"="2026-10-20T00:48:29Z" "architecture"="x86_64" "vcs-ref"="a4525a44c38615f09f474d3b5285a2a1ea7a1905" "vcs-type"="git" "release"="1792457157"org.opencontainers.image.created=2026-10-20T00:48:29Z,org.opencontainers.image.revision=a4525a44c38615f09f474d3b5285a2a1ea7a1905
# Wed, 21 Oct 2026 21:50:46 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-21-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Wed, 21 Oct 2026 21:50:46 GMT
ENV NEO4J_SHA256=62d9ec7a4f96e3f1b4cd1c9c32e92e8071a8248e5292dd76e49f760f1ff69a60 NEO4J_TARBALL=neo4j-enterprise-5.26.32-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Wed, 21 Oct 2026 21:50:46 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.32-unix.tar.gz
# Wed, 21 Oct 2026 21:50:46 GMT
COPY ./local-package/* /startup/ # buildkit
# Wed, 21 Oct 2026 21:50:56 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.32-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Wed, 21 Oct 2026 21:50:56 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:50:56 GMT
WORKDIR /var/lib/neo4j
# Wed, 21 Oct 2026 21:50:56 GMT
VOLUME [/data /logs]
# Wed, 21 Oct 2026 21:50:56 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Wed, 21 Oct 2026 21:50:56 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:50:56 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:87420a9ecd145c9a242c1eaa570c6b7327b097ddb3bf3d58c96ba0e75e0d3edc`  
		Last Modified: Tue, 20 Oct 2026 02:09:48 GMT  
		Size: 35.0 MB (34961973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c63a91300cdc8e8cd134e174623d270a18dd9e85fd4ff688383e9360e2f8271`  
		Last Modified: Wed, 21 Oct 2026 21:51:27 GMT  
		Size: 86.3 MB (86304835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dfb7a837f6650063167812ae88acb5cc9686c834fb4ab43304ca9c00202a515`  
		Last Modified: Wed, 21 Oct 2026 21:51:23 GMT  
		Size: 10.1 KB (10060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4df45830d6863a90b06f0fdd0653a498cfa988298178e332998ec5bd5bb8f55e`  
		Last Modified: Wed, 21 Oct 2026 21:51:34 GMT  
		Size: 503.1 MB (503092906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-enterprise-ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:84962053379675e9528e9b20fa1c6cd5d364df6c1309ac0ea77dd0cdba5ec967
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (1992851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c0dbd5fa0c75caefa9c1711eb45c3afe68f4862317b51cf54b8cf7fb4ccb2e6`

```dockerfile
```

-	Layers:
	-	`sha256:6a747d5cc4c203fe253837b6105f1b3a5d71973bc38bd31e83b440b59532b28a`  
		Last Modified: Wed, 21 Oct 2026 21:51:23 GMT  
		Size: 2.0 MB (1972798 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3c02c03b149793dd641ff839583d53e1435460a476b89729369c0efd23ee29ee`  
		Last Modified: Wed, 21 Oct 2026 21:51:23 GMT  
		Size: 20.1 KB (20053 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:5-enterprise-ubi10` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:b6f97314cbcc19e56d77e608fd11720747280fe4f0ec1754c74bde82c339dc1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **621.5 MB (621473817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1495e3746fcdef19ecf55c4392d904a4ab46e2249eecdb78b5073d9711eb26b2`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 20 Oct 2026 00:51:53 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 20 Oct 2026 00:51:53 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 20 Oct 2026 00:51:53 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 20 Oct 2026 00:51:53 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 20 Oct 2026 00:51:53 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 20 Oct 2026 00:51:53 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 20 Oct 2026 00:51:54 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 20 Oct 2026 00:51:54 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 20 Oct 2026 00:51:54 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 20 Oct 2026 00:51:54 GMT
LABEL io.openshift.expose-services=""
# Tue, 20 Oct 2026 00:51:54 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 20 Oct 2026 00:51:54 GMT
ENV container oci
# Tue, 20 Oct 2026 00:51:55 GMT
COPY dir:0d7cbcbcf024404d0c04cf00e00c66c352826a90edb3b336fe7e26d881767ac0 in /      
# Tue, 20 Oct 2026 00:51:55 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 20 Oct 2026 00:51:55 GMT
CMD ["/bin/bash"]
# Tue, 20 Oct 2026 00:51:56 GMT
COPY dir:24db7167ffb16392a529e9c110e76f8adb27cab3a5daaf3fa3cb59ee0e4577e9 in /usr/share/buildinfo/      
# Tue, 20 Oct 2026 00:51:56 GMT
COPY dir:24db7167ffb16392a529e9c110e76f8adb27cab3a5daaf3fa3cb59ee0e4577e9 in /root/buildinfo/      
# Tue, 20 Oct 2026 00:51:56 GMT
LABEL "org.opencontainers.image.created"="2026-10-20T00:51:25Z" "org.opencontainers.image.revision"="a4525a44c38615f09f474d3b5285a2a1ea7a1905" "build-date"="2026-10-20T00:51:25Z" "architecture"="aarch64" "vcs-ref"="a4525a44c38615f09f474d3b5285a2a1ea7a1905" "vcs-type"="git" "release"="1792457157"org.opencontainers.image.created=2026-10-20T00:51:25Z,org.opencontainers.image.revision=a4525a44c38615f09f474d3b5285a2a1ea7a1905
# Wed, 21 Oct 2026 22:26:33 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-21-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Wed, 21 Oct 2026 22:26:33 GMT
ENV NEO4J_SHA256=62d9ec7a4f96e3f1b4cd1c9c32e92e8071a8248e5292dd76e49f760f1ff69a60 NEO4J_TARBALL=neo4j-enterprise-5.26.32-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Wed, 21 Oct 2026 22:26:33 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.32-unix.tar.gz
# Wed, 21 Oct 2026 22:26:33 GMT
COPY ./local-package/* /startup/ # buildkit
# Wed, 21 Oct 2026 22:26:43 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.32-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Wed, 21 Oct 2026 22:26:43 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:26:43 GMT
WORKDIR /var/lib/neo4j
# Wed, 21 Oct 2026 22:26:43 GMT
VOLUME [/data /logs]
# Wed, 21 Oct 2026 22:26:43 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Wed, 21 Oct 2026 22:26:43 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:26:43 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:de452dfec330a84b0272627b023d15c8c60dd01f2776e3bfb8479177eea5f9e8`  
		Last Modified: Tue, 20 Oct 2026 02:12:17 GMT  
		Size: 33.1 MB (33146454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:081355010380b6bc8dfa7861b90db9ae3b3fe413b11cc73eb9b80695350598e7`  
		Last Modified: Wed, 21 Oct 2026 22:27:16 GMT  
		Size: 85.2 MB (85224471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11ab06283ed412fa0923e79e62eb83ca0707f9f796dc7f6ee34773257ea36e54`  
		Last Modified: Wed, 21 Oct 2026 22:27:12 GMT  
		Size: 10.1 KB (10060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdcd032928d7f3cd99e858d07928f00130add3736fd118c3db8a6cd54023a4f5`  
		Last Modified: Wed, 21 Oct 2026 22:27:22 GMT  
		Size: 503.1 MB (503092800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-enterprise-ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:cb512640e546ec05e882ad95a0536d5229466d4932d0580ec464b80437510554
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (1992199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa29d484e24ee7db089c73e3177e63f8b8b30a76efaa2a899738bdc88a6ed3fd`

```dockerfile
```

-	Layers:
	-	`sha256:5aeb629de94350a7c683e6dd1f727bf1b50c8f83e62b7beffc0505b235118e06`  
		Last Modified: Wed, 21 Oct 2026 22:27:12 GMT  
		Size: 2.0 MB (1972045 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f8d4b7645432010a029d9b6dfc01d47ed5a204cd3c60f0ea12983bd5e6075892`  
		Last Modified: Wed, 21 Oct 2026 22:27:12 GMT  
		Size: 20.2 KB (20154 bytes)  
		MIME: application/vnd.in-toto+json
