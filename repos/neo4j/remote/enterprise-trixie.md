## `neo4j:enterprise-trixie`

```console
$ docker pull neo4j@sha256:880e0d693d930f56cdd192bb2a472268a7ff5b441e7ebe8e9372a847786f7a5e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:enterprise-trixie` - linux; amd64

```console
$ docker pull neo4j@sha256:e03e9d706423aacfa3c0975f4250d71e02852c93fc8b3c614214a821deb9cda7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **574.9 MB (574934932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9caefa7fd1dc8b31bb76de95dcbf931082441de51da6f2496396aa283f7aabc8`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:41:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 01:41:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 01:41:17 GMT
RUN "$JAVA_HOME/bin/keytool" -list -v -cacerts -storepass changeit       | sed -n 's/^Alias name: //p'       | grep -E 'emsign_(ecc_root_ca__g3|ecc_root_ca__c3|root_ca__c1)'       | while read -r alias; do           "$JAVA_HOME/bin/keytool" -delete -cacerts -storepass changeit -alias "$alias";         done # buildkit
# Wed, 28 Oct 2026 01:41:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=96c6404dad2ac8728fbd147458441091ea8c444b9eb22aadde1209d3b4b23aa7 NEO4J_TARBALL=neo4j-enterprise-2026.10.1-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Wed, 28 Oct 2026 01:41:17 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.10.1-unix.tar.gz
# Wed, 28 Oct 2026 01:41:17 GMT
COPY ./local-package/* /startup/ # buildkit
# Wed, 28 Oct 2026 01:41:55 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.10.1-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Wed, 28 Oct 2026 01:41:55 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:41:55 GMT
WORKDIR /var/lib/neo4j
# Wed, 28 Oct 2026 01:41:55 GMT
VOLUME [/data /logs]
# Wed, 28 Oct 2026 01:41:55 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Wed, 28 Oct 2026 01:41:55 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:41:55 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fb97f6bc8a1c8b4847493ed6142433b4e89837a99a8038ec02e069ec736e6e8`  
		Last Modified: Wed, 28 Oct 2026 01:42:27 GMT  
		Size: 92.6 MB (92618052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d85a079a32bbeb4539cfb266d3d59995947bcee3908d86d1ee76d2833df6474`  
		Last Modified: Wed, 28 Oct 2026 01:42:23 GMT  
		Size: 98.1 KB (98053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0dd97e662e1fdcffbf20bc36cfaa44b6b954e57a259d60009ce2a3c662f13ef`  
		Last Modified: Wed, 28 Oct 2026 01:42:23 GMT  
		Size: 10.0 KB (10041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8db8fe1eb45e96d981b1e42a2b4b69ec6d4c91d37714b499cc2f4e6ab7330219`  
		Last Modified: Wed, 28 Oct 2026 01:42:41 GMT  
		Size: 452.4 MB (452353518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:enterprise-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:b4866648e62d39870b4729e4ec03eea44560e8c87a138780ae5e167709fe2f5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4743509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee76aad6f976e47b4d313d460856ab1a0ccb1c2011b262a65b482a12de847513`

```dockerfile
```

-	Layers:
	-	`sha256:b4cda85c0be4caa359c2e0d013bfc1ed09e7dcfefadf346e2d44cfeb9ba7d6a0`  
		Last Modified: Wed, 28 Oct 2026 01:42:23 GMT  
		Size: 4.7 MB (4720596 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:72559f8b7b92e2b37d6dc3fdcbd19b5fefbb011fbcd729b7a6fc686ddce62a49`  
		Last Modified: Wed, 28 Oct 2026 01:42:23 GMT  
		Size: 22.9 KB (22913 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:enterprise-trixie` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:4a9f5a1e7b4949934294677ead01c930182933b40660a6cd8a43e31116fe2f8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **573.3 MB (573273421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3747be808246d7e84dce1a822a0f72e4ad73bfbfa0004d39da1cee4a22fb10f6`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:44:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 01:44:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 01:44:45 GMT
RUN "$JAVA_HOME/bin/keytool" -list -v -cacerts -storepass changeit       | sed -n 's/^Alias name: //p'       | grep -E 'emsign_(ecc_root_ca__g3|ecc_root_ca__c3|root_ca__c1)'       | while read -r alias; do           "$JAVA_HOME/bin/keytool" -delete -cacerts -storepass changeit -alias "$alias";         done # buildkit
# Wed, 28 Oct 2026 01:44:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=96c6404dad2ac8728fbd147458441091ea8c444b9eb22aadde1209d3b4b23aa7 NEO4J_TARBALL=neo4j-enterprise-2026.10.1-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Wed, 28 Oct 2026 01:44:45 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.10.1-unix.tar.gz
# Wed, 28 Oct 2026 01:44:45 GMT
COPY ./local-package/* /startup/ # buildkit
# Wed, 28 Oct 2026 01:45:13 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.10.1-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Wed, 28 Oct 2026 01:45:13 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:45:13 GMT
WORKDIR /var/lib/neo4j
# Wed, 28 Oct 2026 01:45:13 GMT
VOLUME [/data /logs]
# Wed, 28 Oct 2026 01:45:13 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Wed, 28 Oct 2026 01:45:13 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:45:13 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cf757d08b9d0ab57af8f3611dae95cf90e9b81d603fb45a13b9206b42302910`  
		Last Modified: Wed, 28 Oct 2026 01:45:47 GMT  
		Size: 91.5 MB (91528876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:017a42c56c0a64d3661355520de8f0e8b364ce46ddc7efc6c34c150c4fdfa723`  
		Last Modified: Wed, 28 Oct 2026 01:45:43 GMT  
		Size: 98.1 KB (98062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f03ba7f449032dae332560a4c1ecca0ef23e848cb4f00ebe1ea04fe13709125`  
		Last Modified: Wed, 28 Oct 2026 01:45:43 GMT  
		Size: 10.0 KB (10040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd338dbac3652beb2b0a28fa22a8d95abf02bd07b545f5bee77b7ba14ea97a31`  
		Last Modified: Wed, 28 Oct 2026 01:45:52 GMT  
		Size: 451.4 MB (451422915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:enterprise-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:bda8faa76b67aabbeddc838a3319db890cb03bab6dae33dda5fc2ea708dd80dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4738171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7772d4425da3f4e0e28fc3d119867aa882b04779d403bb0b218537ebaac4033`

```dockerfile
```

-	Layers:
	-	`sha256:3190b367e177f08c4e257da76ab9c14fc23880fe2722ed751f6158cbc0f06e47`  
		Last Modified: Wed, 28 Oct 2026 01:45:43 GMT  
		Size: 4.7 MB (4715064 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f809bffe2178ae200376d0c44048ed97d90ae64df6dc72dc7e32f77a43c563bb`  
		Last Modified: Wed, 28 Oct 2026 01:45:43 GMT  
		Size: 23.1 KB (23107 bytes)  
		MIME: application/vnd.in-toto+json
