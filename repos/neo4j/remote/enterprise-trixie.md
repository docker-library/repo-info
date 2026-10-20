## `neo4j:enterprise-trixie`

```console
$ docker pull neo4j@sha256:8dfc4c8b37f1f27dd48f7e881ee30e7844a0b8ee7eec2045a0e4c8dcc699b3cc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:enterprise-trixie` - linux; amd64

```console
$ docker pull neo4j@sha256:61ea880812a1aa7e75543b58a03c90825a3dc9c632489237456741e0b23b0beb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **579.0 MB (579036467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0240df3ef90f1cfeb46abcfd6004b62015f7d296df9af6b8ce201db2cf9387a1`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 18:00:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 20 Oct 2026 18:00:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 20 Oct 2026 18:00:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=aa6006e5f8bb93c144ac8a7cc5bf1bdc48332ac4626b6c5d527c1a0be92116a0 NEO4J_TARBALL=neo4j-enterprise-2026.10.0-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Tue, 20 Oct 2026 18:00:34 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.10.0-unix.tar.gz
# Tue, 20 Oct 2026 18:00:34 GMT
COPY ./local-package/* /startup/ # buildkit
# Tue, 20 Oct 2026 18:01:12 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.10.0-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Tue, 20 Oct 2026 18:01:12 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 18:01:12 GMT
WORKDIR /var/lib/neo4j
# Tue, 20 Oct 2026 18:01:12 GMT
VOLUME [/data /logs]
# Tue, 20 Oct 2026 18:01:12 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Tue, 20 Oct 2026 18:01:12 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Tue, 20 Oct 2026 18:01:12 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:791b25aa7d14d1f0a64688ed76a7eb0c37461e7c3fdc6a5929d419bb16e39e53`  
		Last Modified: Tue, 20 Oct 2026 18:01:45 GMT  
		Size: 92.6 MB (92618014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:653e25b312fa0be2eb2e2716aada99697ac96557213cf3e763c2cfdc82af8d70`  
		Last Modified: Tue, 20 Oct 2026 18:01:41 GMT  
		Size: 10.0 KB (10026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8674dbc0ec007e3a8b9c62891ab706cad5108fb1eb692e0c91d222b3ced1743`  
		Last Modified: Tue, 20 Oct 2026 18:01:57 GMT  
		Size: 456.6 MB (456565045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:enterprise-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:5bee68710dfc1c329d5b36bd7a0b24c5625cf4ada653805ef1281f3406802fbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4740118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49aabaf6e3c0737a2b1070e7a040865c7456cc92f510725831885113449dffa7`

```dockerfile
```

-	Layers:
	-	`sha256:cf6162197fa5946755afebb3cad5a20912a23f4036d1509904c4999111294494`  
		Last Modified: Tue, 20 Oct 2026 18:01:41 GMT  
		Size: 4.7 MB (4720001 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45cc8f5f11f767852f93a5bc7c7ad7661f6b7f7467ea84732c7a079dac9d3ea8`  
		Last Modified: Tue, 20 Oct 2026 18:01:41 GMT  
		Size: 20.1 KB (20117 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:enterprise-trixie` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:ef89e565cf2557b9222f13ff818628a4050cc02509f046d82a3cb3fa593a9133
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **577.4 MB (577378148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7e00cff49b96ff343b1dee660542e64ef53c9b16c8052ae633ff477e78c9b64`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 20 Oct 2026 18:00:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 20 Oct 2026 18:00:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 20 Oct 2026 18:00:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=aa6006e5f8bb93c144ac8a7cc5bf1bdc48332ac4626b6c5d527c1a0be92116a0 NEO4J_TARBALL=neo4j-enterprise-2026.10.0-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Tue, 20 Oct 2026 18:00:36 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.10.0-unix.tar.gz
# Tue, 20 Oct 2026 18:00:36 GMT
COPY ./local-package/* /startup/ # buildkit
# Tue, 20 Oct 2026 18:01:11 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.10.0-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Tue, 20 Oct 2026 18:01:11 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 18:01:11 GMT
WORKDIR /var/lib/neo4j
# Tue, 20 Oct 2026 18:01:11 GMT
VOLUME [/data /logs]
# Tue, 20 Oct 2026 18:01:11 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Tue, 20 Oct 2026 18:01:11 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Tue, 20 Oct 2026 18:01:11 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d60495987507579f85742bbfccdd2d1581298f3a2410a29c80d7622737233d9`  
		Last Modified: Tue, 20 Oct 2026 18:01:45 GMT  
		Size: 91.5 MB (91528871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b9c4fd76188c7e216ae1e2aa8c8a8ca9a33f0f50eb576961cc51042401865af`  
		Last Modified: Tue, 20 Oct 2026 18:01:41 GMT  
		Size: 10.0 KB (10029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34dfe4ed96c7f37d5f457061fe0e02c1cb6db9013236775bc694c0ed37a82982`  
		Last Modified: Tue, 20 Oct 2026 18:01:53 GMT  
		Size: 455.6 MB (455638934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:enterprise-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:03079dc61aac89891238bb255429858c851d727fc6b44baa3415177d2ba4f7b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4734764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45d1690132a3335f4e9bf80f15134197939203a7dc122715c34c9afde150d852`

```dockerfile
```

-	Layers:
	-	`sha256:58f930888d926184be7e2aa86bf47d40f0d99677646a9d468dc897b0ef89e66b`  
		Last Modified: Tue, 20 Oct 2026 18:01:42 GMT  
		Size: 4.7 MB (4714469 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e4309cd812d4c8dce83078e9007be397c491989136986f90d9755b7d1a8ca79`  
		Last Modified: Tue, 20 Oct 2026 18:01:41 GMT  
		Size: 20.3 KB (20295 bytes)  
		MIME: application/vnd.in-toto+json
