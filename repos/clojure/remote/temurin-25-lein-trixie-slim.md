## `clojure:temurin-25-lein-trixie-slim`

```console
$ docker pull clojure@sha256:79f17e7afffca60359585f3864275fefc6c5de09eae0068a49fbf2d64c814af4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:325a0561284cd06c62ae9c3cc61a8c95f62f8dcaece730bd090016f919e1392e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.7 MB (143730916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50efaba40fbcf4726b1b84136625f8a94201f475d84503de4b7981fbafb49c81`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:14:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:14:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:14:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:14:02 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:14:02 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:14:02 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:15:28 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:15:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:15:28 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:15:29 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:15:29 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:15:29 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:15:29 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:823b1eb6f1977e212e2252d60c96bad609c350df9b6af616d7736433e4878f6d`  
		Last Modified: Wed, 28 Oct 2026 02:15:48 GMT  
		Size: 92.6 MB (92618034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c471777d5a122fbc51ec3e9477adca14d78356c3550447ee520edcda73e0c7ed`  
		Last Modified: Wed, 28 Oct 2026 02:15:46 GMT  
		Size: 16.7 MB (16742026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b15833db86061d8a044d60d40f56cf7b390929187440c1dabf2aa5892a5767c`  
		Last Modified: Wed, 28 Oct 2026 02:15:46 GMT  
		Size: 4.5 MB (4515189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77123fc1ceb0a8c4ec6f53e88af6640113e30c8662dd56ea95a55e9d766b0111`  
		Last Modified: Wed, 28 Oct 2026 02:15:45 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:46e9b9a9342f0dc00b9e61d8b79ab66c294f546bfa62b1e0434d9f1f246083fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2358204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:795edfcf4ac282cab8c720d835bd1ef2f2624c68afbece5168089649476b1ce8`

```dockerfile
```

-	Layers:
	-	`sha256:0b6d692a2d7d475fa0c019c39a84152653ba70c7ece6f6b42f40e5dc6412510f`  
		Last Modified: Wed, 28 Oct 2026 02:15:45 GMT  
		Size: 2.3 MB (2339804 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4aecb68e6a4fe5558315bbc7704c07f480dfc04d964dfffadaa46c9661adb2a9`  
		Last Modified: Wed, 28 Oct 2026 02:15:45 GMT  
		Size: 18.4 KB (18400 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:535543b5ca65176b08bb5109967df4612b72ea0b620ea065165b1a037a95eb32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (142975770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:621c657a7a8ed0fad5ee0ea0270a21866d293ea4722f45e51e42965a671a4b57`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:21:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:21:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:21:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:21:21 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:21:21 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:21:21 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:22:44 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:22:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:22:44 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:22:46 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:22:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:22:46 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:22:46 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef484ba00130b01ab0ec6617f072b6ca94b12d8af60b0fb16be736329fb9d23c`  
		Last Modified: Wed, 28 Oct 2026 02:23:04 GMT  
		Size: 91.5 MB (91528843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0c0c50f72420dcdbfe4048d6de4c538c95e71f0bd57e07227ae461024c9edc3`  
		Last Modified: Wed, 28 Oct 2026 02:23:03 GMT  
		Size: 16.7 MB (16717790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf7714523b927697d3d40d91fd281999e3382fe1a3c6e3d5ddf78323dc61345e`  
		Last Modified: Wed, 28 Oct 2026 02:23:02 GMT  
		Size: 4.5 MB (4515210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:473b40691060176166aac7eea6c1ddf3fffb34c088243e6112709f73f399e2de`  
		Last Modified: Wed, 28 Oct 2026 02:23:02 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c03ed4694e009ee01aac11ec6818f98e1d32c5d927f48a456e5cb1ccf466c795
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2357980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66665de14f2903b4140d5a788e0d13cc32b34bcc2ef57510d805a2e93592f83a`

```dockerfile
```

-	Layers:
	-	`sha256:34eec28d0abdcd790c8d291887514044c2ceb02012577d792be18947dae58c6e`  
		Last Modified: Wed, 28 Oct 2026 02:23:02 GMT  
		Size: 2.3 MB (2339435 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88cac006b0c48bd2933b05e351813f06f642e511806b4a9d2f3b3f9f789fe174`  
		Last Modified: Wed, 28 Oct 2026 02:23:02 GMT  
		Size: 18.5 KB (18545 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:a3b7b2842680e67d8184362c752622e6476335b39b1b253a5afe37a6fc49f22e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.2 MB (146202980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81a9d81553562d8f6bcd0e076322c82b65144756c1b485d54e33f23d48a4c3a7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 10:53:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 10:53:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 10:53:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 10:53:49 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 10:53:49 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 10:53:50 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:58:18 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 10:58:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 10:58:18 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 10:58:22 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 10:58:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 10:58:22 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 10:58:22 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:227201171100893aa91b5dd1cbb0d3cf94c48afcf99440d8d203aeef039f89f8`  
		Last Modified: Wed, 21 Oct 2026 10:59:02 GMT  
		Size: 91.3 MB (91256254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1549cf59d9932cd2d3c26d9b8dc696e3fbc9a3e40fc07c0a5cdcef16484286c4`  
		Last Modified: Wed, 21 Oct 2026 10:59:00 GMT  
		Size: 16.8 MB (16779148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5e6bca6135b503061785779fc1fbf5551c29a6b544d0d3d5fe9eefccbd970bc`  
		Last Modified: Wed, 21 Oct 2026 10:58:59 GMT  
		Size: 4.5 MB (4515213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb437c5e389ae70a7340abb1759efda0db178a8fd0ad1292487fb42468167c9a`  
		Last Modified: Wed, 21 Oct 2026 10:58:59 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:65933c05197cacc475746a5fea50184b99672887a4ac3efba31dcd7e2c2d7b6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2342564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4198a1a7378138a29c6c49b51587e7c607967133393a053e58423ac8f7a9c7c3`

```dockerfile
```

-	Layers:
	-	`sha256:3b692d9a495816fffaac1f18dd16b75dd7b6f389547d8ec2d0b592930ba339ac`  
		Last Modified: Wed, 21 Oct 2026 10:58:59 GMT  
		Size: 2.3 MB (2324108 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:384cb5d46da30aaf3d0f1ba124e9fbcf8c7bd1faf0dca21af8438e475ee758d8`  
		Last Modified: Wed, 21 Oct 2026 10:58:59 GMT  
		Size: 18.5 KB (18456 bytes)  
		MIME: application/vnd.in-toto+json
