## `clojure:temurin-21-lein-2.13.1-trixie-slim`

```console
$ docker pull clojure@sha256:7d07453e6a1149690dce84ec6862171db091117613436057bdb499f5d8546498
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-2.13.1-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:a75bd3a4f6af6124eeca671b9960cbea98690e49867c5295c23ff0c515c171c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.5 MB (209540149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d83320a9e45fb91e42d9b47034626169d91dcc082ee3e68d2edb65b41efade6a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:40:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 04:40:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 04:40:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 04:40:53 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 04:40:53 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 05:11:16 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:12:34 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 05:12:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 05:12:34 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 05:12:35 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 05:12:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 05:12:35 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 05:12:35 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5262a92f8f3868a23db3195d248c9e383e27ee0177a9c892e5cb9199fc9552bf`  
		Last Modified: Tue, 24 Nov 2026 04:41:53 GMT  
		Size: 158.4 MB (158440950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10d733a5a997dd173a1c86085476583267ef28a01c89115ad57fb6a2cb92ae31`  
		Last Modified: Tue, 24 Nov 2026 05:12:45 GMT  
		Size: 16.7 MB (16740906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7b429450efc6d9cf22bdd3f395aedc55efacb8c5cb59adf91257dcd9b714a11`  
		Last Modified: Tue, 24 Nov 2026 05:12:45 GMT  
		Size: 4.5 MB (4515184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaa33412f153907345d7f9ad76e7f4f77defad478219c1368fc9823155a280c5`  
		Last Modified: Tue, 24 Nov 2026 05:12:45 GMT  
		Size: 895.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.1-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:af0115f3a94860c927ff5e949968eba1bc68b6ef94d44df4597cf4caef21578f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2391028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:280a2c687bf1680814a16c9a35d04c9aca20e868746bea07b577b535eec26b9c`

```dockerfile
```

-	Layers:
	-	`sha256:9fd9ab5badf25c88b47ac50c8e39b1f181a6137ab8f17a7f1f9abd908690c776`  
		Last Modified: Tue, 24 Nov 2026 05:12:45 GMT  
		Size: 2.4 MB (2373634 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:74d35ac5156582c7a9c112825882748d45a1e74497f75b1736e754dcf8169942`  
		Last Modified: Tue, 24 Nov 2026 05:12:45 GMT  
		Size: 17.4 KB (17394 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.1-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:c3b632433bc8038e3b55bb9ade4b053cc1279e3e8f4c092b0c4e835e539363d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.5 MB (212544636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b044b29d634e6f23edd2d976250a596e8f84bc36893853e7dc2db44503050a5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 12:49:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 12:49:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 12:49:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 12:49:21 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 12:49:21 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 12:49:22 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 12:52:48 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 12:52:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 12:52:48 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 12:52:53 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 12:52:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 12:52:54 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 12:52:54 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6d599ee149161123db04af161af351247dbcd557ec08f78d82de0c89b6844f6c`  
		Last Modified: Tue, 24 Nov 2026 03:42:42 GMT  
		Size: 33.7 MB (33652639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12647cb1982acab35a32331eceb3b091af09b3fb9e99410816786802b8882a0b`  
		Last Modified: Tue, 24 Nov 2026 12:53:40 GMT  
		Size: 157.6 MB (157596453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a269aeb8fb928e15357a23d5125878775bdb85a7bc91e14f9e2f7f9e112592`  
		Last Modified: Tue, 24 Nov 2026 12:53:37 GMT  
		Size: 16.8 MB (16779392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23c82eea374a9ca5ded5da8b70b1f3605eca071dc441d6ecdc54bfde63473dd0`  
		Last Modified: Tue, 24 Nov 2026 12:53:36 GMT  
		Size: 4.5 MB (4515222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9607438ed1be0babda760431dafe1805497f35259db0f6b315be2af2aa140913`  
		Last Modified: Tue, 24 Nov 2026 12:53:36 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.1-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0718871509f20138bf0e8a507e51fc57efb5d89b3416398452843629abcf6fcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2391761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5cea009ad03a8483032a4b799614e322e5030876881aafb676ce8e5454c4496`

```dockerfile
```

-	Layers:
	-	`sha256:ccd2afbc445f4add88155fa7cd0c525375a0d33b98c428d9220b295c6e9d38a2`  
		Last Modified: Tue, 24 Nov 2026 12:53:36 GMT  
		Size: 2.4 MB (2373368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75428c3d90bab43e59e80db18b3388a112220208eb64600de1eda5ba1cdabf76`  
		Last Modified: Tue, 24 Nov 2026 12:53:36 GMT  
		Size: 18.4 KB (18393 bytes)  
		MIME: application/vnd.in-toto+json
