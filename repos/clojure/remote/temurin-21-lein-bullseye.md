## `clojure:temurin-21-lein-bullseye`

```console
$ docker pull clojure@sha256:943272b9755dae776d5cae02d5fac55e7f7360deab25862627aec3eff8eefdfa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-21-lein-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:732d9f8ff843ab9a1a7658b10027900a2eb2f2e153b66fae786e2c2b94681fb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.4 MB (233353859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce9b81071240bf7eacc93cc54fb17506db6c92a49062f4add7279a758571b351`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:29:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:29:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:29:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:29:07 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 01:29:07 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:29:07 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:30:17 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:30:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:30:17 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:30:19 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:30:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:30:19 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:30:19 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:94b0efe6d4f788b1b894c04a6c6885d53a41bcd0b85757fffacd2bc4de142847`  
		Last Modified: Mon, 24 Aug 2026 23:20:41 GMT  
		Size: 53.8 MB (53777392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b28d9b9d74d020d2afce4212fd50cdb5ac7b97649d6ae9e4dd104115a587f7f3`  
		Last Modified: Tue, 25 Aug 2026 01:30:40 GMT  
		Size: 158.1 MB (158120300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35f54225bf8bce53cf1bbb9c2538e6429d2fd975f0bf9e7bd2649f5dd7ea5e57`  
		Last Modified: Tue, 25 Aug 2026 01:30:37 GMT  
		Size: 16.9 MB (16940552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c2a05ad28d53db242d035a92c4fa5ad76bcdd150a0f7a9f166b2d59eb96884e`  
		Last Modified: Tue, 25 Aug 2026 01:30:37 GMT  
		Size: 4.5 MB (4515185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc4ebbc9d94423212eb36a6b7c925080ab85bc507c1629f69612a91bc4f2afab`  
		Last Modified: Tue, 25 Aug 2026 01:30:36 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:6e62903cd0131d5ce441fc4f904372c55ef16322287c9e01544b9dd6fdf1f838
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4525818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26e4ecbe5f3f3b8f02e92b0d7b969c37195db4ff6c8643373ec8ef374a4a45eb`

```dockerfile
```

-	Layers:
	-	`sha256:f5695c229402d524c685fb95208b09390c52bcf7349c6b4aa2ca895e7db6d705`  
		Last Modified: Tue, 25 Aug 2026 01:30:36 GMT  
		Size: 4.5 MB (4508080 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:185d2b936fc7039b5305e99bf322e235e29a556f10c00ce359a1dfa5b23c5096`  
		Last Modified: Tue, 25 Aug 2026 01:30:36 GMT  
		Size: 17.7 KB (17738 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:1dfd8fe633fceb5904ebf1650d92849e0ba1b8d6cd135ae5af21ee6f72016d70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.1 MB (230109203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69e241c09e36cc6887aa822ec91fe946441438cc1c7243064fad66c3ec168f1a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:33:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:33:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:33:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:33:33 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 01:33:33 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:33:33 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:34:44 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:34:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:34:44 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:34:45 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:34:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:34:46 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:34:46 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:efeeefc1421af2e3b9b27f2b236e6fca6b6df5f1f1d5919c2608f27cc4503c31`  
		Last Modified: Mon, 24 Aug 2026 23:20:19 GMT  
		Size: 52.3 MB (52261343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:780ce8c87a08876b8e9912c5d7147ebe59dd80c70dd816013b3bd645f50bc90d`  
		Last Modified: Tue, 25 Aug 2026 01:35:07 GMT  
		Size: 156.4 MB (156401957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27db9846d1bef908fa17f5d624c2ad7b1ef678677cc0836969e197d83062b554`  
		Last Modified: Tue, 25 Aug 2026 01:35:05 GMT  
		Size: 16.9 MB (16930303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6368ad7b37f267c02891d3cab41491a4d6336d8149b57b4f219e9493e82819a4`  
		Last Modified: Tue, 25 Aug 2026 01:35:04 GMT  
		Size: 4.5 MB (4515172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea6d248b03484773a7b88d8b2067de7f300bdd83497f23fd7ee4e0e30a57e217`  
		Last Modified: Tue, 25 Aug 2026 01:35:04 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:8f9ecbde807f6485e0adae5cb2c0a1a6021ef7357f2aacc53da17995c3731abd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4524913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dea36310f3a6ee1bed68904af0cdb6aad17a4f56e6df9ab1813d18796699fe2`

```dockerfile
```

-	Layers:
	-	`sha256:7cfa30db933864bcf03cf97a70f314e29ecb5d711a49664b60d62532c6cca952`  
		Last Modified: Tue, 25 Aug 2026 01:35:04 GMT  
		Size: 4.5 MB (4507054 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54d74f1c54bc46262d246a5d2f5f8fdbeb11fc9085e516bc43bdb3b5836fd17a`  
		Last Modified: Tue, 25 Aug 2026 01:35:04 GMT  
		Size: 17.9 KB (17859 bytes)  
		MIME: application/vnd.in-toto+json
