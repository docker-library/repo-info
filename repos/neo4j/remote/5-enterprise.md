## `neo4j:5-enterprise`

```console
$ docker pull neo4j@sha256:58195367d4f6e0375c511242729bfbd2709cc92f0a43b91b5692841960f96c37
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:5-enterprise` - linux; amd64

```console
$ docker pull neo4j@sha256:37b64e80c31170acbdfccd21c4f1e4bd9ffde66e41be27aa007b12598c4ad795
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **702.6 MB (702632393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3a6a7dbd3cf15a1359a3a20646fccbae1bf967be76fd8b0d66f66272cc5a447`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Mon, 23 Nov 2026 21:31:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 23 Nov 2026 21:31:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 23 Nov 2026 21:31:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=d2e8b15cee658e0064952b9307c597179dee934692109f7f1d9e1fc440fa9d9a NEO4J_TARBALL=neo4j-enterprise-5.26.34-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Mon, 23 Nov 2026 21:31:08 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.34-unix.tar.gz
# Mon, 23 Nov 2026 21:31:08 GMT
COPY ./local-package/* /startup/ # buildkit
# Mon, 23 Nov 2026 21:31:40 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.34-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Mon, 23 Nov 2026 21:31:40 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 21:31:40 GMT
WORKDIR /var/lib/neo4j
# Mon, 23 Nov 2026 21:31:40 GMT
VOLUME [/data /logs]
# Mon, 23 Nov 2026 21:31:40 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Mon, 23 Nov 2026 21:31:40 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Mon, 23 Nov 2026 21:31:40 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dfe372b02a07553b2d800c99401f850866d9000f68b5a346535f3647b454ebb`  
		Last Modified: Mon, 23 Nov 2026 21:32:15 GMT  
		Size: 158.4 MB (158440950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb55083ac44e08cea639cb09670630cafe8d437385bb9ca925a5ba699726d0e8`  
		Last Modified: Mon, 23 Nov 2026 21:32:08 GMT  
		Size: 10.1 KB (10073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:123544a4a1147db190dd3dbffe8576af1b50ba11543fb94269c092ea516c301e`  
		Last Modified: Mon, 23 Nov 2026 21:32:22 GMT  
		Size: 514.3 MB (514325206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-enterprise` - unknown; unknown

```console
$ docker pull neo4j@sha256:6d2b10c63582b2282bca2504c0a2381fd9d7a754aea16fc8962c493d65697867
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4678922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86ee7b51716e247470a0829d23a66480a329db46db8d0ed0cdeeb8f259842edf`

```dockerfile
```

-	Layers:
	-	`sha256:78fa0373e41246566449aa093b60d883f967a634d12c80519da88f24cf0d8039`  
		Last Modified: Mon, 23 Nov 2026 21:32:08 GMT  
		Size: 4.7 MB (4659471 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61ab8023e611d7ecc03f794cf6d0e4faf287f5ab1df5a4475bf95def40d22f18`  
		Last Modified: Mon, 23 Nov 2026 21:32:08 GMT  
		Size: 19.5 KB (19451 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:5-enterprise` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:ddb63c75ff7f96008ac9549f6d1bcc33d0de9ccdc219832edceafbe3d7a07797
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **685.4 MB (685401654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d623bae4651e776f72d360d7dd5443cb0363fef5d7e100a7484f4dd0afa5dc91`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 00:40:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 00:40:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 00:40:41 GMT
RUN "$JAVA_HOME/bin/keytool" -list -v -cacerts -storepass changeit       | sed -n 's/^Alias name: //p'       | grep -E 'emsign_(ecc_root_ca__g3|ecc_root_ca__c3|root_ca__c1)'       | while read -r alias; do           "$JAVA_HOME/bin/keytool" -delete -cacerts -storepass changeit -alias "$alias";         done # buildkit
# Thu, 12 Nov 2026 00:40:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=484d19f9e4953b50d69d79a2177719bfeba721f0da17312c8720df82af7156e5 NEO4J_TARBALL=neo4j-enterprise-5.26.33-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Thu, 12 Nov 2026 00:40:41 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.33-unix.tar.gz
# Thu, 12 Nov 2026 00:40:41 GMT
COPY ./local-package/* /startup/ # buildkit
# Thu, 12 Nov 2026 00:41:11 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.33-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Thu, 12 Nov 2026 00:41:11 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:41:11 GMT
WORKDIR /var/lib/neo4j
# Thu, 12 Nov 2026 00:41:11 GMT
VOLUME [/data /logs]
# Thu, 12 Nov 2026 00:41:11 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Thu, 12 Nov 2026 00:41:11 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Thu, 12 Nov 2026 00:41:11 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0582f0103ad3c4695e9d10db08a7619b79586beb722b3e817a5f5e2b6e7a12d`  
		Last Modified: Thu, 12 Nov 2026 00:41:49 GMT  
		Size: 156.7 MB (156691653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed6b9504546cb8f5f5bd95bf2ec20cbfb7b5227fcaf212f52a8759a8dcc2637c`  
		Last Modified: Thu, 12 Nov 2026 00:41:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4efddd9dba848a70676dbef2a10d34d94770ae00e131df8eb6ca559d5aedf84f`  
		Last Modified: Thu, 12 Nov 2026 00:41:43 GMT  
		Size: 10.1 KB (10074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c52aee6ca0422db4e3f6d85b4678b6c52c028159ce59c8dcbdf90aad2e2cfd03`  
		Last Modified: Thu, 12 Nov 2026 00:41:55 GMT  
		Size: 498.5 MB (498485732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-enterprise` - unknown; unknown

```console
$ docker pull neo4j@sha256:0279ec26a7dd711cc28eab1b239adf45ce58a7b5911e8dfdec7d961a298f2590
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4670099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94ecb743a65d8c90456a5ca50ddc5018c8c35430aaf50343d9b87094d685e3fa`

```dockerfile
```

-	Layers:
	-	`sha256:d18ede2fac83ec490c239e7469148fb771d695379da1b1e6b5c55e6f9aa67857`  
		Last Modified: Thu, 12 Nov 2026 00:41:43 GMT  
		Size: 4.6 MB (4647689 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9dc9261270ec12ad7dad9b804ab90354cd41ec8a938fab689f2e6c9aa34b65c7`  
		Last Modified: Thu, 12 Nov 2026 00:41:43 GMT  
		Size: 22.4 KB (22410 bytes)  
		MIME: application/vnd.in-toto+json
