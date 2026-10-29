## `neo4j:trixie`

```console
$ docker pull neo4j@sha256:44ad2a2504fd7d27df1d1e976f2d481e4266a0814d3657f2d5df62124ce657f1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:trixie` - linux; amd64

```console
$ docker pull neo4j@sha256:dfc2a07ed793819a21363e505e6ca5712e4edf8f7b1e13e04ac4181c8948ab05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.8 MB (379765637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d3b3a7aaefbb682165bd8d0626b59b3eaf8e6fefac5261c028376eab8628928`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Thu, 29 Oct 2026 19:54:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:54:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 19:54:00 GMT
RUN "$JAVA_HOME/bin/keytool" -list -v -cacerts -storepass changeit       | sed -n 's/^Alias name: //p'       | grep -E 'emsign_(ecc_root_ca__g3|ecc_root_ca__c3|root_ca__c1)'       | while read -r alias; do           "$JAVA_HOME/bin/keytool" -delete -cacerts -storepass changeit -alias "$alias";         done # buildkit
# Thu, 29 Oct 2026 19:54:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=afcf4986d47d13dd908427d301d5a9278b2ec7d615a12bb40e22087c7e133e78 NEO4J_TARBALL=neo4j-community-2026.10.1-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Thu, 29 Oct 2026 19:54:00 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.10.1-unix.tar.gz
# Thu, 29 Oct 2026 19:54:00 GMT
COPY ./local-package/* /startup/ # buildkit
# Thu, 29 Oct 2026 19:54:23 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.10.1-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Thu, 29 Oct 2026 19:54:23 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:54:23 GMT
WORKDIR /var/lib/neo4j
# Thu, 29 Oct 2026 19:54:23 GMT
VOLUME [/data /logs]
# Thu, 29 Oct 2026 19:54:23 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Thu, 29 Oct 2026 19:54:23 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 19:54:23 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bd7b1898d426d1ac667fca1b78d6b01acecb1748273475d6dabbb2021034e2d`  
		Last Modified: Thu, 29 Oct 2026 19:54:47 GMT  
		Size: 92.6 MB (92598867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76af35ad28736a24b65ae76bd71ac7094ab2d4246372e45192a51b7f90ec7d7b`  
		Last Modified: Thu, 29 Oct 2026 19:54:43 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48db669d8bfca8148e9707154c674c67e802268d715307e9fc00da38d6db5086`  
		Last Modified: Thu, 29 Oct 2026 19:54:43 GMT  
		Size: 10.0 KB (10040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e26c5ef15c726afaf80335818f968f551b1707036ab7179f746f829181e249a`  
		Last Modified: Thu, 29 Oct 2026 19:54:50 GMT  
		Size: 257.3 MB (257301336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:1e49a78cb89cedf14e741238db844f3e9e412d08fca6e7d5a5e571d7f8a3c404
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4406239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcb057aba3593c67dfe8582e9bce432a3a7499155cef29fca2a16a35eba5cdbd`

```dockerfile
```

-	Layers:
	-	`sha256:11909292fb8357ed3a821dc1b685bcbf3b66e46f98dc8200090125bc56e261da`  
		Last Modified: Thu, 29 Oct 2026 19:54:43 GMT  
		Size: 4.4 MB (4380941 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0be06207e8cce8bd26ab431b6a9c0e0847afb1b38649ec2c1e0759ae1981fb18`  
		Last Modified: Thu, 29 Oct 2026 19:54:43 GMT  
		Size: 25.3 KB (25298 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:trixie` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:de79ad58725f4e971347b17b309d9784a2d2053f1b48dc18d621b6bd44731a83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **378.1 MB (378121707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa274b45e59a16eb6c967d256dd0562fd36686d7852e3f1682675cf35fb4d303`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Thu, 29 Oct 2026 19:55:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:55:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 19:55:05 GMT
RUN "$JAVA_HOME/bin/keytool" -list -v -cacerts -storepass changeit       | sed -n 's/^Alias name: //p'       | grep -E 'emsign_(ecc_root_ca__g3|ecc_root_ca__c3|root_ca__c1)'       | while read -r alias; do           "$JAVA_HOME/bin/keytool" -delete -cacerts -storepass changeit -alias "$alias";         done # buildkit
# Thu, 29 Oct 2026 19:55:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=afcf4986d47d13dd908427d301d5a9278b2ec7d615a12bb40e22087c7e133e78 NEO4J_TARBALL=neo4j-community-2026.10.1-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Thu, 29 Oct 2026 19:55:05 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.10.1-unix.tar.gz
# Thu, 29 Oct 2026 19:55:05 GMT
COPY ./local-package/* /startup/ # buildkit
# Thu, 29 Oct 2026 19:55:29 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.10.1-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Thu, 29 Oct 2026 19:55:29 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:55:29 GMT
WORKDIR /var/lib/neo4j
# Thu, 29 Oct 2026 19:55:29 GMT
VOLUME [/data /logs]
# Thu, 29 Oct 2026 19:55:29 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Thu, 29 Oct 2026 19:55:29 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 19:55:29 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b58023326027b89db20bec431565ec0a828d9b436d0d3915551467fcf8201fe9`  
		Last Modified: Thu, 29 Oct 2026 19:55:54 GMT  
		Size: 91.5 MB (91525597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc2742a3a225dc1ef9bbd237568a0a95da270448aa651b638fad33451db2dcd3`  
		Last Modified: Thu, 29 Oct 2026 19:55:51 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26da1081233541ce521479e496efc94c77314727f7fe32f38c873b01d5203565`  
		Last Modified: Thu, 29 Oct 2026 19:55:51 GMT  
		Size: 10.0 KB (10040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a336ebb43ebb038643b7603e9eb071c7907deebe8c34562578e684a2333262e`  
		Last Modified: Thu, 29 Oct 2026 19:55:56 GMT  
		Size: 256.4 MB (256372416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:fa37850a84bf73e8911bb75efc4e8d248b8804a0c756971a3f056eeb1c05facb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4401092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af2c515200dfc18e2181be0bf5890190ae94400f84509b9bfd8a53b85de8c54d`

```dockerfile
```

-	Layers:
	-	`sha256:d257a53627d3d7b26162fd9697389c245c96e25d6641541d4a14a26a0f24fe79`  
		Last Modified: Thu, 29 Oct 2026 19:55:51 GMT  
		Size: 4.4 MB (4375505 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d94fe65ced02ae8df5d85f95079ffb2437beae9ef4fb9ebbc97ca262ef8b55b`  
		Last Modified: Thu, 29 Oct 2026 19:55:51 GMT  
		Size: 25.6 KB (25587 bytes)  
		MIME: application/vnd.in-toto+json
