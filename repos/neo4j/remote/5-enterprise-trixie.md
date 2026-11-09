## `neo4j:5-enterprise-trixie`

```console
$ docker pull neo4j@sha256:67f275e6fac771f0a37fa8cdd3c163de6ece201d5ff4a3478ce15bbcb749d272
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:5-enterprise-trixie` - linux; amd64

```console
$ docker pull neo4j@sha256:c9cbfee0b5ed626fbadc4cc1b899e1abe30c236b738d71119ff39ca64c4a30e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **687.7 MB (687690500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d94948bd345a6ebb13dbfc65fa67ebacf85f8ab81e238d8c8f705e51cd393384`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Mon, 09 Nov 2026 20:25:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 09 Nov 2026 20:25:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 09 Nov 2026 20:25:11 GMT
RUN "$JAVA_HOME/bin/keytool" -list -v -cacerts -storepass changeit       | sed -n 's/^Alias name: //p'       | grep -E 'emsign_(ecc_root_ca__g3|ecc_root_ca__c3|root_ca__c1)'       | while read -r alias; do           "$JAVA_HOME/bin/keytool" -delete -cacerts -storepass changeit -alias "$alias";         done # buildkit
# Mon, 09 Nov 2026 20:25:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=484d19f9e4953b50d69d79a2177719bfeba721f0da17312c8720df82af7156e5 NEO4J_TARBALL=neo4j-enterprise-5.26.33-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Mon, 09 Nov 2026 20:25:11 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.33-unix.tar.gz
# Mon, 09 Nov 2026 20:25:11 GMT
COPY ./local-package/* /startup/ # buildkit
# Mon, 09 Nov 2026 20:25:38 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.33-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Mon, 09 Nov 2026 20:25:38 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 20:25:38 GMT
WORKDIR /var/lib/neo4j
# Mon, 09 Nov 2026 20:25:38 GMT
VOLUME [/data /logs]
# Mon, 09 Nov 2026 20:25:38 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Mon, 09 Nov 2026 20:25:38 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Mon, 09 Nov 2026 20:25:38 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aff2f05265ac617b49cd52f0e6676a1025137bb41c9064d94baa683c8f56958c`  
		Last Modified: Mon, 09 Nov 2026 20:26:15 GMT  
		Size: 158.4 MB (158409430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c558459c4632b615fb1229a66407d46e3a5ed8a185a1254d0a7a20490dc70cd`  
		Last Modified: Mon, 09 Nov 2026 20:26:08 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00a895b460b936ee287a5ebf838b5b1a13da178a2c3cc53e01cb2774aa3b842a`  
		Last Modified: Mon, 09 Nov 2026 20:26:08 GMT  
		Size: 10.1 KB (10077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06e88519e6171bf1c6cc89dd09e08f36f4c756b3a1fb515a4975388862b89408`  
		Last Modified: Mon, 09 Nov 2026 20:26:30 GMT  
		Size: 499.4 MB (499414698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-enterprise-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:0401acd35e2570a8b9fbc39f95a2a315126423aff1422763010febdd46202cf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4675483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18207418a472b393bebfcec336c7b9f98bd865b670dc29b380491f15223811af`

```dockerfile
```

-	Layers:
	-	`sha256:458295500a0fced6809518da0cd8392650a62dde2f18e57dbf39940eeedddf0c`  
		Last Modified: Mon, 09 Nov 2026 20:26:08 GMT  
		Size: 4.7 MB (4653242 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84f7196eabe4cdf8ebb778c1ef9f0805b27bfca1d6fa1e73e2a5c38ec7b3a49d`  
		Last Modified: Mon, 09 Nov 2026 20:26:07 GMT  
		Size: 22.2 KB (22241 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:5-enterprise-trixie` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:e69520bd9e3ba98002fe2012aa94bd022771e596a39b7a364a7ff903de2ed84b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **685.4 MB (685401723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9462c8b248cbe64042df18f979f9adabf9710a2c917539538a9a6ae7fec47fd`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Mon, 09 Nov 2026 20:25:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 09 Nov 2026 20:25:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 09 Nov 2026 20:25:28 GMT
RUN "$JAVA_HOME/bin/keytool" -list -v -cacerts -storepass changeit       | sed -n 's/^Alias name: //p'       | grep -E 'emsign_(ecc_root_ca__g3|ecc_root_ca__c3|root_ca__c1)'       | while read -r alias; do           "$JAVA_HOME/bin/keytool" -delete -cacerts -storepass changeit -alias "$alias";         done # buildkit
# Mon, 09 Nov 2026 20:25:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=484d19f9e4953b50d69d79a2177719bfeba721f0da17312c8720df82af7156e5 NEO4J_TARBALL=neo4j-enterprise-5.26.33-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Mon, 09 Nov 2026 20:25:28 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.33-unix.tar.gz
# Mon, 09 Nov 2026 20:25:28 GMT
COPY ./local-package/* /startup/ # buildkit
# Mon, 09 Nov 2026 20:25:58 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.33-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Mon, 09 Nov 2026 20:25:58 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 20:25:58 GMT
WORKDIR /var/lib/neo4j
# Mon, 09 Nov 2026 20:25:58 GMT
VOLUME [/data /logs]
# Mon, 09 Nov 2026 20:25:58 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Mon, 09 Nov 2026 20:25:58 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Mon, 09 Nov 2026 20:25:58 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f844a38bfde6ba382028bcbbd3885c4b942fb42d5a2709c9d4f3e833e4aeb02`  
		Last Modified: Mon, 09 Nov 2026 20:26:35 GMT  
		Size: 156.7 MB (156691637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecd0ab74c00929360b8784b033f16d9c39ca011161ece034dfa42fdb71ce3112`  
		Last Modified: Mon, 09 Nov 2026 20:26:29 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24b622e80c66799008458cf5f34f77d85ebb507fda736b73a5a2a127e682657c`  
		Last Modified: Mon, 09 Nov 2026 20:26:29 GMT  
		Size: 10.1 KB (10070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42da9afc8a450bce655bb2fb496c81791ca6334e938ef3ba652cdeaddd6a9ce5`  
		Last Modified: Mon, 09 Nov 2026 20:26:41 GMT  
		Size: 498.5 MB (498485820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-enterprise-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:aa7465380254c0eaaf6501826560e19a0a20c56792ebd6701b2bdeeac57c769f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4670099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:821ac8b9c04d0c70744c3bed5c219008ce3d8195eec0e96e179bad43ad5b6413`

```dockerfile
```

-	Layers:
	-	`sha256:21d8a95d7e2d0d3f1dc02d4c13cb3133f38f3ab0936d0237752126762d67a12d`  
		Last Modified: Mon, 09 Nov 2026 20:26:29 GMT  
		Size: 4.6 MB (4647689 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d335b6496b1f31755ad5ebbff75974ea41d63a79f86f80d88b3b6690ac0dc944`  
		Last Modified: Mon, 09 Nov 2026 20:26:29 GMT  
		Size: 22.4 KB (22410 bytes)  
		MIME: application/vnd.in-toto+json
