## `clojure:temurin-26-lein-trixie-slim`

```console
$ docker pull clojure@sha256:faf4a235df8f46f78a717b5691c75137cd0b7c886a2b89569c031d3b8fdc960d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:9d9102e5c4e3768604f6a5e45a45822ed95ec1356bee5baa86024b6a313d6241
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.0 MB (150976235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab444cccf5e89195b939ea433012cbfac2248f5ecdf0a6286082699f4ac1ce59`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:38:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:38:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:38:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:38:16 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 04:38:16 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 04:38:16 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:39:34 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 04:39:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 04:39:34 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 04:39:35 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 04:39:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:39:35 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:39:35 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdaed28df220606b4ddddebd20ed57d29b660398c05e2d9a030ea196003900ea`  
		Last Modified: Wed, 16 Sep 2026 04:39:57 GMT  
		Size: 94.6 MB (94563698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceff9bcf341af511e704347f4ea9d11e85c03ca35a0fcec9ad704d85ffbeb47c`  
		Last Modified: Wed, 16 Sep 2026 04:39:55 GMT  
		Size: 22.1 MB (22104286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7049076de9587d5e07c9670633f77e853327c869e043316850976dffd2448b3e`  
		Last Modified: Wed, 16 Sep 2026 04:39:54 GMT  
		Size: 4.5 MB (4515164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22e19fb3716af787aca3763f5daa47ea7ba299c811c1d7fce6c68f6a734b872d`  
		Last Modified: Wed, 16 Sep 2026 04:39:54 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ca0a65496a7c4f942e6f564fc2518364ef05bd21e8a41f144cfc9e4deffe2baf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2349990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1f1036870bc3d1ed280c15a87ef4dba2746324b6b9ee9c94c883d3f66ae68d7`

```dockerfile
```

-	Layers:
	-	`sha256:32126ffc0b2a97de90ce75388a59110e5b6ad63872e44f2f229f625178a4876d`  
		Last Modified: Wed, 16 Sep 2026 04:39:54 GMT  
		Size: 2.3 MB (2332244 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47641c3816632c73b60a740e10288ba8a6de3167de2b559dc1be388ab634aeb1`  
		Last Modified: Wed, 16 Sep 2026 04:39:54 GMT  
		Size: 17.7 KB (17746 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e789a9c099d4521722bc78909515b9859ed9033b8b692396adf5b780beabeb1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.6 MB (150595168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:557757d2d385c8857c6657a0b68383a0111ebf313af82c61e3c95282e4e46449`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:39:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:39:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:39:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:39:00 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 04:39:00 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 04:39:00 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:40:20 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 04:40:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 04:40:20 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 04:40:22 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 04:40:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:40:22 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:40:22 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9d06f85281038652e5f402647aa7430905e01a43a5347fb91579af570d77bc5`  
		Last Modified: Wed, 16 Sep 2026 04:39:34 GMT  
		Size: 93.5 MB (93541605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db0f0a989fa4884e48a0fdd4ec7449c3babe6e0d879d40e945c2dd64c62c1cb8`  
		Last Modified: Wed, 16 Sep 2026 04:40:41 GMT  
		Size: 22.4 MB (22378320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb275ca4fa08e92d625e902248e95fea21cdac431dbeae2dba87b0bd679dcf3a`  
		Last Modified: Wed, 16 Sep 2026 04:40:41 GMT  
		Size: 4.5 MB (4515231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f39bee5d3754096372be054d44a8250f4986d3861d1caa894d29416b5a6f1b1`  
		Last Modified: Wed, 16 Sep 2026 04:40:40 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:9a7c36cacd8a8abae318d89b900035e3e9e8824b9ccbdf30ac47a10e7717294e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2349717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f16700ccd888f788095a43297e6f2c5d1a8fcdac9d11c220130d1679c82f572`

```dockerfile
```

-	Layers:
	-	`sha256:b8096b5babefd02906abbf7a532b529bf0c847652a1ebc2cc79775bede0310ee`  
		Last Modified: Wed, 16 Sep 2026 04:40:40 GMT  
		Size: 2.3 MB (2331851 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b5f456548106c0f2b64c9e90e5cde7714d3d4716f1fd7ca807cdcc010d95c258`  
		Last Modified: Wed, 16 Sep 2026 04:40:40 GMT  
		Size: 17.9 KB (17866 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:db79211bad88b1c9c5d0d6fd55b6bdceb58c2f52446f8a0a5f8b43bbc15781a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.5 MB (151472141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:007750e54b91f93f6222c0fec5034d8197c334eda99e488100ccad21e9014914`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:34:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:34:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:34:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:34:56 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 04 Sep 2026 00:34:56 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 04 Sep 2026 00:34:57 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 11:26:49 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 11:26:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 11:26:49 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 11:26:52 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 11:26:52 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 11:26:52 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 11:26:52 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c4043e66657eddd8a50944b0e499e9fb50476655ec17f37cf9fa8b81d6068c1`  
		Last Modified: Fri, 04 Sep 2026 00:36:34 GMT  
		Size: 93.4 MB (93350784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:608b3a40f1878f85d44bc480856c9aa02ce972baaeaa34726cea2cca44752cf7`  
		Last Modified: Wed, 09 Sep 2026 11:27:10 GMT  
		Size: 20.0 MB (19990246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:785db7c026bf4be3543d55da23f590ebe0fdcb204e914e525bf9361805884251`  
		Last Modified: Wed, 09 Sep 2026 11:27:10 GMT  
		Size: 4.5 MB (4515219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53317f38b0ecd3fe6a3591b13de2068eca12341e83328296dc9bc571fb2d6c4e`  
		Last Modified: Wed, 09 Sep 2026 11:27:09 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0649eadc58ef6a699cd39373f30bd825e84defa86e96a68d154d50804f835d58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2334914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fc53aed0a05006456bb6c0d9dfac4252e75c1cd891b3c1aa86dc605ba09874b`

```dockerfile
```

-	Layers:
	-	`sha256:3a88b2a68abac287cbad2888a81b0a4c7ca41e51be693380e591dec3de6cb05d`  
		Last Modified: Wed, 16 Sep 2026 11:01:33 GMT  
		Size: 2.3 MB (2317124 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e19b66d8aecd39f519988c381cabbd053fe732c9dc25269d222ceb15632f69a2`  
		Last Modified: Wed, 16 Sep 2026 11:01:33 GMT  
		Size: 17.8 KB (17790 bytes)  
		MIME: application/vnd.in-toto+json
