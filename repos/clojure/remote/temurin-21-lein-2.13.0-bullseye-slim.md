## `clojure:temurin-21-lein-2.13.0-bullseye-slim`

```console
$ docker pull clojure@sha256:3c36a6cf878095422cd9c51f49d57822724477fe0e4f5497fe9909be243545de
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-21-lein-2.13.0-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:63b0d900e4f5a87d3974da1a38b0247487d8f8db1706c58e22167b8f9cd29231
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.6 MB (208586314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:958d86778e4590d763e396ec6b06cc2b0e9a02b941342283f8c2f2b091e9cada`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 04 Aug 2026 02:51:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:51:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:51:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:51:31 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:51:31 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:51:31 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:52:37 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:52:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:52:37 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:52:38 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:52:38 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:52:38 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:52:38 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ab6b8caf16d7f68b8a98637a233a98f662552e76d428a4510f2c6950bbe017f9`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 30.3 MB (30259754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f9a4e0883b5243a08b15bd136e18d0d985aca613cbae39947d39487e19d93c8`  
		Last Modified: Tue, 04 Aug 2026 02:53:00 GMT  
		Size: 158.2 MB (158166938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c09c1f7367be28e955a84d4eae7dd9b3808792ffe34cba221fa8df529663514`  
		Last Modified: Tue, 04 Aug 2026 02:52:57 GMT  
		Size: 15.6 MB (15644012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26d3ef21291b7f3af4d4fb875c76dddf39a5650f64505812407f24207d7e2ef8`  
		Last Modified: Tue, 04 Aug 2026 02:52:56 GMT  
		Size: 4.5 MB (4515179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b6ff4bbf11bf811e4fa19fe434c694d6c1540db7d2811d96e2becbe7a8e7321`  
		Last Modified: Tue, 04 Aug 2026 02:52:56 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:9115a1ba96a60739b1fbc84c15fa998d088694e1329f3ee5f2bc96019025af7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3056735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da22ff9c9dbd0c14ac10b7e5b3cfaed0fd47ea91c646e7300d9cc212ac1cfb72`

```dockerfile
```

-	Layers:
	-	`sha256:b9b9e217fc3357a68a65d34c33ebce55532404a9880282661b16227ede631f5e`  
		Last Modified: Tue, 04 Aug 2026 02:52:56 GMT  
		Size: 3.0 MB (3038964 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:498ca69d55badb993bb2345a326b1342ef4a64e9a83d3aa339b3dfd15c78066b`  
		Last Modified: Tue, 04 Aug 2026 02:52:56 GMT  
		Size: 17.8 KB (17771 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:dddec7f3e5690b86ad3198cf05162290940ee91cd2fc0a5782e9698196525308
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.3 MB (205345767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32ce8f3d55fc9b23fda0194e64ee42f9eeb4e483e678287c18d70510d8c6bf8f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 04 Aug 2026 02:51:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:51:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:51:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:51:49 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:51:49 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:51:49 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:52:56 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:52:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:52:56 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:52:58 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:52:58 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:52:58 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:52:58 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:61f836bad84b9e0ba9e3fe1a558be02d0d6378b8ecb4f3c1ef8f656e9e30e1f5`  
		Last Modified: Tue, 14 Jul 2026 00:14:15 GMT  
		Size: 28.7 MB (28748984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abc54645fcae5d1c4eb841b35832fc524ec8086938d30c0218f8b043861d0140`  
		Last Modified: Tue, 04 Aug 2026 02:53:19 GMT  
		Size: 156.5 MB (156461269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8c105d1d06f50adf9267f9abf84be23019b8de6ffd6602c39b16bff55fa350f`  
		Last Modified: Tue, 04 Aug 2026 02:53:17 GMT  
		Size: 15.6 MB (15619873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:601ca995fba2b31e7107585786b08757c5efd077f0ef85f1092f49b720462165`  
		Last Modified: Tue, 04 Aug 2026 02:53:16 GMT  
		Size: 4.5 MB (4515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bc4ed13678dbbda7a1837f4581f56b2c8f5195a5f9bfee6a77a3f68685a23b5`  
		Last Modified: Tue, 04 Aug 2026 02:53:16 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f1a240ad3e489a641e3ada071def8e4048a0f2191f79b68bb4bc5714496caaa3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3056466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89044d08c020281d1ecec1b56a29a281dc8454328954bb3068825ad55d0c1a42`

```dockerfile
```

-	Layers:
	-	`sha256:5be4abc57d7c774da561ab2047b156df912cc4088b72466166897bd66e0c8de9`  
		Last Modified: Tue, 04 Aug 2026 02:53:16 GMT  
		Size: 3.0 MB (3038573 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82259b03cb27d9c1459dd55126ec7a2e5bb1094782737b6647d749d20ca9d0e0`  
		Last Modified: Tue, 04 Aug 2026 02:53:16 GMT  
		Size: 17.9 KB (17893 bytes)  
		MIME: application/vnd.in-toto+json
