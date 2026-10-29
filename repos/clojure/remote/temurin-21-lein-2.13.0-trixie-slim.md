## `clojure:temurin-21-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:2ef9c2204a5dfde5cf87a0d210fa9141a7f96351a50f8b4daf8b72e960672111
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:7df62ad36fb499908f241b4e5399a065fbee8aa5dfc8e073750e490f6b6d6e4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.5 MB (209521328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6037b866fbe788c450dade7dd182a50e30f66c8cc7677f8f3e55b61852e43d20`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Thu, 29 Oct 2026 20:03:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:03:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:03:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:03:55 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 29 Oct 2026 20:03:55 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 29 Oct 2026 20:03:55 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:05:10 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 29 Oct 2026 20:05:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 29 Oct 2026 20:05:10 GMT
ENV LEIN_ROOT=1
# Thu, 29 Oct 2026 20:05:12 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 29 Oct 2026 20:05:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:05:12 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:05:12 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:722fad8242fa5025363e84a7c7e4b3fb388ba739e147c90b8b3315baeaef0054`  
		Last Modified: Thu, 29 Oct 2026 20:05:33 GMT  
		Size: 158.4 MB (158409463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:337a68e17d3f4798248aee1c0edc2755703275b42b26a9a6bbfbfd7d949fdfa4`  
		Last Modified: Thu, 29 Oct 2026 20:05:31 GMT  
		Size: 16.7 MB (16740986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50536fd5504b1df8acc0ebdccdc8b0f3e6dd7ae164288832d2fe3fb340b535e1`  
		Last Modified: Thu, 29 Oct 2026 20:05:30 GMT  
		Size: 4.5 MB (4515213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63fc2971816bb356f06ead9a558ce541b13824b2812a27b141f397528484b87c`  
		Last Modified: Thu, 29 Oct 2026 20:05:30 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:034db636cebcf7b7563d7d70591c60502b51e7658041b1503350755a5a604dc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2391351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:305bcdfe9f5f2d300500f1fc3e596713484ac5be84047a2a7d47c9a24b84d3d4`

```dockerfile
```

-	Layers:
	-	`sha256:863575a38a77d6d8fa75ec4d53f3ca84fdaf772ec69a48b4a9d9e828c9d07d9f`  
		Last Modified: Thu, 29 Oct 2026 20:05:30 GMT  
		Size: 2.4 MB (2373598 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:325df280bdbb862598dd41b5206d3f752e0d68143ae9cbe5c4913eb473bacf64`  
		Last Modified: Thu, 29 Oct 2026 20:05:30 GMT  
		Size: 17.8 KB (17753 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:72ebd88ceb2fbe90f2ac54a3ca19dcb823928202fea0b862abcf412cf34f3ec6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.1 MB (208138666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d99db07a259f4c28539da975c05406c7f0f914a2e2886ec23875eb392f704944`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Thu, 29 Oct 2026 20:04:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:04:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:04:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:04:34 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 29 Oct 2026 20:04:34 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 29 Oct 2026 20:04:34 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:05:52 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 29 Oct 2026 20:05:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 29 Oct 2026 20:05:52 GMT
ENV LEIN_ROOT=1
# Thu, 29 Oct 2026 20:05:54 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 29 Oct 2026 20:05:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:05:54 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:05:54 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:592dfea8c0ca28dc986ea50c0e0041eb947333bf478b2c57607e965d897d8f75`  
		Last Modified: Thu, 29 Oct 2026 20:06:17 GMT  
		Size: 156.7 MB (156691634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cf7e3ce560989e4d670539afb553d5c12357dab133eed48cad137ff8ab4a75a`  
		Last Modified: Thu, 29 Oct 2026 20:06:14 GMT  
		Size: 16.7 MB (16717902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e546cd689ab2c0d46cd25bf396ba04eaa0ba7e66d580e5a2b96f34066595022`  
		Last Modified: Thu, 29 Oct 2026 20:06:14 GMT  
		Size: 4.5 MB (4515204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cee293b81cb11920469a5d18e8c57c76496eb949596882b23b695caea2f68952`  
		Last Modified: Thu, 29 Oct 2026 20:06:13 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e75abaeece647d78f267e4ff13eca56284cfdf1a5d5193681dbc0d3721a473ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2391082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36dc876abc3a7f6f8c4514a0449170181de0b8a1a4b4a0ae4dc54a54b6aaa22a`

```dockerfile
```

-	Layers:
	-	`sha256:674e3cfe996820586dedb64c081a8ff59c02c3a7cdedc44d26eab847171447fa`  
		Last Modified: Thu, 29 Oct 2026 20:06:13 GMT  
		Size: 2.4 MB (2373208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:501e6d676b40e9ea7be3014a434f9165ce032b96b5df449ade99a26bf42e9701`  
		Last Modified: Thu, 29 Oct 2026 20:06:13 GMT  
		Size: 17.9 KB (17874 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:79dc1cb4a42f41308cd4db2a8b81d2114332560a512449bdcf6bfb46db628155
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.5 MB (212533584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8303732e2d30d80ccb4dab0403ec5dbd12b7d1782a370ce9a7fce16aa860fd3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Thu, 29 Oct 2026 19:41:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:41:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 19:41:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:41:57 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 29 Oct 2026 19:41:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 29 Oct 2026 19:41:58 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 19:45:04 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 29 Oct 2026 19:45:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 29 Oct 2026 19:45:04 GMT
ENV LEIN_ROOT=1
# Thu, 29 Oct 2026 19:45:09 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 29 Oct 2026 19:45:10 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 19:45:10 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 19:45:10 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91a38139e42efad6f8d2be360542bdf458c3ae7eb7262d4c847e458af9ff5696`  
		Last Modified: Thu, 29 Oct 2026 19:45:59 GMT  
		Size: 157.6 MB (157573285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:342969ab7f1e2f983513134358507111b09fe8a5119b42a63a844b69349eb1d3`  
		Last Modified: Thu, 29 Oct 2026 19:45:55 GMT  
		Size: 16.8 MB (16778387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b84bdd5baae34017936de781ce414e6233be40497d1dc3504c140ff28497cf1`  
		Last Modified: Thu, 29 Oct 2026 19:45:55 GMT  
		Size: 4.5 MB (4515218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e20119551894610afc37cb81400ec78bbb4de563da79470a9fd67b074b613b0`  
		Last Modified: Thu, 29 Oct 2026 19:45:54 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7b09a96e9f2aaecea5859fb3687d841bfe8f59f9d5d4473266f5dab2b5328751
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2391128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c82d57508892a8db818d2cf7ea6894c13a584d2c06111c8f405a65cb9934b6a6`

```dockerfile
```

-	Layers:
	-	`sha256:07f38de0a6c44599938385bf659ae28bced6abd580dd95794f17c8b8d750eede`  
		Last Modified: Thu, 29 Oct 2026 19:45:54 GMT  
		Size: 2.4 MB (2373332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f97d4498288f848f29a137bc2a43cb516950ba652b5be748a0c7fc0db6979a10`  
		Last Modified: Thu, 29 Oct 2026 19:45:54 GMT  
		Size: 17.8 KB (17796 bytes)  
		MIME: application/vnd.in-toto+json
