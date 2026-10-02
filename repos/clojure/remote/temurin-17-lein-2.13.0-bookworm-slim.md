## `clojure:temurin-17-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:51f53b1b56d052c55e318c58cdfd5bc4510c9285ce6b7c543a3af950b11a6496
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:d7e0aced25df3c94d0d905a908d805228f4320a5078a64529c9ca9934cab506d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196666224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6cfe26ad60bb0ec794ce7c87fc713cb6fc78652afb44ac1cf20fbbbc7ecbcfb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:45:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:45:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:45:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:45:12 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 02:45:12 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 02:45:12 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:46:19 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 02:46:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 02:46:19 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 02:46:21 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 02:46:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:46:21 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:46:21 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6d2f938e01bb2f853abeac8793ca04220623ec1568eecccda30a28c016d1dd9`  
		Last Modified: Fri, 02 Oct 2026 02:46:40 GMT  
		Size: 145.8 MB (145825469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9abccf552897b8fffaae34b8bb2d74608a3d7aa5c8727a323f9b1c556e5b1a7`  
		Last Modified: Fri, 02 Oct 2026 02:46:38 GMT  
		Size: 18.1 MB (18086663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:342a2e32b8df4729121beffa4d723931a0a05f7b7f57c18e03c4e86739363b06`  
		Last Modified: Fri, 02 Oct 2026 02:46:37 GMT  
		Size: 4.5 MB (4515219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:098dbef23b9c54e8455bbad6fa34a2729a979b8a93e0a0f006d4d5a1a47f8b64`  
		Last Modified: Fri, 02 Oct 2026 02:46:37 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a5a0038eb46a714f2ffe80a927f97c6f2648e81626496733b915c66f3fd0b033
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2755391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26a6b2fa9804b9960e5bf71512468d88ffd953e7e37050e605d4d5bdd2dc5eaa`

```dockerfile
```

-	Layers:
	-	`sha256:9a4eb29056b56ead89e8933a6f7c97cc6a7bc768eba5589d24a7935be434f0ba`  
		Last Modified: Fri, 02 Oct 2026 02:46:37 GMT  
		Size: 2.7 MB (2737618 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bab32556c6f1f593b86b048dc2fecfa639153e3a1a770a9a8011a28446cf1029`  
		Last Modified: Fri, 02 Oct 2026 02:46:37 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f67ef86f0d3180b8eeec42caced790cbe49a4202671cf60f5efc7eb97a419992
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.2 MB (195195577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e4191cde2a1839c520606d06c385d5cbd24a08c3060efb9ed86e35ddc7eab2a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:45:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:45:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:45:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:45:01 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 02:45:01 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 02:45:01 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:46:11 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 02:46:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 02:46:11 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 02:46:13 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 02:46:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:46:13 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:46:13 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58bdf18a11a29da684c904a0498532e74a92226ae3ea416ebb43a4a63240e1e4`  
		Last Modified: Fri, 02 Oct 2026 02:46:33 GMT  
		Size: 144.6 MB (144648280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cddd2b6a5f8bbc9b300e5481a2be06137887c1fcf813e62a0f246455a419130d`  
		Last Modified: Fri, 02 Oct 2026 02:46:30 GMT  
		Size: 17.9 MB (17907967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e62ae5a4a6c0f76a34758e303d97419003a02464afdd03ac044c0aafdeff881`  
		Last Modified: Fri, 02 Oct 2026 02:46:30 GMT  
		Size: 4.5 MB (4515220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f903747306410cc0053da446d925a9dd856326a2e963b37ee531b7733e2c711`  
		Last Modified: Fri, 02 Oct 2026 02:46:30 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2c6f631fc8a92908945b6896d77efc94d0abdadac5b73ddb8ce2614156e7ae47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2755127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0267dfec43c2dd8c1a30c0826cda640810b2e6c60c9ccb6f7edca098f77afd8`

```dockerfile
```

-	Layers:
	-	`sha256:df499337cfd3073fe9c50842295e2d88a9e27df731e682939e61745ed5835ef5`  
		Last Modified: Fri, 02 Oct 2026 02:46:30 GMT  
		Size: 2.7 MB (2737233 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc08c3f0ee5cca385a734532eb6afeab5dd6ba477405dffc4eded019d780b1e4`  
		Last Modified: Fri, 02 Oct 2026 02:46:29 GMT  
		Size: 17.9 KB (17894 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:a697239193e67b147966f9ca3508c067f1984a2c84ad46832891364bc8a906af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.6 MB (200550621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b796cb2ce341664dde1e8994db0754bf6a1f720fca46a58dcb8eb4658f03a08a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 26 Sep 2026 04:27:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 04:27:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 04:27:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 04:27:11 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 26 Sep 2026 04:27:11 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 26 Sep 2026 04:27:11 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 04:29:11 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 26 Sep 2026 04:29:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 26 Sep 2026 04:29:11 GMT
ENV LEIN_ROOT=1
# Sat, 26 Sep 2026 04:29:14 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 26 Sep 2026 04:29:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 26 Sep 2026 04:29:14 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 26 Sep 2026 04:29:14 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b165d89f1b791c34b9c20f2a31fc4c5d2df2528fb278dbc56b0e78f166c6b6b4`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 32.1 MB (32083564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1e09bd0bc4bfd1579162c762c0467fb2c1dceabceec6f74e228c9785636aa33`  
		Last Modified: Sat, 26 Sep 2026 04:29:51 GMT  
		Size: 145.7 MB (145670567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d083d9f32590edc25eb00df1c95f465ff3d4cd9d27371402525b7bf4c4ecf12`  
		Last Modified: Sat, 26 Sep 2026 04:29:49 GMT  
		Size: 18.3 MB (18280836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdce158a2efb502c9114ed014f31de6818d122696e1364474c0c19282848ea9a`  
		Last Modified: Sat, 26 Sep 2026 04:29:48 GMT  
		Size: 4.5 MB (4515223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d91c44ddc9d6d323d3fe891db6aa0fcf6690ff6755983e61cd83f84a96bf23ff`  
		Last Modified: Sat, 26 Sep 2026 04:29:48 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5bf13badd8878effc8fd6d2a527a48071957c8551f67931c46db8bf60f76ebea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2757268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1697f138f77321dfd97cd856f6a78d7d7cb85609406c8a553641b46d6f51d90`

```dockerfile
```

-	Layers:
	-	`sha256:22c1e70a1a2a9587f0b6082c1c2623f507c0e30bccc95013986cb4bafa479235`  
		Last Modified: Sat, 26 Sep 2026 04:29:48 GMT  
		Size: 2.7 MB (2739451 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24fc1a6fa2b3b7bc977339cd6c8300ab379083974fafb20f54664b874f881bf0`  
		Last Modified: Sat, 26 Sep 2026 04:29:48 GMT  
		Size: 17.8 KB (17817 bytes)  
		MIME: application/vnd.in-toto+json
