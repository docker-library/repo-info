## `neo4j:5-enterprise-ubi10`

```console
$ docker pull neo4j@sha256:60979ef80432b8ecf75e53fd3e7673ef2e1734e28cccbd1833e3fd0f82e3b321
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:5-enterprise-ubi10` - linux; amd64

```console
$ docker pull neo4j@sha256:63ea46f4b4b1d7a6bd1b6414f2c1e28a2c081592a034771dd4fbdb894f00bcd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **625.2 MB (625249425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc1e51b579c24ddc8557e0ec174f2456d4a159817c2c170981bf5764e0ac64e2`
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
# Tue, 21 Jul 2026 17:09:23 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-21-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Tue, 21 Jul 2026 17:09:23 GMT
ENV NEO4J_SHA256=3434b34d02fa4e281d669a11eb4141e5a3b20f79360f1a2f093f28e9b526281b NEO4J_TARBALL=neo4j-enterprise-5.26.28-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Tue, 21 Jul 2026 17:09:23 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.28-unix.tar.gz
# Tue, 21 Jul 2026 17:09:23 GMT
COPY ./local-package/* /startup/ # buildkit
# Tue, 21 Jul 2026 17:09:33 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.28-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Tue, 21 Jul 2026 17:09:33 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Jul 2026 17:09:33 GMT
WORKDIR /var/lib/neo4j
# Tue, 21 Jul 2026 17:09:33 GMT
VOLUME [/data /logs]
# Tue, 21 Jul 2026 17:09:33 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Tue, 21 Jul 2026 17:09:33 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Tue, 21 Jul 2026 17:09:33 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:9c35cef7c7f5d6e8530d291b7ae98db7bafbd6acb32807d414a20ba1412b4cee`  
		Last Modified: Mon, 20 Jul 2026 21:46:40 GMT  
		Size: 34.9 MB (34879050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8b5e346f8e2b5745b7d7c489d955b7fc793622504ca75f310ae081e6320b0b1`  
		Last Modified: Tue, 21 Jul 2026 17:10:03 GMT  
		Size: 86.2 MB (86221252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c717ad3aaeea1f9cccabf7c992c563c386b06e8578505374a49488b90aa44550`  
		Last Modified: Tue, 21 Jul 2026 17:10:00 GMT  
		Size: 10.1 KB (10062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c1c56f20ff2f2db263d3a83176494a93d79527927a21d371c99f3a5e2b2fba6`  
		Last Modified: Tue, 21 Jul 2026 17:10:10 GMT  
		Size: 504.1 MB (504139029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-enterprise-ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:e155be9dc83e224e9e8044c07b9ab133d77d46144d693a375553e09f8ce378f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (1995346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98acd91a131677facd105c6145338fba2345e0a23c089ba536f6a8a28d22855a`

```dockerfile
```

-	Layers:
	-	`sha256:fb1dc308271040e749983f0aeef36e1e1e5fa45ed9eec16e45a998e22297a270`  
		Last Modified: Tue, 21 Jul 2026 17:10:00 GMT  
		Size: 2.0 MB (1975293 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08b7299e8963c0b5abd6739d69a793b2b86af5d556213bcdd59838af68be3a50`  
		Last Modified: Tue, 21 Jul 2026 17:10:00 GMT  
		Size: 20.1 KB (20053 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:5-enterprise-ubi10` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:dc6daceea3db5a2bfd19363665823e9aa58a20b9e0fc8fb82b01a67c5ce7ac4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **622.4 MB (622356508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a9022c908eccf58901c68a6cac7c5280f1400bfb78bdc8a5631398e9fc3be7e`
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
# Tue, 21 Jul 2026 17:05:20 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-21-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Tue, 21 Jul 2026 17:05:20 GMT
ENV NEO4J_SHA256=3434b34d02fa4e281d669a11eb4141e5a3b20f79360f1a2f093f28e9b526281b NEO4J_TARBALL=neo4j-enterprise-5.26.28-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Tue, 21 Jul 2026 17:05:20 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.28-unix.tar.gz
# Tue, 21 Jul 2026 17:05:20 GMT
COPY ./local-package/* /startup/ # buildkit
# Tue, 21 Jul 2026 17:05:50 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.28-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Tue, 21 Jul 2026 17:05:50 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Jul 2026 17:05:50 GMT
WORKDIR /var/lib/neo4j
# Tue, 21 Jul 2026 17:05:50 GMT
VOLUME [/data /logs]
# Tue, 21 Jul 2026 17:05:50 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Tue, 21 Jul 2026 17:05:50 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Tue, 21 Jul 2026 17:05:50 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:9e87f0b05623e42064eff2c03f371c8ad59cb9096807807d8d149c97eb66a9e5`  
		Last Modified: Mon, 20 Jul 2026 21:53:27 GMT  
		Size: 33.0 MB (33038839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e96171ce838a64801630e287698dede6387fbf7454fdd9c4b44910d73ee160b0`  
		Last Modified: Tue, 21 Jul 2026 17:06:24 GMT  
		Size: 85.2 MB (85168472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c013f2414c8fb8f28fb97b6ef0724ddad917093629017632900339d9c346035a`  
		Last Modified: Tue, 21 Jul 2026 17:06:22 GMT  
		Size: 10.1 KB (10062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:165806b4e7dda565919209b83d16cd6a74adae627728b876b3a6565a4b95ca3d`  
		Last Modified: Tue, 21 Jul 2026 17:06:31 GMT  
		Size: 504.1 MB (504139103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-enterprise-ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:3280133f8b4be699cec44a9c47449d189ed7676a192b13f0e94274e009628557
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (1994694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9e208f512ca89483338c8adb29e99aac9991c9ca602289356ad5453c7d15ecc`

```dockerfile
```

-	Layers:
	-	`sha256:ae0be302eee01c0410fa41ef1839f6f2d0286cf4b7a04826dd609023f16bc190`  
		Last Modified: Tue, 21 Jul 2026 17:06:19 GMT  
		Size: 2.0 MB (1974540 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a211a2cb0f871d2b29ae2216e0f3cead658f1f2df06cce81d3575b26cafca01`  
		Last Modified: Tue, 21 Jul 2026 17:06:19 GMT  
		Size: 20.2 KB (20154 bytes)  
		MIME: application/vnd.in-toto+json
