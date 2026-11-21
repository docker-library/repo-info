## `neo4j:latest`

```console
$ docker pull neo4j@sha256:88458a76de0704f543bab66b7df1984b36ac3f24de3c2e2d74c8fa1972ebb8cf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:latest` - linux; amd64

```console
$ docker pull neo4j@sha256:0896ca017adaa2ef0e62eab517501edfc54af8a71ab8ecfffcd666a38af4cc09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.5 MB (379542690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f6fd31d54644e467a2eaeff994c413557cffa1e5663449578d76440541eb5a0`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 17:47:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:47:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 17:47:58 GMT
RUN "$JAVA_HOME/bin/keytool" -list -v -cacerts -storepass changeit       | sed -n 's/^Alias name: //p'       | grep -E 'emsign_(ecc_root_ca__g3|ecc_root_ca__c3|root_ca__c1)'       | while read -r alias; do           "$JAVA_HOME/bin/keytool" -delete -cacerts -storepass changeit -alias "$alias";         done # buildkit
# Fri, 20 Nov 2026 17:47:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=fcbccee832175fd8b873ca7d8228dbde4cb5cce43f9053833cc7517dc4dd6f31 NEO4J_TARBALL=neo4j-community-2026.10.2-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Fri, 20 Nov 2026 17:47:58 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.10.2-unix.tar.gz
# Fri, 20 Nov 2026 17:47:58 GMT
COPY ./local-package/* /startup/ # buildkit
# Fri, 20 Nov 2026 17:48:25 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.10.2-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Fri, 20 Nov 2026 17:48:25 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:48:25 GMT
WORKDIR /var/lib/neo4j
# Fri, 20 Nov 2026 17:48:25 GMT
VOLUME [/data /logs]
# Fri, 20 Nov 2026 17:48:25 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Fri, 20 Nov 2026 17:48:25 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Fri, 20 Nov 2026 17:48:25 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e78ec170534330ee55cf79f61dc5257af9cedb8b8bea19adbacfc358c52c0730`  
		Last Modified: Fri, 20 Nov 2026 17:48:50 GMT  
		Size: 92.6 MB (92613905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c9b3f8771f5fa2a3a18e859442085f73a574f57091816f8a9a03b6bc0984f88`  
		Last Modified: Fri, 20 Nov 2026 17:48:46 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a5eb297336c1f907dfc9d90ebe32d9f7af63cd7d45b2bd55a7144922af1a123`  
		Last Modified: Fri, 20 Nov 2026 17:48:46 GMT  
		Size: 10.0 KB (10038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43eb62dd129d862d13e787b2031633e9f31a0584b53deede33699281ebe304ac`  
		Last Modified: Fri, 20 Nov 2026 17:48:53 GMT  
		Size: 257.1 MB (257062457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:latest` - unknown; unknown

```console
$ docker pull neo4j@sha256:a316f5ed1f325aa14e3204833e7bb9bfbae2a8be3984a30d19ffefc19e1bedef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4405699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:663816bf6e1df9996af42ae55bb3e87a6599968475d6ca50ebf8f95b23712920`

```dockerfile
```

-	Layers:
	-	`sha256:3d09a79fad7139a479968379b43d878603acdeb3103ec450163e139f72d786c3`  
		Last Modified: Fri, 20 Nov 2026 17:48:47 GMT  
		Size: 4.4 MB (4380401 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0e955561189295b26fd675cb8975fa5056f7d096253fc5d0e9d45590f0ca3552`  
		Last Modified: Fri, 20 Nov 2026 17:48:46 GMT  
		Size: 25.3 KB (25298 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:latest` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:a5ff2a6e7d031b0f15e0aeae254698574e4dd40b13060b38ce07bfd42243645f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.9 MB (377911484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4ed51b14d5b6f7ccd47a9f56a3bb45bd335eb6cd9cdd695df7a72986262cead`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 17:44:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:44:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 17:44:39 GMT
RUN "$JAVA_HOME/bin/keytool" -list -v -cacerts -storepass changeit       | sed -n 's/^Alias name: //p'       | grep -E 'emsign_(ecc_root_ca__g3|ecc_root_ca__c3|root_ca__c1)'       | while read -r alias; do           "$JAVA_HOME/bin/keytool" -delete -cacerts -storepass changeit -alias "$alias";         done # buildkit
# Fri, 20 Nov 2026 17:44:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=fcbccee832175fd8b873ca7d8228dbde4cb5cce43f9053833cc7517dc4dd6f31 NEO4J_TARBALL=neo4j-community-2026.10.2-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Fri, 20 Nov 2026 17:44:39 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.10.2-unix.tar.gz
# Fri, 20 Nov 2026 17:44:39 GMT
COPY ./local-package/* /startup/ # buildkit
# Fri, 20 Nov 2026 17:45:07 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.10.2-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Fri, 20 Nov 2026 17:45:07 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:45:07 GMT
WORKDIR /var/lib/neo4j
# Fri, 20 Nov 2026 17:45:07 GMT
VOLUME [/data /logs]
# Fri, 20 Nov 2026 17:45:07 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Fri, 20 Nov 2026 17:45:07 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Fri, 20 Nov 2026 17:45:07 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d314d3c1238d09487348083d8856951439f4ca4ab4705f1d16dca34fa62beb9`  
		Last Modified: Fri, 20 Nov 2026 17:45:33 GMT  
		Size: 91.6 MB (91554010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e46b2637a3d7fa39838f7873585682b9180c3d4d1db2474993ae2f626f7c3c6`  
		Last Modified: Fri, 20 Nov 2026 17:45:29 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44ce3bd17be521c1338de3bacb90dd4c6682e2e53ce4b04cf4257e8a2d9edac6`  
		Last Modified: Fri, 20 Nov 2026 17:45:29 GMT  
		Size: 10.0 KB (10036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4d79cfaf381c650233c3447d06ef289b4e0285ff8f3b90a2874fcc3217e185a`  
		Last Modified: Fri, 20 Nov 2026 17:45:36 GMT  
		Size: 256.1 MB (256133243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:latest` - unknown; unknown

```console
$ docker pull neo4j@sha256:e414a77d7a7b186b074b8a91b391d0063ff3c8cc578a9631c746f87eac6da6a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4400552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9288395fbb2ccbdc89f59e1f014915b81b3b6e55414033ea29f445021a734a85`

```dockerfile
```

-	Layers:
	-	`sha256:92dd23ac3eb44ba6fbfdda4efa3d421900bb9a688bdb0f6138d12311e7c253d1`  
		Last Modified: Fri, 20 Nov 2026 17:45:29 GMT  
		Size: 4.4 MB (4374965 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6aeb27c107c868817a2497a974727be284e3be99197d1afd2d468508f1a260a3`  
		Last Modified: Fri, 20 Nov 2026 17:45:29 GMT  
		Size: 25.6 KB (25587 bytes)  
		MIME: application/vnd.in-toto+json
