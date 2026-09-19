## `neo4j:5-community`

```console
$ docker pull neo4j@sha256:09476c66a14c913f7b843533ee5dd31b44fa6a707a44a9ed01b0d1f6246af7a4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:5-community` - linux; amd64

```console
$ docker pull neo4j@sha256:3aa908c50fc43e2f2fa21d313e267ce1b7b5ed90b714ef580c14269bdff642a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **372.6 MB (372636485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0542886cf7ef2f71767147ca454f74504561d1d3370fdae003344bce082e262`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:20:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:20:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:20:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=f22934e3f7c1ddae743d91243f38aa492f007471c6a2bdbdc882fe2b3e1e4bdd NEO4J_TARBALL=neo4j-community-5.26.30-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Wed, 16 Sep 2026 04:20:22 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.30-unix.tar.gz
# Wed, 16 Sep 2026 04:20:22 GMT
COPY ./local-package/* /startup/ # buildkit
# Wed, 16 Sep 2026 04:20:48 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.30-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Wed, 16 Sep 2026 04:20:48 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:20:48 GMT
WORKDIR /var/lib/neo4j
# Wed, 16 Sep 2026 04:20:48 GMT
VOLUME [/data /logs]
# Wed, 16 Sep 2026 04:20:48 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Wed, 16 Sep 2026 04:20:48 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Wed, 16 Sep 2026 04:20:48 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d4aa86db98b3f8567c1f95ef34c075ae55baaeaab1c3b6df82f8fd76ef044bf`  
		Last Modified: Wed, 16 Sep 2026 04:21:11 GMT  
		Size: 158.1 MB (158120306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b930832aa12dcfdb6b7e6be19a9cd6f1c5d7d5b64155529501b711285c49795`  
		Last Modified: Wed, 16 Sep 2026 04:21:06 GMT  
		Size: 10.1 KB (10062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c277865392ee63ea6442d7ef0adae9ca1fae616914033a22b9699ab3145c767`  
		Last Modified: Wed, 16 Sep 2026 04:21:12 GMT  
		Size: 184.7 MB (184713427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-community` - unknown; unknown

```console
$ docker pull neo4j@sha256:2d5f38e38ea1207381557abffb11bf86526e9af01b7d7d50736eb242266bccd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4310405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8186db069f79371721e7f4337915c4d35ab7d4acd95d0b8d7c8a5ac44d426afe`

```dockerfile
```

-	Layers:
	-	`sha256:b6539e86f24d9d57e85013cca0fb6a8cca181215151b0b546d1832bc25bfdef8`  
		Last Modified: Wed, 16 Sep 2026 04:21:06 GMT  
		Size: 4.3 MB (4289182 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:115d794925cae72bf449a649508b66300dbe6711310302dfc3c04e879c32b736`  
		Last Modified: Wed, 16 Sep 2026 04:21:06 GMT  
		Size: 21.2 KB (21223 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:5-community` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:41db542dd7a713444a4d324864850b7e90e9333a98fe85a2ac557519bffc697e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.1 MB (359107489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca995114ec70d82cf52856a7c68f8024a75ff0667eccfce88b900d928c07ec10`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:49:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 00:49:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 00:49:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=f22934e3f7c1ddae743d91243f38aa492f007471c6a2bdbdc882fe2b3e1e4bdd NEO4J_TARBALL=neo4j-community-5.26.30-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Sat, 19 Sep 2026 00:49:29 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.30-unix.tar.gz
# Sat, 19 Sep 2026 00:49:29 GMT
COPY ./local-package/* /startup/ # buildkit
# Sat, 19 Sep 2026 00:49:52 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.30-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Sat, 19 Sep 2026 00:49:52 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:49:52 GMT
WORKDIR /var/lib/neo4j
# Sat, 19 Sep 2026 00:49:52 GMT
VOLUME [/data /logs]
# Sat, 19 Sep 2026 00:49:52 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Sat, 19 Sep 2026 00:49:52 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:49:52 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f1ea5fc83257f4f6a6535137b39d33e099de275069f3dceed8b861370dcb90a`  
		Last Modified: Sat, 19 Sep 2026 00:50:17 GMT  
		Size: 156.4 MB (156401959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77d88d0c5616185be45a086171f457b0e623e60a26da7474ca3d5317532df8a9`  
		Last Modified: Sat, 19 Sep 2026 00:50:11 GMT  
		Size: 10.1 KB (10062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af684d6ed6bbc8f378389aabcce2962f2fe03d191ef86e52f001996b7f90155e`  
		Last Modified: Sat, 19 Sep 2026 00:50:17 GMT  
		Size: 172.5 MB (172505745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-community` - unknown; unknown

```console
$ docker pull neo4j@sha256:f2d494d2007261893d7ceac834475b4451e375a000bd49509953d6935284123b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4310824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4885ca33c031d967f15b258fe447b453a856335a6e1110f5f52cedc7b7cb2be`

```dockerfile
```

-	Layers:
	-	`sha256:386b8a75e344cd5207a58671d17a376d1934fe4c3522f3480b42543f8417a700`  
		Last Modified: Sat, 19 Sep 2026 00:50:12 GMT  
		Size: 4.3 MB (4289375 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:89b9b1f9832ad3c169f648847918c7a8547f0ade85f093ab70244c4ccf39ad72`  
		Last Modified: Sat, 19 Sep 2026 00:50:11 GMT  
		Size: 21.4 KB (21449 bytes)  
		MIME: application/vnd.in-toto+json
