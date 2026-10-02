## `neo4j:5-enterprise-trixie`

```console
$ docker pull neo4j@sha256:739d28a568219b5fd2a0c827c0b43ba54bfc88dbd2b1321d30258ef56c9d07c8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:5-enterprise-trixie` - linux; amd64

```console
$ docker pull neo4j@sha256:56a02786487434e5108823613e00784565e5f6441cd699ab3a50c1814ac6f20b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **719.9 MB (719926191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e0db55ab2da3544954c6257bf643700758a7c268647dedbd016756177b8bfae`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 02:25:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:25:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:25:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=191b06ef05643360a8cb326e48222fc0a9d857085082d88a7a32076222167fd3 NEO4J_TARBALL=neo4j-enterprise-5.26.31-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Fri, 02 Oct 2026 02:25:56 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.31-unix.tar.gz
# Fri, 02 Oct 2026 02:25:56 GMT
COPY ./local-package/* /startup/ # buildkit
# Fri, 02 Oct 2026 02:26:25 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.31-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Fri, 02 Oct 2026 02:26:25 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:26:25 GMT
WORKDIR /var/lib/neo4j
# Fri, 02 Oct 2026 02:26:25 GMT
VOLUME [/data /logs]
# Fri, 02 Oct 2026 02:26:25 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Fri, 02 Oct 2026 02:26:25 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Fri, 02 Oct 2026 02:26:25 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:616461349f6917c5c7a7d7f48577e604106de7ee37e311653d76cf2d6928b753`  
		Last Modified: Fri, 02 Oct 2026 02:27:00 GMT  
		Size: 158.1 MB (158117527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3df4fab762965dcfa379166cd564396a218f1b0fa3f2dba8ec91b050a033260`  
		Last Modified: Fri, 02 Oct 2026 02:26:54 GMT  
		Size: 10.1 KB (10063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eeed002614bb423aff9c8572b00e6e09d762e353343709fec5877bdfb1055ed`  
		Last Modified: Fri, 02 Oct 2026 02:27:06 GMT  
		Size: 532.0 MB (531968151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-enterprise-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:a509b7b706f040e5b9498a9a88a6c4c7c89e026dba78ebdb789c1f50f0f31911
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4675625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f36d3d71a05d89fac3db30595a24d5f241a62fb6dd728eebde1205d779512b9`

```dockerfile
```

-	Layers:
	-	`sha256:7c6eff309620b4802aabf3c33c520265e9f937ff3f7cb1710ce36a0323cd8975`  
		Last Modified: Fri, 02 Oct 2026 02:26:54 GMT  
		Size: 4.7 MB (4656175 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:785fa5941497ee3cd7967159ccc2efed14b62a9cea9b4aee1e32958241a8b4c7`  
		Last Modified: Fri, 02 Oct 2026 02:26:54 GMT  
		Size: 19.4 KB (19450 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:5-enterprise-trixie` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:d402158cf1168896337dfa6d323cdc45f18c00d9f99d65ddf727d5b79a62d335
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **718.0 MB (718009937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcbb6db338da8bfcb52a0f8d07020ea8cc50432becebf05f371240f97749e832`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 02:26:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:26:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:26:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=191b06ef05643360a8cb326e48222fc0a9d857085082d88a7a32076222167fd3 NEO4J_TARBALL=neo4j-enterprise-5.26.31-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Fri, 02 Oct 2026 02:26:01 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.31-unix.tar.gz
# Fri, 02 Oct 2026 02:26:01 GMT
COPY ./local-package/* /startup/ # buildkit
# Fri, 02 Oct 2026 02:26:31 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.31-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Fri, 02 Oct 2026 02:26:31 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:26:32 GMT
WORKDIR /var/lib/neo4j
# Fri, 02 Oct 2026 02:26:32 GMT
VOLUME [/data /logs]
# Fri, 02 Oct 2026 02:26:32 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Fri, 02 Oct 2026 02:26:32 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Fri, 02 Oct 2026 02:26:32 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5d5785d43f224dd83ccef97b65cf7e24c097847a4f4be45eb1ec37be1085371`  
		Last Modified: Fri, 02 Oct 2026 02:27:09 GMT  
		Size: 156.4 MB (156400689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6baf917a3ca3923ba07fc45440454f41be0efc0ec882d783ab0edcf35f008dd8`  
		Last Modified: Fri, 02 Oct 2026 02:27:03 GMT  
		Size: 10.1 KB (10057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17b1ca53c760908d70ebaa57a282d142c727c67f61b80d2e592c874297012ac3`  
		Last Modified: Fri, 02 Oct 2026 02:27:15 GMT  
		Size: 531.4 MB (531409468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-enterprise-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:41c7795e9bc29b95cc670049d1e85b9d426f51c826942e58481ff1f6d5077f3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4670227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f36aa969a66880c1dfd85d0205c5a294b959ed6418a772200447bc82c9e6e771`

```dockerfile
```

-	Layers:
	-	`sha256:337e9b194a765b194e0cee9551cdc9166a7a4c1ac996aae38eb9743ec4174419`  
		Last Modified: Fri, 02 Oct 2026 02:27:04 GMT  
		Size: 4.7 MB (4650622 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e280c5d4c0ca973a1bc57bf0b41d6bd985171814b6c8aac8731628a98c7d7895`  
		Last Modified: Fri, 02 Oct 2026 02:27:03 GMT  
		Size: 19.6 KB (19605 bytes)  
		MIME: application/vnd.in-toto+json
