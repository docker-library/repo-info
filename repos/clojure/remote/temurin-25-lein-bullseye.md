## `clojure:temurin-25-lein-bullseye`

```console
$ docker pull clojure@sha256:7ed11befd6b3f8b947a2da658d7ba65c252804f6538f97ad9a30875d3e1414d1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-25-lein-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:4d24d26964721486218f38c30a2559808aee07dca31c9bda996d887a9415864c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167806724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2197df3c2ca350e4833b8a6828029a71a5e7ff77fc5847663f9c57769d946dde`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 04 Aug 2026 02:53:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:53:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:53:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:53:32 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:53:32 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:53:32 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:54:37 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:54:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:54:37 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:54:38 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:54:38 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:54:38 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:54:38 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:67de115811dc004af37113c6aa85eaaeb7c71fbf7fb79c2219111439cbf76c90`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 53.8 MB (53776576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c449c8bae803b077eb5fb8d5fe6f60504e3f2354bb2dfd5e7a635a5479c0f7c`  
		Last Modified: Tue, 04 Aug 2026 02:54:57 GMT  
		Size: 92.6 MB (92574564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c553e2c7341e77485637dfdf7d8676a4acb79524d048420502e4b269ed7b351f`  
		Last Modified: Tue, 04 Aug 2026 02:54:55 GMT  
		Size: 16.9 MB (16939968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e767d14c80dc4867bc39d397cff05ffcca35856b3fe04411d47899ff15523c1c`  
		Last Modified: Tue, 04 Aug 2026 02:54:55 GMT  
		Size: 4.5 MB (4515186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f05c2dfa2b33e1cef531bd2c41e683409b9ebe93f7aaf7b5e803c40552892731`  
		Last Modified: Tue, 04 Aug 2026 02:54:55 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:66044449cfa1a5b110c86b4a165a6eeafdfab35f1f6728c2a496f9b235573bd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4487435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddfa5671b8fdf30809a79fce9d978dfb4426c7f159f0dfc5c9c03287d9072d78`

```dockerfile
```

-	Layers:
	-	`sha256:d9548656b7aab83c11ce4d6d9589fd21443e2171bc21cfc2fbf59e829dfbc7c2`  
		Last Modified: Tue, 04 Aug 2026 02:54:55 GMT  
		Size: 4.5 MB (4469063 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:308c3a671cdb69f114402906739cfca2d906dd640372b11cc12d0fd0e147d6a6`  
		Last Modified: Tue, 04 Aug 2026 02:54:54 GMT  
		Size: 18.4 KB (18372 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:2a0f6450d6364d167dec58d9afc28bb229a73ebce088c8970bde6a343f50e957
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.2 MB (165236873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2503b481cbd081d295490d16b55f5492bd040eced2424701623ce05f01c345cb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 04 Aug 2026 02:53:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:53:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:53:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:53:59 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:53:59 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:53:59 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:55:07 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:55:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:55:07 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:55:09 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:55:09 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:55:09 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:55:09 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:05f35ed13b0f03b4d3292e29957ef64e978b7566be41843c7f2be1cede133720`  
		Last Modified: Tue, 14 Jul 2026 00:14:11 GMT  
		Size: 52.3 MB (52260890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84b55ba7243a0fb0e6a4f7d62f0e9c8dd81a49a5aa47acdca55115ca43e2b870`  
		Last Modified: Tue, 04 Aug 2026 02:55:29 GMT  
		Size: 91.5 MB (91542252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff2c4fd871f33a39eb7d1a5b11eef1a19697395e090412c2025bab3ae044e56d`  
		Last Modified: Tue, 04 Aug 2026 02:55:27 GMT  
		Size: 16.9 MB (16918117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99a19f4566f3dc6b1e53a20e2d3840b906a73e5992c9691d113f351a9268d75b`  
		Last Modified: Tue, 04 Aug 2026 02:55:27 GMT  
		Size: 4.5 MB (4515184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0e962550d38984805789d562c5d07c833614889ccc73a0296257fe6d6a1cfbb`  
		Last Modified: Tue, 04 Aug 2026 02:55:26 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:efb86f78019cfa4276d62501174d2ea52a23ef20f5b10d6917b72d3aa3e499e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4486575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2dd7db0b78ea40f9227625e69478805a264c7ba3a56ddac30661e2665ff1497`

```dockerfile
```

-	Layers:
	-	`sha256:860e478f6318395cffd3171a70f7435ed5ee8ed4afc8d3e1379ee95feb69431a`  
		Last Modified: Tue, 04 Aug 2026 02:55:27 GMT  
		Size: 4.5 MB (4468058 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:097a589b15c7ac4ed83048435bb220b7c10bb212078fe4754f244f0f7e80893e`  
		Last Modified: Tue, 04 Aug 2026 02:55:26 GMT  
		Size: 18.5 KB (18517 bytes)  
		MIME: application/vnd.in-toto+json
