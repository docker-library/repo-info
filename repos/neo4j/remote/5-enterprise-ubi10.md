## `neo4j:5-enterprise-ubi10`

```console
$ docker pull neo4j@sha256:9e6d1cccb6d5d1879e760088906b75e9f3055184596a2480d638bd9d92a94e15
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:5-enterprise-ubi10` - linux; amd64

```console
$ docker pull neo4j@sha256:e0b4b2f97f285981595dc7be3a83622989dd68ca87b7a7e373e4741e6954858f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **633.9 MB (633890757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:899230b0fc4bd0193f9cc9026d327cdc23ae8cb88af098ec7dbdea46bae841d1`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Thu, 20 Aug 2026 05:43:08 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 20 Aug 2026 05:43:08 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 20 Aug 2026 05:43:08 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 20 Aug 2026 05:43:08 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Thu, 20 Aug 2026 05:43:08 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 20 Aug 2026 05:43:08 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 20 Aug 2026 05:43:08 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 20 Aug 2026 05:43:08 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 20 Aug 2026 05:43:08 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 20 Aug 2026 05:43:08 GMT
LABEL io.openshift.expose-services=""
# Thu, 20 Aug 2026 05:43:08 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 20 Aug 2026 05:43:08 GMT
ENV container oci
# Thu, 20 Aug 2026 05:43:09 GMT
COPY dir:9f021fb13f2371556f5330777fa50b285029910699c8db1352c33ddbfc4aa6e0 in /      
# Thu, 20 Aug 2026 05:43:09 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 20 Aug 2026 05:43:09 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 05:43:09 GMT
COPY dir:bf294f09ff82d16384bebbac392bb5b44f58ff0fde6056277f77e6dc82df16e4 in /usr/share/buildinfo/      
# Thu, 20 Aug 2026 05:43:09 GMT
COPY dir:bf294f09ff82d16384bebbac392bb5b44f58ff0fde6056277f77e6dc82df16e4 in /root/buildinfo/      
# Thu, 20 Aug 2026 05:43:09 GMT
LABEL "org.opencontainers.image.created"="2026-08-20T05:42:51Z" "org.opencontainers.image.revision"="b2232799f269a1f388bb8eab702d61fa78c72fce" "build-date"="2026-08-20T05:42:51Z" "architecture"="x86_64" "vcs-ref"="b2232799f269a1f388bb8eab702d61fa78c72fce" "vcs-type"="git" "release"="1787204459"org.opencontainers.image.created=2026-08-20T05:42:51Z,org.opencontainers.image.revision=b2232799f269a1f388bb8eab702d61fa78c72fce
# Mon, 24 Aug 2026 18:06:43 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-21-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Mon, 24 Aug 2026 18:06:43 GMT
ENV NEO4J_SHA256=5697d800b0e6622e36ec6faa41541398293982461b5d144a543d32daa2499310 NEO4J_TARBALL=neo4j-enterprise-5.26.30-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Mon, 24 Aug 2026 18:06:43 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.30-unix.tar.gz
# Mon, 24 Aug 2026 18:06:43 GMT
COPY ./local-package/* /startup/ # buildkit
# Mon, 24 Aug 2026 18:06:53 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.30-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Mon, 24 Aug 2026 18:06:53 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Aug 2026 18:06:53 GMT
WORKDIR /var/lib/neo4j
# Mon, 24 Aug 2026 18:06:53 GMT
VOLUME [/data /logs]
# Mon, 24 Aug 2026 18:06:53 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Mon, 24 Aug 2026 18:06:53 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Mon, 24 Aug 2026 18:06:53 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:d61293fa3d3593fa639f5bfdc418af2cbb4e25ccdf20c6ff76fc342b18e72883`  
		Last Modified: Thu, 20 Aug 2026 06:41:10 GMT  
		Size: 34.9 MB (34881705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:994a9059a7c7505d5f413c930b2fb056fd90f3f6dcd154590e83c2e2e0780ddd`  
		Last Modified: Mon, 24 Aug 2026 18:07:24 GMT  
		Size: 86.3 MB (86254226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad686cc71465f61f33fcba8680d2f3566b49595215dd51bf665db3cb6d2768ac`  
		Last Modified: Mon, 24 Aug 2026 18:07:21 GMT  
		Size: 10.1 KB (10061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a09df98b1e7804cd80f4ad2e09d3e2ebb52dd8954f1d6524ee4278b6a93d5247`  
		Last Modified: Mon, 24 Aug 2026 18:07:32 GMT  
		Size: 512.7 MB (512744733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-enterprise-ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:f30c0d132b38f317a96dc5efe26b17b32eb402a547ac80e725b85d3a2ba5e05a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (1997031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef72b0ec4e807868d2198729cbddaebd869ff8e38801fb48143a71e3bf1bfb12`

```dockerfile
```

-	Layers:
	-	`sha256:f5b2fffca67e38779368cf5c630bc71c4174c5affcb4b1d433325b73238414cc`  
		Last Modified: Mon, 24 Aug 2026 18:07:21 GMT  
		Size: 2.0 MB (1976978 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a508555d193dc62ff3fe567de0261b4a392f8f268e526caface07b4ecf260d66`  
		Last Modified: Mon, 24 Aug 2026 18:07:21 GMT  
		Size: 20.1 KB (20053 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:5-enterprise-ubi10` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:b2def16a1dfaa1d7b81405d757a18beda27d02be2a8ae2c93d9b0206c0670e48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **631.0 MB (631033843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85d22a55eca2011aa667a3efb9ed50e1b05932606c246a7e96bc4d2aba685d06`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Thu, 20 Aug 2026 05:45:24 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 20 Aug 2026 05:45:24 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 20 Aug 2026 05:45:24 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 20 Aug 2026 05:45:24 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Thu, 20 Aug 2026 05:45:24 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 20 Aug 2026 05:45:24 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 20 Aug 2026 05:45:24 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 20 Aug 2026 05:45:24 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 20 Aug 2026 05:45:25 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 20 Aug 2026 05:45:25 GMT
LABEL io.openshift.expose-services=""
# Thu, 20 Aug 2026 05:45:25 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 20 Aug 2026 05:45:25 GMT
ENV container oci
# Thu, 20 Aug 2026 05:45:25 GMT
COPY dir:e44f9197bfd72bc658385b5b15ab7462e17e7efd592f16da1d8b4e59c9a00dc2 in /      
# Thu, 20 Aug 2026 05:45:25 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 20 Aug 2026 05:45:25 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 05:45:25 GMT
COPY dir:7954bbfaabcb4f9d29560c7d7cdb21c9cca4ba55a953c5ccc5d80e9881cc587c in /usr/share/buildinfo/      
# Thu, 20 Aug 2026 05:45:26 GMT
COPY dir:7954bbfaabcb4f9d29560c7d7cdb21c9cca4ba55a953c5ccc5d80e9881cc587c in /root/buildinfo/      
# Thu, 20 Aug 2026 05:45:26 GMT
LABEL "org.opencontainers.image.created"="2026-08-20T05:45:03Z" "org.opencontainers.image.revision"="b2232799f269a1f388bb8eab702d61fa78c72fce" "build-date"="2026-08-20T05:45:03Z" "architecture"="aarch64" "vcs-ref"="b2232799f269a1f388bb8eab702d61fa78c72fce" "vcs-type"="git" "release"="1787204459"org.opencontainers.image.created=2026-08-20T05:45:03Z,org.opencontainers.image.revision=b2232799f269a1f388bb8eab702d61fa78c72fce
# Mon, 24 Aug 2026 18:06:21 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-21-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Mon, 24 Aug 2026 18:06:21 GMT
ENV NEO4J_SHA256=5697d800b0e6622e36ec6faa41541398293982461b5d144a543d32daa2499310 NEO4J_TARBALL=neo4j-enterprise-5.26.30-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Mon, 24 Aug 2026 18:06:21 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.30-unix.tar.gz
# Mon, 24 Aug 2026 18:06:21 GMT
COPY ./local-package/* /startup/ # buildkit
# Mon, 24 Aug 2026 18:06:32 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.30-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Mon, 24 Aug 2026 18:06:32 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Aug 2026 18:06:32 GMT
WORKDIR /var/lib/neo4j
# Mon, 24 Aug 2026 18:06:32 GMT
VOLUME [/data /logs]
# Mon, 24 Aug 2026 18:06:32 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Mon, 24 Aug 2026 18:06:32 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Mon, 24 Aug 2026 18:06:32 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:68774b1c806af71a34a179e2397bd0a4568f97681106fab710192c96e498f363`  
		Last Modified: Thu, 20 Aug 2026 06:41:06 GMT  
		Size: 33.1 MB (33110773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe2e925987efaa0d2e79f2ac7eb77b28aae047caeb417926f1b0697298187b3d`  
		Last Modified: Mon, 24 Aug 2026 18:07:05 GMT  
		Size: 85.2 MB (85168379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f59fd7f5f954dc6de8e7f9bec1801d05caedb46d285b542a14e2bbc92ca2cd`  
		Last Modified: Mon, 24 Aug 2026 18:06:40 GMT  
		Size: 10.1 KB (10061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66d9c0479100b1d18ea0aab765944d65408f9a2ede17a11523c0b478c93d4d9a`  
		Last Modified: Mon, 24 Aug 2026 18:07:12 GMT  
		Size: 512.7 MB (512744598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-enterprise-ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:1b69fe33c38e362fa4a37ce8a71675ee67764d55312da917c79c488359d417db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (1996379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c7b12de8d7a9c797955ff176ce8eb0cd35af6b68e54d6007a924108c97da129`

```dockerfile
```

-	Layers:
	-	`sha256:af5470656656e013a454911e1c9c1309e46d35ea0ec49dd9503802bae8603c59`  
		Last Modified: Mon, 24 Aug 2026 18:07:02 GMT  
		Size: 2.0 MB (1976225 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:76ec142c15da009d14e750236a168418f5365c5a495fd3c6d8baee69982bd33b`  
		Last Modified: Mon, 24 Aug 2026 18:07:02 GMT  
		Size: 20.2 KB (20154 bytes)  
		MIME: application/vnd.in-toto+json
