## `percona:psmdb-4.4.15`

```console
$ docker pull percona@sha256:c2dafa0c0c909f39e3bc2797a8056c1da6c752a1c3938ced40ff22b4a9b9af4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `percona:psmdb-4.4.15` - linux; amd64

```console
$ docker pull percona@sha256:ef90799b6c78b4905145526af8436abb9e7030508c16630a7ada44ab4c1e9eab
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.2 MB (197203651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22bcce826e14c6032a507f32261c208d8b39f4285621dfe2ac47c4abb5ae98c1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 17 Jan 2023 21:49:22 GMT
ADD file:1acf395d34d9955a822a657c8cd572ab987a39763ef446931d48d7b17c6ddde0 in / 
# Tue, 17 Jan 2023 21:49:23 GMT
CMD ["/bin/bash"]
# Wed, 18 Jan 2023 04:15:59 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 18 Jan 2023 04:18:37 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-8;     rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-8;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release enable psmdb-44 release
# Wed, 18 Jan 2023 04:18:37 GMT
ENV PSMDB_VERSION=4.4.15-15
# Wed, 18 Jan 2023 04:18:38 GMT
ENV OS_VER=el8
# Wed, 18 Jan 2023 04:18:38 GMT
ENV FULL_PERCONA_VERSION=4.4.15-15.el8
# Wed, 18 Jan 2023 04:18:38 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Wed, 18 Jan 2023 04:19:17 GMT
RUN set -ex;     dnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-shell-${FULL_PERCONA_VERSION}         procps-ng         jq         tar         oniguruma         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-44/yum/release/8/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     dnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db
# Wed, 18 Jan 2023 04:19:19 GMT
RUN useradd -u 1001 -r -g 0 -s /sbin/nologin             -c "Default Application User" mongodb
# Wed, 18 Jan 2023 04:19:19 GMT
COPY file:b7c621ae843e72f20dd7ef20e8c42b89234688ceed5018592c3e5bfa61048aad in /licenses/LICENSE.Dockerfile 
# Wed, 18 Jan 2023 04:19:19 GMT
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB
# Wed, 18 Jan 2023 04:19:19 GMT
ENV GOSU_VERSION=1.11
# Wed, 18 Jan 2023 04:19:22 GMT
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE
# Wed, 18 Jan 2023 04:19:25 GMT
RUN set -ex;     curl -fSL https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/k8s-mongodb-initiator -o /usr/local/bin/k8s-mongodb-initiator;     curl -fSL  https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/mongodb-healthcheck -o /usr/local/bin/mongodb-healthcheck;     curl -fSL  https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/SHA256SUMS -o /tmp/SHA256SUMS;     echo "$(grep 'k8s-mongodb-initiator' /tmp/SHA256SUMS | awk '{print $1}')" /usr/local/bin/k8s-mongodb-initiator | sha256sum -c -;     echo "$(grep 'mongodb-healthcheck' /tmp/SHA256SUMS   | awk '{print $1}')" /usr/local/bin/mongodb-healthcheck   | sha256sum -c -;     rm -f /tmp/SHA256SUMS;         chmod 0755 /usr/local/bin/k8s-mongodb-initiator /usr/local/bin/mongodb-healthcheck
# Wed, 18 Jan 2023 04:19:26 GMT
VOLUME [/data/db]
# Wed, 18 Jan 2023 04:19:26 GMT
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c -
# Wed, 18 Jan 2023 04:19:26 GMT
COPY file:2e691e8e3c29008da8a3c85bbe67de1e1e3fbb73ae7ec22473431d5a771341bf in /entrypoint.sh 
# Wed, 18 Jan 2023 04:19:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Jan 2023 04:19:27 GMT
EXPOSE 27017
# Wed, 18 Jan 2023 04:19:27 GMT
USER 1001
# Wed, 18 Jan 2023 04:19:27 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3d7ae5dae7629d90868159ba27a38c83a54dea34fc421277cc51abc92ecc4917`  
		Last Modified: Tue, 17 Jan 2023 21:50:06 GMT  
		Size: 87.4 MB (87448979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c98c41cc2cf9e8596d2f8a3861ef356fd908f851b70912d8147d4933560b59fe`  
		Last Modified: Wed, 18 Jan 2023 04:22:30 GMT  
		Size: 3.8 MB (3771847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de42c3c31979eefa27972f0898d4b6c06b6a3ce0be38edc7cf0e3d0102e7d00`  
		Last Modified: Wed, 18 Jan 2023 04:22:42 GMT  
		Size: 96.9 MB (96896780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2f689d1f45b85ad76778dc5bdfffad2e215bd7a2ba870307420bf955dc6c36d`  
		Last Modified: Wed, 18 Jan 2023 04:22:29 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:210a5d5c8a57474a4b102618a13850ffeb288ec6f2a6d7d6dd39ee018b7e1fb6`  
		Last Modified: Wed, 18 Jan 2023 04:22:29 GMT  
		Size: 4.1 KB (4102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751f1f8486c3881819cfce66a85ffad20e228b9f1724dac250f4b0dcc673b23f`  
		Last Modified: Wed, 18 Jan 2023 04:22:27 GMT  
		Size: 10.6 KB (10578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44e4f1dfca76db1a0267ff0e6cd7c72ab2b387e007a107f513f39270fff52768`  
		Last Modified: Wed, 18 Jan 2023 04:22:28 GMT  
		Size: 914.5 KB (914550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37aac2df2a9764818a6b20cd2fae9055b399018a784451e365761d15d180ef9c`  
		Last Modified: Wed, 18 Jan 2023 04:22:29 GMT  
		Size: 8.1 MB (8137887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb5849c460647ef8082cddfff16085e3b50b84826505b2dfe3cf0ae7dc57e01`  
		Last Modified: Wed, 18 Jan 2023 04:22:27 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c575a9771417cffee6e3643a33da1e4c5d3f9dcf9652dd0c7270dad999419e37`  
		Last Modified: Wed, 18 Jan 2023 04:22:27 GMT  
		Size: 4.6 KB (4559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
