## `percona:psmdb-6.0.29`

```console
$ docker pull percona@sha256:02438ae57b1d1cb6b40148512320eb588d364f5a4b342a812c2784d42dc983e3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-6.0.29` - linux; amd64

```console
$ docker pull percona@sha256:c55bd31edda8ab2d1021e9efa6d59bc7bd39abb7c77df01b31e8cfe5cf1fb68b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.3 MB (279262637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b10aead23580855da997adca8ea7b1cf60b4d03adb0f29d7dcd1bbe72275c9fe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 31 Aug 2026 08:53:44 GMT
ENV container oci
# Mon, 31 Aug 2026 08:53:44 GMT
COPY dir:19cc2d5b9eaa116f3cb84eada48063b3bc3fe9e2c9e39a73cc87b72cc8d70c32 in /      
# Mon, 31 Aug 2026 08:53:44 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 08:53:44 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /root/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T08:53:29Z" "org.opencontainers.image.revision"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "build-date"="2026-08-31T08:53:29Z" "architecture"="x86_64" "vcs-ref"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "vcs-type"="git" "release"="1788166357"org.opencontainers.image.created=2026-08-31T08:53:29Z,org.opencontainers.image.revision=3c32d7c63d617fc21bc66bb65a893d8db99096da
# Mon, 31 Aug 2026 19:11:26 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Mon, 31 Aug 2026 19:11:26 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 3E6D826D3FBAB389C2F38E34BC4D06A08D8B756F;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     gpg --batch --export --armor 3E6D826D3FBAB389C2F38E34BC4D06A08D8B756F > ${GNUPGHOME}/RPM-GPG-KEY-oracle;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9 ${GNUPGHOME}/RPM-GPG-KEY-oracle;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Mon, 31 Aug 2026 19:11:26 GMT
ENV PSMDB_VERSION=6.0.29-23
# Mon, 31 Aug 2026 19:11:26 GMT
ENV OS_VER=el9
# Mon, 31 Aug 2026 19:11:26 GMT
ENV FULL_PERCONA_VERSION=6.0.29-23.el9
# Mon, 31 Aug 2026 19:11:26 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Mon, 31 Aug 2026 19:11:26 GMT
ENV PSMDB_REPO=release
# Mon, 31 Aug 2026 19:11:26 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Mon, 31 Aug 2026 19:11:26 GMT
ENV CALL_HOME_VERSION=0.1
# Mon, 31 Aug 2026 19:11:26 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Mon, 31 Aug 2026 19:11:44 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-60 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_PERCONA_VERSION}         percona-mongodb-mongosh         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         libcap         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-60/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Mon, 31 Aug 2026 19:11:44 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Mon, 31 Aug 2026 19:11:44 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Mon, 31 Aug 2026 19:11:44 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Mon, 31 Aug 2026 19:11:44 GMT
ENV GOSU_VERSION=1.11
# Mon, 31 Aug 2026 19:11:46 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Mon, 31 Aug 2026 19:11:46 GMT
VOLUME [/data/db]
# Mon, 31 Aug 2026 19:11:46 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Mon, 31 Aug 2026 19:11:46 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Mon, 31 Aug 2026 19:11:46 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Mon, 31 Aug 2026 19:11:46 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:11:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 31 Aug 2026 19:11:46 GMT
EXPOSE map[27017/tcp:{}]
# Mon, 31 Aug 2026 19:11:46 GMT
USER 1001
# Mon, 31 Aug 2026 19:11:46 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:2943616793071e9fa96e298a7454ac45b7a498df6ca5c681004955a177cdf999`  
		Last Modified: Mon, 31 Aug 2026 10:01:51 GMT  
		Size: 40.7 MB (40709577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c74121cbef35f0f2a8fdb3951853bdd48466c7691f8d12d373325e7095349b8a`  
		Last Modified: Mon, 31 Aug 2026 19:12:13 GMT  
		Size: 9.0 MB (8995452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:738ae9bb7d133fefaa6f431504b75990d9327e95411a47a514e342fc518c8324`  
		Last Modified: Mon, 31 Aug 2026 19:12:18 GMT  
		Size: 228.6 MB (228604669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07609eb657e54e41a6da7dfcf0c2b68029c2c7fbf120539415d791cf678e6fa2`  
		Last Modified: Mon, 31 Aug 2026 19:12:13 GMT  
		Size: 1.6 KB (1642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea0c8afa44793b2df8c1bd5cbfa58719753f092232bba6e27292e2ce0a7bc45a`  
		Last Modified: Mon, 31 Aug 2026 19:12:14 GMT  
		Size: 4.1 KB (4072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f3adc11b8624e8e92a3ba12e605b601077f8dc394397a5e1736711d4e78e601`  
		Last Modified: Mon, 31 Aug 2026 19:12:15 GMT  
		Size: 10.6 KB (10577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:294f8735f1443cec4eae0dcc90b28dd60d320d53423d0ecce4f5385829ac0f8f`  
		Last Modified: Mon, 31 Aug 2026 19:12:16 GMT  
		Size: 914.5 KB (914516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57a2e19d5b87af574cd954ae54794b24c2e972713da97d9618e83d8cb0dc4f92`  
		Last Modified: Mon, 31 Aug 2026 19:12:16 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9a5a1e8553756585fe8c29465f70fecb809b6cd0f5032720c5aa087b3068592`  
		Last Modified: Mon, 31 Aug 2026 19:12:17 GMT  
		Size: 4.0 KB (3959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a889398bf88a0975159d97be62ca88858e930fc53cfbabb9481e52532f04f785`  
		Last Modified: Mon, 31 Aug 2026 19:12:17 GMT  
		Size: 5.0 KB (4968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-6.0.29` - unknown; unknown

```console
$ docker pull percona@sha256:8f600bfa6d8a56ed8811a493e3c7ca294628d5cc74a5f950716601e7ae692c76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 KB (32937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77b7ae6f4d8e1ed8f98a4ba888e6224563cfe86abc3a2692a5cd37bdf1d44a2f`

```dockerfile
```

-	Layers:
	-	`sha256:fdf6502a541c0606b56b0c2c954dbf701afb2ba6873ece19d5dfdcf99f382ea3`  
		Last Modified: Mon, 31 Aug 2026 19:12:13 GMT  
		Size: 32.9 KB (32937 bytes)  
		MIME: application/vnd.in-toto+json
