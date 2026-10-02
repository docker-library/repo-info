## `neo4j:community-trixie`

```console
$ docker pull neo4j@sha256:0dfcadbd51e1d2e5a0cf86d054a0bb537a4bce212796d967cbd88445aaf3fbf3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:community-trixie` - linux; amd64

```console
$ docker pull neo4j@sha256:eaab5879b88f919ac7ff2cdf5af71f6fa709155b6467beaecfdd2f9bac600bd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.0 MB (410955625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df9fefef672761046e305283ada4021e6f1e3803557e3209fd070e3133ea5cab`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 02:25:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:25:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:25:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=cdaa0905d9a533bbbc474d239c268f69978982eb5ca3177666c04c9792d1c399 NEO4J_TARBALL=neo4j-community-2026.09.0-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Fri, 02 Oct 2026 02:25:38 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.09.0-unix.tar.gz
# Fri, 02 Oct 2026 02:25:39 GMT
COPY ./local-package/* /startup/ # buildkit
# Fri, 02 Oct 2026 02:26:04 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.09.0-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Fri, 02 Oct 2026 02:26:04 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:26:04 GMT
WORKDIR /var/lib/neo4j
# Fri, 02 Oct 2026 02:26:04 GMT
VOLUME [/data /logs]
# Fri, 02 Oct 2026 02:26:04 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Fri, 02 Oct 2026 02:26:04 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Fri, 02 Oct 2026 02:26:04 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2061201f8c6f6c782c6f9a03f79b739a8145932fffb4ea35c05ae911ee03b40e`  
		Last Modified: Fri, 02 Oct 2026 02:26:31 GMT  
		Size: 92.6 MB (92618034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9284692a1e11dbd8e8c2034e23023d9272743d53b1eacb7f5bf13f32cbcee0b`  
		Last Modified: Fri, 02 Oct 2026 02:26:27 GMT  
		Size: 10.0 KB (10020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7e3b2a4ff70d358cca7062607d4bde7fc798a6d07b7690e78c207f4ac808783`  
		Last Modified: Fri, 02 Oct 2026 02:26:35 GMT  
		Size: 288.5 MB (288497121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:community-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:eff63922be2fa693c1c8833b125917fc2f6f233b52fb110ce54ed21ccebbcca3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4401756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2cb98eb24558888595a5af85546c744d81806637b23ce1c3a26d9c1d0432650`

```dockerfile
```

-	Layers:
	-	`sha256:80e1317506948d2eb4b5e5c59f95f26e05d5a2126fb81d7cddfca608008aaa98`  
		Last Modified: Fri, 02 Oct 2026 02:26:27 GMT  
		Size: 4.4 MB (4379247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4731efe9b77d0643af19494e8529bad9ddeec53f17b0ccd991ebddd73a731e08`  
		Last Modified: Fri, 02 Oct 2026 02:26:27 GMT  
		Size: 22.5 KB (22509 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:community-trixie` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:7956cfc147b14e14b30fa6f98947a0bd93715888651ea6957930835f2316985f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **409.7 MB (409667833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4b736241b356a66a8863972eae670ee7046248231780535c8685b5a2c88c52c`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 02:25:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:25:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:25:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=cdaa0905d9a533bbbc474d239c268f69978982eb5ca3177666c04c9792d1c399 NEO4J_TARBALL=neo4j-community-2026.09.0-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Fri, 02 Oct 2026 02:25:51 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.09.0-unix.tar.gz
# Fri, 02 Oct 2026 02:25:51 GMT
COPY ./local-package/* /startup/ # buildkit
# Fri, 02 Oct 2026 02:26:16 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.09.0-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Fri, 02 Oct 2026 02:26:16 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:26:16 GMT
WORKDIR /var/lib/neo4j
# Fri, 02 Oct 2026 02:26:16 GMT
VOLUME [/data /logs]
# Fri, 02 Oct 2026 02:26:16 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Fri, 02 Oct 2026 02:26:16 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Fri, 02 Oct 2026 02:26:16 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20caad5520db93fac40aa97e56b3a44ab9c2af333352748a19bfb20b988b7bc8`  
		Last Modified: Fri, 02 Oct 2026 02:26:42 GMT  
		Size: 91.5 MB (91528875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aed6fdc3ae0d3d3421836a61c7fec1dc025b44d45781582d8d00cbbd45e4d6f`  
		Last Modified: Fri, 02 Oct 2026 02:26:39 GMT  
		Size: 10.0 KB (10020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:704d76ac2e5e2911544a7bd6c49d8e89f17ee957e1a56ce1510c0d74ac2cfbc2`  
		Last Modified: Fri, 02 Oct 2026 02:26:45 GMT  
		Size: 287.9 MB (287939215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:community-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:6aa91296721a4bf2b2406009b27b786d22a6825ea2e28237d2980aed4f6ca5bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4396594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917fdbf55f5120be251beb9f9653aba5d42bd154897d89e73e86da19cbecc393`

```dockerfile
```

-	Layers:
	-	`sha256:f9a920e2ca5379b937165cce41927f7c8fc1c2a4e1980213d6b847e95763490c`  
		Last Modified: Fri, 02 Oct 2026 02:26:39 GMT  
		Size: 4.4 MB (4373811 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3e32f2e1014cff0a75084dd8e8e9bdaf8b24912526b735b68647362815274ab1`  
		Last Modified: Fri, 02 Oct 2026 02:26:39 GMT  
		Size: 22.8 KB (22783 bytes)  
		MIME: application/vnd.in-toto+json
