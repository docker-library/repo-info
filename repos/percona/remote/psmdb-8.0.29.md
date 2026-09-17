## `percona:psmdb-8.0.29`

```console
$ docker pull percona@sha256:d866881dd9a5a567e372ec5d924384031055a2fe98510d26cee4af072d9fa992
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-8.0.29` - linux; amd64

```console
$ docker pull percona@sha256:ea2504833ebd9f36965b73be4bf2e3b75c85f1c7553c3b93c629e0f6d5d8282b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.6 MB (324550196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c39c9f1f80655baf0f36bbd44f31ab9278d5ff9237eaf1bd66f620ce123fee8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL io.openshift.expose-services=""
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 16 Sep 2026 08:14:47 GMT
ENV container oci
# Wed, 16 Sep 2026 08:14:48 GMT
COPY dir:b8d2e4702aa4e2e0f81f97ab3a96785119f9cab5f11a12e6f35f97263fc80089 in /      
# Wed, 16 Sep 2026 08:14:48 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 16 Sep 2026 08:14:48 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 08:14:48 GMT
COPY dir:0d75961e3db2326a48bbcf23c2e4ea4e05da817cf04277234a6d96480c0cf5b7 in /usr/share/buildinfo/      
# Wed, 16 Sep 2026 08:14:48 GMT
COPY dir:0d75961e3db2326a48bbcf23c2e4ea4e05da817cf04277234a6d96480c0cf5b7 in /root/buildinfo/      
# Wed, 16 Sep 2026 08:14:48 GMT
LABEL "org.opencontainers.image.created"="2026-09-16T08:14:20Z" "org.opencontainers.image.revision"="28eadd3b1a5a834acaab9dbfe06d7a5df73b64ee" "build-date"="2026-09-16T08:14:20Z" "architecture"="x86_64" "vcs-ref"="28eadd3b1a5a834acaab9dbfe06d7a5df73b64ee" "vcs-type"="git" "release"="1789546276"org.opencontainers.image.created=2026-09-16T08:14:20Z,org.opencontainers.image.revision=28eadd3b1a5a834acaab9dbfe06d7a5df73b64ee
# Thu, 17 Sep 2026 18:55:04 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Thu, 17 Sep 2026 18:55:04 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Thu, 17 Sep 2026 18:55:04 GMT
ENV PSMDB_VERSION=8.0.29-13
# Thu, 17 Sep 2026 18:55:04 GMT
ENV OS_VER=el9
# Thu, 17 Sep 2026 18:55:04 GMT
ENV FULL_PERCONA_VERSION=8.0.29-13.el9
# Thu, 17 Sep 2026 18:55:04 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Thu, 17 Sep 2026 18:55:04 GMT
ENV PSMDB_REPO=testing
# Thu, 17 Sep 2026 18:55:04 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Thu, 17 Sep 2026 18:55:04 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Thu, 17 Sep 2026 18:55:04 GMT
ENV CALL_HOME_VERSION=0.1
# Thu, 17 Sep 2026 18:55:04 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Thu, 17 Sep 2026 18:55:25 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-80 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_PERCONA_VERSION}         percona-mongodb-mongosh         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-80/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Thu, 17 Sep 2026 18:55:25 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Thu, 17 Sep 2026 18:55:25 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Thu, 17 Sep 2026 18:55:25 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Thu, 17 Sep 2026 18:55:25 GMT
ENV GOSU_VERSION=1.11
# Thu, 17 Sep 2026 18:55:27 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Thu, 17 Sep 2026 18:55:27 GMT
VOLUME [/data/db]
# Thu, 17 Sep 2026 18:55:28 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Thu, 17 Sep 2026 18:55:28 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Thu, 17 Sep 2026 18:55:28 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Thu, 17 Sep 2026 18:55:28 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 18:55:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 18:55:28 GMT
EXPOSE map[27017/tcp:{}]
# Thu, 17 Sep 2026 18:55:28 GMT
USER 1001
# Thu, 17 Sep 2026 18:55:28 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:b66f4afff961364e2b31840faeac9f4cf40a138156bc5adbd4190044ff5160c0`  
		Last Modified: Wed, 16 Sep 2026 09:31:28 GMT  
		Size: 40.7 MB (40703783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:366c2724d07ae033ac782f6424d4f611003bc22a77acdd92c6107d092641fca2`  
		Last Modified: Thu, 17 Sep 2026 18:55:59 GMT  
		Size: 9.0 MB (8970842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3cc8e833bd1fdcec5444337e1db6a4fa20278e2585baf382d6033a722769678`  
		Last Modified: Thu, 17 Sep 2026 18:56:04 GMT  
		Size: 273.9 MB (273922636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6b90afdeabd0fde9b6f66f2a804a1d99462cab3ef4fe2062c94b3d013fc6d74`  
		Last Modified: Thu, 17 Sep 2026 18:55:58 GMT  
		Size: 1.6 KB (1640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42945cc96696fcb8190cc8558c7eeb2756a06c056b6ae50611f99e60132c0551`  
		Last Modified: Thu, 17 Sep 2026 18:55:58 GMT  
		Size: 4.1 KB (4072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:984d2636a69a8f4aa9dc6ffdfb58643ed728fdd1474c9929e384e42b81f7424e`  
		Last Modified: Thu, 17 Sep 2026 18:55:55 GMT  
		Size: 10.6 KB (10578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59f54a162608139ea8b068658a1e03c84d8d6e0179cc2e37d7d31caf6b548b7e`  
		Last Modified: Thu, 17 Sep 2026 18:55:55 GMT  
		Size: 914.5 KB (914518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dce5510f79446f309a8e1098e69cc9ea980c1e25826816446b266c59c4d5bc1`  
		Last Modified: Thu, 17 Sep 2026 18:56:00 GMT  
		Size: 13.2 KB (13204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28139ea7a8264a0ecbfbe58015387ee67004c24cb251608c85030e0bc4992094`  
		Last Modified: Thu, 17 Sep 2026 18:55:59 GMT  
		Size: 4.0 KB (3958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:361b69d00bef11641e51d7d8975487ee333c286b80bdcdb699a6611125897577`  
		Last Modified: Thu, 17 Sep 2026 18:56:00 GMT  
		Size: 5.0 KB (4965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-8.0.29` - unknown; unknown

```console
$ docker pull percona@sha256:9fd3a219a6c8f437a65d5462ba7d34dfd64b6667ada3d2d3401576f729c33bb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.7 KB (32673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9ff1726e86f4d0f1e030809d4d4982e9e863f97f7504a5e95b058ccbf4fb402`

```dockerfile
```

-	Layers:
	-	`sha256:92b4d0663abd4f955333a4e73a24bf2154efb2565ed91998670cfcdb1462933b`  
		Last Modified: Thu, 17 Sep 2026 18:55:58 GMT  
		Size: 32.7 KB (32673 bytes)  
		MIME: application/vnd.in-toto+json
