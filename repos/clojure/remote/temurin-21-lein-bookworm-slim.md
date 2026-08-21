## `clojure:temurin-21-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:57d07b70d7fe97bad7b1c8b03c86cce8029eccc3e526a059883d7a5dde66cd1f
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

### `clojure:temurin-21-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:bf8a0131f1c07f0fd380854628342435218adf4589afb9995dd0ffa10422fc35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.9 MB (208941678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aef254e784fb6e589add71ad1ccd4d95f1c4ca14f91268da05ec39df2e659eb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 19:16:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:16:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:16:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:16:24 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:16:24 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:16:24 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:17:36 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:17:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:17:36 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:17:38 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:17:38 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:17:38 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:17:38 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b714a9b64a71907d5dd1f9ffdc8e7a9c6ff112a276779e06ee304fd546b4a655`  
		Last Modified: Fri, 21 Aug 2026 19:18:00 GMT  
		Size: 158.1 MB (158120332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e05a71fbc21a853781543c7646a48f3afc62b39f20bc4d75b3deb1bc3d0758b8`  
		Last Modified: Fri, 21 Aug 2026 19:17:57 GMT  
		Size: 18.1 MB (18073123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:548823e244e3dae06d39bed6522929d375b8bddd5bd0cba65646ae219877639c`  
		Last Modified: Fri, 21 Aug 2026 19:17:57 GMT  
		Size: 4.5 MB (4515204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d84a6377f5d97549c16ed4357c10786f4e4b5622793fe3b2424d85fae9b8261b`  
		Last Modified: Fri, 21 Aug 2026 19:17:56 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5daa4ed62f9f13f0954ceb3a56800f1ef5a2b345cbffc85c25aa169f4b545452
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2757199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ff5a53aee1d0834fb12bd5e6e7edeadcf4e3af2f21197fca8302e5e3854b14c`

```dockerfile
```

-	Layers:
	-	`sha256:bcc7b53e0dba7c2758f712d8320b80bdd036faa6383696249cf6248f88f3726e`  
		Last Modified: Fri, 21 Aug 2026 19:17:56 GMT  
		Size: 2.7 MB (2739426 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f7ef459154cf2205b96eb15b69988bca713c07aee4b0488d302b0ca2a2bab65a`  
		Last Modified: Fri, 21 Aug 2026 19:17:56 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:064195600463d86c8e45ccd0ff31ad212a1955778fd4dbe38bd89f361133bd92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.9 MB (206941470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98773516eef6f8649c5d184681c4877eb1e933a7c118bd16971bb287ec0a9707`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 19:05:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:05:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:05:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:05:34 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:05:34 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:05:34 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:06:41 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:06:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:06:41 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:06:42 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:06:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:06:43 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:06:43 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa22c0cd9308c7b981635d4dd54afa8a5281f680f8564001a167a8541dbb7d7f`  
		Last Modified: Fri, 21 Aug 2026 19:07:04 GMT  
		Size: 156.4 MB (156401935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8260eaf78d8a785437ed4f362c0ed0e4895e066be4556fcd8d0ceed2290a9b8`  
		Last Modified: Fri, 21 Aug 2026 19:07:01 GMT  
		Size: 17.9 MB (17906720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15bb39cacc9482985960623b97026d3a58f15013c9de31ae2356684f25e948c3`  
		Last Modified: Fri, 21 Aug 2026 19:07:01 GMT  
		Size: 4.5 MB (4515183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98bc6b3470f733aa5ad1da90593d93f282393e19cbba7826d6c7d8f62b830ca6`  
		Last Modified: Fri, 21 Aug 2026 19:07:00 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:71e9656b3fd95ac4e9d8193924007fdc3b35ecec4bf68dd2a23649cdfc76650e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2756935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b312b15276d7a09c3de211182efc2e0984c28d34a9c3749fab8a7cb03e79d2b6`

```dockerfile
```

-	Layers:
	-	`sha256:6603ed39de5d8537f5e5b5eef2f4124e7de5df0f8e075cd75e775abb62e13359`  
		Last Modified: Fri, 21 Aug 2026 19:07:01 GMT  
		Size: 2.7 MB (2739041 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ce6a258ff000987b8de30ec69d3a7b3aa93496ed25a5a104efb3b480dd1dd13`  
		Last Modified: Fri, 21 Aug 2026 19:07:00 GMT  
		Size: 17.9 KB (17894 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:2a5c15dce9648e9d828cccc7a220113ce0ea5d9946a2f2890d5967f9c216e4b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.2 MB (213214315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8ebe442b27590fc612b5abeccc08e65cfcac9271d46112d4fa84d2c10d35975`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Thu, 20 Aug 2026 01:17:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 01:17:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 01:17:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 01:17:32 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 20 Aug 2026 01:17:32 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 20 Aug 2026 01:17:33 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 01:20:12 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 20 Aug 2026 01:20:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 20 Aug 2026 01:20:12 GMT
ENV LEIN_ROOT=1
# Thu, 20 Aug 2026 01:20:18 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 20 Aug 2026 01:20:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 20 Aug 2026 01:20:19 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 20 Aug 2026 01:20:19 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b6fe9465bb56c5ee0b339163090868949baf79f3712bdaf93416fb87b05b7d0a`  
		Last Modified: Tue, 04 Aug 2026 23:50:26 GMT  
		Size: 32.1 MB (32076323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e33231955abebd911acb94c97eaa8b1b7cb3d3dce6e1a5ac55025e33ee20a69a`  
		Last Modified: Thu, 20 Aug 2026 01:21:00 GMT  
		Size: 158.3 MB (158343275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:446fd9fa75c3ed19b217855f2d257320f369ebce48440d5c193efaa8905bb2b2`  
		Last Modified: Thu, 20 Aug 2026 01:20:57 GMT  
		Size: 18.3 MB (18279058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:881bafb12a45ecb0c124c7621db9bec5b7a9a6fc6c216413c282c70a13015688`  
		Last Modified: Thu, 20 Aug 2026 01:20:56 GMT  
		Size: 4.5 MB (4515229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0227465a190b7bbf1a62fa6e4b4beef0d170eed12068767baf71350dc774a926`  
		Last Modified: Thu, 20 Aug 2026 01:20:56 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d615c3097a24ec3fefb2e45d99f80b686c63e24b36deeeacd4a22a58f2b60302
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2759078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5864bf47484f87ddde0495f1d9a1bc5268139ccc7e88f931900020f42155ad3a`

```dockerfile
```

-	Layers:
	-	`sha256:c879f0a025e339bc1396d04ba1600c07a0ec89dd43dfae6dc548c8b232cae00c`  
		Last Modified: Thu, 20 Aug 2026 01:20:56 GMT  
		Size: 2.7 MB (2741261 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55d74f463974a6f273822cf333db77e36f27d0bcf721a02240e0c0f1d7e97742`  
		Last Modified: Thu, 20 Aug 2026 01:20:56 GMT  
		Size: 17.8 KB (17817 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:63f4ce0e60dd9b14e625df24001575cabe5bbca58b5c93d500b8e6d8985ea1fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.5 MB (196517097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2ef406dff129cfbbb2a4c0f1bd2acea4279fe86cc1e40de297bdb00e46f213d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:57:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:57:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:57:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:57:24 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:57:24 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:57:24 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:58:31 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:58:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:58:31 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:58:33 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:58:33 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:58:33 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:58:33 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4a3f24365b2b7be6a120bb31ebefba7be7e45fc966d4300ec3976b14e69bc0e`  
		Last Modified: Tue, 04 Aug 2026 02:59:01 GMT  
		Size: 147.4 MB (147388360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daa196c9e349364d44d77fd6624e5df1cedbd897e1b1dd32a74f778979daa609`  
		Last Modified: Tue, 04 Aug 2026 02:58:59 GMT  
		Size: 17.7 MB (17724812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c145bc2d6aa3dbca4fb244c923227ae4b74f99e05f6c5e5f9dbc93dcf808f913`  
		Last Modified: Tue, 04 Aug 2026 02:58:58 GMT  
		Size: 4.5 MB (4515228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f7f7354e1c2f4323b7d535e2e9206a7ca8114b57e953900396f494b667cc74d`  
		Last Modified: Tue, 04 Aug 2026 02:58:58 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c21219c923ea8686ed6947c2465781bef0bffc57893792bf7ec05c2a8ef4dff4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2743812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:990b9eebee90f64103ebe257d9c57bf1b4947f11664ee96b594728c39c8ae35f`

```dockerfile
```

-	Layers:
	-	`sha256:fadf4bca84fb2200d6b9cd1275c3d72a17526b6e12d3a4b4929d485813938ea3`  
		Last Modified: Tue, 04 Aug 2026 02:58:58 GMT  
		Size: 2.7 MB (2726039 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:311fbe1f6991b8f77104a43500ed38a689af5c982d18a12632df0838306d7f46`  
		Last Modified: Tue, 04 Aug 2026 02:58:58 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json
