## `clojure:temurin-26-lein-2.13.0-bullseye-slim`

```console
$ docker pull clojure@sha256:efcedd8f89017da9844b257efef2fb335a21e7d0b6adcdd5e0e5b9ab9fae1627
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-26-lein-2.13.0-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:0454b8a63cd42d60fcade3d614fd03ca5588ac841bebb3de29a60bc8ad0c032b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (144982519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75ca73292c8c4dd69e1c0ead79fad2dbb05efb9e257706e6ef13c9a020ab69c0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:32:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:32:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:32:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:32:30 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 01:32:30 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:32:30 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:33:36 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:33:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:33:36 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:33:37 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:33:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:33:37 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:33:37 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4705738e5e0492efae5d2523aa791e06c852e2e1acb5e70a365cc08f9da0c556`  
		Last Modified: Mon, 24 Aug 2026 23:20:36 GMT  
		Size: 30.3 MB (30259727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eea1df08f02e369e7b8b88a0073ed955b18df3eb136777869cf21455fec79fb7`  
		Last Modified: Tue, 25 Aug 2026 01:33:56 GMT  
		Size: 94.6 MB (94563744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d0555f08d3e8a618b500aefce47e610644b40fee1fc8af8e8d526ddaef43a40`  
		Last Modified: Tue, 25 Aug 2026 01:33:54 GMT  
		Size: 15.6 MB (15643445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13d79a0b12004148ee29be733d329c06c85704561368cd223cdc60e3500e33ee`  
		Last Modified: Tue, 25 Aug 2026 01:33:54 GMT  
		Size: 4.5 MB (4515173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0afd9f383234a1d62a776c14c966d77ab27df3753bea9c699d811b964a41010`  
		Last Modified: Tue, 25 Aug 2026 01:33:54 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:83f49211500c710d1ab3f9720c4f41023bf09e8b620ae243e30b166636e9ef60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3024974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5502fb219e686ec441f1160a789639dbc595cf1b5d0fbc92880c1792fa653f64`

```dockerfile
```

-	Layers:
	-	`sha256:5baf11b0d942b1e3ae69fd2a2a7e3a52bc20a1558e6164518a83bea587bbb4e3`  
		Last Modified: Tue, 25 Aug 2026 01:33:54 GMT  
		Size: 3.0 MB (3007208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aadc3197b9615bdb41511956aaf6b5859f6cca56e026d9bd880df9d81163a252`  
		Last Modified: Tue, 25 Aug 2026 01:33:53 GMT  
		Size: 17.8 KB (17766 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:bc6030a0e67c3beb685191219089b27c6d01eb99456dc935ee63c1ee2c50d253
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.4 MB (142437719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcd78011544798ee45f51178cf47e653a11b0284a75543d33414065597e8f3c5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 19:12:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:12:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:12:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:12:08 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:12:08 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:12:08 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:13:16 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:13:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:13:16 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:13:18 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:13:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:13:18 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:13:18 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:93e0ff6a69cbbe5e567bea0ae7560cdd816fd4205541e7cb6b0fd3998b169541`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 28.7 MB (28748907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54d05c26dd2ff7f8a9f4c6e841ae9cdd5ee767df75d4baa67dcc84397220772e`  
		Last Modified: Fri, 21 Aug 2026 19:13:37 GMT  
		Size: 93.5 MB (93541549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abf088b97e93dbfdefebb6846caca7a075de67ac6a2942d3cb0416fadbd4f941`  
		Last Modified: Fri, 21 Aug 2026 19:13:35 GMT  
		Size: 15.6 MB (15631626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c125d86510eb435a8e9e5356a52f1130f6f65d01f7c1e22833a47c8427b7395`  
		Last Modified: Fri, 21 Aug 2026 19:13:35 GMT  
		Size: 4.5 MB (4515207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:370cfe54c6f451762051735bcc281dfdd420c7feb7a39d1fbe0016ced934870d`  
		Last Modified: Fri, 21 Aug 2026 19:13:34 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6fba529d7f1387a10a09bb2b4957687508faea7a21b09b7a0e7fe0b834b64f46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3024701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:313cbf58a353d325ec714d0d8d69cb3ff03428e81e9cfa83d467c3d3d9ebdf1c`

```dockerfile
```

-	Layers:
	-	`sha256:84d36778e21444b2f862cb60c95486fc2fff1a1bf0dc7b80ccd44bbc0aec5eb1`  
		Last Modified: Fri, 21 Aug 2026 19:13:35 GMT  
		Size: 3.0 MB (3006814 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a023d6c8ae16edcb035c35cfe446ce245d38cc1bc525cecb71e649bf34b01c1`  
		Last Modified: Fri, 21 Aug 2026 19:13:34 GMT  
		Size: 17.9 KB (17887 bytes)  
		MIME: application/vnd.in-toto+json
