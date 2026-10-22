## `neo4j:2026-community-ubi10`

```console
$ docker pull neo4j@sha256:02bf21f68178d8e219571f6de53784ff017da23bb23a1a902ae325d7f2a7b03d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:2026-community-ubi10` - linux; amd64

```console
$ docker pull neo4j@sha256:046260e1ebe7c972cf48f49d7415fce639ffedeb2687420f13456d297902980d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **386.7 MB (386735516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5cf0d956ee561ee0da7721ac7502bf4f51aeec185c6bc9ddb947b2f3c457eac`
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
# Wed, 21 Oct 2026 21:50:30 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-25-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Wed, 21 Oct 2026 21:50:30 GMT
ENV NEO4J_SHA256=36f68f8af6ab86f29b2ebe46361f50fc9be68076156623e86d1e12b801169d6d NEO4J_TARBALL=neo4j-community-2026.10.0-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Wed, 21 Oct 2026 21:50:30 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.10.0-unix.tar.gz
# Wed, 21 Oct 2026 21:50:30 GMT
COPY ./local-package/* /startup/ # buildkit
# Wed, 21 Oct 2026 21:50:35 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.10.0-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Wed, 21 Oct 2026 21:50:35 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:50:35 GMT
WORKDIR /var/lib/neo4j
# Wed, 21 Oct 2026 21:50:35 GMT
VOLUME [/data /logs]
# Wed, 21 Oct 2026 21:50:35 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Wed, 21 Oct 2026 21:50:35 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:50:35 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:87420a9ecd145c9a242c1eaa570c6b7327b097ddb3bf3d58c96ba0e75e0d3edc`  
		Last Modified: Tue, 20 Oct 2026 02:09:48 GMT  
		Size: 35.0 MB (34961973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6cc0e81d5803507e6dc5fe64b96dcdd6c07841cee76133f8461dd824692ed3d`  
		Last Modified: Wed, 21 Oct 2026 21:51:00 GMT  
		Size: 100.8 MB (100805378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0734b58b33e32384d8292eee58ddd6db73e42de57c47af1ba6cd9a959361ed3`  
		Last Modified: Wed, 21 Oct 2026 21:50:56 GMT  
		Size: 10.0 KB (10026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d58cb75fba1da79a551dff0d020f4743b551ce3207905ed91279ebc9e16124a7`  
		Last Modified: Wed, 21 Oct 2026 21:51:02 GMT  
		Size: 251.0 MB (250958107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:2026-community-ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:63dc36437af953ed1431e6bd18fb8c5c018721c46d48b9f743c57e5620056074
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 MB (1766611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d88e30334068481ff37148f0b9e5c095ae572ec16d658ad532ea3c8068b78d00`

```dockerfile
```

-	Layers:
	-	`sha256:52c41ebb91ce52c8cfd497692cd8b0d2eac7cd0a88d469e8c8f485afa04ce2d0`  
		Last Modified: Wed, 21 Oct 2026 21:50:56 GMT  
		Size: 1.7 MB (1745004 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b2fb4934542cd7005b2cddffcd0d89028f9ab1a301800496d71deac3c4f35b3`  
		Last Modified: Wed, 21 Oct 2026 21:50:56 GMT  
		Size: 21.6 KB (21607 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:2026-community-ubi10` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:e13091ca1e11c8eb0db9fa7159e0c01d0aaed9182e1e863ace04aea8b7d87da4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **383.6 MB (383557138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c53fadfced14d982aba964a0f657e69c9b9fd9c351d24582831ab13b194d7d63`
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
# Wed, 21 Oct 2026 22:25:33 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-25-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Wed, 21 Oct 2026 22:25:33 GMT
ENV NEO4J_SHA256=36f68f8af6ab86f29b2ebe46361f50fc9be68076156623e86d1e12b801169d6d NEO4J_TARBALL=neo4j-community-2026.10.0-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Wed, 21 Oct 2026 22:25:33 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.10.0-unix.tar.gz
# Wed, 21 Oct 2026 22:25:33 GMT
COPY ./local-package/* /startup/ # buildkit
# Wed, 21 Oct 2026 22:25:38 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.10.0-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Wed, 21 Oct 2026 22:25:38 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:25:38 GMT
WORKDIR /var/lib/neo4j
# Wed, 21 Oct 2026 22:25:38 GMT
VOLUME [/data /logs]
# Wed, 21 Oct 2026 22:25:38 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Wed, 21 Oct 2026 22:25:38 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:25:38 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:de452dfec330a84b0272627b023d15c8c60dd01f2776e3bfb8479177eea5f9e8`  
		Last Modified: Tue, 20 Oct 2026 02:12:17 GMT  
		Size: 33.1 MB (33146454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b919b29e2175d21a901f9c5f0b32e2f90031e41df9caf074f0e81b73dc8e4d7`  
		Last Modified: Wed, 21 Oct 2026 22:26:04 GMT  
		Size: 99.4 MB (99442451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8255895d2d23a043c2fee2c119fb473a5eed83fa9027a953f0d3febad4c22386`  
		Last Modified: Wed, 21 Oct 2026 22:26:00 GMT  
		Size: 10.0 KB (10028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:507deae7d180456df6aeb5245f36afe128c1b87165f7107e7d1367d04896f646`  
		Last Modified: Wed, 21 Oct 2026 22:26:07 GMT  
		Size: 251.0 MB (250958173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:2026-community-ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:d9eab219e93bd6c85f8637cd6f2f0579afb8dc7e0a2f8ea36de9ce2b79662862
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 MB (1766072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:165da11fc1ab54fb21415454a1a5ffeff2f6d016512f07ae3862ae986ede087b`

```dockerfile
```

-	Layers:
	-	`sha256:59f56b85470684d2cbe3a3e64c09f62858393783cb64908d8f550279120dc78f`  
		Last Modified: Wed, 21 Oct 2026 22:26:00 GMT  
		Size: 1.7 MB (1744308 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0196b62e44d13562f479909097009d64df59a3b74c8f7fce18d17a42c52804f8`  
		Last Modified: Wed, 21 Oct 2026 22:26:00 GMT  
		Size: 21.8 KB (21764 bytes)  
		MIME: application/vnd.in-toto+json
