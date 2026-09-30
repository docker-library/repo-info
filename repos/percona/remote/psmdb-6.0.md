## `percona:psmdb-6.0`

```console
$ docker pull percona@sha256:02f9b4dcab03dab5a43cf50a42e3dcc46e3df8e9ad43835c2f3b7143ec3a26b5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-6.0` - linux; amd64

```console
$ docker pull percona@sha256:f623d3ff0f5605ef5b30d095db7efe8305b63cb75eecf02ccdbca9cc8fe5259f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.5 MB (279463613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e29b795f926f2b660200e6ea9b3179a3f0c4ababa5e8a70790dbad3657f5823`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL io.openshift.expose-services=""
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 30 Sep 2026 07:43:40 GMT
ENV container oci
# Wed, 30 Sep 2026 07:43:40 GMT
COPY dir:01535d66c659bac5dc638e334bb8c0882e8bbe4dcc144deb448bf0673973267f in /      
# Wed, 30 Sep 2026 07:43:41 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 30 Sep 2026 07:43:41 GMT
CMD ["/bin/bash"]
# Wed, 30 Sep 2026 07:43:41 GMT
COPY dir:ab52b8f578b642c9cfffb8cfa8cb04095b99e8289c57b6d99f5db899ce19dbbd in /usr/share/buildinfo/      
# Wed, 30 Sep 2026 07:43:41 GMT
COPY dir:ab52b8f578b642c9cfffb8cfa8cb04095b99e8289c57b6d99f5db899ce19dbbd in /root/buildinfo/      
# Wed, 30 Sep 2026 07:43:41 GMT
LABEL "org.opencontainers.image.created"="2026-09-30T07:43:22Z" "org.opencontainers.image.revision"="f354e3d450169972cb1f8df64acae506d96d4c49" "build-date"="2026-09-30T07:43:22Z" "architecture"="x86_64" "vcs-ref"="f354e3d450169972cb1f8df64acae506d96d4c49" "vcs-type"="git" "release"="1790754119"org.opencontainers.image.created=2026-09-30T07:43:22Z,org.opencontainers.image.revision=f354e3d450169972cb1f8df64acae506d96d4c49
# Wed, 30 Sep 2026 21:02:33 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 30 Sep 2026 21:02:33 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 3E6D826D3FBAB389C2F38E34BC4D06A08D8B756F;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     gpg --batch --export --armor 3E6D826D3FBAB389C2F38E34BC4D06A08D8B756F > ${GNUPGHOME}/RPM-GPG-KEY-oracle;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9 ${GNUPGHOME}/RPM-GPG-KEY-oracle;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Wed, 30 Sep 2026 21:02:33 GMT
ENV PSMDB_VERSION=6.0.29-23
# Wed, 30 Sep 2026 21:02:33 GMT
ENV OS_VER=el9
# Wed, 30 Sep 2026 21:02:33 GMT
ENV FULL_PERCONA_VERSION=6.0.29-23.el9
# Wed, 30 Sep 2026 21:02:33 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Wed, 30 Sep 2026 21:02:33 GMT
ENV PSMDB_REPO=release
# Wed, 30 Sep 2026 21:02:33 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Wed, 30 Sep 2026 21:02:33 GMT
ENV CALL_HOME_VERSION=0.1
# Wed, 30 Sep 2026 21:02:33 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Wed, 30 Sep 2026 21:02:50 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-60 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_PERCONA_VERSION}         percona-mongodb-mongosh         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         libcap         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-60/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Wed, 30 Sep 2026 21:02:50 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Wed, 30 Sep 2026 21:02:50 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Wed, 30 Sep 2026 21:02:50 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Wed, 30 Sep 2026 21:02:50 GMT
ENV GOSU_VERSION=1.11
# Wed, 30 Sep 2026 21:02:52 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Wed, 30 Sep 2026 21:02:52 GMT
VOLUME [/data/db]
# Wed, 30 Sep 2026 21:02:52 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Wed, 30 Sep 2026 21:02:53 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Wed, 30 Sep 2026 21:02:53 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Wed, 30 Sep 2026 21:02:53 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Wed, 30 Sep 2026 21:02:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 Sep 2026 21:02:53 GMT
EXPOSE map[27017/tcp:{}]
# Wed, 30 Sep 2026 21:02:53 GMT
USER 1001
# Wed, 30 Sep 2026 21:02:53 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:dc56ef34398ed4f6c8151f31ee5784575bedb47794f5ba379ebc2a25834fac35`  
		Last Modified: Wed, 30 Sep 2026 08:42:23 GMT  
		Size: 40.7 MB (40700861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c4e1035ef1c0519477a3fc84275ea3059f53c930e9131dc2c048e3aa1ff77dd`  
		Last Modified: Wed, 30 Sep 2026 21:03:19 GMT  
		Size: 9.0 MB (8997688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:541815222e314109c7b58013e927a82bd5e2f24b47a5c84a6fef2f1039c82ea2`  
		Last Modified: Wed, 30 Sep 2026 21:03:23 GMT  
		Size: 228.8 MB (228812124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e8e83b4b8fce3efc44e7104343a06dd9bf99997a30a494014cbedfff4c075e7`  
		Last Modified: Wed, 30 Sep 2026 21:03:18 GMT  
		Size: 1.6 KB (1640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6df229619a4678b3b888049452bdd40ad49f6a03c42b04a35efdec80a7f8fa42`  
		Last Modified: Wed, 30 Sep 2026 21:03:18 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7768d6fcef312cb7819c4c881b7a10681688a773cb74629bcbb2a8e9468a7a69`  
		Last Modified: Wed, 30 Sep 2026 21:03:19 GMT  
		Size: 10.6 KB (10577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3356c211c19c0dff32a08c221fb0ced227eee7ab3e9aeeb9b71c6bdee76a965`  
		Last Modified: Wed, 30 Sep 2026 21:03:20 GMT  
		Size: 914.5 KB (914517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c3a2022e5c3c2e862059945db26f8f3897574799ed7ff30b8bca07951f1b97a`  
		Last Modified: Wed, 30 Sep 2026 21:03:20 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b064938573dd04f9ecbb3b713698c35b791d7580263970bbe39d4479f11e2b5b`  
		Last Modified: Wed, 30 Sep 2026 21:03:21 GMT  
		Size: 4.0 KB (3960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1d702a3b81b08da766156d03578d7b568557d12d68c2e283572a89b6ae2a4cb`  
		Last Modified: Wed, 30 Sep 2026 21:03:21 GMT  
		Size: 5.0 KB (4968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-6.0` - unknown; unknown

```console
$ docker pull percona@sha256:db825d057a518719e155387ba8ebcf08a40579e78349f8f297eecb24d9bbcf34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 KB (32939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:717512796bf0594d15589dec958549d8b1c791ffe8fdba87f0fee4c1176c80aa`

```dockerfile
```

-	Layers:
	-	`sha256:e4c4c70df18ecf5c021dc7a2e961bc57164f632216e9d3639e545a813b2ab9f2`  
		Last Modified: Wed, 30 Sep 2026 21:03:18 GMT  
		Size: 32.9 KB (32939 bytes)  
		MIME: application/vnd.in-toto+json
