## `clojure:lein-trixie-slim`

```console
$ docker pull clojure@sha256:4eeeec9acd53e692bd4e7bdf0d18cad2dee8dcf2658a52b09f87b4b9249d4397
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:ad8585aa8cc853d738fe879b0d4a59d19b1a3bc97384f17795f4a3c3e61a200b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.6 MB (143630959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8b8c114b2eb0a6577f653f61d61d5f4551fce58e5ca778350ac21eb7e3ab839`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:54:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:54:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:54:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:54:27 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:54:27 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:54:27 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:55:36 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:55:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:55:36 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:55:38 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:55:38 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:55:38 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:55:38 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fffaa563bc401cd36b2b9ea4a2f19bd24401cf206d2b4733db283629096e846`  
		Last Modified: Thu, 02 Jul 2026 05:55:59 GMT  
		Size: 92.6 MB (92574564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7131b35a637f43b79dadff0b793263c2d3b58d91ea9d3dcc9375e1884e7f384c`  
		Last Modified: Thu, 02 Jul 2026 05:55:57 GMT  
		Size: 16.8 MB (16755351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b8012043f9862e31ba4996de5643e9284b5a0b5450e7d7d3aeaf2fd5ce439b0`  
		Last Modified: Thu, 02 Jul 2026 05:55:56 GMT  
		Size: 4.5 MB (4515194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7d317a289e133be3df88fd498bdd95fe045599dcc07dcfb352f6813cd33326d`  
		Last Modified: Thu, 02 Jul 2026 05:55:56 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b06483191c413b0cae9b9e914145c0d6d3b3f6529b97792927fb53427043cada
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2353529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d406592d07a0335b4d467d4dbf22a3f8ea9e1770f088bac6059b00d6ead9e0a6`

```dockerfile
```

-	Layers:
	-	`sha256:9a33fff7a544fcc9aa776a1cfc06b03e57e2e1af88dd8f5d1b28079e5b048917`  
		Last Modified: Thu, 02 Jul 2026 05:55:56 GMT  
		Size: 2.3 MB (2335129 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb1e2380cb440bd93bc0bac9d83331969dc71b2ca934ae0ea241f17aae1de74c`  
		Last Modified: Thu, 02 Jul 2026 05:55:56 GMT  
		Size: 18.4 KB (18400 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:544ce8fca010e1d527d574dc8acebeed7f81aaca54d91af56eaaf1fe383ee7ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.9 MB (142918199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5438804ab2456f85a31416bb55acf8c8c51aed8483f5d74bde4c235201ae418d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:54:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:54:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:54:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:54:53 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:54:53 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:54:53 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:56:07 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:56:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:56:07 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:56:09 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:56:09 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:56:09 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:56:09 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05b6c2985acf7d86bf31ee4b355c4a49e1a7465ad9eb561d95b740bade5f6376`  
		Last Modified: Thu, 02 Jul 2026 05:56:29 GMT  
		Size: 91.5 MB (91542248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b0128fda7f12a06cfbf5b57c221bf58b75bd6edfd1a111cd0bea38a58ac6664`  
		Last Modified: Thu, 02 Jul 2026 05:56:27 GMT  
		Size: 16.7 MB (16711761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:742cd14fbc180684c92ae9e4b8d1d71002b2d8a77e1e231afa685db2a606c6d0`  
		Last Modified: Thu, 02 Jul 2026 05:56:26 GMT  
		Size: 4.5 MB (4515208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dd1ea6c25c471ef8c77b0aa8121233c103bdf34b4534ea5004905842b7205e4`  
		Last Modified: Thu, 02 Jul 2026 05:56:26 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:840a434eee031fa9cd54d1014ae68b758497a5b56a4a96f2da23f9dbe6c630b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2353304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1f890bedac3a7ae8ec1221e9228a4f81067b318fb102de647ea5293687cbd2a`

```dockerfile
```

-	Layers:
	-	`sha256:66eb1ffd8b69f4f0796a908c09a648c4400e297e53a9e1971e96ec131f897c1e`  
		Last Modified: Thu, 02 Jul 2026 05:56:26 GMT  
		Size: 2.3 MB (2334760 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3171f51e5f284eabf7229ab0479e6d0300944a78e4bf013b8cf85dc817e661b6`  
		Last Modified: Thu, 02 Jul 2026 05:56:26 GMT  
		Size: 18.5 KB (18544 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:bd9aa1f10778430d2cb245c5d7f3cbaa49db950253f69ce94a1c5f609084aae1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.8 MB (146818361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db35c25baacd171a9f1084fa5a1f73b5d0bb1e926c655cf0cb24f7ed8d2126f8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 07:38:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 07:38:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 07:38:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 07:38:00 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 07:38:00 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 07:38:00 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:41:13 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 07:41:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 07:41:13 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 07:41:16 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 07:41:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:41:17 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:41:17 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dded89c0fbadae3e88ca11a21c39a0eaa230a16a309c2574c9b3e2a41fb03373`  
		Last Modified: Thu, 02 Jul 2026 07:41:52 GMT  
		Size: 91.9 MB (91914031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90e47a4f610512dae72ad747c6fd313270db69e229834d065f785663dfccc0e7`  
		Last Modified: Thu, 02 Jul 2026 07:41:49 GMT  
		Size: 16.8 MB (16782281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2015d199d58c9bac1fbf2ce7c859e79024372e769e483bcef559e55953581e22`  
		Last Modified: Thu, 02 Jul 2026 07:41:49 GMT  
		Size: 4.5 MB (4515229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a253a22a8e28364d82c66efc9af9570443124d383aa2591e709d4381227f9dc2`  
		Last Modified: Thu, 02 Jul 2026 07:41:48 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:db1fd0d7c94dc7c0e37e8f25cda773536ded433136008d552c205cdb4e1c3ce0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2337889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:912161d16f3f1c27fa92b9d1c57a6a2dc98d8009ecf66e76134595bfa77847cd`

```dockerfile
```

-	Layers:
	-	`sha256:7de92b0fad0081bf35d459763b4793b4d833ea6c198743c72445bd48e0bcbe60`  
		Last Modified: Thu, 02 Jul 2026 07:41:48 GMT  
		Size: 2.3 MB (2319433 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:48270aed7ab8e04cc7c2147c87df3d9ee969c63711db540bfae0a57b4af74998`  
		Last Modified: Thu, 02 Jul 2026 07:41:48 GMT  
		Size: 18.5 KB (18456 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:343f025ce77017aa9f178a158b5be989bfd889e6a3c500b20fe27a815d69abb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.6 MB (139567467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:742f8018cfd929fc6577e3bf1ca24dc8620eb77bef142b0036b82702c326623a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:56:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:56:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:56:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:56:50 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:56:50 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:56:50 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:58:00 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:58:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:58:00 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:58:02 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:58:02 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:58:02 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:58:02 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:968c5a16cfe8d5361b3fa66b4c81cf30c59e428a5650ad8e695ba2d1c13b7b68`  
		Last Modified: Thu, 02 Jul 2026 05:58:25 GMT  
		Size: 88.4 MB (88420355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cdf1cf8a225413e03aedd9cd642638d623ada7729d2c25e937d2c250c8896da`  
		Last Modified: Thu, 02 Jul 2026 05:58:24 GMT  
		Size: 16.8 MB (16780088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fb9ba4c238aefd6036db8a20d8f5692db3a95099eb1bfa28d588616e2788807`  
		Last Modified: Thu, 02 Jul 2026 05:58:24 GMT  
		Size: 4.5 MB (4515212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d27fc68ab2de92c138b4152d5b76c166904760027ad763e295eae56936536e79`  
		Last Modified: Thu, 02 Jul 2026 05:58:24 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:063e6eb94672b4cf921f71841c0c9e971424915f4e39200213840417fbc51e07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2334518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d96d5f6039091d61f2ea8699eb88f68fb85a10b6ea86675471d83edce65a6eb`

```dockerfile
```

-	Layers:
	-	`sha256:b11f78abca99d7b831c19394cf8c788759bef5bd42a79fcbf6db9b36e9a3df8d`  
		Last Modified: Thu, 02 Jul 2026 05:58:24 GMT  
		Size: 2.3 MB (2316118 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6c37e9c4b6f0c7e2aa30bf62e31cc7cc57e1c81bd3ab795c64d2032076c8c6e8`  
		Last Modified: Thu, 02 Jul 2026 05:58:24 GMT  
		Size: 18.4 KB (18400 bytes)  
		MIME: application/vnd.in-toto+json
