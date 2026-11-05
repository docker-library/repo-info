## `neo4j:2026-enterprise-trixie`

```console
$ docker pull neo4j@sha256:3483f2c9b28f7b9a0114e7942a1df11ed2d40728ed0b4435254dfb8ef029e65b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:2026-enterprise-trixie` - linux; amd64

```console
$ docker pull neo4j@sha256:0b7a3e23b955bbebc6bcc88c39b633b5edb2609e2ece75ecddc60c2ccef9c3d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **574.8 MB (574818556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10948e4844f21004be1b190d44ad22e53dc1eaa47a269bc86849caeee2f618a1`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:39:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 07:39:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 07:39:46 GMT
RUN "$JAVA_HOME/bin/keytool" -list -v -cacerts -storepass changeit       | sed -n 's/^Alias name: //p'       | grep -E 'emsign_(ecc_root_ca__g3|ecc_root_ca__c3|root_ca__c1)'       | while read -r alias; do           "$JAVA_HOME/bin/keytool" -delete -cacerts -storepass changeit -alias "$alias";         done # buildkit
# Thu, 05 Nov 2026 07:39:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=96c6404dad2ac8728fbd147458441091ea8c444b9eb22aadde1209d3b4b23aa7 NEO4J_TARBALL=neo4j-enterprise-2026.10.1-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Thu, 05 Nov 2026 07:39:46 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.10.1-unix.tar.gz
# Thu, 05 Nov 2026 07:39:46 GMT
COPY ./local-package/* /startup/ # buildkit
# Thu, 05 Nov 2026 07:40:14 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.10.1-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Thu, 05 Nov 2026 07:40:14 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:40:14 GMT
WORKDIR /var/lib/neo4j
# Thu, 05 Nov 2026 07:40:14 GMT
VOLUME [/data /logs]
# Thu, 05 Nov 2026 07:40:14 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Thu, 05 Nov 2026 07:40:14 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:40:14 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff532c43c3d9eeb50e1514104dc40e1f04bf364abedecf40e2b0945fe0a977b1`  
		Last Modified: Thu, 05 Nov 2026 07:40:45 GMT  
		Size: 92.6 MB (92598929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecada68975cd1e32f20814a1c22436dbe96579177ec686b3def4675a2642ef1a`  
		Last Modified: Thu, 05 Nov 2026 07:40:41 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6426603f2ff216fb1f3d9377feeb2bd894e3e61acf50f1f9009eb6b67a064534`  
		Last Modified: Thu, 05 Nov 2026 07:40:40 GMT  
		Size: 10.0 KB (10041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fffe5d64706a00092ae3c8e82dcb4a987615b51994c47d5c7f12b84d1b604274`  
		Last Modified: Thu, 05 Nov 2026 07:40:51 GMT  
		Size: 452.4 MB (452353294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:2026-enterprise-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:82fd0dd5fd1856bb8e92f158bc3221b00d2bbe841edf916db9e7b0b6d1808ed8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4743494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8923b773b31fc6a039451150092b2a383a26353655410ce8946f422c395265ec`

```dockerfile
```

-	Layers:
	-	`sha256:1107e3e3a9f68930794407bc1bf1ecc6b8166d7bec8e36e387d35bbe03f56910`  
		Last Modified: Thu, 05 Nov 2026 07:40:41 GMT  
		Size: 4.7 MB (4720588 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4302d14b44c487f2242060bedfcc3f9839c762997b267d3ea53a1ff8971f16bc`  
		Last Modified: Thu, 05 Nov 2026 07:40:40 GMT  
		Size: 22.9 KB (22906 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:2026-enterprise-trixie` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:e00892315e1331b045587633e16bb5b307e9a6ab1d322fac8ba9803097cacf49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **573.2 MB (573172743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d3f04658f217c008f7a552a6f1ce8edb553b43f0625ec24f5e98c889bcc183f`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:43:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 07:43:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 07:43:34 GMT
RUN "$JAVA_HOME/bin/keytool" -list -v -cacerts -storepass changeit       | sed -n 's/^Alias name: //p'       | grep -E 'emsign_(ecc_root_ca__g3|ecc_root_ca__c3|root_ca__c1)'       | while read -r alias; do           "$JAVA_HOME/bin/keytool" -delete -cacerts -storepass changeit -alias "$alias";         done # buildkit
# Thu, 05 Nov 2026 07:43:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin NEO4J_SHA256=96c6404dad2ac8728fbd147458441091ea8c444b9eb22aadde1209d3b4b23aa7 NEO4J_TARBALL=neo4j-enterprise-2026.10.1-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Thu, 05 Nov 2026 07:43:34 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.10.1-unix.tar.gz
# Thu, 05 Nov 2026 07:43:34 GMT
COPY ./local-package/* /startup/ # buildkit
# Thu, 05 Nov 2026 07:44:03 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.10.1-unix.tar.gz
RUN apt-get update     && apt-get install --no-install-recommends -o Acquire::Retries=10 -y       curl ca-certificates gcc libc-dev git jq make procps tini wget     && groupadd --gid 7474 --system neo4j     && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && sed -i 's/Package Type:.*/Package Type: docker trixie/' $NEO4J_HOME/packaging_info     && mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report     && mv "${NEO4J_HOME}"/data /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && chmod -R 755 "${NEO4J_HOME}/bin"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && git clone https://github.com/ncopa/su-exec.git     && cd su-exec     && git checkout 4c3bb42b093f14da70d8ab924b487ccfbb1397af     && echo d6c40440609a23483f12eb6295b5191e94baf08298a856bab6e15b10c3b82891 su-exec.c | sha256sum -c     && echo 2a87af245eb125aca9305a0b1025525ac80825590800f047419dc57bba36b334 Makefile | sha256sum -c     && make     && mv /su-exec/su-exec /usr/bin/su-exec     && apt-get -y purge --auto-remove curl gcc git make libc-dev     && rm -rf /var/lib/apt/lists/* /su-exec # buildkit
# Thu, 05 Nov 2026 07:44:03 GMT
ENV PATH=/var/lib/neo4j/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:44:03 GMT
WORKDIR /var/lib/neo4j
# Thu, 05 Nov 2026 07:44:03 GMT
VOLUME [/data /logs]
# Thu, 05 Nov 2026 07:44:03 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Thu, 05 Nov 2026 07:44:03 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:44:03 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e02f556f130e0b52f04a6e88008ca32b0a4c74e6ce6d33a1bbece8391428d8b9`  
		Last Modified: Thu, 05 Nov 2026 07:44:36 GMT  
		Size: 91.5 MB (91525572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74ac96a48ebcb111c7aa532f32389b0ad24fa7d6b3c293805162b641eda92c0f`  
		Last Modified: Thu, 05 Nov 2026 07:44:33 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aef9f8731f76933a3b5b98a1a488b7daee8c2552efd37a76a9a24793a12b8ac9`  
		Last Modified: Thu, 05 Nov 2026 07:44:33 GMT  
		Size: 10.0 KB (10036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:847fd9450d149c719d380c2c5d8ef1fb2700481ee82cc714e5a83d2f0c959dd5`  
		Last Modified: Thu, 05 Nov 2026 07:44:43 GMT  
		Size: 451.4 MB (451422937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:2026-enterprise-trixie` - unknown; unknown

```console
$ docker pull neo4j@sha256:b8e6da327d79979a75bc1030ec54476ffcdf6c1620068f3f0ca25c1bab3ece89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4738155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cda4366f133b663cf90706ad8d6687211ded4dffc55042f1b48867ebff4427ee`

```dockerfile
```

-	Layers:
	-	`sha256:4a93a02b77a1df5dde2af7ba685577961d1d45f4699c79067ecb862f5177fe20`  
		Last Modified: Thu, 05 Nov 2026 07:44:33 GMT  
		Size: 4.7 MB (4715056 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:382d2afdefb5aef2bd0c0b84d85654783220c42bcd2b1f123f0600c82e3135c3`  
		Last Modified: Thu, 05 Nov 2026 07:44:33 GMT  
		Size: 23.1 KB (23099 bytes)  
		MIME: application/vnd.in-toto+json
