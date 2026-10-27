## `clojure:temurin-25-lein-trixie-slim`

```console
$ docker pull clojure@sha256:4ead66ff20317262f6438311de6a84eb8b5d9aa6484a07e676b2420d58e48331
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
$ docker pull clojure@sha256:e6537fa9a9f4b04e0c3c837991a13b0ef947774b9597c567f98b5646fb3bd5c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.7 MB (143718945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de805d761749217f966a9fee0df47c830882a03d3fa38f9e6eeb79966255687d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 00:28:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:28:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:28:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:28:10 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 27 Oct 2026 00:28:10 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 27 Oct 2026 00:51:12 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:52:30 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 27 Oct 2026 00:52:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 27 Oct 2026 00:52:30 GMT
ENV LEIN_ROOT=1
# Tue, 27 Oct 2026 00:52:31 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 27 Oct 2026 00:52:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:52:31 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:52:31 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7675c61ae3fbbf46519a2913cbe38613d584bca1476ddb14989c30e5fd7b9a8`  
		Last Modified: Tue, 27 Oct 2026 00:29:12 GMT  
		Size: 92.6 MB (92618070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4331a06443b47f2d8731532d141fd296c34fd74c7285ca42c963267e5a2c920c`  
		Last Modified: Tue, 27 Oct 2026 00:52:41 GMT  
		Size: 16.7 MB (16741666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf99005bd782be94385b5b0680406a95f81482969a5e7f61a3df10163e4426b4`  
		Last Modified: Tue, 27 Oct 2026 00:52:40 GMT  
		Size: 4.5 MB (4515201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2173c1b4a31c1d2cd00d322e60f918e6ea4958ffcb98ae773cc237e75ce01341`  
		Last Modified: Tue, 27 Oct 2026 00:52:40 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:9b81f06623ba4ee3a8fa2138422ee4ae30c4ea8ba94773157d3cc8cf8d7a0781
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2358204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfbc510f64fac74ac29d15780890fa1fbb82923672a13c61d90035c4b0083813`

```dockerfile
```

-	Layers:
	-	`sha256:2bd4a1c4592a25ac24a7bee921b948a465cae498f9a4a169cac0ce661ce541ff`  
		Last Modified: Tue, 27 Oct 2026 00:52:40 GMT  
		Size: 2.3 MB (2339804 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86779402c1ff746337ac1ef1316c86a371eee1807387a57fdefaad854ad09599`  
		Last Modified: Tue, 27 Oct 2026 00:52:40 GMT  
		Size: 18.4 KB (18400 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a79176cc2d5ece8255d29777db8ae6dcc4c6b3cf4a69218b3b8b594e201703e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (142962722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67a722e7e4653483e140c8790cca4fda66343fd6d2349ede92f287ec3768bbe1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 00:27:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:27:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:27:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:27:51 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 27 Oct 2026 00:27:51 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 27 Oct 2026 00:51:14 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:52:34 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 27 Oct 2026 00:52:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 27 Oct 2026 00:52:34 GMT
ENV LEIN_ROOT=1
# Tue, 27 Oct 2026 00:52:36 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 27 Oct 2026 00:52:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:52:36 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:52:36 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01f854fcb65d38dbf027f3aed59432fb6f7f54eaf502f6fdc45c2b57ce1f5759`  
		Last Modified: Tue, 27 Oct 2026 00:28:54 GMT  
		Size: 91.5 MB (91528868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff0f69cc81e35c29dbdd602891e00df945cc5c81402598d810b2fb110fcc5a0a`  
		Last Modified: Tue, 27 Oct 2026 00:52:46 GMT  
		Size: 16.7 MB (16717746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13b4ec2b5c26098232b82b698d1612a8333bb6383ea62b1835c699413b34e5a3`  
		Last Modified: Tue, 27 Oct 2026 00:52:46 GMT  
		Size: 4.5 MB (4515200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:486fe980f806bb477f73b1740ffbdbb555856f1689e5d1f4b8db3d812bf7d32f`  
		Last Modified: Tue, 27 Oct 2026 00:52:46 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:25af45ae4ecf02645de7e3a6ad3d82db285b55b37e556fac5b18be398ae954b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2357027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:626cab0500559c7754c55521bf91e76a3561cb06fad468cb3bb93de64589b989`

```dockerfile
```

-	Layers:
	-	`sha256:2ae95f9b749263a675203f0d2988c7284f5f75e1ff9d6b9dc9b31b005634f447`  
		Last Modified: Tue, 27 Oct 2026 00:52:46 GMT  
		Size: 2.3 MB (2339435 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8680a6c73ffb15a58500245c0c14a176739f511823679b5ee53248ab487b5f6e`  
		Last Modified: Tue, 27 Oct 2026 00:52:46 GMT  
		Size: 17.6 KB (17592 bytes)  
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
