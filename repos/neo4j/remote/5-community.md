## `neo4j:5-community`

```console
$ docker pull neo4j@sha256:c022a88a9b34a4d7b86283d8c81bb72de502a91ebc662f36f8927b9f0d206a32
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:5-community` - linux; amd64

```console
$ docker pull neo4j@sha256:b71fda2f96f1c03384f07cad81c3c5c2dd1c13d972b0557f4bf7bbdbf5ba4c1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.8 MB (351767013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76384c348e7990f7762f5dec0398dd60554ce9835886405ff689019c2d8ff9ad`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 00:28:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:28:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:28:19 GMT
RUN "$JAVA_HOME/bin/keytool" -list -v -cacerts -storepass changeit       | sed -n 's/^Alias name: //p'       | grep -E 'emsign_(ecc_root_ca__g3|ecc_root_ca__c3|root_ca__c1)'       | while read -r alias; do           "$JAVA_HOME/bin/keytool" -delete -cacerts -storepass changeit -alias "$alias";         done # buildkit
# Tue, 27 Oct 2026 00:28:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=d279ae6a9b38034280681a558b0cd222dce89f87cc3d9867f1f7bd28ef5ebc30 NEO4J_TARBALL=neo4j-community-5.26.32-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Tue, 27 Oct 2026 00:28:19 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.32-unix.tar.gz
# Tue, 27 Oct 2026 00:28:19 GMT
COPY ./local-package/* /startup/ # buildkit
# Tue, 27 Oct 2026 00:28:40 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.32-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Tue, 27 Oct 2026 00:28:40 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:28:40 GMT
WORKDIR /var/lib/neo4j
# Tue, 27 Oct 2026 00:28:40 GMT
VOLUME [/data /logs]
# Tue, 27 Oct 2026 00:28:40 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Tue, 27 Oct 2026 00:28:40 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Tue, 27 Oct 2026 00:28:40 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c327380ba9be49ba4c1bd2de4d1b17997c49c4ec3b707204aec76115947a2cc`  
		Last Modified: Tue, 27 Oct 2026 00:29:07 GMT  
		Size: 158.1 MB (158117472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:718be951dd7de26c26813965a4dac9267a39f99b99e83502fd1d10950368f3b1`  
		Last Modified: Tue, 27 Oct 2026 00:28:58 GMT  
		Size: 98.1 KB (98056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e870efa6bddbbb3336b2fca240c5fd675f47ddc5c4fe629d2616b416c0a2ea`  
		Last Modified: Tue, 27 Oct 2026 00:28:58 GMT  
		Size: 10.1 KB (10063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a844a144e9d526a0c5fe8a09704fdf378e53537a20ff5f8e6437ac0c20c0e122`  
		Last Modified: Tue, 27 Oct 2026 00:29:07 GMT  
		Size: 163.7 MB (163697811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-community` - unknown; unknown

```console
$ docker pull neo4j@sha256:b726f9e01ef8598d77001a6cf176dd194f46d3fbf26fa44e0261bb47de4df614
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4319500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12b906a6043ffe70260f1fc328ba45a8d85f8abe78e50392d1248057913d41b3`

```dockerfile
```

-	Layers:
	-	`sha256:825d7bb81556e0e2ad864191bcaf188f549a193d20c054eeea6daae833a657a9`  
		Last Modified: Tue, 27 Oct 2026 00:28:58 GMT  
		Size: 4.3 MB (4295479 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62d9aeffcb594b3948310122e18f49085809769e5e4e2b4c5d7c3c0ebed2b098`  
		Last Modified: Tue, 27 Oct 2026 00:28:58 GMT  
		Size: 24.0 KB (24021 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:5-community` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:be2875317925024b57ee084af3b51b8deda0782dcbe584e9016d67d76fc602bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.5 MB (349473911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca89a40b25020aedd1942d7f26b51fb52e8f749b05ecd3b4c186e16422a40bbb`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Fri, 23 Oct 2026 16:35:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 23 Oct 2026 16:35:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 23 Oct 2026 16:35:21 GMT
RUN "$JAVA_HOME/bin/keytool" -list -v -cacerts -storepass changeit       | sed -n 's/^Alias name: //p'       | grep -E 'emsign_(ecc_root_ca__g3|ecc_root_ca__c3|root_ca__c1)'       | while read -r alias; do           "$JAVA_HOME/bin/keytool" -delete -cacerts -storepass changeit -alias "$alias";         done # buildkit
# Fri, 23 Oct 2026 16:35:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=d279ae6a9b38034280681a558b0cd222dce89f87cc3d9867f1f7bd28ef5ebc30 NEO4J_TARBALL=neo4j-community-5.26.32-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Fri, 23 Oct 2026 16:35:21 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.32-unix.tar.gz
# Fri, 23 Oct 2026 16:35:21 GMT
COPY ./local-package/* /startup/ # buildkit
# Fri, 23 Oct 2026 16:35:43 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.32-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Fri, 23 Oct 2026 16:35:43 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 16:35:43 GMT
WORKDIR /var/lib/neo4j
# Fri, 23 Oct 2026 16:35:43 GMT
VOLUME [/data /logs]
# Fri, 23 Oct 2026 16:35:43 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Fri, 23 Oct 2026 16:35:43 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 16:35:43 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54b7f919b9dc96d4c19fd704b3995b00c54eb5275e70eac9c1010b17aa29d266`  
		Last Modified: Fri, 23 Oct 2026 16:36:08 GMT  
		Size: 156.4 MB (156400675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:497892d3fc8ab3551fd75ffec32f4508f4312e0b6015a99fba7c8702ab148f89`  
		Last Modified: Fri, 23 Oct 2026 16:36:02 GMT  
		Size: 98.1 KB (98059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e90cceb9eb5cd46b614551ff81b96c8ebc1faa199b6c5edd7af38bbc5bc9a68`  
		Last Modified: Fri, 23 Oct 2026 16:36:02 GMT  
		Size: 10.1 KB (10060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f32d13d175cc44891808bb291432d028132841e2195fbc9492ebf5edb03bb396`  
		Last Modified: Fri, 23 Oct 2026 16:36:08 GMT  
		Size: 162.8 MB (162764607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-community` - unknown; unknown

```console
$ docker pull neo4j@sha256:21cba35d3688744af596b6c76c153b87ec976900aa1c8157130a318c312b9141
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4314259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0e2b72d1d8728249c075e869486fad6bdc6185c44ba12a24ee6b43a43432131`

```dockerfile
```

-	Layers:
	-	`sha256:92a84ab9897a1e2f427798520213c43575da7c35e10ac1002131620c26ab43f0`  
		Last Modified: Fri, 23 Oct 2026 16:36:02 GMT  
		Size: 4.3 MB (4289998 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8aa24b19effed7dc9c7d15873342414de4f8daa78ea854d530a608dcf75e6552`  
		Last Modified: Fri, 23 Oct 2026 16:36:02 GMT  
		Size: 24.3 KB (24261 bytes)  
		MIME: application/vnd.in-toto+json
