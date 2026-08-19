## `clojure:temurin-21-lein-2.13.0-bullseye`

```console
$ docker pull clojure@sha256:a979e956a36f0b0b2366024cc5c3bbbbd8b2407d54ad06832638f61551363ee0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-21-lein-2.13.0-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:2bfc4ce0dc7f7b2b5730550fb87552c420d201c35f0b11af877cf0c727dfc5e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.4 MB (233399758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa5aac184d6998dfb2b57858701d936a72367846ba9c34e6359710a5a60a674e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Tue, 18 Aug 2026 20:45:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:45:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:45:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:45:53 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:45:53 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:45:53 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:46:57 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:46:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:46:57 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:46:59 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:46:59 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:46:59 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:46:59 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:accfb92e6c6ad5d206b68e1bfd8a6c2af4ae82f9b6cc6eafe49675a0655e0742`  
		Last Modified: Tue, 04 Aug 2026 23:52:03 GMT  
		Size: 53.8 MB (53777019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:266f6c705c47a7392cac04ab2843aa6351d68daaf2afadf837c51c489693b177`  
		Last Modified: Tue, 18 Aug 2026 20:47:21 GMT  
		Size: 158.2 MB (158166938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5642ef4732ee6a0811005075702fae274ef84defd510ed6ee840363c4085bf3a`  
		Last Modified: Tue, 18 Aug 2026 20:47:16 GMT  
		Size: 16.9 MB (16940175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f53d7add850bff3e090efb404d7ed8379720ab570c78eaa1ab34de2bfdc817c6`  
		Last Modified: Tue, 18 Aug 2026 20:47:16 GMT  
		Size: 4.5 MB (4515196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7c82d19dc79e1e98bd6a136f20b26dd60a4d18f9e65fb22689f2c1bbd1b53ef`  
		Last Modified: Tue, 18 Aug 2026 20:47:16 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:7d3cd4c3277b6afc6adfd4858559c07f04a68c3b90452603e03e48c41a1ee8a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4525820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:134035881c58c5c12a3b969cb53485ec768100bb7358c307178829801818e11e`

```dockerfile
```

-	Layers:
	-	`sha256:b49154c1bd26934b680bd87a0ebf91936546aa4e2198f4ba496cd732d226c574`  
		Last Modified: Tue, 18 Aug 2026 20:47:16 GMT  
		Size: 4.5 MB (4508082 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c8edc7aaba6397d0c920bbc215f375902b5d9b3bd9fa27ce1eb1204ff606516`  
		Last Modified: Tue, 18 Aug 2026 20:47:16 GMT  
		Size: 17.7 KB (17738 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:648ccc33a4242c7a46108d2fbf3b0f0a0cec1fc0d73317f8c205448605864dc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.2 MB (230168608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2575f8e1c7825a3441ea8d82670dae93ae5a0d9388665329c90fafec576148b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Tue, 18 Aug 2026 20:46:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:46:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:46:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:46:13 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:46:13 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:46:13 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:47:22 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:47:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:47:22 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:47:24 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:47:24 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:47:24 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:47:24 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:3086cf1958fe5793d805c40e074e8662fbe7bb02df60f5a5dc95718602f4d4e0`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 52.3 MB (52260902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:677a64f67cba613eff032cd5dda71b24bdc0b6279f8302ab45b1088d164a46dc`  
		Last Modified: Tue, 18 Aug 2026 20:47:47 GMT  
		Size: 156.5 MB (156461266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7006151aee37637cedb003171e9b41081f9b4f261e4ccdc94ea1988d49b58896`  
		Last Modified: Tue, 18 Aug 2026 20:47:44 GMT  
		Size: 16.9 MB (16930795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bc2a03d8dbc212f4a64007d5a98079e065e35d54b6e2957d0a0d96ca285cfd2`  
		Last Modified: Tue, 18 Aug 2026 20:47:43 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da8f6373fbddbe6666ebf5ff33ef1bda6906623644fba6052e625056f3f1fc8d`  
		Last Modified: Tue, 18 Aug 2026 20:47:43 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:7b278ecb2fd8d947a719cba777d2fb4d8031941c60de9b7ad0ae9bf67665fee1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4524915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2000129a8e94a9800a2d18514b99bcb4642e59fd8186a170a3abd9366770a9e6`

```dockerfile
```

-	Layers:
	-	`sha256:068d3156048891094ed619d3be81ca8e418bb96acce415d556bc343c77ef90b6`  
		Last Modified: Tue, 18 Aug 2026 20:47:43 GMT  
		Size: 4.5 MB (4507056 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4c264845c771d4f11fe92ce492d938d910f7c50b52742a4524f8877108c34581`  
		Last Modified: Tue, 18 Aug 2026 20:47:43 GMT  
		Size: 17.9 KB (17859 bytes)  
		MIME: application/vnd.in-toto+json
