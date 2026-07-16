## `clojure:lein-trixie-slim`

```console
$ docker pull clojure@sha256:149c905d71a89bc74f77ed3b7d3f73d054b31f1dbe54d6ebe49dfa5b5e659640
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:02b8343d37be7818cea3db6758c955f3c5433d0e056394b531711aac603f301e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.6 MB (143615253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46c0fe7f4ecc12c5154b659bb98107bbf62d07a7d8901b609eb9cee98f30940d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:34:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:34:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:34:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:34:58 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:34:58 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:34:58 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:36:07 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:36:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:36:07 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:36:09 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:36:09 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:36:09 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:36:09 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f7c3f73d80582799afd8f8e05346020094d43536454e1e616f114fc2e98318e`  
		Last Modified: Thu, 16 Jul 2026 01:36:25 GMT  
		Size: 92.6 MB (92574587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b848595462516c90302ba28ca120853f5b5257ec818d2cc3000083bf1334b69`  
		Last Modified: Thu, 16 Jul 2026 01:36:23 GMT  
		Size: 16.7 MB (16744134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43b767185ee9a6d4bdfb1ebf3850e256f5ac313e3ad4427f96ace85a450efc7d`  
		Last Modified: Thu, 16 Jul 2026 01:36:23 GMT  
		Size: 4.5 MB (4515197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dcf85820c40109d4aec9a43ff72e43e8d8d4989cd3ef063c87ab2e770a2ef0d`  
		Last Modified: Thu, 16 Jul 2026 01:36:23 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8e177d5970b20ef1a24a0f02eccbe9de9ee783ba5416f0c1724059c492c3e988
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2353564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51ebdd6c81d7fe588422725ef6e52efed93aa9f5b7c4010b8eb020eed225671e`

```dockerfile
```

-	Layers:
	-	`sha256:a2b2e403f0a53e281b08c82d1ad8310af9fe8e74959a9fec3aa00397800af982`  
		Last Modified: Thu, 16 Jul 2026 01:36:23 GMT  
		Size: 2.3 MB (2335165 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:06dc8a2274c2ad86876b26b7386e94759ad7a4e0277303ecf732bc4ba4cb3246`  
		Last Modified: Thu, 16 Jul 2026 01:36:22 GMT  
		Size: 18.4 KB (18399 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:3d9b052dfd9b4fc8697e66a95e808d765c3e9f246a072ee1ce3a63d4989c743b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.9 MB (142923180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e77af0a57c80b13d86fa5b80bde286e8f62282e6f53435764a408df352c09397`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:30:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:30:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:30:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:30:46 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:30:46 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:30:46 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:32:02 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:32:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:32:02 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:32:04 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:32:04 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:32:04 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:32:04 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80fb8e06a347df0af14ea4fab96b54a264dbda1aacdf58b944b6fbe7328259d7`  
		Last Modified: Thu, 16 Jul 2026 01:32:22 GMT  
		Size: 91.5 MB (91542277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5da7c1a8323c4da48e5cbcc8b30d51f365c59d9429ef23b796626fc55d73bea`  
		Last Modified: Thu, 16 Jul 2026 01:32:21 GMT  
		Size: 16.7 MB (16721547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e63b2a927832cc06ff621a3efa738b92e56e7db3058d3f5207b85df730464b64`  
		Last Modified: Thu, 16 Jul 2026 01:32:20 GMT  
		Size: 4.5 MB (4515222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:510f72ec9b509a22f4add1ba863ca1bafaba84440c64c74775e1aa027740463f`  
		Last Modified: Thu, 16 Jul 2026 01:32:20 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5a7b2d3489b1a1e90bd9d7687c5638f25f67d200bda4fa1acc6de95a343db02e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2353340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d996c38fc8dfd81dec765872250e9cd3392fc886c52ddf778b3f5a4844626cf8`

```dockerfile
```

-	Layers:
	-	`sha256:5c05d0ddc21807abbf7bc63e0437930f40a5dbe6f67061c2e350a18ae6b7010f`  
		Last Modified: Thu, 16 Jul 2026 01:32:20 GMT  
		Size: 2.3 MB (2334796 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f6ca22f2267634fd7b18b7f46a5423b6eda500c7c3441752064a3752a963afe`  
		Last Modified: Thu, 16 Jul 2026 01:32:20 GMT  
		Size: 18.5 KB (18544 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:76fc7b3cf64cf13511407dad3560b0a94456e41a21035b2d23d18246e50c7d76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.8 MB (146813328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6ba6d8fc2ac146d9c7cf419cabbbf879df8ff92447a0c6818cb28a0b1692a58`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 03:02:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 03:02:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 03:02:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 03:02:44 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 03:02:44 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 03:02:44 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 03:05:23 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 03:05:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 03:05:23 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 03:05:26 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 03:05:26 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 03:05:26 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 03:05:26 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29fd8166ed391b4863a03ef6024211363592a0077f8282eb09cbc26db6ce20b7`  
		Last Modified: Thu, 16 Jul 2026 03:06:02 GMT  
		Size: 91.9 MB (91914019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf6c6ada6d5a6a07edcf2dfd237571c2ba9b77a0829465ed9a31d9e20c4193f4`  
		Last Modified: Thu, 16 Jul 2026 03:05:59 GMT  
		Size: 16.8 MB (16782193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:670803318a5b19a612236e96d098c7c45a72a45c5d79054658c8a914b87a3bc3`  
		Last Modified: Thu, 16 Jul 2026 03:05:59 GMT  
		Size: 4.5 MB (4515207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32695fa6acc7a431d3a49398f09bd2cf88ccd036f7b0349bf1e33568bfa255d5`  
		Last Modified: Thu, 16 Jul 2026 03:05:58 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:85d79e8c8204be680a80f77c58b543580b1ba6b4aad278c9933d2e7f00c65833
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2337925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:939dfef88bc5958c41adcfd348489f7216a1313cf9f813bb8fecc6ffb6956f1c`

```dockerfile
```

-	Layers:
	-	`sha256:b5bf9215c06c40c4700434a20e46478b213b23a3167a9e49b133d0018f5c2d46`  
		Last Modified: Thu, 16 Jul 2026 03:05:59 GMT  
		Size: 2.3 MB (2319469 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3336c79332d87fccb9bec5c6428146358238937a9e9110b22f58d500b52d61a7`  
		Last Modified: Thu, 16 Jul 2026 03:05:58 GMT  
		Size: 18.5 KB (18456 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:153f805d475b96b2cf2a310920ac74aea4c43326bb4378da7e7f5946e52a6ddc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.6 MB (139562452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c95fe88afb566c80ecce29151c327e0bf81a0ac5e2faf18ff7c3354c27068e9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:53:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:53:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:53:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:53:31 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:53:31 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:53:31 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:55:03 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:55:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:55:03 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:55:05 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:55:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:55:05 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:55:05 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e23d13315ca06c86762662132f058db280d393a111e5ba81c8f8a44c43c3c3fa`  
		Last Modified: Thu, 16 Jul 2026 01:55:29 GMT  
		Size: 88.4 MB (88420315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ea2f2e7999cae7e8d9a65a95a0cc09cc8dc7a4472a59f5485a6fb91859b13fe`  
		Last Modified: Thu, 16 Jul 2026 01:55:28 GMT  
		Size: 16.8 MB (16779867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09e3e20920bdb8029b1cf4be24e44e21801f0d08094ea72c4c8ad9b1d5d98fd8`  
		Last Modified: Thu, 16 Jul 2026 01:55:27 GMT  
		Size: 4.5 MB (4515208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ba275cc18f39ba32c7d31c3acd85d5671cb3595f551dc240f2da8d4c625bd6d`  
		Last Modified: Thu, 16 Jul 2026 01:55:27 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a2d8f1dfaf28267d8476e141c8e98735b4d80b3430da18a792e9335a67b99010
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2334554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8df6b685452502e2740135136734d180607e5b251e364cd783d4b2ca5310a57`

```dockerfile
```

-	Layers:
	-	`sha256:ab7274e200f2a577fa04f80c00d4c0ce8968e9c1fb1bdc8e7e7e63dbd03ffe6d`  
		Last Modified: Thu, 16 Jul 2026 01:55:27 GMT  
		Size: 2.3 MB (2316154 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cf668b29f45d5a76723d7c1f4388b5c63e3d1f44275acf99d535ed2e475eecd2`  
		Last Modified: Thu, 16 Jul 2026 01:55:27 GMT  
		Size: 18.4 KB (18400 bytes)  
		MIME: application/vnd.in-toto+json
