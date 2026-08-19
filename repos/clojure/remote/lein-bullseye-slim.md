## `clojure:lein-bullseye-slim`

```console
$ docker pull clojure@sha256:e3dcf9351318ce9a9e8becb5b93d38e1f067230641921e0f721dd4338e9735ec
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:lein-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:1e377d0718de66068df6fed66242e3d16c78627420050e751417e913dfbf8af8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (142993043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0849e95892a6a20574ab9c5661ec728874c372f79bdb16b094e96bfe4e477245`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Tue, 18 Aug 2026 20:47:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:47:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:47:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:47:53 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:47:53 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:47:53 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:48:58 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:48:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:48:58 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:49:00 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:49:00 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:49:00 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:49:00 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ab75afe6a0f0027cc830f1ca4a2c484e7056871a1adf91bd3a0b73c6ffb517b1`  
		Last Modified: Tue, 04 Aug 2026 23:52:04 GMT  
		Size: 30.3 MB (30259620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b20fc62f8c17c3861ac2238db1d929317975593ac8d3b43a9abd0b6a4ae7aade`  
		Last Modified: Tue, 18 Aug 2026 20:49:20 GMT  
		Size: 92.6 MB (92574597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc8b8b791f098316f9bc6204accb82b014b33bc1c5badd996340c6ecf6a6a24f`  
		Last Modified: Tue, 18 Aug 2026 20:49:18 GMT  
		Size: 15.6 MB (15643183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:566d9b6569c6c67792514c081f2f4eea1345b8c6bcb6a0b0c393bf156de78191`  
		Last Modified: Tue, 18 Aug 2026 20:49:18 GMT  
		Size: 4.5 MB (4515213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebbf285cc44aebd69bb0fd89cd0f48a06eab8662d180d73001c6deba5766a3b9`  
		Last Modified: Tue, 18 Aug 2026 20:49:18 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7847217129a06c9d66c7a2b4b9aa2dcf99cc41e4f37b9702ce8dbe56ad84e789
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3028799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f61b4201d24f7a17d93cde234d3f3b0c467dac39434e06656dda6bb486ddbb3`

```dockerfile
```

-	Layers:
	-	`sha256:4bd455a532554a8442bdac84470138c31c1436c9e12ea9d0582671484bab1387`  
		Last Modified: Tue, 18 Aug 2026 20:49:18 GMT  
		Size: 3.0 MB (3010371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6abb48ddce6205ed38cd739ca0a439ec153fd106fd3f7abb793ac416e9f73d23`  
		Last Modified: Tue, 18 Aug 2026 20:49:18 GMT  
		Size: 18.4 KB (18428 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a19f2afa1b2e8b114164ffb7fa593ef54c01bc8e116165b4f78158702c3886c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.4 MB (140438553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23ee6eedd53ed52dfae5f9cf2e341e39a66739d12afff50387535ed5a28ae517`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Tue, 18 Aug 2026 20:48:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:48:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:48:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:48:10 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:48:10 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:48:10 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:49:18 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:49:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:49:18 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:49:20 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:49:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:49:20 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:49:20 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:93e0ff6a69cbbe5e567bea0ae7560cdd816fd4205541e7cb6b0fd3998b169541`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 28.7 MB (28748907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7237343dc636457cc000887332a95ec56f566723b9348aa9782892e899afb7f9`  
		Last Modified: Tue, 18 Aug 2026 20:49:39 GMT  
		Size: 91.5 MB (91542295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f2a7e728de9e1952789dc68990e02333d90e053a1229e0ecc32c1af74a46df7`  
		Last Modified: Tue, 18 Aug 2026 20:49:37 GMT  
		Size: 15.6 MB (15631698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26a635700d27c59b882d933888abaf1827427499c5229c245be626ce8d761f9b`  
		Last Modified: Tue, 18 Aug 2026 20:49:37 GMT  
		Size: 4.5 MB (4515225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5178a7efdc1f63af0e32f3604ba8759be921414f8379b9580dde3ae8b02a58c`  
		Last Modified: Tue, 18 Aug 2026 20:49:36 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a1ffb43c10b0ba34052b4bc12a15f05c35f3ef287857c5b55a65f8a282801824
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3028574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff39f0a0d33e3f775ccc1482184005ed8d5c96accec6393c60094f80ff6a54a5`

```dockerfile
```

-	Layers:
	-	`sha256:39809f794caf0eec08093e6cc9917549d441e10156e26be326f1b44ad605e92d`  
		Last Modified: Tue, 18 Aug 2026 20:49:37 GMT  
		Size: 3.0 MB (3010001 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:752ad55bf79bc14fcd49ab13bb6895f462ccc390b40c204396d30ebc416fb0a7`  
		Last Modified: Tue, 18 Aug 2026 20:49:36 GMT  
		Size: 18.6 KB (18573 bytes)  
		MIME: application/vnd.in-toto+json
