## `percona:psmdb-5.0`

```console
$ docker pull percona@sha256:7c16b269861429142df329b3f55e61c8621edc274a3d59ab5fe184657f551fce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `percona:psmdb-5.0` - linux; amd64

```console
$ docker pull percona@sha256:a8db04140b3e37a9be166deeeb97e4228375ba532f3bf818b7e54182b002863e
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.6 MB (212594076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:696d23b4d5266160e37dfc0550bf789481ec5a4c4c825d910d4e75f943c286c4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 17 Jan 2023 21:49:22 GMT
ADD file:1acf395d34d9955a822a657c8cd572ab987a39763ef446931d48d7b17c6ddde0 in / 
# Tue, 17 Jan 2023 21:49:23 GMT
CMD ["/bin/bash"]
# Wed, 18 Jan 2023 04:15:59 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 18 Jan 2023 04:17:28 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-8;     rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-8;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release enable psmdb-50 release
# Wed, 18 Jan 2023 04:17:28 GMT
ENV PSMDB_VERSION=5.0.10-9
# Wed, 18 Jan 2023 04:17:28 GMT
ENV OS_VER=el8
# Wed, 18 Jan 2023 04:17:28 GMT
ENV FULL_PERCONA_VERSION=5.0.10-9.el8
# Wed, 18 Jan 2023 04:17:28 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Wed, 18 Jan 2023 04:18:09 GMT
RUN set -ex;     dnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-shell-${FULL_PERCONA_VERSION}         procps-ng         jq         tar         oniguruma         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-50/yum/release/8/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     dnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db
# Wed, 18 Jan 2023 04:18:10 GMT
RUN useradd -u 1001 -r -g 0 -s /sbin/nologin             -c "Default Application User" mongodb
# Wed, 18 Jan 2023 04:18:11 GMT
COPY file:b7c621ae843e72f20dd7ef20e8c42b89234688ceed5018592c3e5bfa61048aad in /licenses/LICENSE.Dockerfile 
# Wed, 18 Jan 2023 04:18:11 GMT
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB
# Wed, 18 Jan 2023 04:18:11 GMT
ENV GOSU_VERSION=1.11
# Wed, 18 Jan 2023 04:18:14 GMT
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE
# Wed, 18 Jan 2023 04:18:20 GMT
RUN set -ex;     curl -fSL https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/k8s-mongodb-initiator -o /usr/local/bin/k8s-mongodb-initiator;     curl -fSL  https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/mongodb-healthcheck -o /usr/local/bin/mongodb-healthcheck;     curl -fSL  https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/SHA256SUMS -o /tmp/SHA256SUMS;     echo "$(grep 'k8s-mongodb-initiator' /tmp/SHA256SUMS | awk '{print $1}')" /usr/local/bin/k8s-mongodb-initiator | sha256sum -c -;     echo "$(grep 'mongodb-healthcheck' /tmp/SHA256SUMS   | awk '{print $1}')" /usr/local/bin/mongodb-healthcheck   | sha256sum -c -;     rm -f /tmp/SHA256SUMS;         chmod 0755 /usr/local/bin/k8s-mongodb-initiator /usr/local/bin/mongodb-healthcheck
# Wed, 18 Jan 2023 04:18:20 GMT
VOLUME [/data/db]
# Wed, 18 Jan 2023 04:18:21 GMT
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c -
# Wed, 18 Jan 2023 04:18:21 GMT
COPY file:e6e9d8018241e8459aecdafe395233cbfaee0351829ed9f41c721972a859a6d6 in /entrypoint.sh 
# Wed, 18 Jan 2023 04:18:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Jan 2023 04:18:21 GMT
EXPOSE 27017
# Wed, 18 Jan 2023 04:18:21 GMT
USER 1001
# Wed, 18 Jan 2023 04:18:21 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3d7ae5dae7629d90868159ba27a38c83a54dea34fc421277cc51abc92ecc4917`  
		Last Modified: Tue, 17 Jan 2023 21:50:06 GMT  
		Size: 87.4 MB (87448979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f202921f1a6cc2045655401c4ad2ce7f9165bd3fce81ecb9b1b49ecbeb3df86`  
		Last Modified: Wed, 18 Jan 2023 04:22:06 GMT  
		Size: 3.8 MB (3771866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fd41e7c72f649593b8bbf98cfe7f429445d12731867dd6ed88ec855b65614bb`  
		Last Modified: Wed, 18 Jan 2023 04:22:19 GMT  
		Size: 112.3 MB (112287185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f4deb4a3e3a31a43bce7d25c9b2dc9ca54297a6a0bf4aa766c6b3128a0dbf4`  
		Last Modified: Wed, 18 Jan 2023 04:22:04 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc3311a036364587c7680db9c0dbace743855fd0fc8fdd7d714772296ae41bec`  
		Last Modified: Wed, 18 Jan 2023 04:22:04 GMT  
		Size: 4.1 KB (4103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8dc27a833b5f43002c7707e1ea927f2aa6bb8a69034c9eda9834d20c7c2e708`  
		Last Modified: Wed, 18 Jan 2023 04:22:03 GMT  
		Size: 10.6 KB (10578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58c83d7c98080286cab62622742f0903d90b616b0866dce4a56ef17210c7abdb`  
		Last Modified: Wed, 18 Jan 2023 04:22:03 GMT  
		Size: 914.5 KB (914550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ab687d392d1b709ce438044824eb9b10b74304785e8478b1cf601fa15d955b`  
		Last Modified: Wed, 18 Jan 2023 04:22:04 GMT  
		Size: 8.1 MB (8137889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aa6e041ed45417d5222beb6071fd24c439ca7cea189b3172a0da47c46a6cd6d`  
		Last Modified: Wed, 18 Jan 2023 04:22:03 GMT  
		Size: 13.2 KB (13204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f721f2840e3540a52ac403dc9e77a977b197fdc8472cc93620ef1fc359a2b45`  
		Last Modified: Wed, 18 Jan 2023 04:22:03 GMT  
		Size: 4.6 KB (4559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
