## `neo4j:5-enterprise-ubi10`

```console
$ docker pull neo4j@sha256:2696164f81cd12153e81999990f49655b0461dc544297eb93b105fb863a656f6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:5-enterprise-ubi10` - linux; amd64

```console
$ docker pull neo4j@sha256:8896ed2318f2829b6a6ee5076858c0d8ff44cbc216313cb07077f0bc4a020f58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **625.3 MB (625320200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c3678a141897227ecc887376fc849a150b89646812ca6a6ef223b4210c72a0e`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL io.openshift.expose-services=""
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 21 Jul 2026 21:26:51 GMT
ENV container oci
# Tue, 21 Jul 2026 21:26:52 GMT
COPY dir:b8ce0462b23033a189e5c4dd0f5c6ccb96b3cec90716c47359623a67ff89ff8a in /      
# Tue, 21 Jul 2026 21:26:52 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 21 Jul 2026 21:26:52 GMT
CMD ["/bin/bash"]
# Tue, 21 Jul 2026 21:26:52 GMT
COPY dir:252f351b421304c992996882cb00d6f04fd6ac2c0d6c63f07b755dedc3bc9246 in /usr/share/buildinfo/      
# Tue, 21 Jul 2026 21:26:52 GMT
COPY dir:252f351b421304c992996882cb00d6f04fd6ac2c0d6c63f07b755dedc3bc9246 in /root/buildinfo/      
# Tue, 21 Jul 2026 21:26:52 GMT
LABEL "org.opencontainers.image.created"="2026-07-21T21:26:32Z" "org.opencontainers.image.revision"="f2cd6e345a1ff2cf7cb9fe0fd0a23c457fd8882a" "build-date"="2026-07-21T21:26:32Z" "architecture"="x86_64" "vcs-ref"="f2cd6e345a1ff2cf7cb9fe0fd0a23c457fd8882a" "vcs-type"="git" "release"="1784669047"org.opencontainers.image.created=2026-07-21T21:26:32Z,org.opencontainers.image.revision=f2cd6e345a1ff2cf7cb9fe0fd0a23c457fd8882a
# Wed, 22 Jul 2026 18:31:03 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-21-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Wed, 22 Jul 2026 18:31:03 GMT
ENV NEO4J_SHA256=3434b34d02fa4e281d669a11eb4141e5a3b20f79360f1a2f093f28e9b526281b NEO4J_TARBALL=neo4j-enterprise-5.26.28-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Wed, 22 Jul 2026 18:31:03 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.28-unix.tar.gz
# Wed, 22 Jul 2026 18:31:03 GMT
COPY ./local-package/* /startup/ # buildkit
# Wed, 22 Jul 2026 18:31:13 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.28-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Wed, 22 Jul 2026 18:31:13 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Jul 2026 18:31:13 GMT
WORKDIR /var/lib/neo4j
# Wed, 22 Jul 2026 18:31:13 GMT
VOLUME [/data /logs]
# Wed, 22 Jul 2026 18:31:13 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Wed, 22 Jul 2026 18:31:13 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Wed, 22 Jul 2026 18:31:13 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:1a70cbb74144ef90a6ddb34ce9ec12c795834baf78bdb1417827dff114fc5859`  
		Last Modified: Wed, 22 Jul 2026 00:25:25 GMT  
		Size: 34.9 MB (34943743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19067c393fe30dfac5f46526b1187386d62a5720f2aef59c47e499bbf9025cf6`  
		Last Modified: Wed, 22 Jul 2026 18:31:42 GMT  
		Size: 86.2 MB (86227334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27e20cc41d86f0f54b4de8e41704fc674845b5be6ca8665ee2e446fa503b3c3f`  
		Last Modified: Wed, 22 Jul 2026 18:31:38 GMT  
		Size: 10.1 KB (10059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:501238b3ee19889e38db96743866bce069d5dafa050a2bae2f82e7948d0eeabd`  
		Last Modified: Wed, 22 Jul 2026 18:31:50 GMT  
		Size: 504.1 MB (504139032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-enterprise-ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:6741f6fe2996e4dc0719f16c2f6f05b2238dc9f913ccc2f9a4cf0bfea15c6e21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (1995354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dffd36036d970751b49fcbb57c7e561a6f9fe44b1f7571f837c3884cba7e314b`

```dockerfile
```

-	Layers:
	-	`sha256:d8cbcdeea94f7b31ba7a173e31d81f03e503902d409cf7db185f0a18636ada2b`  
		Last Modified: Wed, 22 Jul 2026 18:31:38 GMT  
		Size: 2.0 MB (1975301 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:064e4368d3dd9cfb823ec2593c1fa7a38279fabb4e8268fac3b3ddebbc9e283c`  
		Last Modified: Wed, 22 Jul 2026 18:31:38 GMT  
		Size: 20.1 KB (20053 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:5-enterprise-ubi10` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:475595c39cad91a69e450a6fb71b515c7b2ee789afcf486e3b58facab6d1a622
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **622.4 MB (622370028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dec5584dd73d65a59f3b6ca56d2d9d7245c3feadfcdc6ca2aeb9f844143a365`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL io.openshift.expose-services=""
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 21 Jul 2026 21:30:05 GMT
ENV container oci
# Tue, 21 Jul 2026 21:30:06 GMT
COPY dir:58c4efe09946efbac1eda4e0aca465b8b6cdac53b3c03d17070e9e7933760782 in /      
# Tue, 21 Jul 2026 21:30:06 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 21 Jul 2026 21:30:06 GMT
CMD ["/bin/bash"]
# Tue, 21 Jul 2026 21:30:06 GMT
COPY dir:a9f896a5c62d3423fff2b67473319ede4242afa9801ddb241e77920e7ee4ae16 in /usr/share/buildinfo/      
# Tue, 21 Jul 2026 21:30:06 GMT
COPY dir:a9f896a5c62d3423fff2b67473319ede4242afa9801ddb241e77920e7ee4ae16 in /root/buildinfo/      
# Tue, 21 Jul 2026 21:30:07 GMT
LABEL "org.opencontainers.image.created"="2026-07-21T21:29:44Z" "org.opencontainers.image.revision"="f2cd6e345a1ff2cf7cb9fe0fd0a23c457fd8882a" "build-date"="2026-07-21T21:29:44Z" "architecture"="aarch64" "vcs-ref"="f2cd6e345a1ff2cf7cb9fe0fd0a23c457fd8882a" "vcs-type"="git" "release"="1784669047"org.opencontainers.image.created=2026-07-21T21:29:44Z,org.opencontainers.image.revision=f2cd6e345a1ff2cf7cb9fe0fd0a23c457fd8882a
# Wed, 22 Jul 2026 18:56:01 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-21-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Wed, 22 Jul 2026 18:56:01 GMT
ENV NEO4J_SHA256=3434b34d02fa4e281d669a11eb4141e5a3b20f79360f1a2f093f28e9b526281b NEO4J_TARBALL=neo4j-enterprise-5.26.28-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Wed, 22 Jul 2026 18:56:01 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.28-unix.tar.gz
# Wed, 22 Jul 2026 18:56:01 GMT
COPY ./local-package/* /startup/ # buildkit
# Wed, 22 Jul 2026 18:56:11 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.28-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Wed, 22 Jul 2026 18:56:11 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Jul 2026 18:56:11 GMT
WORKDIR /var/lib/neo4j
# Wed, 22 Jul 2026 18:56:11 GMT
VOLUME [/data /logs]
# Wed, 22 Jul 2026 18:56:11 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Wed, 22 Jul 2026 18:56:11 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Wed, 22 Jul 2026 18:56:11 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:58f664164ca85fb5b417ce6f6fffea1e66eaf780a7dedb2c483cdd5286d5ee2b`  
		Last Modified: Wed, 22 Jul 2026 00:25:47 GMT  
		Size: 33.1 MB (33053422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:256ca5ad445540fcfe353636a499eb0a73d32751bd2e7784a7e327116614ee44`  
		Last Modified: Wed, 22 Jul 2026 18:56:43 GMT  
		Size: 85.2 MB (85167448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fb34ba523cd3e8ab6ce3d9695124358045aaa9fcd367423de7df0672b1b6ce1`  
		Last Modified: Wed, 22 Jul 2026 18:56:39 GMT  
		Size: 10.1 KB (10058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e07fc020844ce26cd968f25a3a700602582adb8deb6dc3e1865e0f6fb2fbfd3`  
		Last Modified: Wed, 22 Jul 2026 18:56:52 GMT  
		Size: 504.1 MB (504139068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-enterprise-ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:1b5be2dd0feed5adb59526bddee5e3726085cb1f82fb1fd7850c402b40d050d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (1994701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44a2735411ec18909165ee7add21f3756494eedcac1f0edd2212999da57d5724`

```dockerfile
```

-	Layers:
	-	`sha256:36d6970778fce0e0b8fe28406aeaa39ce80664f78414d9a797504873f9420934`  
		Last Modified: Wed, 22 Jul 2026 18:56:40 GMT  
		Size: 2.0 MB (1974548 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8dea4d715f8d757dd52e9ad730a0cf95ee377e415a063f886512e4a007da85ef`  
		Last Modified: Wed, 22 Jul 2026 18:56:39 GMT  
		Size: 20.2 KB (20153 bytes)  
		MIME: application/vnd.in-toto+json
