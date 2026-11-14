## `percona:psmdb-8.0`

```console
$ docker pull percona@sha256:2dd6bd3b9cedff4f21ea2d7a874d2a866007010f4f562c044bb2623982372fd0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-8.0` - linux; amd64

```console
$ docker pull percona@sha256:9de842d38b87d49c4552219f9174b194c995bf2e60a63d330a5cc0b77238ebfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.6 MB (325616253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3beaf17447837345cd3b7cb73f6d40b2a714837145766e8aaf67469c3cc7475e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL io.openshift.expose-services=""
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 12 Nov 2026 07:10:03 GMT
ENV container oci
# Thu, 12 Nov 2026 07:10:04 GMT
COPY dir:4925913982ee23b93a5459c6c94a48de8c0673c106763b3fd70dc3eefa0ce90f in /      
# Thu, 12 Nov 2026 07:10:04 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 12 Nov 2026 07:10:04 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 07:10:04 GMT
COPY dir:fd0ea76c9f943a84d285f5b85a5dba9debc1ef1ff54714702d4773c2412fac40 in /usr/share/buildinfo/      
# Thu, 12 Nov 2026 07:10:04 GMT
COPY dir:fd0ea76c9f943a84d285f5b85a5dba9debc1ef1ff54714702d4773c2412fac40 in /root/buildinfo/      
# Thu, 12 Nov 2026 07:10:05 GMT
LABEL "org.opencontainers.image.created"="2026-11-12T07:09:34Z" "org.opencontainers.image.revision"="c500a3e71632eb6956c45968727fbf5e847c5c1d" "build-date"="2026-11-12T07:09:34Z" "architecture"="x86_64" "vcs-ref"="c500a3e71632eb6956c45968727fbf5e847c5c1d" "vcs-type"="git" "release"="1794467051"org.opencontainers.image.created=2026-11-12T07:09:34Z,org.opencontainers.image.revision=c500a3e71632eb6956c45968727fbf5e847c5c1d
# Fri, 13 Nov 2026 21:43:34 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Fri, 13 Nov 2026 21:43:34 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Fri, 13 Nov 2026 21:43:34 GMT
ENV PSMDB_VERSION=8.0.34-15
# Fri, 13 Nov 2026 21:43:34 GMT
ENV OS_VER=el9
# Fri, 13 Nov 2026 21:43:34 GMT
ENV FULL_PERCONA_VERSION=8.0.34-15.el9
# Fri, 13 Nov 2026 21:43:34 GMT
ENV MONGO_TOOLS_VERSION=100.19.1-2
# Fri, 13 Nov 2026 21:43:34 GMT
ENV FULL_MONGO_TOOLS_VERSION=100.19.1-2.el9
# Fri, 13 Nov 2026 21:43:34 GMT
ENV MONGOSH_VERSION=2.13.0-1
# Fri, 13 Nov 2026 21:43:34 GMT
ENV FULL_MONGOSH_VERSION=2.13.0-1.el9
# Fri, 13 Nov 2026 21:43:34 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Fri, 13 Nov 2026 21:43:34 GMT
ENV PSMDB_REPO=release
# Fri, 13 Nov 2026 21:43:34 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Fri, 13 Nov 2026 21:43:34 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Fri, 13 Nov 2026 21:43:34 GMT
ENV CALL_HOME_VERSION=0.1
# Fri, 13 Nov 2026 21:43:34 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Fri, 13 Nov 2026 21:43:54 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-80 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_MONGO_TOOLS_VERSION}         percona-mongodb-mongosh-${FULL_MONGOSH_VERSION}         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-80/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Fri, 13 Nov 2026 21:43:54 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Fri, 13 Nov 2026 21:43:54 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Fri, 13 Nov 2026 21:43:55 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Fri, 13 Nov 2026 21:43:55 GMT
ENV GOSU_VERSION=1.11
# Fri, 13 Nov 2026 21:43:56 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Fri, 13 Nov 2026 21:43:56 GMT
VOLUME [/data/db]
# Fri, 13 Nov 2026 21:43:56 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Fri, 13 Nov 2026 21:43:57 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Fri, 13 Nov 2026 21:43:57 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Fri, 13 Nov 2026 21:43:57 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Fri, 13 Nov 2026 21:43:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 13 Nov 2026 21:43:57 GMT
EXPOSE map[27017/tcp:{}]
# Fri, 13 Nov 2026 21:43:57 GMT
USER 1001
# Fri, 13 Nov 2026 21:43:57 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:a910e564830ecfbbdd4d0f366b4c40043cd255993dfb8d713b53c0b186a7eaa4`  
		Last Modified: Thu, 12 Nov 2026 09:38:47 GMT  
		Size: 40.7 MB (40669413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2598866d4200a489cfbc46ac15f540fa1804663439022b6c615e54b42a0912ff`  
		Last Modified: Fri, 13 Nov 2026 21:44:29 GMT  
		Size: 9.1 MB (9129752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03a04e971c715a44281ffb30d01c719c867ea281e75ff11b3a49f84948727be7`  
		Last Modified: Fri, 13 Nov 2026 21:44:34 GMT  
		Size: 274.9 MB (274864122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f3fdeb26085c06dc4e28dffc8ee60b97346d9d6f8a97eb927b9b8ffebb90082`  
		Last Modified: Fri, 13 Nov 2026 21:44:28 GMT  
		Size: 1.7 KB (1674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f85f90529726befba04ebb2c2971eab1d47aebe1f425b642a91f8cccb1b12a96`  
		Last Modified: Fri, 13 Nov 2026 21:44:28 GMT  
		Size: 4.1 KB (4072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e5d09e46fde1a551e5f510f02b75ef2bb9b6f2d66b0103817213858374215d6`  
		Last Modified: Fri, 13 Nov 2026 21:44:29 GMT  
		Size: 10.6 KB (10578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccb2e99c2bd68b05c44a91c42e08661aa2d102f9eceb94e40e4e9df2f22e416e`  
		Last Modified: Fri, 13 Nov 2026 21:44:30 GMT  
		Size: 914.5 KB (914517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26a0992a0a43754bccc9088ca1e0e081bce009189247d8b7b1777ae367e8d9a0`  
		Last Modified: Fri, 13 Nov 2026 21:44:30 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0c9854b5b2309b5efbe9e4dfd18e820275e2c7436cfd5acdce264551786051c`  
		Last Modified: Fri, 13 Nov 2026 21:44:31 GMT  
		Size: 4.0 KB (3956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfe0f1a848c0dffe4b209fec628f59b3c1c2a97dc2dba86be8ef8b361a0641a8`  
		Last Modified: Fri, 13 Nov 2026 21:44:31 GMT  
		Size: 5.0 KB (4964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-8.0` - unknown; unknown

```console
$ docker pull percona@sha256:f36dbd2cf8c0ecc16df62691cc777f2c29b0ce9cc97a04614c525685cc4bf2aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 KB (33869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d772c307329428ab60be790d661d3d9f3cbf6f2815b905d0bc92353f8fdc6cc7`

```dockerfile
```

-	Layers:
	-	`sha256:a24a005ca45221ee13394039e05a60bf665771802cd80a8742fb910205204288`  
		Last Modified: Fri, 13 Nov 2026 21:44:28 GMT  
		Size: 33.9 KB (33869 bytes)  
		MIME: application/vnd.in-toto+json
