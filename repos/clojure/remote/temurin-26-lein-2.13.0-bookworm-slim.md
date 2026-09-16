## `clojure:temurin-26-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:5be046c5fa98b12cf1c224b3d486089ccdf0480201cccf22100f4630f115677a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:10d549fb6816c55c68164cde507d21ff79b8f95de80e52b19fcaf82144330731
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.4 MB (145397693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee7b0a16c442ea30ec9eba2ffb1917f55c7d9bb76ae79f753f05b68a277fa3ae`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 04:38:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:38:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:38:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:38:08 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 04:38:08 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 04:38:08 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:39:21 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 04:39:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 04:39:21 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 04:39:22 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 04:39:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:39:22 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:39:22 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:771ec3dd896c9a4104725a22704387640b7f1bf0a7003bd441ffd6b5f7f08f5f`  
		Last Modified: Wed, 16 Sep 2026 04:39:43 GMT  
		Size: 94.6 MB (94563717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03a69c587871ae80d24f35bc45e0d3b605abf705cd48fdae39f534323c1c0e74`  
		Last Modified: Wed, 16 Sep 2026 04:39:41 GMT  
		Size: 18.1 MB (18085715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:791ecc66155cb045b5c69989d86c063653ab81eace06eab07aea7834c798d35a`  
		Last Modified: Wed, 16 Sep 2026 04:39:41 GMT  
		Size: 4.5 MB (4515177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca895e38e8a3eee7289635602b7fb896ff764fba893f209d033143c4f7d48f4f`  
		Last Modified: Wed, 16 Sep 2026 04:39:40 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:37fe7f96fffbf36e4dd95f16d0231b1faea8985d673ef5146a108586865490f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2720235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91f3be619d890351f20d24372ab057e14c2ee8742f1ffe7d9019bae57584c312`

```dockerfile
```

-	Layers:
	-	`sha256:46f98b030fade087aaa2bac2a2f3d7c201a6915863ab93864556a10b6403b26b`  
		Last Modified: Wed, 16 Sep 2026 04:39:40 GMT  
		Size: 2.7 MB (2702469 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:17af88fd7752842a5fa8ca9884a976b1b697055991c5c1ee8ca8e6374779c9d6`  
		Last Modified: Wed, 16 Sep 2026 04:39:40 GMT  
		Size: 17.8 KB (17766 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f96d3dcba3e22d6198771aa790ddbd4ad51c794f120461e4d1ea4ccbc13b7d6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.1 MB (144081933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a3ce4c91288c6c8d5b1a9d8de48dfc47e4c9a383292a19a0a193d6f4f3bd8f6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 04:38:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:38:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:38:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:38:24 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 04:38:24 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 04:38:24 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:39:35 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 04:39:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 04:39:35 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 04:39:36 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 04:39:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:39:36 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:39:36 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07ad2774a866d69b09d90689d3df82db9d11e7c14c54fb3aa298c74b04f32e88`  
		Last Modified: Wed, 16 Sep 2026 04:39:56 GMT  
		Size: 93.5 MB (93541605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7789c9b7b1245b4765aeb07e7829e85c79acec01993bff7f51044816d3bfb941`  
		Last Modified: Wed, 16 Sep 2026 04:39:54 GMT  
		Size: 17.9 MB (17907419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81acf1a3ab40baaa22e7b78ba91533e3c49d3cb0e8df9fac3604548c0826311b`  
		Last Modified: Wed, 16 Sep 2026 04:39:53 GMT  
		Size: 4.5 MB (4515190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afcd5dc83819e1bef3501ba8fc7791bb331106bc365d74232283b4a88569cdfb`  
		Last Modified: Wed, 16 Sep 2026 04:39:53 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2eaafab6f3212e0df3c1e230177ec54733847e4783cc7159f63bc0471e25ac3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2719967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35a4ae42ef8857ee2c04b968a9c1220188367cf323ef737cce85d6b75c0aba46`

```dockerfile
```

-	Layers:
	-	`sha256:cfbc3b2736c08ec408070acdabd580e831f2aaa084343c6b81449bd523e05b90`  
		Last Modified: Wed, 16 Sep 2026 04:39:53 GMT  
		Size: 2.7 MB (2702081 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bfe9c5225949cbb8b82e27301f973266485b0a5617dfe5744d90444654fa71ec`  
		Last Modified: Wed, 16 Sep 2026 04:39:53 GMT  
		Size: 17.9 KB (17886 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:630f6b7327d2436905ea00ba0800a6f475789c80346e1e01cbde7ca4292db480
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.2 MB (148222886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c387c64bb19202dd94bacde3b9374b892db36fa710d4bf2a89d79b5cfd9e2ec`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:32:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:32:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:32:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:32:50 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 04 Sep 2026 00:32:50 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 04 Sep 2026 00:32:51 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 11:22:47 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 11:22:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 11:22:47 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 11:22:51 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 11:22:51 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 11:22:51 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 11:22:51 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76ca4b2377bd7f858a9eaa6c9fb71c0fc3007246e96523f3f7abc3de415ac8e4`  
		Last Modified: Fri, 04 Sep 2026 00:34:23 GMT  
		Size: 93.4 MB (93350808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57e87c416b89593958d11b53c5261f255a8cad45d779111923e8d83059344a0a`  
		Last Modified: Wed, 09 Sep 2026 11:23:10 GMT  
		Size: 18.3 MB (18279953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac7c369a20de1a403340bd5f6b077e322f9f7c2586a928a3dd5dffd3c7296237`  
		Last Modified: Wed, 09 Sep 2026 11:23:09 GMT  
		Size: 4.5 MB (4515217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb08149e0d2f01a7dbd5dfb19135450591bfc652fd508e0d4f0af12fea28714`  
		Last Modified: Wed, 09 Sep 2026 11:23:09 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:13304314f436a0f5af040cf4035f6cea1764e3598af34653500094238035d0f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2706048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6364b959edce64bdff4836c19566b4bc3887b4f889b41b8eb041412d631be925`

```dockerfile
```

-	Layers:
	-	`sha256:162e9813369644bdfde1f9cd681b5daa50aa803d93ffee5bf887ecbdd034e200`  
		Last Modified: Wed, 16 Sep 2026 11:00:24 GMT  
		Size: 2.7 MB (2688238 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4bf4bfb919648b8baf4241f759f0a63fe2c8fdae9cd1460c86308918938bebe3`  
		Last Modified: Wed, 16 Sep 2026 11:00:24 GMT  
		Size: 17.8 KB (17810 bytes)  
		MIME: application/vnd.in-toto+json
