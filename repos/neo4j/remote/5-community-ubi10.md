## `neo4j:5-community-ubi10`

```console
$ docker pull neo4j@sha256:f0a9509090d06027749f647314bae5a549f95192b4ac7080104226e448fd7793
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:5-community-ubi10` - linux; amd64

```console
$ docker pull neo4j@sha256:3e6493e0c45e243b5aa1cf98e447ac56a802b90ee6489fa5bfaa4d42b8fc50d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (278019416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a12807d4eb48e13b0e1b41855477a2be9a0ac2c339d2fbe781a56e925fd121ba`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 03 Aug 2026 17:41:35 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 03 Aug 2026 17:41:35 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 03 Aug 2026 17:41:35 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 03 Aug 2026 17:41:35 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 03 Aug 2026 17:41:35 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 03 Aug 2026 17:41:35 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 03 Aug 2026 17:41:35 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 03 Aug 2026 17:41:35 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 03 Aug 2026 17:41:35 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 03 Aug 2026 17:41:35 GMT
LABEL io.openshift.expose-services=""
# Mon, 03 Aug 2026 17:41:36 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 03 Aug 2026 17:41:36 GMT
ENV container oci
# Mon, 03 Aug 2026 17:41:36 GMT
COPY dir:ed77bb373e14ffa6b3783b4ca84874dcd05c0d6bea35c76071d4ccb41ebeef18 in /      
# Mon, 03 Aug 2026 17:41:36 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 03 Aug 2026 17:41:36 GMT
CMD ["/bin/bash"]
# Mon, 03 Aug 2026 17:41:36 GMT
COPY dir:7e4a63454f39409c213733c178806885b5a316509bc6872a23eca6721c2a73bc in /usr/share/buildinfo/      
# Mon, 03 Aug 2026 17:41:36 GMT
COPY dir:7e4a63454f39409c213733c178806885b5a316509bc6872a23eca6721c2a73bc in /root/buildinfo/      
# Mon, 03 Aug 2026 17:41:36 GMT
LABEL "org.opencontainers.image.created"="2026-08-03T17:40:34Z" "org.opencontainers.image.revision"="b9fdece4d2c962654c1c4a6f9578551c79e4c4c6" "build-date"="2026-08-03T17:40:34Z" "architecture"="x86_64" "vcs-ref"="b9fdece4d2c962654c1c4a6f9578551c79e4c4c6" "vcs-type"="git" "release"="1785778687"org.opencontainers.image.created=2026-08-03T17:40:34Z,org.opencontainers.image.revision=b9fdece4d2c962654c1c4a6f9578551c79e4c4c6
# Tue, 04 Aug 2026 21:07:15 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-21-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Tue, 04 Aug 2026 21:07:15 GMT
ENV NEO4J_SHA256=9d4064cdd87627cae376a741c893848c4faa3c4fb980362b6dae541c203e8072 NEO4J_TARBALL=neo4j-community-5.26.28-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Tue, 04 Aug 2026 21:07:15 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.28-unix.tar.gz
# Tue, 04 Aug 2026 21:07:15 GMT
COPY ./local-package/* /startup/ # buildkit
# Tue, 04 Aug 2026 21:07:18 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.28-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Tue, 04 Aug 2026 21:07:18 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 21:07:18 GMT
WORKDIR /var/lib/neo4j
# Tue, 04 Aug 2026 21:07:18 GMT
VOLUME [/data /logs]
# Tue, 04 Aug 2026 21:07:18 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Tue, 04 Aug 2026 21:07:18 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 21:07:18 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:ac98f959ddf9baac24d46ce09bc63e26a45b74b502da97c83be3cdfcd2b5bad0`  
		Last Modified: Mon, 03 Aug 2026 18:50:26 GMT  
		Size: 34.9 MB (34906609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5962d69a75ced6321638ca24d1f7ebb99d41459e20ceccbc7aad20ae38562097`  
		Last Modified: Tue, 04 Aug 2026 21:07:38 GMT  
		Size: 86.2 MB (86241184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faa85495639096bfd6bf42f96b541be0214da7247f39350f7821a5cc5ce900d2`  
		Last Modified: Tue, 04 Aug 2026 21:07:34 GMT  
		Size: 10.1 KB (10061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37b0917941219edacbf72c9d3c47b64edb95c99eac85e8a48169fa6191bf3fd3`  
		Last Modified: Tue, 04 Aug 2026 21:07:39 GMT  
		Size: 156.9 MB (156861530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-community-ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:e4114f32e5d445fd633f6741ce3f5ad184fff3552259e3395f59aba61fd6ae76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.6 MB (1635107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d17c4ac9cbc6554eb1d3506e7eac11693c5bcc0da54d450fa5635f35cc3ba87`

```dockerfile
```

-	Layers:
	-	`sha256:18db7443b8bc49efb2f0ee476cd43e6c8f39497d2c809cf3b7813d3283f41a2b`  
		Last Modified: Tue, 04 Aug 2026 21:07:35 GMT  
		Size: 1.6 MB (1614158 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b5b5b55465a05457a1f253e91cfad642fe69001715cb9c1a19122a0a5e16e4f2`  
		Last Modified: Tue, 04 Aug 2026 21:07:34 GMT  
		Size: 20.9 KB (20949 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:5-community-ubi10` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:6b54fafaae290e9b55e54982785e692129056195ff92a32a106f00d8ea26e583
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.1 MB (275080278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c7102a29d96f1246a0459042e5ce5a72cea9a61ac3e2cfe73c30b3186d280bc`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 03 Aug 2026 17:42:25 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 03 Aug 2026 17:42:25 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 03 Aug 2026 17:42:25 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 03 Aug 2026 17:42:25 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 03 Aug 2026 17:42:25 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 03 Aug 2026 17:42:25 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 03 Aug 2026 17:42:25 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 03 Aug 2026 17:42:25 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 03 Aug 2026 17:42:25 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 03 Aug 2026 17:42:25 GMT
LABEL io.openshift.expose-services=""
# Mon, 03 Aug 2026 17:42:25 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 03 Aug 2026 17:42:25 GMT
ENV container oci
# Mon, 03 Aug 2026 17:42:26 GMT
COPY dir:26fa351aba4d56b41677f6e2b1ab88063d4c9bbfc6176232f37e77eaf773115e in /      
# Mon, 03 Aug 2026 17:42:26 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 03 Aug 2026 17:42:26 GMT
CMD ["/bin/bash"]
# Mon, 03 Aug 2026 17:42:26 GMT
COPY dir:866ddf8cef7c479ff27d941240740a59788ad28338ae4d90f502ab418f7eb118 in /usr/share/buildinfo/      
# Mon, 03 Aug 2026 17:42:26 GMT
COPY dir:866ddf8cef7c479ff27d941240740a59788ad28338ae4d90f502ab418f7eb118 in /root/buildinfo/      
# Mon, 03 Aug 2026 17:42:26 GMT
LABEL "org.opencontainers.image.created"="2026-08-03T17:42:02Z" "org.opencontainers.image.revision"="b9fdece4d2c962654c1c4a6f9578551c79e4c4c6" "build-date"="2026-08-03T17:42:02Z" "architecture"="aarch64" "vcs-ref"="b9fdece4d2c962654c1c4a6f9578551c79e4c4c6" "vcs-type"="git" "release"="1785778687"org.opencontainers.image.created=2026-08-03T17:42:02Z,org.opencontainers.image.revision=b9fdece4d2c962654c1c4a6f9578551c79e4c4c6
# Tue, 04 Aug 2026 21:11:17 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-21-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Tue, 04 Aug 2026 21:11:17 GMT
ENV NEO4J_SHA256=9d4064cdd87627cae376a741c893848c4faa3c4fb980362b6dae541c203e8072 NEO4J_TARBALL=neo4j-community-5.26.28-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Tue, 04 Aug 2026 21:11:17 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.28-unix.tar.gz
# Tue, 04 Aug 2026 21:11:17 GMT
COPY ./local-package/* /startup/ # buildkit
# Tue, 04 Aug 2026 21:11:20 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.28-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Tue, 04 Aug 2026 21:11:20 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 21:11:20 GMT
WORKDIR /var/lib/neo4j
# Tue, 04 Aug 2026 21:11:20 GMT
VOLUME [/data /logs]
# Tue, 04 Aug 2026 21:11:20 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Tue, 04 Aug 2026 21:11:20 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 21:11:20 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:37c5f70fcd6cd766028ac1d94a4780f9f0b7d6d0cef13f7218ef89620df991eb`  
		Last Modified: Mon, 03 Aug 2026 18:50:21 GMT  
		Size: 33.0 MB (33046883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef58ba9b90f5d4f278a0dbd79afc6723cbc7cad9408f6ab97b2f4496ae6a8eb1`  
		Last Modified: Tue, 04 Aug 2026 21:11:40 GMT  
		Size: 85.2 MB (85161796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a84302de8ac2dd7649507e5f54cd65bea85ea126e122afb44f815ed7197e05f0`  
		Last Modified: Tue, 04 Aug 2026 21:11:37 GMT  
		Size: 10.1 KB (10063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d49aeae3710e84759b664e93c647e450647b3fe02317a51c81c7c7ddc6a01119`  
		Last Modified: Tue, 04 Aug 2026 21:11:42 GMT  
		Size: 156.9 MB (156861504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-community-ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:a017811fa4cee19bd68273e3856d27da63e422bc9dd96d36a6e18c1024b39db6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.6 MB (1634527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53a62c9843568c8f50539cde7c2b11ce1d6a35664b27c81e9c2a90d0332a52c6`

```dockerfile
```

-	Layers:
	-	`sha256:6ceca974d4e366e8dd2944dd5f9e1f1343b4060bc773323c2dd25af376a3d6b6`  
		Last Modified: Tue, 04 Aug 2026 21:11:37 GMT  
		Size: 1.6 MB (1613441 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3eceec2141d6c9064e28b5c85c0010b995bddf6f093f09da7d2b5c9a647bacd2`  
		Last Modified: Tue, 04 Aug 2026 21:11:37 GMT  
		Size: 21.1 KB (21086 bytes)  
		MIME: application/vnd.in-toto+json
