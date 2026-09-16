## `percona:psmdb-7.0`

```console
$ docker pull percona@sha256:d8a6a7d9edba98cecb4b29d419a29fd9751fb958ab08f1384a5ccfdb5cb7b177
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-7.0` - linux; amd64

```console
$ docker pull percona@sha256:39c214e7ac331716900cb8db0b7463b1cc45c9b8ef0b739d7d57d91e1eaad8c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.2 MB (305207455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24fc9157bf728c60b929ad5f34881e157c961d6d26d5cd2e4ed2d18094feaf5e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 15 Sep 2026 08:30:22 GMT
ENV container oci
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:a381891740e9b08e7e7044949fb287ef5340a2125539aefd6ee81cd40d46a5d2 in /      
# Tue, 15 Sep 2026 08:30:22 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 08:30:22 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /root/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T08:29:54Z" "org.opencontainers.image.revision"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "build-date"="2026-09-15T08:29:54Z" "architecture"="x86_64" "vcs-ref"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "vcs-type"="git" "release"="1789460941"org.opencontainers.image.created=2026-09-15T08:29:54Z,org.opencontainers.image.revision=13aaee314b4f1afa7645fa9b2b46b02e3e55f433
# Tue, 15 Sep 2026 22:48:35 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Tue, 15 Sep 2026 22:48:35 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Tue, 15 Sep 2026 22:48:35 GMT
ENV PSMDB_VERSION=7.0.40-22
# Tue, 15 Sep 2026 22:48:35 GMT
ENV OS_VER=el9
# Tue, 15 Sep 2026 22:48:35 GMT
ENV FULL_PERCONA_VERSION=7.0.40-22.el9
# Tue, 15 Sep 2026 22:48:35 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Tue, 15 Sep 2026 22:48:35 GMT
ENV PSMDB_REPO=release
# Tue, 15 Sep 2026 22:48:35 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Tue, 15 Sep 2026 22:48:35 GMT
ENV CALL_HOME_VERSION=0.1
# Tue, 15 Sep 2026 22:48:35 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Tue, 15 Sep 2026 22:48:54 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-70 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_PERCONA_VERSION}         percona-mongodb-mongosh         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-70/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Tue, 15 Sep 2026 22:48:54 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Tue, 15 Sep 2026 22:48:54 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Tue, 15 Sep 2026 22:48:54 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Tue, 15 Sep 2026 22:48:54 GMT
ENV GOSU_VERSION=1.11
# Tue, 15 Sep 2026 22:48:56 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Tue, 15 Sep 2026 22:48:56 GMT
VOLUME [/data/db]
# Tue, 15 Sep 2026 22:48:56 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Tue, 15 Sep 2026 22:48:57 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Tue, 15 Sep 2026 22:48:57 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Tue, 15 Sep 2026 22:48:57 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Tue, 15 Sep 2026 22:48:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 15 Sep 2026 22:48:57 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 15 Sep 2026 22:48:57 GMT
USER 1001
# Tue, 15 Sep 2026 22:48:57 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:477ab32bb6ea428934b1d7e3b0baa96bcfe44911c3e7c588cdff641bbad1b3c4`  
		Last Modified: Tue, 15 Sep 2026 09:22:54 GMT  
		Size: 40.8 MB (40794728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d191ebaa7017f79e1004a69e7f87533a3c3972500b38a4cc78ed693d44de7d`  
		Last Modified: Tue, 15 Sep 2026 22:49:23 GMT  
		Size: 9.0 MB (8966694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:739dcb2c8752e7cc8a63138ee0606fae0d9383584de50dc5e713f8508f88c5f5`  
		Last Modified: Tue, 15 Sep 2026 22:49:28 GMT  
		Size: 254.5 MB (254493097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d28c1825acf1fc3d37eb4a8d636ccc756f1e720fe73b097f528a81c98042c5c`  
		Last Modified: Tue, 15 Sep 2026 22:49:22 GMT  
		Size: 1.6 KB (1639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67df29f30231a9c066a84f472d395c6d399a275dc576da42e10b72834fca1f33`  
		Last Modified: Tue, 15 Sep 2026 22:49:23 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d11071807faaf03f26922d8f08375474fdb9da239dbc7a315726187c9afa06f`  
		Last Modified: Tue, 15 Sep 2026 22:49:24 GMT  
		Size: 10.6 KB (10574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baaca520eeaa26919215177815db82fd772e3578bec284494630ced65883f8d6`  
		Last Modified: Tue, 15 Sep 2026 22:49:25 GMT  
		Size: 914.5 KB (914517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:884e8d837898e901fed1acf4a212d7c2a387264482300271859574c49250e998`  
		Last Modified: Tue, 15 Sep 2026 22:49:25 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50192c532038de299f58ba2d3746a81f9691c74e6224d38800a474329c13f883`  
		Last Modified: Tue, 15 Sep 2026 22:49:25 GMT  
		Size: 4.0 KB (3959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79a46c2f7a02675bdcdd357fab13360410f0c47517d9ccfdf6909c4cb3651b73`  
		Last Modified: Tue, 15 Sep 2026 22:49:26 GMT  
		Size: 5.0 KB (4969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-7.0` - unknown; unknown

```console
$ docker pull percona@sha256:5886ccc16389d0b9ad73c186f447a083cd620e4bd010362c02a41c8752b1e200
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 KB (32368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6b9ff4fa7fc363be317a347f50f9af1ee3259cd354d20aeb552c6d9ec583926`

```dockerfile
```

-	Layers:
	-	`sha256:acc988de4f8fef1e9ddbf56944e679e74aeaea83d67f141d5700e8466200dd1c`  
		Last Modified: Tue, 15 Sep 2026 22:49:22 GMT  
		Size: 32.4 KB (32368 bytes)  
		MIME: application/vnd.in-toto+json
