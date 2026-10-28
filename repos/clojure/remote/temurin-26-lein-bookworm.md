## `clojure:temurin-26-lein-bookworm`

```console
$ docker pull clojure@sha256:e70d2d2a37fc4320193d88153916d7a2781ca7a6fb6ff3882e23f135dae2f4e8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-lein-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:d42291b2ced5f6a9214910afd018d65271e419e0259aa15a8188b21dea4506d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.7 MB (167736477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9b282da875c08d7350b9ace838935973e202ffa3b4b312f76e8d97896313e3f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:14:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:14:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:14:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:14:55 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:14:55 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:14:55 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:16:13 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:16:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:16:13 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:16:15 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:16:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:16:15 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:16:15 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a4aa977c0d0eb2336dad68941e458308ebf32a717c19ea72e475b9eda8035506`  
		Last Modified: Wed, 28 Oct 2026 00:10:13 GMT  
		Size: 48.5 MB (48524552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5f0c4efa8542bac7ac83bebc44f76627d44d246e4414a1916c7cbfd86d4c278`  
		Last Modified: Wed, 28 Oct 2026 02:16:34 GMT  
		Size: 94.6 MB (94563502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afd5ff455f4e770f8b273da2f7b2aea40902695db2bfba0759fd1740b9333ac9`  
		Last Modified: Wed, 28 Oct 2026 02:16:32 GMT  
		Size: 20.1 MB (20132775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9d9892dffc14ec3c90cec1e1b6d7f90bb5018afd9a275f8984a4ba771c45097`  
		Last Modified: Wed, 28 Oct 2026 02:16:32 GMT  
		Size: 4.5 MB (4515218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abdc262c6c438e1145a494a6505f10ca0ac1eee6ea76cf777c9bb11884e4f092`  
		Last Modified: Wed, 28 Oct 2026 02:16:31 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:efe8eb96f91ce1e3e8b15d8aaf88da0dffe8d946fa233bb6142891891db14ced
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4271928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22d2ac104ec41869e67fd5eecc67b36a24ba66311ab144c7a49a13001d59f2ea`

```dockerfile
```

-	Layers:
	-	`sha256:6dd714bfbfbad9c7ae4f9de3b8a7b6065722e4e659e32311f2e64f71e8e94f5d`  
		Last Modified: Wed, 28 Oct 2026 02:16:31 GMT  
		Size: 4.3 MB (4253547 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c9bbafc3322c2b53970a9fddc75ae854270b6973bf31737aff97330833dcf77a`  
		Last Modified: Wed, 28 Oct 2026 02:16:31 GMT  
		Size: 18.4 KB (18381 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:431b59d2fcda5515290f57f4642df3cf688b8550898c58fb6ef8ab6d077379e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.4 MB (166441250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65e491aac436bb93d7f5206c95cef47b0db1994213b8652b540e760c79cdbd3e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:22:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:22:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:22:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:22:07 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:22:07 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:22:07 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:23:25 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:23:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:23:25 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:23:27 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:23:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:23:27 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:23:27 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:9e2782a4701b518d11b63dd3dedcfe1338e448f72cbf5353e854f2501ffd5e62`  
		Last Modified: Wed, 28 Oct 2026 00:10:21 GMT  
		Size: 48.4 MB (48405170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc1e3bbd3e8b52d510bf77bb6514e45070e3b1d5e61df2cd700521e13a399934`  
		Last Modified: Wed, 28 Oct 2026 02:23:47 GMT  
		Size: 93.5 MB (93543621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2101bfd290da110fab518f0dfcf6995836317ad92234aa0bdb6b579069c369e5`  
		Last Modified: Wed, 28 Oct 2026 02:23:45 GMT  
		Size: 20.0 MB (19976810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ce98998a4c186f92bb4b6c213f4cc6a1e285ed3fb9d37ff95d84dac1bc9279c`  
		Last Modified: Wed, 28 Oct 2026 02:23:45 GMT  
		Size: 4.5 MB (4515219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fca14fd449f273c3ad70f9d3f5dbc59f57f66fe1f24326b2c61952fe4455c528`  
		Last Modified: Wed, 28 Oct 2026 02:23:44 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:4e5264df1771b9487ba969a6686a3d97b0e612600c7f69799008301377737ee3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4271708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e3b1271aceb56f15228ec611b06b7ef5efc562a93e96fe129547f4983b68dbf`

```dockerfile
```

-	Layers:
	-	`sha256:b65eaf53ba95dcc33a3ab6fafa18fa921455dd98735cd8f06ebd162a29e52cc9`  
		Last Modified: Wed, 28 Oct 2026 02:23:45 GMT  
		Size: 4.3 MB (4253183 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67dda4cb98695f604483a71b3312d1d2d5b329db645eb5fed28bc0048e6a1821`  
		Last Modified: Wed, 28 Oct 2026 02:23:44 GMT  
		Size: 18.5 KB (18525 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:60ab7b78fb7c6c18e8e17a5806d127af8cf8081fd355ed74c0591fba6539742b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.6 MB (170587804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b3af0797286da2278fb40965a75e8a0b61eb1cd9bca6602b0b2a380f319fd83`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 11:01:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 11:01:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 11:01:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 11:01:20 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 11:01:20 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 11:01:21 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 11:05:11 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 11:05:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 11:05:11 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 11:05:16 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 11:05:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 11:05:17 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 11:05:17 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:0d8f63583ffe9dea650eb3c2d930ac17764dc3edd73dcc6becb0a476d51e6619`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 52.4 MB (52364741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45cf4557b0dd8e520302a63b87bfc1c5ff2dd29442ad047383a634b6ae3b42e3`  
		Last Modified: Wed, 21 Oct 2026 11:05:54 GMT  
		Size: 93.4 MB (93350858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a1c2e0e4bf0a3bdc46c00d594e76d9dbd16f5ddcff71ee57c759a51eb1f70f3`  
		Last Modified: Wed, 21 Oct 2026 11:05:53 GMT  
		Size: 20.4 MB (20356576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f39dc0ca9cc2e6bf3c88311dc997f6b69f280f6a4753205fc6642b5728d4b27b`  
		Last Modified: Wed, 21 Oct 2026 11:05:52 GMT  
		Size: 4.5 MB (4515198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09389c5e56ddead9ba0f4a31b3f168b3e55c1a6544ca25b73967eae734255a40`  
		Last Modified: Wed, 21 Oct 2026 11:05:52 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:064194017dbac307d048d1d51f91fb401327140271bf75e420c03c91d01a359b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4257792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0442223f719d4cd29e7ba54521d0298b1ae45e0f4a568ca093ef234d829b8afb`

```dockerfile
```

-	Layers:
	-	`sha256:4d1c67539dbde2ee32550639a472207d4f9347086aedfe7d8fe9244a59e942ef`  
		Last Modified: Wed, 21 Oct 2026 11:05:52 GMT  
		Size: 4.2 MB (4239356 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d1fff6cefb867dbd473e6e7969276f96820b038841cd34f8f84a25a8a1de8f4b`  
		Last Modified: Wed, 21 Oct 2026 11:05:51 GMT  
		Size: 18.4 KB (18436 bytes)  
		MIME: application/vnd.in-toto+json
