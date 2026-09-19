## `clojure:temurin-11-lein-2.13.0-bookworm`

```console
$ docker pull clojure@sha256:35c8670e84c25470937faee6c992382656884bb5bf6f3e0bcf76c4896a5ed711
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-2.13.0-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:874c35bc467d9f9030e89f2f6900ce38a2599b04b35198eba1d5ca8b2f701a99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219014032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:769cdb6fe3f6a07cb875a05833035bd0def65267c9fbb21933f974711ec15749`
-	Default Command: `["lein","repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:13:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:13:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:13:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:13:09 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 01:13:09 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 01:13:09 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:14:17 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 01:14:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 01:14:17 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 01:14:18 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 01:14:18 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:827bd9c40b14cae062a688c42b12da87d17bb29348209583e832ac015fc14efc`  
		Last Modified: Sat, 19 Sep 2026 01:14:37 GMT  
		Size: 145.9 MB (145861347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7fe4183dd341aada38e7485a3ed4974cc10106448b256242b5bebb77a9ebf00`  
		Last Modified: Sat, 19 Sep 2026 01:14:35 GMT  
		Size: 20.1 MB (20134005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddf3b822b0724e30c0c56bc68acb9de59cc9df8de8ee184fb57358194061c039`  
		Last Modified: Sat, 19 Sep 2026 01:14:34 GMT  
		Size: 4.5 MB (4515208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:2d016b3ff49623aa636c7e0c8bca4479395171140ca9b1e509892288706f0cbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4324554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed476eda267a8a764691fe0a4fbc8c5764973de393f70cfa677c9333f4dfa948`

```dockerfile
```

-	Layers:
	-	`sha256:8f1b948359ba469de61d4b102a4dc0f3c86b4f37804e554bb387583c911ea8e1`  
		Last Modified: Sat, 19 Sep 2026 01:14:34 GMT  
		Size: 4.3 MB (4308807 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f8bd6444af8163c6cffc35b366e3badba10269cf5429b2fc765ef943a852240b`  
		Last Modified: Sat, 19 Sep 2026 01:14:34 GMT  
		Size: 15.7 KB (15747 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:85bbd886e86564165e86d4023f5e6ad87471bed6f832e67f40dc4a333b28ee99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.4 MB (215428051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37ae4531e15881f1e86cbbd166247e4744a969d4556e43b57a3e3ad2bc59b383`
-	Default Command: `["lein","repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:20:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:20:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:20:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:20:40 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 01:20:40 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 01:20:40 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:21:47 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 01:21:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 01:21:47 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 01:21:49 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 01:21:49 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3f776bd7249bd2230bf7dca6e6bd7b0a8791f5c1395614c2b646de01a4de648`  
		Last Modified: Sat, 19 Sep 2026 01:22:10 GMT  
		Size: 142.6 MB (142566279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e465f9ef26f46302932f52084ad28c6e2290d6a7ac78c6b97de45388b1226104`  
		Last Modified: Sat, 19 Sep 2026 01:22:07 GMT  
		Size: 20.0 MB (19956621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e80cfc6ec7ac6740d3601ab0f48eee6b3db3233074abc65630003684faf89e85`  
		Last Modified: Sat, 19 Sep 2026 01:22:06 GMT  
		Size: 4.5 MB (4515209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:83c00fe7580a1e99d7e92e04b2947fe8bc3352a9ac75cdff7ca313bcfbdd8f5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4324906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cadd07bd60946a3294ad5b6c1f0576407ca09b71c90d3829502ee83a7039e12e`

```dockerfile
```

-	Layers:
	-	`sha256:cceefa4da245a1b9394b4d6a5da26b55286b399d30244f798d9154180b101c8e`  
		Last Modified: Sat, 19 Sep 2026 01:22:06 GMT  
		Size: 4.3 MB (4309040 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65549d0969f5bc2b81a91411cac1fef880886f621cec0cde0550c132603b1229`  
		Last Modified: Sat, 19 Sep 2026 01:22:06 GMT  
		Size: 15.9 KB (15866 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:3211c6e87e1dc977fcf65e2e822dc732645d824884d37db231f68f5adf799f54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.3 MB (210303030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6987854573d40232cde09c5e327a0118159a5ce3c7329efc2d2ef86f73bcc0ac`
-	Default Command: `["lein","repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 07:38:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 07:38:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 07:38:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 07:38:11 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 07:38:11 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 07:38:11 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 07:41:15 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 07:41:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 07:41:15 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 07:41:19 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 07:41:19 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:303f9548080ec7733e94ce124ddb2d901dc024b0db2d3e171bdfe62a1d04513b`  
		Last Modified: Sat, 19 Sep 2026 00:02:50 GMT  
		Size: 52.3 MB (52349305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:252ab7b8435b6276777ad755a60f33e31d7c689c6fe3226176eaed2a31cf9aca`  
		Last Modified: Sat, 19 Sep 2026 07:41:52 GMT  
		Size: 133.1 MB (133090140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8f3a759e4cc810c1f2e915c5368884d798e1e15f30215e0afdc6ab4f11fa1ee`  
		Last Modified: Sat, 19 Sep 2026 07:41:49 GMT  
		Size: 20.3 MB (20348328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23afe20f33c82ec077a2471c6403ce4c7b66c69f22fcf9e5f5b6d85bd5780d67`  
		Last Modified: Sat, 19 Sep 2026 07:41:49 GMT  
		Size: 4.5 MB (4515225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:e62a28d2b36c9f0fdccdaff408100bac85760bdede99303bdac6aa79afe71760
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4325845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29674b6dda3fa6fed54ddf8d7d8fd1f176738dc032cff1fa1789a132f071f8d5`

```dockerfile
```

-	Layers:
	-	`sha256:6a42411e9f8967c2f65316f3f5b9f8c627f1190852dba6732b8033dee9ffed64`  
		Last Modified: Sat, 19 Sep 2026 07:41:49 GMT  
		Size: 4.3 MB (4310053 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52620c2fd47882fe5cf6a785aa69fd6e2325dd368c3bcaf155cb83dd39db2aca`  
		Last Modified: Sat, 19 Sep 2026 07:41:48 GMT  
		Size: 15.8 KB (15792 bytes)  
		MIME: application/vnd.in-toto+json
