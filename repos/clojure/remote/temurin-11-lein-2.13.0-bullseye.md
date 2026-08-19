## `clojure:temurin-11-lein-2.13.0-bullseye`

```console
$ docker pull clojure@sha256:86e0e56cab992ca090575e078690c821af88658d222d4744d6a00be1a58326f5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-11-lein-2.13.0-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:4b203214c7e4490b03aff855611a8c21e9c2c9641f6afb5d61d0b3a5695936e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.1 MB (221117404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eac4b553d5fe78e2898a120b005c6169e3d671c758feca24bec6e804f70cbcfe`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Tue, 18 Aug 2026 20:41:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:41:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:41:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:41:22 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:41:22 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:41:22 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:42:26 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:42:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:42:26 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:42:28 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:42:28 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:accfb92e6c6ad5d206b68e1bfd8a6c2af4ae82f9b6cc6eafe49675a0655e0742`  
		Last Modified: Tue, 04 Aug 2026 23:52:03 GMT  
		Size: 53.8 MB (53777019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1968bb2fe4b6fc5141797bc00fddc180f8b132ee69674ec4a90c511fb6524183`  
		Last Modified: Tue, 18 Aug 2026 20:42:48 GMT  
		Size: 145.9 MB (145884957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3542b7df8c7b577edee33736b3fb7099b5efdfdd41546d09f0c52d3218c82a1`  
		Last Modified: Tue, 18 Aug 2026 20:42:45 GMT  
		Size: 16.9 MB (16940176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cfeabbe4244ff1602056ca1742e7a28eb53d57d774cb5155fe22f06f3b25056`  
		Last Modified: Tue, 18 Aug 2026 20:42:45 GMT  
		Size: 4.5 MB (4515220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:6863a0a9cc48516cc3d0bba0bfb23710713bed78b4ffc9e320924447eace53df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4541494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82345f7a27276893ee598e55c07ead5d4307a15de92c1f3aa99fc11cac39a194`

```dockerfile
```

-	Layers:
	-	`sha256:2de919d7e3bef9532692591e635a5bb6de13e765e49c3c4025b012f9072b6bb5`  
		Last Modified: Tue, 18 Aug 2026 20:42:44 GMT  
		Size: 4.5 MB (4525746 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b09d90a4415c8d9820d7e465ab83414ea0703db67a59c0f582ef8525b12190a`  
		Last Modified: Tue, 18 Aug 2026 20:42:44 GMT  
		Size: 15.7 KB (15748 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4d48ed6d43a03443f756acd0cf19420f36e4c41bad2cfef61dcfce1cb5793ae2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.3 MB (216288828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2c14fd41fc408075d4395207f90069e418ac6359aadd64fe9cc4ab27a2064d5`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Tue, 18 Aug 2026 20:41:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:41:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:41:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:41:31 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:41:31 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:41:31 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:42:39 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:42:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:42:39 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:42:41 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:42:41 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:3086cf1958fe5793d805c40e074e8662fbe7bb02df60f5a5dc95718602f4d4e0`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 52.3 MB (52260902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12fad14ca47bde1af62c8b7ef71f44301455d9095858a44b01326d673364e450`  
		Last Modified: Tue, 18 Aug 2026 20:43:03 GMT  
		Size: 142.6 MB (142582150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09883b543976766e86a3482f22261685a73bb8d77780e3a6489ad59cc4d8d142`  
		Last Modified: Tue, 18 Aug 2026 20:43:00 GMT  
		Size: 16.9 MB (16930540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f868a599c566b70fc8f84835e747f87469134b1d0dbc57a7b0f8d711c5776f3`  
		Last Modified: Tue, 18 Aug 2026 20:42:59 GMT  
		Size: 4.5 MB (4515204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:c14a3ba330a2bd61ee55ff21eb62dba2c9b7abb25b56bece8935602834d0fe4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4541207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c34f334a1eda8dff9a5b144e678e22860007d710a008163f5323f981eda3e95`

```dockerfile
```

-	Layers:
	-	`sha256:7f5452cae2be2265afcd4696d5ad7dea566a7d371b7238dddd25b2f35427a492`  
		Last Modified: Tue, 18 Aug 2026 20:42:59 GMT  
		Size: 4.5 MB (4525338 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bda0d93d1edb772474ffdeeee772a5a940f2f87f6c69a41fa8d550c931514f41`  
		Last Modified: Tue, 18 Aug 2026 20:42:58 GMT  
		Size: 15.9 KB (15869 bytes)  
		MIME: application/vnd.in-toto+json
