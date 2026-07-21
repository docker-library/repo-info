## `neo4j:enterprise-ubi10`

```console
$ docker pull neo4j@sha256:ec4e5252b974a5dc6afe967513dea6141cb79c0c8313f5613ffd545a81c827cd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:enterprise-ubi10` - linux; amd64

```console
$ docker pull neo4j@sha256:ada01264efc9b9aa5699dabb04d3019c7c3849a724657c08538507873f806fb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **549.3 MB (549336272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f088e9f00faf1b5e9a92e9c48ccdc236b58c26cd0bfb1fe2692949087dfd08fc`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 20 Jul 2026 21:05:29 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 20 Jul 2026 21:05:29 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 20 Jul 2026 21:05:29 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 20 Jul 2026 21:05:29 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 20 Jul 2026 21:05:29 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 20 Jul 2026 21:05:29 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 20 Jul 2026 21:05:29 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 20 Jul 2026 21:05:29 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 20 Jul 2026 21:05:29 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 20 Jul 2026 21:05:29 GMT
LABEL io.openshift.expose-services=""
# Mon, 20 Jul 2026 21:05:29 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 20 Jul 2026 21:05:29 GMT
ENV container oci
# Mon, 20 Jul 2026 21:05:29 GMT
COPY dir:be65801bfe1d5d542d5581f62937bedfc51bd9ef20db9247657ff82a1f9c7002 in /      
# Mon, 20 Jul 2026 21:05:29 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 20 Jul 2026 21:05:29 GMT
CMD ["/bin/bash"]
# Mon, 20 Jul 2026 21:05:29 GMT
COPY dir:7e813dae0991761a17220188f1cf70522a87e98e24121b15c124138fea14766e in /usr/share/buildinfo/      
# Mon, 20 Jul 2026 21:05:29 GMT
COPY dir:7e813dae0991761a17220188f1cf70522a87e98e24121b15c124138fea14766e in /root/buildinfo/      
# Mon, 20 Jul 2026 21:05:30 GMT
LABEL "org.opencontainers.image.created"="2026-07-20T21:05:08Z" "org.opencontainers.image.revision"="71f84d0717d42d49af1ce4d67019f56edf8b1f68" "build-date"="2026-07-20T21:05:08Z" "architecture"="x86_64" "vcs-ref"="71f84d0717d42d49af1ce4d67019f56edf8b1f68" "vcs-type"="git" "release"="1784581369"org.opencontainers.image.created=2026-07-20T21:05:08Z,org.opencontainers.image.revision=71f84d0717d42d49af1ce4d67019f56edf8b1f68
# Tue, 21 Jul 2026 17:09:22 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-25-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Tue, 21 Jul 2026 17:09:22 GMT
ENV NEO4J_SHA256=659c0b51430f32d9461b3b9cb4e459b1df064f393cb2db0f7fce3858a9092b6e NEO4J_TARBALL=neo4j-enterprise-2026.06.0-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Tue, 21 Jul 2026 17:09:22 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.06.0-unix.tar.gz
# Tue, 21 Jul 2026 17:09:22 GMT
COPY ./local-package/* /startup/ # buildkit
# Tue, 21 Jul 2026 17:09:30 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.06.0-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Tue, 21 Jul 2026 17:09:30 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Jul 2026 17:09:30 GMT
WORKDIR /var/lib/neo4j
# Tue, 21 Jul 2026 17:09:30 GMT
VOLUME [/data /logs]
# Tue, 21 Jul 2026 17:09:30 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Tue, 21 Jul 2026 17:09:30 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Tue, 21 Jul 2026 17:09:30 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:9c35cef7c7f5d6e8530d291b7ae98db7bafbd6acb32807d414a20ba1412b4cee`  
		Last Modified: Mon, 20 Jul 2026 21:46:40 GMT  
		Size: 34.9 MB (34879050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3740f035cade037f4a42c1eb69f6fd76b7eaab5ff27e42f6f4c384479eb7e812`  
		Last Modified: Tue, 21 Jul 2026 17:10:00 GMT  
		Size: 100.7 MB (100652560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3360cb5d9aeb627f6b5dd451a0232b72d233ab704814df94e36d7201715c452`  
		Last Modified: Tue, 21 Jul 2026 17:09:56 GMT  
		Size: 10.0 KB (10018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:339aa9346269ee809f3dd50b3216ad7fb84b835593601cbd3f5ca78b2c98bebb`  
		Last Modified: Tue, 21 Jul 2026 17:10:05 GMT  
		Size: 413.8 MB (413794612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:enterprise-ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:7810aeebf96cd7f4c27b3499b75a128423af72101a97dfd8fc431a3d1f5a1f98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2071315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:565482b862c50adaf30f3f27b6aa8b2251bf750dfd98c806201bf3971ce58e57`

```dockerfile
```

-	Layers:
	-	`sha256:ac5e70775dae294bf3dd506cc5a7e27d6333438c263d869742105c3e9d45ab12`  
		Last Modified: Tue, 21 Jul 2026 17:09:56 GMT  
		Size: 2.1 MB (2050912 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:270f6eae4671d5d78dc385b9af0dc087a872806fef8b664d83799ef783142b6c`  
		Last Modified: Tue, 21 Jul 2026 17:09:56 GMT  
		Size: 20.4 KB (20403 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:enterprise-ubi10` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:931f4d925425fc30ae17434cabc6a72c039b912b17262c70329c23fa5370e246
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **546.2 MB (546189664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:247d5709ff109a3b07f7c962e3eacc0ae6e221d1861db92166a01e0918022fdc`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 20 Jul 2026 21:07:32 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 20 Jul 2026 21:07:32 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 20 Jul 2026 21:07:32 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 20 Jul 2026 21:07:32 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 20 Jul 2026 21:07:32 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 20 Jul 2026 21:07:32 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 20 Jul 2026 21:07:32 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 20 Jul 2026 21:07:32 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 20 Jul 2026 21:07:32 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 20 Jul 2026 21:07:32 GMT
LABEL io.openshift.expose-services=""
# Mon, 20 Jul 2026 21:07:32 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 20 Jul 2026 21:07:32 GMT
ENV container oci
# Mon, 20 Jul 2026 21:07:33 GMT
COPY dir:62b4a42eb40600c59bfd1fd54712a84c802a4e9884ee9756642eb56fa9e3dded in /      
# Mon, 20 Jul 2026 21:07:33 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 20 Jul 2026 21:07:33 GMT
CMD ["/bin/bash"]
# Mon, 20 Jul 2026 21:07:33 GMT
COPY dir:9e3ac7ef784ea1786b4c0db58729498372dfbd1d076c9d076141fd7f15208171 in /usr/share/buildinfo/      
# Mon, 20 Jul 2026 21:07:33 GMT
COPY dir:9e3ac7ef784ea1786b4c0db58729498372dfbd1d076c9d076141fd7f15208171 in /root/buildinfo/      
# Mon, 20 Jul 2026 21:07:34 GMT
LABEL "org.opencontainers.image.created"="2026-07-20T21:07:11Z" "org.opencontainers.image.revision"="71f84d0717d42d49af1ce4d67019f56edf8b1f68" "build-date"="2026-07-20T21:07:11Z" "architecture"="aarch64" "vcs-ref"="71f84d0717d42d49af1ce4d67019f56edf8b1f68" "vcs-type"="git" "release"="1784581369"org.opencontainers.image.created=2026-07-20T21:07:11Z,org.opencontainers.image.revision=71f84d0717d42d49af1ce4d67019f56edf8b1f68
# Tue, 21 Jul 2026 17:04:42 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-25-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Tue, 21 Jul 2026 17:04:42 GMT
ENV NEO4J_SHA256=659c0b51430f32d9461b3b9cb4e459b1df064f393cb2db0f7fce3858a9092b6e NEO4J_TARBALL=neo4j-enterprise-2026.06.0-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Tue, 21 Jul 2026 17:04:42 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.06.0-unix.tar.gz
# Tue, 21 Jul 2026 17:04:42 GMT
COPY ./local-package/* /startup/ # buildkit
# Tue, 21 Jul 2026 17:05:03 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.06.0-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Tue, 21 Jul 2026 17:05:03 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Jul 2026 17:05:03 GMT
WORKDIR /var/lib/neo4j
# Tue, 21 Jul 2026 17:05:03 GMT
VOLUME [/data /logs]
# Tue, 21 Jul 2026 17:05:03 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Tue, 21 Jul 2026 17:05:03 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Tue, 21 Jul 2026 17:05:03 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:9e87f0b05623e42064eff2c03f371c8ad59cb9096807807d8d149c97eb66a9e5`  
		Last Modified: Mon, 20 Jul 2026 21:53:27 GMT  
		Size: 33.0 MB (33038839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6295886d52766559f38de5dd34edb2e1e3346f39044d66c75d282030185f8aa8`  
		Last Modified: Tue, 21 Jul 2026 17:05:33 GMT  
		Size: 99.3 MB (99346182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23a1551cb822338c9861655c2e1d260652cf298896cf96905e3193ac4a16fa3f`  
		Last Modified: Tue, 21 Jul 2026 17:05:29 GMT  
		Size: 10.0 KB (10014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1acc29e1c991e35142a461561d714f999ffe74dda6f14d5333c8893dd4208cb`  
		Last Modified: Tue, 21 Jul 2026 17:05:38 GMT  
		Size: 413.8 MB (413794597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:enterprise-ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:de0ace5c01e09bd0b45b28f806c1841ab7a878a72258457ce7375d4df87560c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2070680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:183c186ed745ca3ba33488fec402b8010ebd0a5651730413daed9357fdbb7fe5`

```dockerfile
```

-	Layers:
	-	`sha256:3a40b2c422a146b7e8c9119ad89193c7b3e4642e077a5be8ed80003f28191c2b`  
		Last Modified: Tue, 21 Jul 2026 17:05:30 GMT  
		Size: 2.1 MB (2050168 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66df5c94b2f4fda9ef6bc6ad6ae9fb8147a56e5190d12f7735774e271b256668`  
		Last Modified: Tue, 21 Jul 2026 17:05:30 GMT  
		Size: 20.5 KB (20512 bytes)  
		MIME: application/vnd.in-toto+json
