## `clojure:temurin-21-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:bdbbff4bee3944068c1e73056ae46078d550499d3a3ef9221b55521cd29d25ec
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:7b262e45ffe414ee3cbb71259edeb3166d4cfd875ffc0b5192f471e2d56cb56a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.0 MB (208953668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:434d1addfaf112c4691c3b5c7643c05897850c3e7d49909ef181ecc4cb9defe2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Tue, 27 Oct 2026 00:49:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:49:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:49:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:49:32 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 27 Oct 2026 00:49:32 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 27 Oct 2026 00:49:32 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:50:42 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 27 Oct 2026 00:50:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 27 Oct 2026 00:50:42 GMT
ENV LEIN_ROOT=1
# Tue, 27 Oct 2026 00:50:43 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 27 Oct 2026 00:50:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:50:44 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:50:44 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a42953a580b8eef690fab5b6b81da0affaffb59948b39d64ee2453efbb7f540`  
		Last Modified: Tue, 27 Oct 2026 00:51:06 GMT  
		Size: 158.1 MB (158117472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:555f597b305438ceec5ee8d28728cfa71531a51429d36aa579176fdbfe7fda92`  
		Last Modified: Tue, 27 Oct 2026 00:51:01 GMT  
		Size: 18.1 MB (18072668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0248aa3b6c1ed6d8373eb28a4644d2af70e11013b61163fc5dcca4843099cfff`  
		Last Modified: Tue, 27 Oct 2026 00:51:01 GMT  
		Size: 4.5 MB (4515162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db6cc5b4048ca813be38030524b048d831dd0b227116d1293dc82bec0f6b0a98`  
		Last Modified: Tue, 27 Oct 2026 00:51:00 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d8b125b342dbfd32cd81f78fe0fd03d8317a120a41745f4c319202848fc40834
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2755948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d18401e2a41df8624c9e2a92852e8494716755707dccb00e1878adb6a4ab8609`

```dockerfile
```

-	Layers:
	-	`sha256:1f792febe20f6078eac7001fb27feb783004c9ec058b6bce27ddbf830c878968`  
		Last Modified: Tue, 27 Oct 2026 00:51:00 GMT  
		Size: 2.7 MB (2738175 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95dec873d731983d619ee6ebd68d56fda0022a84f45ebecef192f90c04c85971`  
		Last Modified: Tue, 27 Oct 2026 00:51:00 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:0d6095cf5b14d065dee245bbc65351b6917463e84e5d47171b8498c504432996
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.0 MB (206970704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e33083160b4a1b12f5f542c03a6bd30a598afe37f7ce4f761be2b9f75fd8c15c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:19:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:19:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:19:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:19:58 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:19:58 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:19:58 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:21:15 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:21:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:21:15 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:21:17 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:21:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:21:17 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:21:17 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e70c842ca803e129dbb155d03e4be441bdf72feea06a4107c7d31bec46a10b64`  
		Last Modified: Wed, 28 Oct 2026 02:21:38 GMT  
		Size: 156.4 MB (156400654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1cf1af5bcb1c83f6ed2698055ea1df392fc376db51a05bdec0e581bfbbc7cb9`  
		Last Modified: Wed, 28 Oct 2026 02:21:35 GMT  
		Size: 17.9 MB (17916459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc72225474c5d05c1bd19af7b1d51ef80c7958e94c9da24e180f6c6f92b76a21`  
		Last Modified: Wed, 28 Oct 2026 02:21:35 GMT  
		Size: 4.5 MB (4515209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fce53485252fb4190b00d1e6ec59098ad2fb68376024373a0e7d6387d36bf58`  
		Last Modified: Wed, 28 Oct 2026 02:21:35 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:18062d1f6d92ba7dc9e9e6ce867fce493fa3273c9b17ae28c99af98965a4446f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2755684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de45ee611de95258a9980ab707aa97ab4a0eae471830aca2e73bed4add3155e2`

```dockerfile
```

-	Layers:
	-	`sha256:03c677272f6f36868469c1dd22fff992ecc99a27ed18a0ab3865b99edc65bcce`  
		Last Modified: Wed, 28 Oct 2026 02:21:35 GMT  
		Size: 2.7 MB (2737790 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5ba432c0d41c130007d0abb314ba3bb9c7b97d8ef4328552650c336fa3fbe7d8`  
		Last Modified: Wed, 28 Oct 2026 02:21:34 GMT  
		Size: 17.9 KB (17894 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:96da98bb7cad2f22932a3dabe566ba4021c4332b365a298b04e08e48e8d177eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.2 MB (213170939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff4d93933c5516bc36118b8c6c70bf42ef0705d13c3e0aa941190a3f39e7567d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 10:33:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 10:33:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 10:33:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 10:33:21 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 10:33:21 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 10:33:22 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:37:50 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 10:37:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 10:37:50 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 10:37:54 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 10:37:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 10:37:56 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 10:37:56 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:dbe4b1ae261d30189a9f71db084062762a30a0c977f281a1fb8f9b8506a24e42`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 32.1 MB (32093209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:916f56caeeabd6654227a0fe59d93f1d7414db3ffd6d7284aa029ff5ef282137`  
		Last Modified: Wed, 21 Oct 2026 10:38:58 GMT  
		Size: 158.3 MB (158282653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:091eb9daaca00ee3bd60b53e3d3847333fcda89c8a1167efa266e4d7efeacdd2`  
		Last Modified: Wed, 21 Oct 2026 10:38:55 GMT  
		Size: 18.3 MB (18279434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d42ee1e2d84b86130152ff77495af86613bcb72d0c8700ccfed38a94f0be8862`  
		Last Modified: Wed, 21 Oct 2026 10:38:54 GMT  
		Size: 4.5 MB (4515212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b0353a8ff6ce35ef765f131507af3bdcb41554a1519cceb9df78043643f3915`  
		Last Modified: Wed, 21 Oct 2026 10:38:54 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3fdf53a854d59aa82ea258105db1f2ce1bffc0408c4fca33f2758a0f6aaccfb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2757825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43b1cdbe821aec6c778adb0d2cedce4557241f418363bc077fbb7c1b92975432`

```dockerfile
```

-	Layers:
	-	`sha256:88922bc15eafc3db64b7d9377a7dfe6730f26b7d8d6106d1c8ca7f777e5ad8d7`  
		Last Modified: Wed, 21 Oct 2026 10:38:54 GMT  
		Size: 2.7 MB (2740008 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3bb32764ca4721e36da21ece37bc3e418f79f9802e6345c7593e408242264066`  
		Last Modified: Wed, 21 Oct 2026 10:38:53 GMT  
		Size: 17.8 KB (17817 bytes)  
		MIME: application/vnd.in-toto+json
