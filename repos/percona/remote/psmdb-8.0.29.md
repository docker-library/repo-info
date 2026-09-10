## `percona:psmdb-8.0.29`

```console
$ docker pull percona@sha256:bf818beb746ca7e675d609b585a084e0190053bbdcb480982da756f3d52aea8a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-8.0.29` - linux; amd64

```console
$ docker pull percona@sha256:2da1440231f862d7b3459b6e53061edec98507f68ce6b96c97746ee95910d671
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.6 MB (324606817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bd2747bfbdcfda595f2a6456150f7aaa8792fb5dbbd06c2fbc94d5bcd3a6587`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 07:32:04 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 07:32:04 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 09 Sep 2026 07:32:04 GMT
LABEL io.openshift.expose-services=""
# Wed, 09 Sep 2026 07:32:04 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 09 Sep 2026 07:32:04 GMT
ENV container oci
# Wed, 09 Sep 2026 07:32:05 GMT
COPY dir:7d4e1add6b136709dfd81a23f253956035f58d34c5d236b96fba89c53c087ca2 in /      
# Wed, 09 Sep 2026 07:32:05 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 09 Sep 2026 07:32:05 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 07:32:05 GMT
COPY dir:aab9058c830b4fe09c53d67f66c40e388b8f6b803bd122483e9e5b39e792636e in /usr/share/buildinfo/      
# Wed, 09 Sep 2026 07:32:05 GMT
COPY dir:aab9058c830b4fe09c53d67f66c40e388b8f6b803bd122483e9e5b39e792636e in /root/buildinfo/      
# Wed, 09 Sep 2026 07:32:06 GMT
LABEL "org.opencontainers.image.created"="2026-09-09T07:31:28Z" "org.opencontainers.image.revision"="032ccfa67770989ab0253359280f8ba2cf77ce39" "build-date"="2026-09-09T07:31:28Z" "architecture"="x86_64" "vcs-ref"="032ccfa67770989ab0253359280f8ba2cf77ce39" "vcs-type"="git" "release"="1788939036"org.opencontainers.image.created=2026-09-09T07:31:28Z,org.opencontainers.image.revision=032ccfa67770989ab0253359280f8ba2cf77ce39
# Wed, 09 Sep 2026 22:36:08 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 09 Sep 2026 22:36:08 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Wed, 09 Sep 2026 22:36:08 GMT
ENV PSMDB_VERSION=8.0.29-13
# Wed, 09 Sep 2026 22:36:08 GMT
ENV OS_VER=el9
# Wed, 09 Sep 2026 22:36:08 GMT
ENV FULL_PERCONA_VERSION=8.0.29-13.el9
# Wed, 09 Sep 2026 22:36:08 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Wed, 09 Sep 2026 22:36:08 GMT
ENV PSMDB_REPO=testing
# Wed, 09 Sep 2026 22:36:08 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Wed, 09 Sep 2026 22:36:08 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Wed, 09 Sep 2026 22:36:08 GMT
ENV CALL_HOME_VERSION=0.1
# Wed, 09 Sep 2026 22:36:08 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Wed, 09 Sep 2026 22:36:32 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-80 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_PERCONA_VERSION}         percona-mongodb-mongosh         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-80/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Wed, 09 Sep 2026 22:36:32 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Wed, 09 Sep 2026 22:36:32 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Wed, 09 Sep 2026 22:36:32 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Wed, 09 Sep 2026 22:36:32 GMT
ENV GOSU_VERSION=1.11
# Wed, 09 Sep 2026 22:36:34 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Wed, 09 Sep 2026 22:36:34 GMT
VOLUME [/data/db]
# Wed, 09 Sep 2026 22:36:34 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Wed, 09 Sep 2026 22:36:34 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Wed, 09 Sep 2026 22:36:34 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Wed, 09 Sep 2026 22:36:34 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 22:36:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Sep 2026 22:36:34 GMT
EXPOSE map[27017/tcp:{}]
# Wed, 09 Sep 2026 22:36:34 GMT
USER 1001
# Wed, 09 Sep 2026 22:36:34 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:399616a84899868b5dcba80b172eb2b68d9d6ceba1655cad130718f24d1f2160`  
		Last Modified: Wed, 09 Sep 2026 08:28:28 GMT  
		Size: 40.7 MB (40711761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65f17400954762af12e6a085c8ddae6ea63ea643f5051f01d53018c443fa02c5`  
		Last Modified: Wed, 09 Sep 2026 22:37:06 GMT  
		Size: 9.0 MB (8997975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f2961508ff11a46431d2fbb4c708d971d851c3dc89d81ddcf12441e6af7461b`  
		Last Modified: Wed, 09 Sep 2026 22:37:12 GMT  
		Size: 273.9 MB (273944148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb5ce5826a039ace5e529db1666c5b776f2bf6b5d26cfc871af7b7a4ee9c7781`  
		Last Modified: Wed, 09 Sep 2026 22:37:06 GMT  
		Size: 1.6 KB (1640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:728ffea2c61128de84264ff1e6f18c4dbfef0b03510177bd1b6ac24153d9b6c0`  
		Last Modified: Wed, 09 Sep 2026 22:37:06 GMT  
		Size: 4.1 KB (4070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f73584a600aa778c33f9c39e3c3f7d613a6a3d00b5aa318d61dd6f117279a0c`  
		Last Modified: Wed, 09 Sep 2026 22:37:07 GMT  
		Size: 10.6 KB (10577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de76dadce58457ce49142b3bed42b3858d77fa4cdcd581931fba75a934337723`  
		Last Modified: Wed, 09 Sep 2026 22:37:08 GMT  
		Size: 914.5 KB (914516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c46d681837f875f1b5f3d61fce3ab295abe0f85ecc2f8c200aff0a1e15f08fb9`  
		Last Modified: Wed, 09 Sep 2026 22:37:08 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cde30b503d0c063c45689e92e5265a090f33a6e63700c5cb4ed2261033ea09b9`  
		Last Modified: Wed, 09 Sep 2026 22:37:09 GMT  
		Size: 4.0 KB (3959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8057fed5819e9025c01442e1e653e8a388f948c5583fc6b7968796165bfd5c0`  
		Last Modified: Wed, 09 Sep 2026 22:37:09 GMT  
		Size: 5.0 KB (4966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-8.0.29` - unknown; unknown

```console
$ docker pull percona@sha256:5f4259ff9a75c21da88d1f92f058c3ed2f0f4ddf81c3ff1c9dd1015120963cfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.7 KB (32672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9e5197cf251072ab1cbfc37560b49bc9793764829ec1187be0058e233a52d1b`

```dockerfile
```

-	Layers:
	-	`sha256:68a873715fd2ca6ec57ed89abec68ebfa44fc3c1cad8692f2e104ee2c4c9b410`  
		Last Modified: Wed, 09 Sep 2026 22:37:06 GMT  
		Size: 32.7 KB (32672 bytes)  
		MIME: application/vnd.in-toto+json
