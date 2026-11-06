## `percona:psmdb-7.0`

```console
$ docker pull percona@sha256:3d4c0228dee7221a82ec9671bdcc0821fa4cf4292b0038b8314717c78a9d5fdb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-7.0` - linux; amd64

```console
$ docker pull percona@sha256:7a81ace1037be629006af2d1a291c6b92a5710b598abf994fb9d668c753c022b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.0 MB (304999734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db9d43e4f64ee3845270ae280ade52ce06e0fd5696df1bb5cf68fb5aa4be8d75`
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
# Thu, 05 Nov 2026 22:48:31 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Thu, 05 Nov 2026 22:48:31 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Thu, 05 Nov 2026 22:48:31 GMT
ENV PSMDB_VERSION=7.0.45-24
# Thu, 05 Nov 2026 22:48:31 GMT
ENV OS_VER=el9
# Thu, 05 Nov 2026 22:48:31 GMT
ENV FULL_PERCONA_VERSION=7.0.45-24.el9
# Thu, 05 Nov 2026 22:48:31 GMT
ENV MONGO_TOOLS_VERSION=100.19.1-2
# Thu, 05 Nov 2026 22:48:31 GMT
ENV FULL_MONGO_TOOLS_VERSION=100.19.1-2.el9
# Thu, 05 Nov 2026 22:48:31 GMT
ENV MONGOSH_VERSION=2.13.0-1
# Thu, 05 Nov 2026 22:48:31 GMT
ENV FULL_MONGOSH_VERSION=2.13.0-1.el9
# Thu, 05 Nov 2026 22:48:31 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Thu, 05 Nov 2026 22:48:31 GMT
ENV PSMDB_REPO=release
# Thu, 05 Nov 2026 22:48:31 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Thu, 05 Nov 2026 22:48:31 GMT
ENV CALL_HOME_VERSION=0.1
# Thu, 05 Nov 2026 22:48:31 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Thu, 05 Nov 2026 22:50:05 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-70 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_MONGO_TOOLS_VERSION}         percona-mongodb-mongosh-${FULL_MONGOSH_VERSION}         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         krb5-libs         curl-minimal         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-70/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Thu, 05 Nov 2026 22:50:05 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Thu, 05 Nov 2026 22:50:05 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Thu, 05 Nov 2026 22:50:05 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Thu, 05 Nov 2026 22:50:05 GMT
ENV GOSU_VERSION=1.11
# Thu, 05 Nov 2026 22:50:06 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Thu, 05 Nov 2026 22:50:06 GMT
VOLUME [/data/db]
# Thu, 05 Nov 2026 22:50:06 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Thu, 05 Nov 2026 22:50:07 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Thu, 05 Nov 2026 22:50:07 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Thu, 05 Nov 2026 22:50:07 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 22:50:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 22:50:07 GMT
EXPOSE map[27017/tcp:{}]
# Thu, 05 Nov 2026 22:50:07 GMT
USER 1001
# Thu, 05 Nov 2026 22:50:07 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:32b344ffa7c9dd8da7d1cfc046e3d302ca99a3db1387bb8137f797a9a3a080c7`  
		Last Modified: Thu, 05 Nov 2026 07:58:51 GMT  
		Size: 40.7 MB (40656774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:853849a8e1f0360fef1c01c90d4b1a73d532fcd7197bad2c2c7d7cd93ad301e3`  
		Last Modified: Thu, 05 Nov 2026 22:49:33 GMT  
		Size: 8.9 MB (8949045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:576b235f1cb0ca6d39d5a730825fac01a5d93e405650fca16ab7124b5845b68b`  
		Last Modified: Thu, 05 Nov 2026 22:50:38 GMT  
		Size: 254.4 MB (254440986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bad693551e50fbfc04d5bf0754147ab992fe2cc640ef1ece2621d38adf38b76`  
		Last Modified: Thu, 05 Nov 2026 22:50:33 GMT  
		Size: 1.6 KB (1637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff3b3b0bc6b01216e2f35c86b54cdddedc7841b9706a21f434299b038fabb19f`  
		Last Modified: Thu, 05 Nov 2026 22:50:33 GMT  
		Size: 4.1 KB (4072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e8cbc62f464efa51aae72e438385c34387ddc8b7dcd96d93cd9b5eaf6ed30b3`  
		Last Modified: Thu, 05 Nov 2026 22:50:33 GMT  
		Size: 10.6 KB (10577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d45c4eafe04931efa6fbf45140f3cf4c20c4e81993f903cfd3b27217b06abda`  
		Last Modified: Thu, 05 Nov 2026 22:50:34 GMT  
		Size: 914.5 KB (914516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a4f91b961a9a3bc8a307487c326683ad1dcf8dbfc9f39b33419b809fd9ccece`  
		Last Modified: Thu, 05 Nov 2026 22:50:34 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7678c6fb36722926587972234c55318a91b41e5bc89368012cdc340643f1882b`  
		Last Modified: Thu, 05 Nov 2026 22:50:34 GMT  
		Size: 4.0 KB (3955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ab541dd78a72f53705513642a01e084f8750ab49322e119d3eb78dc9f3b81b2`  
		Last Modified: Thu, 05 Nov 2026 22:50:35 GMT  
		Size: 5.0 KB (4967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-7.0` - unknown; unknown

```console
$ docker pull percona@sha256:74820fa3fc9497abbe21eb773a05367cc1e54fea62058b1c706e20a413543d95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 KB (33662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bb53845bb35549a5b5fed1d7144aef1f68cf1452ce695530fde9042308a2587`

```dockerfile
```

-	Layers:
	-	`sha256:b6e2b26b8afd7b8952b21b3b467cd708cae506a61e2d45487a458a126f25fed3`  
		Last Modified: Thu, 05 Nov 2026 22:50:33 GMT  
		Size: 33.7 KB (33662 bytes)  
		MIME: application/vnd.in-toto+json
