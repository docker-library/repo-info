## `neo4j:5-community-trixie`

```console
$ docker pull neo4j@sha256:5eb12ad77fa46ab73e23df9ea1f43f5c0f2a79523435577648e046be042b9b93
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:5-community-trixie` - linux; amd64

```console
$ docker pull neo4j@sha256:e885941da359002feb6a61b607d4a3808b6dee7545364a2c50df56fb09262ec2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.3 MB (364264254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d8d9803fbe0cb13143971c97618d30a77dc597b96a2dea20a776a64e5fc9c8c`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 23:07:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:07:42 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:07:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=f8fc23340561405f1ff10ca6ac2d317d095d3c74509a616883c45d7a61f5cfec NEO4J_TARBALL=neo4j-community-5.26.31-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Fri, 25 Sep 2026 23:07:42 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.31-unix.tar.gz
# Fri, 25 Sep 2026 23:07:42 GMT
COPY ./local-package/* /startup/ # buildkit
# Fri, 25 Sep 2026 23:08:04 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.31-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Fri, 25 Sep 2026 23:08:04 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:08:04 GMT
WORKDIR /var/lib/neo4j
# Fri, 25 Sep 2026 23:08:04 GMT
VOLUME [/data /logs]
# Fri, 25 Sep 2026 23:08:04 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Fri, 25 Sep 2026 23:08:04 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Fri, 25 Sep 2026 23:08:04 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b03c90e3c650782c35490fc82bdf7f839680d2b71e8f836aecb422727dceca6`  
		Last Modified: Fri, 25 Sep 2026 23:08:28 GMT  
		Size: 158.1 MB (158117471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80dcd183d2b7b812ee7c2b69d06831989a3aecaf30da5d58f541855803cdd9b0`  
		Last Modified: Fri, 25 Sep 2026 23:08:22 GMT  
		Size: 10.1 KB (10062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4f47c9e92a554a990fc6d7536b8ebb236908cccf9ffd115dd1377c7043af93e`  
		Last Modified: Fri, 25 Sep 2026 23:08:28 GMT  
		Size: 176.3 MB (176306271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-community-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:f24e83355d85299aaa59dc17569e0b50cae26ccd256c1be35c8956d099d6b07b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4317978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e96c83d9cc0f66c7da1d5248d6aa561a028116ec8ce0590dd898e7d1f02ded1`

```dockerfile
```

-	Layers:
	-	`sha256:fdda90c3595fb511421b9db17a75dbd99c00401423e63d96e54afa1137b3f701`  
		Last Modified: Fri, 25 Sep 2026 23:08:22 GMT  
		Size: 4.3 MB (4296756 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b70f8d986692c8798d7b1c2f0e6559f4154b4842c78a69138b84cbdb87857e1`  
		Last Modified: Fri, 25 Sep 2026 23:08:22 GMT  
		Size: 21.2 KB (21222 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:5-community-trixie` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:9d7954f6ac73c074834be3e44706044bf8045f4ebd6349e9d5bea1254b2ea597
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.0 MB (361977513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c982724bd859f776ab33db4e7c720bef29be9c996b4872cbc8c70f774ff1397`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 23:05:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:05:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:05:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=f8fc23340561405f1ff10ca6ac2d317d095d3c74509a616883c45d7a61f5cfec NEO4J_TARBALL=neo4j-community-5.26.31-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Fri, 25 Sep 2026 23:05:07 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.31-unix.tar.gz
# Fri, 25 Sep 2026 23:05:07 GMT
COPY ./local-package/* /startup/ # buildkit
# Fri, 25 Sep 2026 23:05:31 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.31-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Fri, 25 Sep 2026 23:05:31 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:05:31 GMT
WORKDIR /var/lib/neo4j
# Fri, 25 Sep 2026 23:05:31 GMT
VOLUME [/data /logs]
# Fri, 25 Sep 2026 23:05:31 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Fri, 25 Sep 2026 23:05:31 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Fri, 25 Sep 2026 23:05:31 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2c90ce1251d92a0972ec845db83941f4fea221c45438b506514eaa2ace2152f`  
		Last Modified: Fri, 25 Sep 2026 23:05:55 GMT  
		Size: 156.4 MB (156400745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6953921f7eba218596427ccd317799d30e775165d83d22664711b6790c10fa13`  
		Last Modified: Fri, 25 Sep 2026 23:05:50 GMT  
		Size: 10.1 KB (10060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc8ba75a8b315be07128b473d5d19b03abf5193ada3db5bfc9566e56d4e01ce9`  
		Last Modified: Fri, 25 Sep 2026 23:05:56 GMT  
		Size: 175.4 MB (175376985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-community-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:40d620fbd5905f4b8c09007b6b53036c1495539f712fbd86fce7ae589874c3d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4312724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8124ffd059e1b4f99d7909d477a17e6647e0cd2f72f8a8911187237215f37302`

```dockerfile
```

-	Layers:
	-	`sha256:abc5e0192678574496aa68c95deef38344c32ac042a49e5dcb1d5a460a2f1514`  
		Last Modified: Fri, 25 Sep 2026 23:05:50 GMT  
		Size: 4.3 MB (4291275 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31d22508f1ee1f28962d8eec97b5179f2dd65d42c1272f44242886cd83313cbc`  
		Last Modified: Fri, 25 Sep 2026 23:05:50 GMT  
		Size: 21.4 KB (21449 bytes)  
		MIME: application/vnd.in-toto+json
