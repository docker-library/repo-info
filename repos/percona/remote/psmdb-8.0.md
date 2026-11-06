## `percona:psmdb-8.0`

```console
$ docker pull percona@sha256:adbd62d869d68da28caa81f5b5c8cd5116e69853f85595f09ef5e7e3e73cb986
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-8.0` - linux; amd64

```console
$ docker pull percona@sha256:e248e8c171ef54f4ed9538caac23405a8e521a3ceb3731e00dd1d97e026eeb1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.4 MB (325389320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29b2ddfc97ca68cf6c46f09286f8375b11cd2b64d6847bdbead2d5c5f64aee07`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 05 Nov 2026 07:02:47 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 05 Nov 2026 07:02:50 GMT
ENV container oci
# Thu, 05 Nov 2026 07:02:51 GMT
COPY dir:a9fe70a4508745294cc96d107a79dbf9c40908f5c2d69ed1bd2f25ea177a0817 in /      
# Thu, 05 Nov 2026 07:02:51 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:02:52 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /root/buildinfo/      
# Thu, 05 Nov 2026 07:02:53 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:01:54Z" "org.opencontainers.image.revision"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "build-date"="2026-11-05T07:01:54Z" "architecture"="x86_64" "vcs-ref"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "vcs-type"="git" "release"="1793862054"org.opencontainers.image.created=2026-11-05T07:01:54Z,org.opencontainers.image.revision=0e057e10c76b9113e7e3307cee61e7ea4d827a31
# Thu, 05 Nov 2026 22:49:08 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Thu, 05 Nov 2026 22:49:08 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Thu, 05 Nov 2026 22:49:08 GMT
ENV PSMDB_VERSION=8.0.34-15
# Thu, 05 Nov 2026 22:49:08 GMT
ENV OS_VER=el9
# Thu, 05 Nov 2026 22:49:08 GMT
ENV FULL_PERCONA_VERSION=8.0.34-15.el9
# Thu, 05 Nov 2026 22:49:08 GMT
ENV MONGO_TOOLS_VERSION=100.19.1-2
# Thu, 05 Nov 2026 22:49:08 GMT
ENV FULL_MONGO_TOOLS_VERSION=100.19.1-2.el9
# Thu, 05 Nov 2026 22:49:08 GMT
ENV MONGOSH_VERSION=2.13.0-1
# Thu, 05 Nov 2026 22:49:08 GMT
ENV FULL_MONGOSH_VERSION=2.13.0-1.el9
# Thu, 05 Nov 2026 22:49:08 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Thu, 05 Nov 2026 22:49:08 GMT
ENV PSMDB_REPO=release
# Thu, 05 Nov 2026 22:49:08 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Thu, 05 Nov 2026 22:49:08 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Thu, 05 Nov 2026 22:49:08 GMT
ENV CALL_HOME_VERSION=0.1
# Thu, 05 Nov 2026 22:49:08 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Thu, 05 Nov 2026 22:49:29 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-80 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_MONGO_TOOLS_VERSION}         percona-mongodb-mongosh-${FULL_MONGOSH_VERSION}         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-80/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Thu, 05 Nov 2026 22:49:29 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Thu, 05 Nov 2026 22:49:29 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Thu, 05 Nov 2026 22:49:29 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Thu, 05 Nov 2026 22:49:29 GMT
ENV GOSU_VERSION=1.11
# Thu, 05 Nov 2026 22:49:31 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Thu, 05 Nov 2026 22:49:31 GMT
VOLUME [/data/db]
# Thu, 05 Nov 2026 22:49:31 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Thu, 05 Nov 2026 22:49:32 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Thu, 05 Nov 2026 22:49:32 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Thu, 05 Nov 2026 22:49:32 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 22:49:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 22:49:32 GMT
EXPOSE map[27017/tcp:{}]
# Thu, 05 Nov 2026 22:49:32 GMT
USER 1001
# Thu, 05 Nov 2026 22:49:32 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:32b344ffa7c9dd8da7d1cfc046e3d302ca99a3db1387bb8137f797a9a3a080c7`  
		Last Modified: Thu, 05 Nov 2026 07:58:51 GMT  
		Size: 40.7 MB (40656774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dddbe389e24e10461166055ce65081ae926619502a811c7f20c4749c92039357`  
		Last Modified: Thu, 05 Nov 2026 22:50:02 GMT  
		Size: 8.9 MB (8949035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f40db287d8dab9e2445bb9aeca73452cd7534c3485399c4878f7e5924dafdb72`  
		Last Modified: Thu, 05 Nov 2026 22:50:07 GMT  
		Size: 274.8 MB (274830578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d16d655402fb42e13df5f61283aae4f148e402c2c82b3ae3c908eac0f64a0c9`  
		Last Modified: Thu, 05 Nov 2026 22:50:02 GMT  
		Size: 1.6 KB (1642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebf4c9dda1c18dd523353949633c42e898ef551f10976032960dff6f2ecfa6a0`  
		Last Modified: Thu, 05 Nov 2026 22:50:02 GMT  
		Size: 4.1 KB (4072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cca41b5a7ca885315df7bdbb8a7f4ca52b8164ca85a984698119af2219bf1226`  
		Last Modified: Thu, 05 Nov 2026 22:50:03 GMT  
		Size: 10.6 KB (10577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b078a303568ef786cd23bc38424e21d6ec3979e6084b1bcac4cb1f9817c6b26f`  
		Last Modified: Thu, 05 Nov 2026 22:50:03 GMT  
		Size: 914.5 KB (914517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc69b6e0743a553db861612bde4ac5e5b5c0fbad9a2c62b76d14c818075a01f7`  
		Last Modified: Thu, 05 Nov 2026 22:50:03 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cc5b9585bedb2ff78689361fb84064b3732eb25b2e94f47d5461903a060c9ff`  
		Last Modified: Thu, 05 Nov 2026 22:50:04 GMT  
		Size: 4.0 KB (3954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09eb46efde611d7e929c9e92fa19de9d092f4f03a97f69b36f6124ad5499b7a4`  
		Last Modified: Thu, 05 Nov 2026 22:50:04 GMT  
		Size: 5.0 KB (4966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-8.0` - unknown; unknown

```console
$ docker pull percona@sha256:e610dee6574ac9c076f2dcadac1ef07225dc5eaf004de676db034b8c1f9e62db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 KB (33869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5012ea5bd72f4e62d9f62a6814051560c70bf2fca99abf90d6cc36d1b15e20a3`

```dockerfile
```

-	Layers:
	-	`sha256:78cb743e65bdd1e8f54bb38d0b97b87e0228aaf3fd95ec575c93fa6d19b53a93`  
		Last Modified: Thu, 05 Nov 2026 22:50:02 GMT  
		Size: 33.9 KB (33869 bytes)  
		MIME: application/vnd.in-toto+json
