## `clojure:temurin-17-lein-bullseye-slim`

```console
$ docker pull clojure@sha256:dbc0f9c05ba8119a5b9263026ed609ab75e1f3f46969fcc36e9799bfb065c768
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-17-lein-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:549681c642d6f898fd0a481c7f4c59e1c1b20296ff04e7da87db49f09817f48c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.3 MB (196323986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30f2d51f55b2d1cb6751883ee0785c864b49b1f8fbecd8b708a70ed5f2e55571`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Tue, 18 Aug 2026 20:43:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:43:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:43:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:43:56 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:43:56 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:43:56 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:45:00 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:45:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:45:00 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:45:02 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:45:02 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:45:02 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:45:02 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ab75afe6a0f0027cc830f1ca4a2c484e7056871a1adf91bd3a0b73c6ffb517b1`  
		Last Modified: Tue, 04 Aug 2026 23:52:04 GMT  
		Size: 30.3 MB (30259620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f702cdd80be4decce25656b667a6508617bdd30acd427e8294ce35d27efba556`  
		Last Modified: Tue, 18 Aug 2026 20:45:21 GMT  
		Size: 145.9 MB (145905479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9f0a2b6182b89aebd29291213339ba1045dcc8fc8f3e214e4a0af83217a5761`  
		Last Modified: Tue, 18 Aug 2026 20:45:18 GMT  
		Size: 15.6 MB (15643236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb71a570086a165d1855c9effe5c0837fa0fd69bbeba0d6b4b51536f38100f06`  
		Last Modified: Tue, 18 Aug 2026 20:45:18 GMT  
		Size: 4.5 MB (4515221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcabf4d32153d017a16ee907e92584fa1757073feb51755c79bd6325e4b0e945`  
		Last Modified: Tue, 18 Aug 2026 20:45:18 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5313ffe74411e2e83057c43ce32e5876f06a1889fb40c8a95dc19c9c7587d670
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3060088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db12f58658eebc6250c1cf33bebfcdcdaa8f82a2e40ff9f434da93d6cbeb1d75`

```dockerfile
```

-	Layers:
	-	`sha256:c9e2a93425ab1c707e880d12b372d705f0ba87ed320328c91b5e2e005f89ea54`  
		Last Modified: Tue, 18 Aug 2026 20:45:18 GMT  
		Size: 3.0 MB (3042315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d0e678d9221c5159819389c70cd7975e4ff3af589c442ee90808dcd52a86077`  
		Last Modified: Tue, 18 Aug 2026 20:45:18 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:6a24e8bcdd6d6461feee352f22facbcbb78ef83553bb25b4bf011908112531c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.6 MB (193620196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a16ffccacbc1acb5e6fceae718009f4d2e33def7c5b97e27a49b1c2b72464d8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Tue, 18 Aug 2026 20:44:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:44:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:44:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:44:13 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:44:13 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:44:13 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:45:17 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:45:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:45:17 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:45:19 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:45:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:45:19 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:45:19 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:93e0ff6a69cbbe5e567bea0ae7560cdd816fd4205541e7cb6b0fd3998b169541`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 28.7 MB (28748907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10d1962080ff009cb24103c21c88a6be84c885c0da124dacd4ecb5958ebf9eb0`  
		Last Modified: Tue, 18 Aug 2026 20:45:40 GMT  
		Size: 144.7 MB (144724266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d2b10087637e62e076e5744b8b77c33d15c2d1fc06298b69e5d8e74e90388cd`  
		Last Modified: Tue, 18 Aug 2026 20:45:37 GMT  
		Size: 15.6 MB (15631384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fed02a3adc50aaba117bf34b7e76e61c579c2d983530f43e0522aa5a74fb7e00`  
		Last Modified: Tue, 18 Aug 2026 20:45:36 GMT  
		Size: 4.5 MB (4515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cf7b3875d35f81a431bec04f1c08d682c24c69c73b55f47dfe8efc1450ab982`  
		Last Modified: Tue, 18 Aug 2026 20:45:36 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:061141b94a130ebdbc74e8eedbe779b9464728e72b3655acabeab9b5676f7fd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3059818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aab41096496ac1e33419a62f769634a01c33c78453ecb07c058ed67d4a69af3`

```dockerfile
```

-	Layers:
	-	`sha256:08c3b3373c81fc009d4443ecc8a73a7689db0ef424849329a31000761ccd850b`  
		Last Modified: Tue, 18 Aug 2026 20:45:36 GMT  
		Size: 3.0 MB (3041924 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3961ccabc86f5c89d5f54bb78b5c1e90a8c985d9e9a2e9e1f8a9f777a760a132`  
		Last Modified: Tue, 18 Aug 2026 20:45:36 GMT  
		Size: 17.9 KB (17894 bytes)  
		MIME: application/vnd.in-toto+json
