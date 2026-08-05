## `neo4j:2026-community-trixie`

```console
$ docker pull neo4j@sha256:efd853c5bb12b5109012527a9003eda89c0d1159b586ccc14616ff86ef085cab
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:2026-community-trixie` - linux; amd64

```console
$ docker pull neo4j@sha256:b4a8386edd311471c37abe9cfdfc1e6932cbcb9ab5a1448518b53ff3bfc319a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **391.9 MB (391891943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3a6732e83e84403da1483658310c10864f150e512b156a0733815bad2871ce2`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:27:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:27:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:27:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=1dcf62e7e8035e71732b86532b9f8e3219ce8956bd06940d5a0024696727192a NEO4J_TARBALL=neo4j-community-2026.06.0-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Tue, 04 Aug 2026 02:27:18 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.06.0-unix.tar.gz
# Tue, 04 Aug 2026 02:27:18 GMT
COPY ./local-package/* /startup/ # buildkit
# Tue, 04 Aug 2026 02:27:47 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.06.0-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Tue, 04 Aug 2026 02:27:47 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:27:48 GMT
WORKDIR /var/lib/neo4j
# Tue, 04 Aug 2026 02:27:48 GMT
VOLUME [/data /logs]
# Tue, 04 Aug 2026 02:27:48 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Tue, 04 Aug 2026 02:27:48 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:27:48 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f79febc6081b7c5cdf120cdb8b65b5f13c2d7f2d3a50737997d8ac62ba2c407`  
		Last Modified: Tue, 04 Aug 2026 02:28:11 GMT  
		Size: 92.6 MB (92574586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0ff92e30ddb5a7013305e546477213b0588db66672c2132cb064c96505b237e`  
		Last Modified: Tue, 04 Aug 2026 02:28:08 GMT  
		Size: 10.0 KB (10021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a0863258acbd130120c41f164f64d6a2206e1e15c42c68d4fe84351b87e1214`  
		Last Modified: Tue, 04 Aug 2026 02:28:14 GMT  
		Size: 269.5 MB (269526399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:2026-community-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:b65bb9ea773bfe25eb0b4edc9946f5f03035eef3b736d86062061b77de9db5f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4390547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5074e53db324d208cb5a813f5e6aa614f74320ec23a82c7f95bcaa3e8eec9cc`

```dockerfile
```

-	Layers:
	-	`sha256:0e6ba8c70ad5f25f7abe7fa39b1e86e2112f858273801b6226480bd1aa11d8fa`  
		Last Modified: Tue, 04 Aug 2026 02:28:08 GMT  
		Size: 4.4 MB (4368039 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f88809d3e9d64ff038683039fb8cf5302c957e107ac568c70e79a0dd480b953`  
		Last Modified: Tue, 04 Aug 2026 02:28:08 GMT  
		Size: 22.5 KB (22508 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:2026-community-trixie` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:b088ccaa210d9bdfa8c32e6995461098ad5b48160e3baf2a859a42f8edd198ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **390.3 MB (390291974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0aa64e9891ec4a057907b613e4d93de3edb771b0c3c1604bacc74d8a57c39d7`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:48:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 00:48:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 00:48:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=1dcf62e7e8035e71732b86532b9f8e3219ce8956bd06940d5a0024696727192a NEO4J_TARBALL=neo4j-community-2026.06.0-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Wed, 05 Aug 2026 00:48:51 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.06.0-unix.tar.gz
# Wed, 05 Aug 2026 00:48:51 GMT
COPY ./local-package/* /startup/ # buildkit
# Wed, 05 Aug 2026 00:49:14 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.06.0-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Wed, 05 Aug 2026 00:49:14 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:49:14 GMT
WORKDIR /var/lib/neo4j
# Wed, 05 Aug 2026 00:49:14 GMT
VOLUME [/data /logs]
# Wed, 05 Aug 2026 00:49:14 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Wed, 05 Aug 2026 00:49:14 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:49:14 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:446a9e9babe07caf1901698f51392211a7f072c23dc96d58ebd7be18a656829f`  
		Last Modified: Wed, 05 Aug 2026 00:49:40 GMT  
		Size: 91.5 MB (91542236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddd475894302ab4336e1e3c7574cc1fc410f5265870bab424044e8ed951e24aa`  
		Last Modified: Wed, 05 Aug 2026 00:49:36 GMT  
		Size: 10.0 KB (10021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acb5a46f0d40cfc7413b47c79a9fd79d21b7cce009e70e9bd94a8835809b112b`  
		Last Modified: Wed, 05 Aug 2026 00:49:44 GMT  
		Size: 268.6 MB (268596076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:2026-community-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:2f2d7cce6a241d473b70976dbc5421fd53d8f39717e4b774f143378f80527982
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4385384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f31d1dd3f6929ad6c162bb5512f37c088cab917af84330b4dca6569080c7b162`

```dockerfile
```

-	Layers:
	-	`sha256:71aead3e1f215fb4837b6015a9ea7d9ca1fce908e9652f324d1da7d79d2b09ef`  
		Last Modified: Wed, 05 Aug 2026 00:49:36 GMT  
		Size: 4.4 MB (4362602 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8e56ebc86fc26dc827429b587a56d5525e0e7b091d386157f13dc630a36b173`  
		Last Modified: Wed, 05 Aug 2026 00:49:36 GMT  
		Size: 22.8 KB (22782 bytes)  
		MIME: application/vnd.in-toto+json
