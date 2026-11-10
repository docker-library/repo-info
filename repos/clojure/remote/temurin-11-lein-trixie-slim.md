## `clojure:temurin-11-lein-trixie-slim`

```console
$ docker pull clojure@sha256:6fde383c69dc17e322febc976e4ab47daff46dd51afaeb759ad5ce9a5c3a3312
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:4e23c936420b8bea84d003a707590706fcf757ad0a36be3af25b158e9acb24f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.0 MB (197034169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:692c35dc70e329b6089525bcd5af39d8c86f3d196392720fe7e6f6b9944a1491`
-	Default Command: `["lein","repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 00:35:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:35:42 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:35:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:35:42 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 00:35:42 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 00:35:42 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:36:56 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 00:36:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 00:36:56 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 00:36:57 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 00:36:57 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3700ad9434a11c5da2a951da46641c1452e869ceb7ab25c4cdf3931386b3ecaf`  
		Last Modified: Tue, 10 Nov 2026 00:37:15 GMT  
		Size: 145.9 MB (145921654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f6b2f5d5d1204653806183b2352fa4916c9b52d375944734778769826d2f70f`  
		Last Modified: Tue, 10 Nov 2026 00:37:12 GMT  
		Size: 16.7 MB (16741148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58554d6c4e0f4c5e0cbd6c02f116b596c5777a73911d3b646c5285db1ff5f8f0`  
		Last Modified: Tue, 10 Nov 2026 00:37:12 GMT  
		Size: 4.5 MB (4515203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2a24ac25efe4914495cad138084744c94b87ece6d1db33516f6706ecd5064b56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2407026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d807f62641afc6b7ba8bc2bf31f61a8a66d8582febd13cf75f70c0b4ca30043b`

```dockerfile
```

-	Layers:
	-	`sha256:9497a15102298d6e825d6bf6d547f5b1acee80da9c537b2f44f55fa7502fe095`  
		Last Modified: Tue, 10 Nov 2026 00:37:11 GMT  
		Size: 2.4 MB (2391264 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7775b3ad578b9d108d8cb81b3b6e221205d0d8470f12ac89c587fb95413c8a5`  
		Last Modified: Tue, 10 Nov 2026 00:37:11 GMT  
		Size: 15.8 KB (15762 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:b281547bfd4fbbe6fbb25f039b3fe2f4c96d381a3535a357507d4da0bc661f59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.1 MB (194057138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32f3eb709540c974432765f00bcfd5aa6a8818dc7b2b7265ff857d38a78dcfd6`
-	Default Command: `["lein","repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 00:34:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:34:42 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:34:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:34:42 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 00:34:42 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 00:34:42 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:36:01 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 00:36:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 00:36:01 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 00:36:02 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 00:36:02 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e447236db82a89a965f69191d3303842ad00baec3316376e82d46108759cffd1`  
		Last Modified: Tue, 10 Nov 2026 00:36:21 GMT  
		Size: 142.6 MB (142621006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b26a07397e9f2df9ecee514bf71582ba998451161f025e1437aa3ac8819956a`  
		Last Modified: Tue, 10 Nov 2026 00:36:19 GMT  
		Size: 16.7 MB (16706894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9dc9e9290f47c8d8ad02d339b7e2e359c953eda9e36cbf20f19fa2004f5c467`  
		Last Modified: Tue, 10 Nov 2026 00:36:18 GMT  
		Size: 4.5 MB (4515169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7c10d5f22fd36865b4bfa6482f5733d0116aebfe0c07e1b6c3ef4498197ace1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2407377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd796d2d96a186ea94193667445a2e857710fbcb54aefc86e36562aa4f9635d0`

```dockerfile
```

-	Layers:
	-	`sha256:b3fee18a87c1693b5c92d3592dfeea38ee291fc303eaffa4fec62a4416662bba`  
		Last Modified: Tue, 10 Nov 2026 00:36:18 GMT  
		Size: 2.4 MB (2391492 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a79642d38df5456e2fbf74fbfd5cfcde82a70d77e4a453c88df426d2fe893a3e`  
		Last Modified: Tue, 10 Nov 2026 00:36:18 GMT  
		Size: 15.9 KB (15885 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:2323b24ffa4e0283720ffe79014ba2f557d690641226e335d6441cfb1582bc05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.2 MB (187234215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fa82c7b18f7113b83bbd3b4a4ed7429cafd83f7ea87109a08c65bc781e4c944`
-	Default Command: `["lein","repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 02:12:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 02:12:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 02:12:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 02:12:57 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 02:12:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 02:12:59 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 02:18:11 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 02:18:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 02:18:11 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 02:18:17 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 02:18:17 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5879de0790458ab88dda2f95824e4df7ec91828c96c5629829900a960eb1d953`  
		Last Modified: Tue, 10 Nov 2026 02:19:14 GMT  
		Size: 132.3 MB (132272201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7351d48a52521eea273bbb264113af56469b4b684cf8bea52894e3b157b89aa`  
		Last Modified: Tue, 10 Nov 2026 02:19:11 GMT  
		Size: 16.8 MB (16779070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb9bade2baa12f7eb4027692dcb5f8bbe7a07da50dc3725dbbd2ead054c7f8c8`  
		Last Modified: Tue, 10 Nov 2026 02:19:10 GMT  
		Size: 4.5 MB (4515264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:79039815ad3b5dc6f62da0e7f11c41ef4e86c8a5e591fa10a33c3084f3687baf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2406191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef02c2b811f191cb8d1838f5436e7074a97d8296c5da57669fe35e3612982b72`

```dockerfile
```

-	Layers:
	-	`sha256:ea1fe162c30630abbe432dc96763af60a777aeb1476a4931e77cc40f4352220b`  
		Last Modified: Tue, 10 Nov 2026 02:19:10 GMT  
		Size: 2.4 MB (2390383 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a2196f2f35f38d66e864546e6294b7726576a09c12081b0f2a289782e7ee044`  
		Last Modified: Tue, 10 Nov 2026 02:19:10 GMT  
		Size: 15.8 KB (15808 bytes)  
		MIME: application/vnd.in-toto+json
