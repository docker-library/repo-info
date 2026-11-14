## `percona:psmdb-8.3`

```console
$ docker pull percona@sha256:ae6e15b8bdc183175dd81a31607499f7abd378ebd498aeebd145505982c34d9d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-8.3` - linux; amd64

```console
$ docker pull percona@sha256:8071614ef4b9455c47cc1875ae065931df35fb67eb4ce060435ce113924fed1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.8 MB (393826677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca8594773d39d8db17ec94a583d397d3f1ae55560049585718891698d3118832`
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
# Fri, 13 Nov 2026 21:43:14 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Fri, 13 Nov 2026 21:43:14 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Fri, 13 Nov 2026 21:43:14 GMT
ENV PSMDB_VERSION=8.3.13-4
# Fri, 13 Nov 2026 21:43:14 GMT
ENV OS_VER=el9
# Fri, 13 Nov 2026 21:43:14 GMT
ENV FULL_PERCONA_VERSION=8.3.13-4.el9
# Fri, 13 Nov 2026 21:43:14 GMT
ENV MONGO_TOOLS_VERSION=100.19.1-2
# Fri, 13 Nov 2026 21:43:14 GMT
ENV FULL_MONGO_TOOLS_VERSION=100.19.1-2.el9
# Fri, 13 Nov 2026 21:43:14 GMT
ENV MONGOSH_VERSION=2.13.0-1
# Fri, 13 Nov 2026 21:43:14 GMT
ENV FULL_MONGOSH_VERSION=2.13.0-1.el9
# Fri, 13 Nov 2026 21:43:14 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Fri, 13 Nov 2026 21:43:14 GMT
ENV PSMDB_REPO=release
# Fri, 13 Nov 2026 21:43:14 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Fri, 13 Nov 2026 21:43:14 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Fri, 13 Nov 2026 21:43:14 GMT
ENV CALL_HOME_VERSION=0.1
# Fri, 13 Nov 2026 21:43:14 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Fri, 13 Nov 2026 21:43:36 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-83 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_MONGO_TOOLS_VERSION}         percona-mongodb-mongosh-${FULL_MONGOSH_VERSION}         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-83/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Fri, 13 Nov 2026 21:43:36 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Fri, 13 Nov 2026 21:43:36 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Fri, 13 Nov 2026 21:43:36 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Fri, 13 Nov 2026 21:43:36 GMT
ENV GOSU_VERSION=1.11
# Fri, 13 Nov 2026 21:43:38 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Fri, 13 Nov 2026 21:43:38 GMT
VOLUME [/data/db]
# Fri, 13 Nov 2026 21:43:38 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Fri, 13 Nov 2026 21:43:39 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Fri, 13 Nov 2026 21:43:39 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Fri, 13 Nov 2026 21:43:39 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Fri, 13 Nov 2026 21:43:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 13 Nov 2026 21:43:39 GMT
EXPOSE map[27017/tcp:{}]
# Fri, 13 Nov 2026 21:43:39 GMT
USER 1001
# Fri, 13 Nov 2026 21:43:39 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:a910e564830ecfbbdd4d0f366b4c40043cd255993dfb8d713b53c0b186a7eaa4`  
		Last Modified: Thu, 12 Nov 2026 09:38:47 GMT  
		Size: 40.7 MB (40669413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaa8e74526053bb7874bbb9d203207c4b269c2f7f2ddbe7ecf250387ac17707d`  
		Last Modified: Fri, 13 Nov 2026 21:44:15 GMT  
		Size: 9.1 MB (9129750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf6f88fb3ef126ec1cb2d59a7f5ceaff4b6639a7ac43ad8864a43d46963b42e3`  
		Last Modified: Fri, 13 Nov 2026 21:44:21 GMT  
		Size: 343.1 MB (343074555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:357f154f008f15e2f42fb4e215170438205cf7b996af111195867f78ecc99ef6`  
		Last Modified: Fri, 13 Nov 2026 21:44:14 GMT  
		Size: 1.7 KB (1675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f75cbb405458967f2194c9b50da9c95194e254842ce3baf023975d67fa4fe058`  
		Last Modified: Fri, 13 Nov 2026 21:44:14 GMT  
		Size: 4.1 KB (4072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7c9e84c3e9a5ace7445652e29164be9375b4033eabc4b5566b131fb42d557ce`  
		Last Modified: Fri, 13 Nov 2026 21:44:16 GMT  
		Size: 10.6 KB (10576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0417fa8f5316e67bb2f3246f5d451e5e1998d4b947d95eea4c2b635ce099331`  
		Last Modified: Fri, 13 Nov 2026 21:44:16 GMT  
		Size: 914.5 KB (914516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3f2b87d7149739bc24c51a3dde1f04f21a7d954a67c7e2528eb76433189ea8c`  
		Last Modified: Fri, 13 Nov 2026 21:44:16 GMT  
		Size: 13.2 KB (13204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:410fea7f131c699d46311d04248050c7bf2044083a50bebaa8996d7b4aa4f32b`  
		Last Modified: Fri, 13 Nov 2026 21:44:17 GMT  
		Size: 4.0 KB (3955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:084c8b0d146c052cc3e8dde97297dd49cd3464201aeb2ad826cc1ae514f4390a`  
		Last Modified: Fri, 13 Nov 2026 21:44:17 GMT  
		Size: 5.0 KB (4961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-8.3` - unknown; unknown

```console
$ docker pull percona@sha256:ce4ae3319964118fc83d489def05b859ad99f6ded768205846631591486455c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 KB (33856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d3661ffd6c4e9bd3c22524b12da069fe494ca6b01cc787a0009a72edd4c2353`

```dockerfile
```

-	Layers:
	-	`sha256:48b52308d8cb977b67d21fe577936fd94fd3e1eadcdc79ada7ae60dd7f993741`  
		Last Modified: Fri, 13 Nov 2026 21:44:14 GMT  
		Size: 33.9 KB (33856 bytes)  
		MIME: application/vnd.in-toto+json
