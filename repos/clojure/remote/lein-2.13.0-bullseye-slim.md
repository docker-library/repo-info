## `clojure:lein-2.13.0-bullseye-slim`

```console
$ docker pull clojure@sha256:276bb043e8bbcc2dc59fe9aee4b4d30276482b2078e3552ecc4c9a8c403f2eee
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:lein-2.13.0-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:10cb1b7d4b0fd7ab23eeff91c8abcc16eb5a6b6d1b868e77591131c06f86b510
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (142993778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73427ba0fcceb5fce38bfbcaa3286636d0faba0d124ae3cd1d4ffdf7e2b09646`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:23:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:23:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:23:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:23:58 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:23:58 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:23:58 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:25:05 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:25:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:25:05 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:25:06 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:25:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:25:07 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:25:07 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ab75afe6a0f0027cc830f1ca4a2c484e7056871a1adf91bd3a0b73c6ffb517b1`  
		Last Modified: Tue, 04 Aug 2026 23:52:04 GMT  
		Size: 30.3 MB (30259620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89203cf6c1de71b142022ff9bebf1314f4a82abfab7db47be154978dd0a5343c`  
		Last Modified: Wed, 05 Aug 2026 01:25:26 GMT  
		Size: 92.6 MB (92574564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a78e936aaf87ee356f2e08bacdd8d8a52b23397c85f0b2405713a2bbf1185d74`  
		Last Modified: Wed, 05 Aug 2026 01:25:24 GMT  
		Size: 15.6 MB (15643988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8b8a474bd408dfa92c3e56ce675109378723fb5fb9b7368dbb15b0b35af77f7`  
		Last Modified: Wed, 05 Aug 2026 01:25:24 GMT  
		Size: 4.5 MB (4515177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c8f6d803a219b84926f8bf8c040bfec102489f8af7fe7b287b38b13ea9cde31`  
		Last Modified: Wed, 05 Aug 2026 01:25:23 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b692a94ab584d1d1aab615f97d647fdf6d23a9dba41a860f41ded91e7d4297f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3023596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9ddcd31a24e551bdc564580c30233cbf6aaf23a61e101c81a11a67a1c12aace`

```dockerfile
```

-	Layers:
	-	`sha256:dba622cf3e98bd433a46b56484e2580c202055850680326b0af010ab1bf57485`  
		Last Modified: Wed, 05 Aug 2026 01:25:23 GMT  
		Size: 3.0 MB (3005168 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:98d18def8f728d9d94515d99b6b01835083056a89d7876ea435180ad7f4e5969`  
		Last Modified: Wed, 05 Aug 2026 01:25:23 GMT  
		Size: 18.4 KB (18428 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.0-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:91ececee297a54a849fbebd0e785ab7f104377b27fca3c2909426bbe921d96d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.4 MB (140426400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8cbd88fe21fb3277f5e4640046c44876afe99acb05a10983d64edaa617e52ff`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:29:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:29:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:29:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:29:58 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:29:58 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:29:58 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:31:05 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:31:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:31:05 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:31:07 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:31:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:31:07 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:31:07 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:93e0ff6a69cbbe5e567bea0ae7560cdd816fd4205541e7cb6b0fd3998b169541`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 28.7 MB (28748907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d417e19e41f41554fc50cb27041e90355c009b3953ad7a81108de67217f01fa7`  
		Last Modified: Wed, 05 Aug 2026 01:31:25 GMT  
		Size: 91.5 MB (91542236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1031b7a0dd6f39539843268f2ede704e383671dc13a7bbf4901acf380983c834`  
		Last Modified: Wed, 05 Aug 2026 01:31:23 GMT  
		Size: 15.6 MB (15619660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e1433ba1c08c12571e6a65a835a3eedc330da99266c8e0e050ab7796489cd70`  
		Last Modified: Wed, 05 Aug 2026 01:31:23 GMT  
		Size: 4.5 MB (4515168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f649bb825d8cdcce8675fe028e71abb36d7d02922f81d6a38c3b18cdb0e5a90d`  
		Last Modified: Wed, 05 Aug 2026 01:31:22 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d6fda336b0a4734e7a0c42bc8bac2eb5204076c94e0f971ba54d728acd2911fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3023371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64d9a95e70e8334646743bcdd699b9d693415852989632fe0944555abf4b6156`

```dockerfile
```

-	Layers:
	-	`sha256:83fb759cdc3fafff58977610f551ae2165c751a39cc26afeef02b9897df72a69`  
		Last Modified: Wed, 05 Aug 2026 01:31:23 GMT  
		Size: 3.0 MB (3004798 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:842da238040c2b4e57a1293f46e083c5e6cd49fac438d0b4ae722a92c5960882`  
		Last Modified: Wed, 05 Aug 2026 01:31:22 GMT  
		Size: 18.6 KB (18573 bytes)  
		MIME: application/vnd.in-toto+json
