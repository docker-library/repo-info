## `clojure:temurin-25-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:246a9466be59a3602dec42212e79f25e4c0746b3717655da659033b8795ea503
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-lein-2.13.0-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:2629da002e139d3a325bf9a7489c44648ae0eb9d4e8ee0d329f05ccf82461b38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.5 MB (143458963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23fdef789aca325402603464a87568b7ea25e2988851de14f189edd98d1a195b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:48:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:48:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:48:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:48:02 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 02:48:02 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 02:48:02 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:49:12 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 02:49:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 02:49:12 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 02:49:14 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 02:49:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:49:14 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:49:14 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f84ac2abacf777fde2068dfab76b17d66a33dfd0ec10f6dedb018c885c350724`  
		Last Modified: Fri, 02 Oct 2026 02:49:33 GMT  
		Size: 92.6 MB (92618061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d97b2ef9ea1677d140231472b810022572597869ed5df8f98aeaeb2d22bd396c`  
		Last Modified: Fri, 02 Oct 2026 02:49:32 GMT  
		Size: 18.1 MB (18086818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bf0491f20b913bddb04f22c64edc9b85e2fdaf835df3da079643233b236bb0b`  
		Last Modified: Fri, 02 Oct 2026 02:49:31 GMT  
		Size: 4.5 MB (4515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e52bc5b7b00d24e151db3626a3c032d94ed1146df1b1af11f3037fdd2b2d8fc7`  
		Last Modified: Fri, 02 Oct 2026 02:49:31 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c59de4d461adc14f90c325ef7304810ec12b0f34d7c5b7257b9bbd524176cd68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2724104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e7469c3a9c08305bc16f86561271255f5763ab7960a7aac3f78ad5e1a3bde20`

```dockerfile
```

-	Layers:
	-	`sha256:9c682bc2bfc66365eba4d66c3cc39f4c179e7aa9a3d110e1c82c46ce171d0b4c`  
		Last Modified: Fri, 02 Oct 2026 02:49:31 GMT  
		Size: 2.7 MB (2705676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ffdfd21e13b23badf9ad8f33df543cd2cd89b4e2fbbc5c4aa2c9aa41f321a855`  
		Last Modified: Fri, 02 Oct 2026 02:49:31 GMT  
		Size: 18.4 KB (18428 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a5a5d7879514b26c364a295a631eccaa5d0fa0afc895f7cc9160ac1fd4d18f46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.1 MB (142076414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2f2150d90fb7930c10d471d1d91fc9cacf4e86ddea61da329c5ea6d80194c3a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:48:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:48:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:48:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:48:06 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 02:48:06 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 02:48:06 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:49:18 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 02:49:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 02:49:18 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 02:49:20 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 02:49:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:49:20 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:49:20 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d27c03f7a1cb6e978f807201b0c18411382d3c58464c64e6d819d989cdd0564a`  
		Last Modified: Fri, 02 Oct 2026 02:49:39 GMT  
		Size: 91.5 MB (91528871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58bb438eab8eaea57c219784203b620bda202332dece52f48259cadb485e46b8`  
		Last Modified: Fri, 02 Oct 2026 02:49:38 GMT  
		Size: 17.9 MB (17908216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c397c6ee3c927f9d71f24dce79477474182bef9f6f7b9f20b27001fbb5bb29`  
		Last Modified: Fri, 02 Oct 2026 02:49:36 GMT  
		Size: 4.5 MB (4515218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f672525d87d57181c16ad4b26b601c0267a2f1ac4bea71c76747927f2ddd5f0`  
		Last Modified: Fri, 02 Oct 2026 02:49:37 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2b8c3639e13b0e58413ba84278253647a10d12e7115880fef4b43cca5fc3eeef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2723885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00280503c94f1def544b6e55820c7729cc6ca98bc0d0959c4784dd1d56279613`

```dockerfile
```

-	Layers:
	-	`sha256:18b9a61b6214a2b9ffcfa564657646f5e4f47b81710da66267988ddabe72ee9c`  
		Last Modified: Fri, 02 Oct 2026 02:49:37 GMT  
		Size: 2.7 MB (2705312 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:253f2010cc550cdd7ca13cbcb825994ba6e3a2f8ddb61bfaaf651bc178ae269d`  
		Last Modified: Fri, 02 Oct 2026 02:49:37 GMT  
		Size: 18.6 KB (18573 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:23f524abf5a33c06402236e3e3bbe5de1ad50ea4cc19fb8fe92ac1905d19797f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.1 MB (146136285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e89606733bdabfa22f3d8ef08291256e01d9f4f8695578e0fbcc5bd8fe83fa6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 26 Sep 2026 05:18:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 05:18:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 05:18:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 05:18:16 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 26 Sep 2026 05:18:16 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 26 Sep 2026 05:18:16 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 05:20:39 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 26 Sep 2026 05:20:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 26 Sep 2026 05:20:39 GMT
ENV LEIN_ROOT=1
# Sat, 26 Sep 2026 05:20:43 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 26 Sep 2026 05:20:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 26 Sep 2026 05:20:44 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 26 Sep 2026 05:20:44 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b165d89f1b791c34b9c20f2a31fc4c5d2df2528fb278dbc56b0e78f166c6b6b4`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 32.1 MB (32083564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b04f4a8f52a47d9c12d08d142d3e5b518c9eef03e1edca7bde69f1797ae76576`  
		Last Modified: Sat, 26 Sep 2026 05:21:18 GMT  
		Size: 91.3 MB (91256263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:497814bd43d21d9324c8afcf8753458532352525cfc57c1c00695a07da35f13d`  
		Last Modified: Sat, 26 Sep 2026 05:21:16 GMT  
		Size: 18.3 MB (18280826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22371051195f69a6d78291105c09a9a426e250d0acfe0a73ceecc18212b62f3b`  
		Last Modified: Sat, 26 Sep 2026 05:21:16 GMT  
		Size: 4.5 MB (4515202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f10c785b0c5d1d95a000c23d961687fbb70497eb6b8400987faf3aead8857739`  
		Last Modified: Sat, 26 Sep 2026 05:21:15 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d37fdf0828f0232b0a66ab031264efd5e9f388ae9fa0d441891e0f8400a912b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2709317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69361381e590de423af3168b505980e67d1b1c03cd12d246db1b54ae8f350822`

```dockerfile
```

-	Layers:
	-	`sha256:863d53d9250ac4c7c4c9c794ea9d682d09fb8986082fb86d68103520ba9ad6e1`  
		Last Modified: Fri, 02 Oct 2026 08:24:21 GMT  
		Size: 2.7 MB (2690833 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ee35124467617398b7d987aa325be3a8a348f3fe50fa359085c683bdcac6a7b`  
		Last Modified: Fri, 02 Oct 2026 08:24:21 GMT  
		Size: 18.5 KB (18484 bytes)  
		MIME: application/vnd.in-toto+json
