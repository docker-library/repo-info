## `percona:psmdb-6.0`

```console
$ docker pull percona@sha256:b295655b0e8b98bd3fda35629c15b0046d30f1596b5815031dfeb3ea904739d9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-6.0` - linux; amd64

```console
$ docker pull percona@sha256:4a0705f83a0c981aa50f696c3705382c8ec36c0f8af2b96e400d4f11459460c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.3 MB (279253448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:416b294c32dbf50f85e32d904ebd3662ed9a1f6a0653af7cdb4875eac822909b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL io.openshift.expose-services=""
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 17 Aug 2026 17:27:15 GMT
ENV container oci
# Mon, 17 Aug 2026 17:27:16 GMT
COPY dir:975e595a9e6cbbfee7f07eb5443a58fb81eff06cafb12ae4f0e1422e8692c141 in /      
# Mon, 17 Aug 2026 17:27:16 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 17 Aug 2026 17:27:16 GMT
CMD ["/bin/bash"]
# Mon, 17 Aug 2026 17:27:16 GMT
COPY dir:65a3d9e22af3e56e090455b33d2c3174efac94e4f8a1283201a9e46186020641 in /usr/share/buildinfo/      
# Mon, 17 Aug 2026 17:27:16 GMT
COPY dir:65a3d9e22af3e56e090455b33d2c3174efac94e4f8a1283201a9e46186020641 in /root/buildinfo/      
# Mon, 17 Aug 2026 17:27:16 GMT
LABEL "org.opencontainers.image.created"="2026-08-17T17:26:46Z" "org.opencontainers.image.revision"="6bb838e7904a1c68094d157a898fff623ad3fcb9" "build-date"="2026-08-17T17:26:46Z" "architecture"="x86_64" "vcs-ref"="6bb838e7904a1c68094d157a898fff623ad3fcb9" "vcs-type"="git" "release"="1786987521"org.opencontainers.image.created=2026-08-17T17:26:46Z,org.opencontainers.image.revision=6bb838e7904a1c68094d157a898fff623ad3fcb9
# Mon, 17 Aug 2026 22:36:58 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Mon, 17 Aug 2026 22:36:58 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 3E6D826D3FBAB389C2F38E34BC4D06A08D8B756F;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     gpg --batch --export --armor 3E6D826D3FBAB389C2F38E34BC4D06A08D8B756F > ${GNUPGHOME}/RPM-GPG-KEY-oracle;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9 ${GNUPGHOME}/RPM-GPG-KEY-oracle;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Mon, 17 Aug 2026 22:36:58 GMT
ENV PSMDB_VERSION=6.0.29-23
# Mon, 17 Aug 2026 22:36:58 GMT
ENV OS_VER=el9
# Mon, 17 Aug 2026 22:36:58 GMT
ENV FULL_PERCONA_VERSION=6.0.29-23.el9
# Mon, 17 Aug 2026 22:36:58 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Mon, 17 Aug 2026 22:36:58 GMT
ENV PSMDB_REPO=release
# Mon, 17 Aug 2026 22:36:58 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Mon, 17 Aug 2026 22:36:58 GMT
ENV CALL_HOME_VERSION=0.1
# Mon, 17 Aug 2026 22:36:58 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Mon, 17 Aug 2026 22:37:12 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-60 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_PERCONA_VERSION}         percona-mongodb-mongosh         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         libcap         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-60/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Mon, 17 Aug 2026 22:37:12 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Mon, 17 Aug 2026 22:37:12 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Mon, 17 Aug 2026 22:37:12 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Mon, 17 Aug 2026 22:37:12 GMT
ENV GOSU_VERSION=1.11
# Mon, 17 Aug 2026 22:37:14 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Mon, 17 Aug 2026 22:37:14 GMT
VOLUME [/data/db]
# Mon, 17 Aug 2026 22:37:14 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Mon, 17 Aug 2026 22:37:15 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Mon, 17 Aug 2026 22:37:15 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Mon, 17 Aug 2026 22:37:15 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Mon, 17 Aug 2026 22:37:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 17 Aug 2026 22:37:15 GMT
EXPOSE map[27017/tcp:{}]
# Mon, 17 Aug 2026 22:37:15 GMT
USER 1001
# Mon, 17 Aug 2026 22:37:15 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:c282501e7b1aa336a39e8eb09b91d97b94921c378c6a6fbfe7b56d2db572c305`  
		Last Modified: Mon, 17 Aug 2026 18:11:34 GMT  
		Size: 40.7 MB (40711990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97c9a1268363bbdfe478eada7e91aebff9458af7fe1ed3093524e74740e53421`  
		Last Modified: Mon, 17 Aug 2026 22:37:42 GMT  
		Size: 9.0 MB (8991601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d875fc34bf5847bce4922d494b4d94115161d0ce771cd781993e5b7be35c37d`  
		Last Modified: Mon, 17 Aug 2026 22:37:47 GMT  
		Size: 228.6 MB (228596888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:987e7a0724bb2d981309f85d4217f1aede1826498c6a43c133d24098b8dac5f3`  
		Last Modified: Mon, 17 Aug 2026 22:37:42 GMT  
		Size: 1.7 KB (1670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbd71bdf2b94562b17c7ce3aa5a9befb664c5c1c54ca8235f48367fe67dd594e`  
		Last Modified: Mon, 17 Aug 2026 22:37:42 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6d81a811816653d2b2f9e2682184006456b1bb08a2e2e45e1f7473011eaec69`  
		Last Modified: Mon, 17 Aug 2026 22:37:43 GMT  
		Size: 10.6 KB (10577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d77d3cc98c8a1b05f32921375cff9881cf9d689ff71cf11eb7f9fe5ece3b3922`  
		Last Modified: Mon, 17 Aug 2026 22:37:43 GMT  
		Size: 914.5 KB (914517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee1cdb9df5c51e5091fe98256525afe5df07509d74862812644cf1c4b8691643`  
		Last Modified: Mon, 17 Aug 2026 22:37:43 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:100d87b9679f4e5b83ed99153209f4921e862d3ba38b084aa71eb0c9dee2d4e4`  
		Last Modified: Mon, 17 Aug 2026 22:37:44 GMT  
		Size: 4.0 KB (3959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fd143a80f9202c478e634fdb55cf5eecce92bcc14453b3b0e40d0a25115e32b`  
		Last Modified: Mon, 17 Aug 2026 22:37:44 GMT  
		Size: 5.0 KB (4968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-6.0` - unknown; unknown

```console
$ docker pull percona@sha256:8a72a54d07516a96cdd18798a108c9e2b8375c47c550cde3608149ef0f8cd5cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 KB (32939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8888788d95b7a391976aba51aafc775c2ed0aa08b0f51e9dfabb0ca5952cf2d2`

```dockerfile
```

-	Layers:
	-	`sha256:c3f26d3eacd5d8a3fe612b02e14f35507cd6d3ee700b5a6dfaf9f5a496a2e465`  
		Last Modified: Mon, 17 Aug 2026 22:37:42 GMT  
		Size: 32.9 KB (32939 bytes)  
		MIME: application/vnd.in-toto+json
