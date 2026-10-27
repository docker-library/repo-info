## `neo4j:5-community-trixie`

```console
$ docker pull neo4j@sha256:a149a5b7e26d7bc00219c370f18a5c676b4dccf964237aeb902c8ae9ed270fa0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:5-community-trixie` - linux; amd64

```console
$ docker pull neo4j@sha256:3ce16479a48a16cc061530ef6a42111ea3ae8dcad1d2671ce4cd243d403138a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.8 MB (351767282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8b0c442afcb1688cb26e585938842b84a882a164d9260506d21b4774e20c260`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Fri, 23 Oct 2026 16:35:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 23 Oct 2026 16:35:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 23 Oct 2026 16:35:38 GMT
RUN "$JAVA_HOME/bin/keytool" -list -v -cacerts -storepass changeit       | sed -n 's/^Alias name: //p'       | grep -E 'emsign_(ecc_root_ca__g3|ecc_root_ca__c3|root_ca__c1)'       | while read -r alias; do           "$JAVA_HOME/bin/keytool" -delete -cacerts -storepass changeit -alias "$alias";         done # buildkit
# Fri, 23 Oct 2026 16:35:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=d279ae6a9b38034280681a558b0cd222dce89f87cc3d9867f1f7bd28ef5ebc30 NEO4J_TARBALL=neo4j-community-5.26.32-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Fri, 23 Oct 2026 16:35:38 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.32-unix.tar.gz
# Fri, 23 Oct 2026 16:35:38 GMT
COPY ./local-package/* /startup/ # buildkit
# Fri, 23 Oct 2026 16:35:59 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.32-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Fri, 23 Oct 2026 16:35:59 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 16:36:00 GMT
WORKDIR /var/lib/neo4j
# Fri, 23 Oct 2026 16:36:00 GMT
VOLUME [/data /logs]
# Fri, 23 Oct 2026 16:36:00 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Fri, 23 Oct 2026 16:36:00 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 16:36:00 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87eb1934f64508c326480b12e14a4119d7c13eef39a98325ea4686ed5a6d17b4`  
		Last Modified: Fri, 23 Oct 2026 16:36:27 GMT  
		Size: 158.1 MB (158117471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b30a4acbaa3923bab5784467c09117e5781857711679790d7f5a8511971f97f1`  
		Last Modified: Fri, 23 Oct 2026 16:36:19 GMT  
		Size: 98.1 KB (98058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d473066170d9b6cfdaef0d43cb08aeb38acefdb8b98d3158be2eb4c9d13b6d20`  
		Last Modified: Fri, 23 Oct 2026 16:36:19 GMT  
		Size: 10.1 KB (10062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1b6630c6412315d79eb188758787264cce9a2eae85aa21068232c94be1dba49`  
		Last Modified: Fri, 23 Oct 2026 16:36:27 GMT  
		Size: 163.7 MB (163698080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-community-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:de2c53a08b3c385a1ff96fd07180fc9eb692e4559703a92685f719ee5db737b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4319500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b122a60f2b1f1eb27abe8e979c781cb6946c7c39abccec85eac08e0eb8c2c474`

```dockerfile
```

-	Layers:
	-	`sha256:06f2ca7651e99980025d20d4e1c591d87013f2b53db9e2f53477b3e5612ad509`  
		Last Modified: Fri, 23 Oct 2026 16:36:19 GMT  
		Size: 4.3 MB (4295479 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:93697eb7ca19a5783dbe06cf37a9f390f793a32c40624d8fd97ef6a07f1b82ce`  
		Last Modified: Fri, 23 Oct 2026 16:36:19 GMT  
		Size: 24.0 KB (24021 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:5-community-trixie` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:22dfc37fafb18c8f8cdb36293d82cef0ae4bf21bef31efa20f16f25394a580f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.5 MB (349473912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77285876e4d0d6d8f25448f1425fccedc0ca955f3e97629841e1d4d82640e004`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 00:27:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:27:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:27:54 GMT
RUN "$JAVA_HOME/bin/keytool" -list -v -cacerts -storepass changeit       | sed -n 's/^Alias name: //p'       | grep -E 'emsign_(ecc_root_ca__g3|ecc_root_ca__c3|root_ca__c1)'       | while read -r alias; do           "$JAVA_HOME/bin/keytool" -delete -cacerts -storepass changeit -alias "$alias";         done # buildkit
# Tue, 27 Oct 2026 00:27:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=d279ae6a9b38034280681a558b0cd222dce89f87cc3d9867f1f7bd28ef5ebc30 NEO4J_TARBALL=neo4j-community-5.26.32-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Tue, 27 Oct 2026 00:27:54 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.32-unix.tar.gz
# Tue, 27 Oct 2026 00:27:54 GMT
COPY ./local-package/* /startup/ # buildkit
# Tue, 27 Oct 2026 00:28:16 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.32-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Tue, 27 Oct 2026 00:28:16 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:28:16 GMT
WORKDIR /var/lib/neo4j
# Tue, 27 Oct 2026 00:28:16 GMT
VOLUME [/data /logs]
# Tue, 27 Oct 2026 00:28:16 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Tue, 27 Oct 2026 00:28:16 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Tue, 27 Oct 2026 00:28:16 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ca13df7e9c5529866486b879d7121a2c1c523499fe94add3787e66f78c501cc`  
		Last Modified: Tue, 27 Oct 2026 00:28:41 GMT  
		Size: 156.4 MB (156400736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfeb9e3ce5dc04140db3b3dfff5ad8f865d1fe6d1a7d1215387f3d1e5c7bb786`  
		Last Modified: Tue, 27 Oct 2026 00:28:35 GMT  
		Size: 98.1 KB (98056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73d3632b5445a4313cfc5ca0b8e8b77df24fa7cdc6f3bb56a360c3991cd996cf`  
		Last Modified: Tue, 27 Oct 2026 00:28:35 GMT  
		Size: 10.1 KB (10058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27a2b27f6c5fdfce5173ed81f9e661f54f63f08b2235128fd04e0183f3e7e85d`  
		Last Modified: Tue, 27 Oct 2026 00:28:41 GMT  
		Size: 162.8 MB (162764552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-community-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:74cf3b5a54e8ad47303c2e59e92f5171f7c1391c86c37f5596f6acd8085b4468
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4314260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eee26d1de569e410d4efed0f2b9100d70c33e6fcc14bbe6d57d48cb4359ac32b`

```dockerfile
```

-	Layers:
	-	`sha256:1ffbcb222c054623f9730be2cda1a76efe3e05b05c0fb62f53e3236e428acefc`  
		Last Modified: Tue, 27 Oct 2026 00:28:35 GMT  
		Size: 4.3 MB (4289998 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:05bfe0cbad22a3762a08abdde150b9e6e031291085605b0f6a5f97ef507e367c`  
		Last Modified: Tue, 27 Oct 2026 00:28:35 GMT  
		Size: 24.3 KB (24262 bytes)  
		MIME: application/vnd.in-toto+json
