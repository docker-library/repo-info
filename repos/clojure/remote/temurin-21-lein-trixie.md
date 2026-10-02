## `clojure:temurin-21-lein-trixie`

```console
$ docker pull clojure@sha256:5560f552abcae6d0898a494696efb6b2fe878c59508b861ca423ef4970c647ff
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:85da3fe265f7abfff48d36d6ec01bace4df2916f23ffab5879a8111f8a26f437
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.9 MB (233893163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f46c8c30ea223417e47e36deece9f83382ca20f8050a45752dd80f4a83d58ab`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 02:46:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:46:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:46:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:46:46 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 02:46:46 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 02:46:46 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:48:01 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 02:48:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 02:48:01 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 02:48:02 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 02:48:02 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:48:02 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:48:02 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4f33708f3ba6c968c4c94aa511fe5e8cd772abe8ec245e4ac1fab17a956c3af`  
		Last Modified: Fri, 02 Oct 2026 02:48:23 GMT  
		Size: 158.1 MB (158117501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f388ba61dcc45ed17f42c753d3dbce84520ec504e9aa63e2fc00f38c6b459de`  
		Last Modified: Fri, 02 Oct 2026 02:48:21 GMT  
		Size: 21.9 MB (21880363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34a1c099c36bcb6a4c0c2ed2a96934527f7e0ac635d4d2e14f812a8b08544403`  
		Last Modified: Fri, 02 Oct 2026 02:48:20 GMT  
		Size: 4.5 MB (4515170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aef36c4fbcc04d73dc92f524b8bfee70f5640066c29415d13fd096fc43b6fa0`  
		Last Modified: Fri, 02 Oct 2026 02:48:19 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:972389214c4ca74dd44cfdfeebec7208e0d432b53030dbc562af1739d3af2291
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3847317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d87492a71886f2668b6fc322d12a2793dc5e441c8ff38e5940860a593a9874e`

```dockerfile
```

-	Layers:
	-	`sha256:897ff4818b8be54a8dbff587e93ed3bc0c93b195a913f573063d96dc7ce5a399`  
		Last Modified: Fri, 02 Oct 2026 02:48:20 GMT  
		Size: 3.8 MB (3829599 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:218813d7cc06def0ab662e51a981a9b90b8137e9d5656814788b2401c9a35901`  
		Last Modified: Fri, 02 Oct 2026 02:48:19 GMT  
		Size: 17.7 KB (17718 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:7e48db0c1590e6a0fe05002f5324947cc9c125ab78bbb9c2aa25e17bd91ecc44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.9 MB (232867578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8865c5cbec6b0f3bee4803211b159a0251bb25f1d50d98ad22b937344cbc4f4b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 02:46:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:46:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:46:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:46:49 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 02:46:49 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 02:46:49 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:48:10 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 02:48:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 02:48:10 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 02:48:11 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 02:48:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:48:11 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:48:11 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01d2bada1944d2a91b82e196768d7bc2c06ba8f8979085e14be0a7c1f875075a`  
		Last Modified: Fri, 02 Oct 2026 02:48:34 GMT  
		Size: 156.4 MB (156400690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44a451687c0dc3ac78c60a0a1507ac9baa19b0e5830b143e7476ada703d35135`  
		Last Modified: Fri, 02 Oct 2026 02:48:31 GMT  
		Size: 22.2 MB (22202464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b377ea2afdd8d29569be65799bb1f998f7dac823a9b91dd4963423be81b1c78`  
		Last Modified: Fri, 02 Oct 2026 02:48:31 GMT  
		Size: 4.5 MB (4515159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:752ff96681b13dfaeb3c9c9a7743c0ec075434cfc240b179e8da7d5fb066f94b`  
		Last Modified: Fri, 02 Oct 2026 02:48:30 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:c9934512ac3f3a6b234c7d94a3a829f1463cbcf36f14f60f0c70795b38e20059
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3847678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30fe7c0ceae7edeed12d84fa7ef51c3583e4c8a4fc7659ba4ff5171b27c0ccef`

```dockerfile
```

-	Layers:
	-	`sha256:e45c7f7e9a65934299a52ded89c5442377b5dd5155c9b8978826ebe759350a3d`  
		Last Modified: Fri, 02 Oct 2026 02:48:31 GMT  
		Size: 3.8 MB (3829839 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01b73f633231ca95950ce6d431fe2fc46c24577cf99a8f4cf6f4725c760fc1de`  
		Last Modified: Fri, 02 Oct 2026 02:48:30 GMT  
		Size: 17.8 KB (17839 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:ead13db9cfb801ae1bbb725b20c67bfdb406c8d255b2de490e05c6244b3b7d40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.9 MB (234934772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25b174c0478d3b6a5ef06c1cb3f1fc33c434e67c1b6b75c8062f00d443a3d234`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 26 Sep 2026 05:02:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 05:02:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 05:02:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 05:02:40 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 26 Sep 2026 05:02:40 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 26 Sep 2026 05:02:41 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 05:05:11 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 26 Sep 2026 05:05:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 26 Sep 2026 05:05:11 GMT
ENV LEIN_ROOT=1
# Sat, 26 Sep 2026 05:05:15 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 26 Sep 2026 05:05:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 26 Sep 2026 05:05:15 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 26 Sep 2026 05:05:15 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:fe57b34d87b4c3538e7b00694a21e5bd450391029c5c22b4da16fbe872c78d51`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 53.2 MB (53195075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:672bd588ed5276723506f7ce06a15138fe6d091a5d202c2fdabae87bc5d56532`  
		Last Modified: Sat, 26 Sep 2026 05:05:55 GMT  
		Size: 158.3 MB (158282679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b42f6c80830f25a2cefb38996a48be239057828bab7c9998385affb8a711bb8`  
		Last Modified: Sat, 26 Sep 2026 05:05:52 GMT  
		Size: 18.9 MB (18941386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6737583f854d9065e9891d043b7cfbc3b08669ae018799f1e952dcd51d7f688`  
		Last Modified: Sat, 26 Sep 2026 05:05:51 GMT  
		Size: 4.5 MB (4515202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9136c1658f40f03def4791066340f87a1d94955dd45d68b7eca287320311aa9`  
		Last Modified: Sat, 26 Sep 2026 05:05:51 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:49ab74272c1e1fc9a76c3f3f116615c4c72d8953936426fb5d2b50e3b570ca64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3848359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e95119202e830be5182367de943c192f760cdfab3f762d132e285a6bfc99b43e`

```dockerfile
```

-	Layers:
	-	`sha256:8aa8418595d30049aadcf32b5ab717fcf43571aa6120c5d0b0d799b8ab0948c1`  
		Last Modified: Sat, 26 Sep 2026 05:05:51 GMT  
		Size: 3.8 MB (3830597 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:259f76236d6ce356cd660baa5f0fc5e352129a5471fd001a85c188d55ecdb868`  
		Last Modified: Sat, 26 Sep 2026 05:05:51 GMT  
		Size: 17.8 KB (17762 bytes)  
		MIME: application/vnd.in-toto+json
