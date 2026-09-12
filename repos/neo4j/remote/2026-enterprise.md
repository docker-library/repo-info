## `neo4j:2026-enterprise`

```console
$ docker pull neo4j@sha256:bb57751c55de989f94137be1c7f921f0de22f7ba4209dc4c1b46676d07ce131c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:2026-enterprise` - linux; amd64

```console
$ docker pull neo4j@sha256:a9f30d43d0e9f3edbf3bdbd10fd8ae44d0b7f00f0f8d66da4d3078be4688282c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **591.0 MB (590967575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b70a0385b591b49f127258ed7226e59cefb5f27e02254819b361a1fd518e8f9`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Fri, 11 Sep 2026 22:31:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 11 Sep 2026 22:31:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 11 Sep 2026 22:31:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=a5f6e02c6371727ebaabb31326557c178ebcd4bd608a33142efe9ff6ef8c2cd4 NEO4J_TARBALL=neo4j-enterprise-2026.08.1-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Fri, 11 Sep 2026 22:31:06 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.08.1-unix.tar.gz
# Fri, 11 Sep 2026 22:31:06 GMT
COPY ./local-package/* /startup/ # buildkit
# Fri, 11 Sep 2026 22:31:34 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.08.1-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Fri, 11 Sep 2026 22:31:34 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 11 Sep 2026 22:31:34 GMT
WORKDIR /var/lib/neo4j
# Fri, 11 Sep 2026 22:31:34 GMT
VOLUME [/data /logs]
# Fri, 11 Sep 2026 22:31:34 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Fri, 11 Sep 2026 22:31:34 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Fri, 11 Sep 2026 22:31:34 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:327c3021912f3aa1225bd6405aac3a88010904ab5ddfd640f5ae6d4c1bd97369`  
		Last Modified: Fri, 11 Sep 2026 22:32:07 GMT  
		Size: 92.6 MB (92615092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24521d9e7a29c8721c4b28495932e841f825ad8db6ab88bf5966e8056a47d505`  
		Last Modified: Fri, 11 Sep 2026 22:32:04 GMT  
		Size: 10.0 KB (10020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4acdeb37f2c9193182eddbbc4cab92d91c753d6d848ff3ce993441bfdb6b9cf0`  
		Last Modified: Fri, 11 Sep 2026 22:32:14 GMT  
		Size: 468.5 MB (468549773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:2026-enterprise` - unknown; unknown

```console
$ docker pull neo4j@sha256:3b4befb57f94398468588a957140985b34bb25fd23a8638ee4bdb477b955a82e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4717829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aa1db0956a6d6de876e75b9e00a5f4b433c3a2a084bb8d5cd8c00b67c07d87e`

```dockerfile
```

-	Layers:
	-	`sha256:784e74230f1122cf11be5109d2f41c5383dab875c6a5ad1c22df5226bb801cd9`  
		Last Modified: Fri, 11 Sep 2026 22:32:04 GMT  
		Size: 4.7 MB (4697713 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:99f61e8c76e6140ea79f41cd97e9f185964ead6de04044eb97a03c43435fd176`  
		Last Modified: Fri, 11 Sep 2026 22:32:04 GMT  
		Size: 20.1 KB (20116 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:2026-enterprise` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:b82dbafec4807342610c32fa15a5f24c0278137a64111e86c353836413f4ec16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **589.7 MB (589692495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:681b1abcf5809cffcb88208e518bb8bc9e583e1f6bf8620ef916221d4d305866`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Fri, 11 Sep 2026 22:30:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 11 Sep 2026 22:30:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 11 Sep 2026 22:30:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=a5f6e02c6371727ebaabb31326557c178ebcd4bd608a33142efe9ff6ef8c2cd4 NEO4J_TARBALL=neo4j-enterprise-2026.08.1-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Fri, 11 Sep 2026 22:30:48 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.08.1-unix.tar.gz
# Fri, 11 Sep 2026 22:30:48 GMT
COPY ./local-package/* /startup/ # buildkit
# Fri, 11 Sep 2026 22:31:18 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.08.1-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Fri, 11 Sep 2026 22:31:18 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 11 Sep 2026 22:31:18 GMT
WORKDIR /var/lib/neo4j
# Fri, 11 Sep 2026 22:31:18 GMT
VOLUME [/data /logs]
# Fri, 11 Sep 2026 22:31:18 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Fri, 11 Sep 2026 22:31:18 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Fri, 11 Sep 2026 22:31:18 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98de73a1a2814f8b429f3d754a841ff751173f71500ef2482f508a0a2d09b08c`  
		Last Modified: Fri, 11 Sep 2026 22:31:53 GMT  
		Size: 91.5 MB (91532235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c158e97fa4e79d392dd39ddb5d7a84b68664433690dc0a4983b6f2cfed98fc6`  
		Last Modified: Fri, 11 Sep 2026 22:31:50 GMT  
		Size: 10.0 KB (10018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85185af9da6949064de89fe482f9c5ce020e8406c139d6b7f790e619fef79872`  
		Last Modified: Fri, 11 Sep 2026 22:31:59 GMT  
		Size: 468.0 MB (467990628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:2026-enterprise` - unknown; unknown

```console
$ docker pull neo4j@sha256:48d3200a5b8b69d154d0294fba0dc1ba23c412a841cc1e4639fa3264498fed32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4712475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41278da4f1b0e31e2f4031c233103c5aa2294b481715c2bc3e9cae76341b95bc`

```dockerfile
```

-	Layers:
	-	`sha256:f377173f7c6e20fced4b3612bb4db3ce00acd3e283eedd24630442421f42ec46`  
		Last Modified: Fri, 11 Sep 2026 22:31:50 GMT  
		Size: 4.7 MB (4692180 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d1f6271b0da7f6a40cc1be92b84103a47c81c417d1f3a2f2e257659158653c10`  
		Last Modified: Fri, 11 Sep 2026 22:31:50 GMT  
		Size: 20.3 KB (20295 bytes)  
		MIME: application/vnd.in-toto+json
