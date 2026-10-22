## `neo4j:2026-enterprise-ubi10`

```console
$ docker pull neo4j@sha256:ed9bd623f7dba29801d997661f6ae920e30ecde003f2ecb9353d821d30e36119
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:2026-enterprise-ubi10` - linux; amd64

```console
$ docker pull neo4j@sha256:cede58160adeb349aabcccb1a6bbf8437bdfc0a1ed71ac96cf4ce6ad0790996d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **581.5 MB (581457548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5257e81c1f20a53e9bab1ef667135ca11e354beae2fb1dea8f3dffd4c2536fc4`
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
# Wed, 21 Oct 2026 21:50:32 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-25-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Wed, 21 Oct 2026 21:50:32 GMT
ENV NEO4J_SHA256=aa6006e5f8bb93c144ac8a7cc5bf1bdc48332ac4626b6c5d527c1a0be92116a0 NEO4J_TARBALL=neo4j-enterprise-2026.10.0-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Wed, 21 Oct 2026 21:50:32 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.10.0-unix.tar.gz
# Wed, 21 Oct 2026 21:50:32 GMT
COPY ./local-package/* /startup/ # buildkit
# Wed, 21 Oct 2026 21:50:40 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.10.0-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Wed, 21 Oct 2026 21:50:40 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:50:40 GMT
WORKDIR /var/lib/neo4j
# Wed, 21 Oct 2026 21:50:40 GMT
VOLUME [/data /logs]
# Wed, 21 Oct 2026 21:50:40 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Wed, 21 Oct 2026 21:50:40 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:50:40 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:87420a9ecd145c9a242c1eaa570c6b7327b097ddb3bf3d58c96ba0e75e0d3edc`  
		Last Modified: Tue, 20 Oct 2026 02:09:48 GMT  
		Size: 35.0 MB (34961973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c2cebe92cbbd0cc4b453571bd5bbb55771723dfead98d3b01e9a80f5ef70826`  
		Last Modified: Wed, 21 Oct 2026 21:51:10 GMT  
		Size: 100.8 MB (100804886 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aab9d4254738909eb77cb8392c4e74722caac9377acbb9386a940ee20b000843`  
		Last Modified: Wed, 21 Oct 2026 21:51:05 GMT  
		Size: 10.0 KB (10028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51e98c1d8b9c053aea943c6db922c28197cc00649097303a12637096c14a5a90`  
		Last Modified: Wed, 21 Oct 2026 21:51:16 GMT  
		Size: 445.7 MB (445680629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:2026-enterprise-ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:b94220633eda72c2d2cfe21e23360e55789abb18373c97d7cb8346c2854b1df9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2106239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa5456fcb479ed80f974772951f8d8791fea25c2e22466322c3450d2dea7e5e2`

```dockerfile
```

-	Layers:
	-	`sha256:81da72d4046fd8bbd4e700232fb9a7af43e0825780cd8dd1a2ceee7b3e334ced`  
		Last Modified: Wed, 21 Oct 2026 21:51:05 GMT  
		Size: 2.1 MB (2085836 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:651bba58e901cd0ab9cc83149cbf9c48131f38549363c1d131f04021a4808336`  
		Last Modified: Wed, 21 Oct 2026 21:51:05 GMT  
		Size: 20.4 KB (20403 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:2026-enterprise-ubi10` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:191630fb718556708f6c207285f5729a2dc03b90600f99f00056b34d796ef2e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **578.3 MB (578279569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be65643754357ad8bda02bc3f7505e001872840975029233c1d83f8fc22d3578`
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
# Wed, 21 Oct 2026 22:26:08 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-25-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Wed, 21 Oct 2026 22:26:08 GMT
ENV NEO4J_SHA256=aa6006e5f8bb93c144ac8a7cc5bf1bdc48332ac4626b6c5d527c1a0be92116a0 NEO4J_TARBALL=neo4j-enterprise-2026.10.0-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Wed, 21 Oct 2026 22:26:08 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.10.0-unix.tar.gz
# Wed, 21 Oct 2026 22:26:08 GMT
COPY ./local-package/* /startup/ # buildkit
# Wed, 21 Oct 2026 22:26:17 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.10.0-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Wed, 21 Oct 2026 22:26:17 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:26:17 GMT
WORKDIR /var/lib/neo4j
# Wed, 21 Oct 2026 22:26:17 GMT
VOLUME [/data /logs]
# Wed, 21 Oct 2026 22:26:17 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Wed, 21 Oct 2026 22:26:17 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:26:17 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:de452dfec330a84b0272627b023d15c8c60dd01f2776e3bfb8479177eea5f9e8`  
		Last Modified: Tue, 20 Oct 2026 02:12:17 GMT  
		Size: 33.1 MB (33146454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bd9e4a4ef808ac0f1a731b940144fb7cd0585da1c1fdd421eb7562a5700b95c`  
		Last Modified: Wed, 21 Oct 2026 22:26:49 GMT  
		Size: 99.4 MB (99442442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbfeb7525137cd4c83b429b39a73441030f569a096f4a22f60f11a53b9ebc0ca`  
		Last Modified: Wed, 21 Oct 2026 22:26:45 GMT  
		Size: 10.0 KB (10027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a66c10a8dd3a12e748807b42bf1ce8322935c519b0ad736b97eec00c623441b`  
		Last Modified: Wed, 21 Oct 2026 22:26:54 GMT  
		Size: 445.7 MB (445680614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:2026-enterprise-ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:b40883dcd03d934c4d925170c1064e763ea8cc9bc04bad7e6a9a49a6eacd462d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2105604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a87268a5cf9dc0eb9d70e28e99165e1695f60fdd20c67d31b89adad8f64a7005`

```dockerfile
```

-	Layers:
	-	`sha256:71355d25fac1d24517a4d4ae484517d9525bd6531f08742d141b6a5d26ab20a8`  
		Last Modified: Wed, 21 Oct 2026 22:26:45 GMT  
		Size: 2.1 MB (2085092 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a27d99e196fe868bbc38626fbc67f0981b00122a176168a21ffc99c210674ee6`  
		Last Modified: Wed, 21 Oct 2026 22:26:45 GMT  
		Size: 20.5 KB (20512 bytes)  
		MIME: application/vnd.in-toto+json
