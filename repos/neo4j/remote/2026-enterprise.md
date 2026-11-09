## `neo4j:2026-enterprise`

```console
$ docker pull neo4j@sha256:38984131cde58df85447335a6a49d16335a1df89d72419ce2a920b53a007ee60
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:2026-enterprise` - linux; amd64

```console
$ docker pull neo4j@sha256:51fc1a126cb37b2ef5748876ac8def18683a8148c0c15c7ff37406595ab8579e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **571.0 MB (571022407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e2bc205fb79a735649cf21807a4cea62d52a3a9288d326ac7cb9315aedcc38b`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Mon, 09 Nov 2026 20:25:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 09 Nov 2026 20:25:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 09 Nov 2026 20:25:08 GMT
RUN "$JAVA_HOME/bin/keytool" -list -v -cacerts -storepass changeit       | sed -n 's/^Alias name: //p'       | grep -E 'emsign_(ecc_root_ca__g3|ecc_root_ca__c3|root_ca__c1)'       | while read -r alias; do           "$JAVA_HOME/bin/keytool" -delete -cacerts -storepass changeit -alias "$alias";         done # buildkit
# Mon, 09 Nov 2026 20:25:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=46a1484145d57073a6094b1ac958bf6ae1ec25b5f6969f248d1403df46715950 NEO4J_TARBALL=neo4j-enterprise-2026.10.2-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Mon, 09 Nov 2026 20:25:08 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.10.2-unix.tar.gz
# Mon, 09 Nov 2026 20:25:08 GMT
COPY ./local-package/* /startup/ # buildkit
# Mon, 09 Nov 2026 20:25:36 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.10.2-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Mon, 09 Nov 2026 20:25:36 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 20:25:37 GMT
WORKDIR /var/lib/neo4j
# Mon, 09 Nov 2026 20:25:37 GMT
VOLUME [/data /logs]
# Mon, 09 Nov 2026 20:25:37 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Mon, 09 Nov 2026 20:25:37 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Mon, 09 Nov 2026 20:25:37 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f581a63365b3904947cde563095fa2565b28eb825fe612c257ed04b21f2d8afe`  
		Last Modified: Mon, 09 Nov 2026 20:26:08 GMT  
		Size: 92.6 MB (92598905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3dec75d2db50d16bdf3be6d263141c91adaa18cd01d9911f7d7938fc9084ef1`  
		Last Modified: Mon, 09 Nov 2026 20:26:03 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1b101d4da13aa0890c88844e5df3b9a8d9a57b190c0eede280e1b01fe5b9ad2`  
		Last Modified: Mon, 09 Nov 2026 20:26:03 GMT  
		Size: 10.0 KB (10039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96998021b7fc66955fbeb77d9abae222684d1a7477c762fde332d7b487595c35`  
		Last Modified: Mon, 09 Nov 2026 20:26:14 GMT  
		Size: 448.6 MB (448557171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:2026-enterprise` - unknown; unknown

```console
$ docker pull neo4j@sha256:c50640b0c068920ce9d329c84d6a7104342f60db29aeb3c8024ab3264566577c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4742946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2c480eafaf0083faaa1c94597c30a38f99201a1893fac8bfd04b79a3f85d094`

```dockerfile
```

-	Layers:
	-	`sha256:1a26f2f8bc56559a336b845d5b1c77ec99c87d7ff7b593ab64ecac1aea8b378d`  
		Last Modified: Mon, 09 Nov 2026 20:26:04 GMT  
		Size: 4.7 MB (4720040 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d160f2ecd078499a7eada96c1c81ed5aaae4c70015c35d5536b4012ab2c6e27`  
		Last Modified: Mon, 09 Nov 2026 20:26:03 GMT  
		Size: 22.9 KB (22906 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:2026-enterprise` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:15effbc893d6edd6198071c4812be4e56c5479b9ac3262eb735cabb37b6d0845
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **569.4 MB (569375545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04980abdccb531e46f7549a80e396514c42322dc0b68bf9456c63713d2d4488e`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Mon, 09 Nov 2026 20:25:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 09 Nov 2026 20:25:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 09 Nov 2026 20:25:23 GMT
RUN "$JAVA_HOME/bin/keytool" -list -v -cacerts -storepass changeit       | sed -n 's/^Alias name: //p'       | grep -E 'emsign_(ecc_root_ca__g3|ecc_root_ca__c3|root_ca__c1)'       | while read -r alias; do           "$JAVA_HOME/bin/keytool" -delete -cacerts -storepass changeit -alias "$alias";         done # buildkit
# Mon, 09 Nov 2026 20:25:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=46a1484145d57073a6094b1ac958bf6ae1ec25b5f6969f248d1403df46715950 NEO4J_TARBALL=neo4j-enterprise-2026.10.2-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Mon, 09 Nov 2026 20:25:23 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.10.2-unix.tar.gz
# Mon, 09 Nov 2026 20:25:23 GMT
COPY ./local-package/* /startup/ # buildkit
# Mon, 09 Nov 2026 20:25:50 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.10.2-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Mon, 09 Nov 2026 20:25:50 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 20:25:50 GMT
WORKDIR /var/lib/neo4j
# Mon, 09 Nov 2026 20:25:50 GMT
VOLUME [/data /logs]
# Mon, 09 Nov 2026 20:25:50 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Mon, 09 Nov 2026 20:25:50 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Mon, 09 Nov 2026 20:25:50 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7679e62439564f5badb547133adf214c66d0e50bc0b6bab5a33cdd2f685c523`  
		Last Modified: Mon, 09 Nov 2026 20:26:24 GMT  
		Size: 91.5 MB (91525603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e798349979b7b1f29c74dd42202fc5ec2f5d19b3ec34764978a607034c944474`  
		Last Modified: Mon, 09 Nov 2026 20:26:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e21e6520c6c4ad5ea49c114d1649be2a8676db9b3d64ab984b498515ce15d30`  
		Last Modified: Mon, 09 Nov 2026 20:26:20 GMT  
		Size: 10.0 KB (10042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3becbcaac5409d6473ecd5c9b0224a81aac2ba791abad58421a1d3e468c3197`  
		Last Modified: Mon, 09 Nov 2026 20:26:30 GMT  
		Size: 447.6 MB (447625700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:2026-enterprise` - unknown; unknown

```console
$ docker pull neo4j@sha256:4822d7c178b4c37ec5db861665a5cfa27ef1864c2586a05568c2272a05e1f4e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4737607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16c8a1ab8c4d9a00f158ec27da82930a4379f44ee4826167543a7be7b2eea7f6`

```dockerfile
```

-	Layers:
	-	`sha256:f82c4fbd8092e54090cd0168262334da0039652bd7b577a240e8941f18d0f6ed`  
		Last Modified: Mon, 09 Nov 2026 20:26:21 GMT  
		Size: 4.7 MB (4714508 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:130afc37626364025316905164e301bb1e889087cffa16ff29372c08d88c0ca0`  
		Last Modified: Mon, 09 Nov 2026 20:26:20 GMT  
		Size: 23.1 KB (23099 bytes)  
		MIME: application/vnd.in-toto+json
