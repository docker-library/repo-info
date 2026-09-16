## `clojure:temurin-26-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:f2b878256d7ffdfae8213088af06153be4f2931c1bffa4361cc5a3f21639be4d
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
$ docker pull clojure@sha256:c5ea76cd1b4da57bfc31c22eb64856a87ca3cbbcb64298fd40c29ab0654468a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.1 MB (144081958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e087624509b822144328c7b2dd2b78b7c2b95d31dfcbde44c8e032b6d13665f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 04:03:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 04:03:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 04:03:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 04:03:09 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 09 Sep 2026 04:03:09 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 09 Sep 2026 04:03:09 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 04:04:24 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 04:04:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 04:04:24 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 04:04:25 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 04:04:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 04:04:25 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 04:04:25 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f512dc1a4a067157c04938193ff042e1f5633a5eaf75e676dc0b7e4e4cdfec8b`  
		Last Modified: Wed, 09 Sep 2026 04:04:44 GMT  
		Size: 93.5 MB (93541568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b2b54e064e4fe0c4aba37cb76c991698b96a49f649fbbbe07cc0702e7810a8f`  
		Last Modified: Wed, 09 Sep 2026 04:04:43 GMT  
		Size: 17.9 MB (17907490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff80563a1763ee1c4cd15b8d65f5316b0c657e2877c1d85b512f53fead46c25`  
		Last Modified: Wed, 09 Sep 2026 04:04:42 GMT  
		Size: 4.5 MB (4515181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5cdb18ec2f5201093b5ea70309b6fe495106852b6901cb3a21f40d9b6134ad8`  
		Last Modified: Wed, 09 Sep 2026 04:04:42 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:9bb11b45ce3c08ee3a6c1e1d67a1fc1b727ba80e023d2f764fb6593445089237
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2719968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3c1bcb258d6cb61df0538b74feec65a6f2b7f3fdd4cc1aed8ea7ab19da26685`

```dockerfile
```

-	Layers:
	-	`sha256:2ac589b2ecca7f0cb086fc25a508ffd96927dc29ea6f877ff6d962a026de09be`  
		Last Modified: Wed, 09 Sep 2026 04:04:42 GMT  
		Size: 2.7 MB (2702081 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:76fdf78cce45364047278292fa63b8bc550f06615b6dc007f7ebe80f16bc0d91`  
		Last Modified: Wed, 09 Sep 2026 04:04:42 GMT  
		Size: 17.9 KB (17887 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:eb3550fb39f8bc394f9dadd5a84d54bc94d779c0343f61b9e16e6829761d2eba
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
$ docker pull clojure@sha256:5955ce301f95da27dfa90301ef689740c80371881c369ef935919b20215ea084
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2706048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af86090503c03790a973c215b4d26fe2e1fd301c06257c4d06259c3044c25901`

```dockerfile
```

-	Layers:
	-	`sha256:ed0a9b7bf7d8073f5cb883b6f9c01404b0d172c27bbc4c4085ee182520ec9753`  
		Last Modified: Wed, 09 Sep 2026 11:23:09 GMT  
		Size: 2.7 MB (2688238 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:673fde0a868b8a97bae4f998d183c33cfaf993f4351c46aa00ab33609d4f7767`  
		Last Modified: Wed, 09 Sep 2026 11:23:09 GMT  
		Size: 17.8 KB (17810 bytes)  
		MIME: application/vnd.in-toto+json
