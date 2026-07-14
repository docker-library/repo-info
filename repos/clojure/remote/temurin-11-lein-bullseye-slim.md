## `clojure:temurin-11-lein-bullseye-slim`

```console
$ docker pull clojure@sha256:7d53b069d644fe8efe22292057f67b803ff2208233f431701fe16b1651759aef
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-11-lein-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:77211e27179b96f83334c2682f9278ea03a9c03919ed8dcc41233aa19f3989a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.3 MB (196305752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4b79238d447d175da0c278e0ba835b1741c0d04ba814f01aa6b08f42c5b228a`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 02:16:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:16:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:16:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:16:38 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:16:38 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:16:38 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:17:46 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:17:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:17:46 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:17:48 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:17:48 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:ab6b8caf16d7f68b8a98637a233a98f662552e76d428a4510f2c6950bbe017f9`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 30.3 MB (30259754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57686807b1d347d907f8c3fd8c32c03a0cdd38a58da46d052b47b1d33fa534e1`  
		Last Modified: Tue, 14 Jul 2026 02:18:06 GMT  
		Size: 145.9 MB (145886159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8f5ce3d23dd930dd4ef872748a425faec09b7d3a6140971c9188c99aa402550`  
		Last Modified: Tue, 14 Jul 2026 02:18:04 GMT  
		Size: 15.6 MB (15644625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36d796d459927857d41c8523d59c7d75902ff3d7628e7b34b9cded32d2109294`  
		Last Modified: Tue, 14 Jul 2026 02:18:03 GMT  
		Size: 4.5 MB (4515182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a91ea40987d2420d298d6944eba81dd0877e1306e9c7218b2616f8077c6058e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3072406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1a019add9159321edcec4386a9cbe941fbf5e8d4c95004f8de13eaa26d68aed`

```dockerfile
```

-	Layers:
	-	`sha256:c7094535b2528b504e4cfafcda1144d17f301213aa63b44adaf801493759a0ff`  
		Last Modified: Tue, 14 Jul 2026 02:18:03 GMT  
		Size: 3.1 MB (3056628 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1764653c96eb6231aa935b2849b13e69b9a22b35cd1904980cb03f0e778de718`  
		Last Modified: Tue, 14 Jul 2026 02:18:03 GMT  
		Size: 15.8 KB (15778 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:aee8f2515ab5c00724e40f04cf7960eed1e4500bdaea1e61864d2980a4435a95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.5 MB (191478399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adeac19abd25d03b0b8264bdbff89454b93b91fcf3014fd7f5b6a08690f5a74f`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 02:23:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:23:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:23:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:23:48 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:23:48 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:23:48 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:24:56 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:24:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:24:56 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:24:58 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:24:58 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:61f836bad84b9e0ba9e3fe1a558be02d0d6378b8ecb4f3c1ef8f656e9e30e1f5`  
		Last Modified: Tue, 14 Jul 2026 00:14:15 GMT  
		Size: 28.7 MB (28748984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93cee3c8b23840b076c8aca9ad6480c3c79dbef79fcb0b2062bdac3c0fcff593`  
		Last Modified: Tue, 14 Jul 2026 02:25:18 GMT  
		Size: 142.6 MB (142582174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:503406139d09bed0ad735350cd2356562c39de9ae731c886fca4c55bea761ad4`  
		Last Modified: Tue, 14 Jul 2026 02:25:15 GMT  
		Size: 15.6 MB (15631985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c816fae71a2fd4d5ffb46242296952790cbf73ae99eb1e3047d849acf2f6485`  
		Last Modified: Tue, 14 Jul 2026 02:25:14 GMT  
		Size: 4.5 MB (4515224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d471292908f47750a8cfba7607a069d1fbeb6cade7d09ae4ee9aca7522561974
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3072754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a149b315520b0e18c0bd34baad8d24f13d058478e5b58f006d641d662727f746`

```dockerfile
```

-	Layers:
	-	`sha256:4f5482726d9eaf9108875dec296556e6580ca301f7cf46aaaa5aaf163612b1de`  
		Last Modified: Tue, 14 Jul 2026 02:25:14 GMT  
		Size: 3.1 MB (3056855 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ab83deb85f4717f02d8ad955f54ca1e0302da2d041161d01da218644b49fbfc`  
		Last Modified: Tue, 14 Jul 2026 02:25:14 GMT  
		Size: 15.9 KB (15899 bytes)  
		MIME: application/vnd.in-toto+json
