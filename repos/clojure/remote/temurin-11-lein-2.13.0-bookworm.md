## `clojure:temurin-11-lein-2.13.0-bookworm`

```console
$ docker pull clojure@sha256:2b9e155b23ee27c99fb2033cbbfa84a287d88ed1fcec09415daf4a5e59fc7c8f
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

### `clojure:temurin-11-lein-2.13.0-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:042c45fd95cd2dbfc5a4da1407d1a8011d5e686907c09cf3e0636e777d2746c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219016443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:104268edfac8644662bc0965e7ea83b8f34e867893a41201ebd2a26f5a4bc8b5`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:47:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:47:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:47:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:26 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:47:26 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:47:26 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:48:32 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:48:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:48:32 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:48:33 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:48:33 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79c475062fb8f23aa5b664fae20e70a4df8ab1712477439ed9e969968028a1dd`  
		Last Modified: Tue, 04 Aug 2026 02:48:54 GMT  
		Size: 145.9 MB (145886277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7643e5d5fbcd9495b6bf5c1929cc25de66b8acf0c99eeb302f5c9aa61a6c872`  
		Last Modified: Tue, 04 Aug 2026 02:48:52 GMT  
		Size: 20.1 MB (20117551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccd109b7bcf99c6d8a40fe9b697478801f832572b6cf9c90e37748b96bf58902`  
		Last Modified: Tue, 04 Aug 2026 02:48:51 GMT  
		Size: 4.5 MB (4515180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:4fdcf3375ae9b33d3f6072111660b4212982404e25916cf68501796cd98749f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4319318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04a1b32d34624cfaed2675e435b229ed79713312eae205ce7e8c2a6e5447df0d`

```dockerfile
```

-	Layers:
	-	`sha256:23e1056e797016050847dd46e2946e6cea3debc49167783c2b558a14c4843cf9`  
		Last Modified: Tue, 04 Aug 2026 02:48:51 GMT  
		Size: 4.3 MB (4303570 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:60cd508b4da43ae7c869fc251f2214cab2aeca5e52289b4f12447e9514111d58`  
		Last Modified: Tue, 04 Aug 2026 02:48:51 GMT  
		Size: 15.7 KB (15748 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:b4f94631977fd26a8bbcb7383baab0c45412341250f2936f9dcd577e8de27392
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.4 MB (215421676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05357c4e97e515f3109492d359fde645e99a7d3cb99b2476c1ea5b49b1cbf9a4`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:47:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:47:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:47:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:39 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:47:39 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:47:39 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:48:47 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:48:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:48:47 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:48:49 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:48:49 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c8370f33b35efedadae7b6bee8788e0ec882cd20d11f618795921f7cd3cfae2`  
		Last Modified: Tue, 04 Aug 2026 02:49:10 GMT  
		Size: 142.6 MB (142582308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6cb2865704507a7ed4cbb1cbfb5ec78714ce3f276a6ede7c77def4fec9cc175`  
		Last Modified: Tue, 04 Aug 2026 02:49:07 GMT  
		Size: 19.9 MB (19940424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e86f58bbfd4ebeab6069a1174300efd828bed412326dde41d4e2a465f1f69445`  
		Last Modified: Tue, 04 Aug 2026 02:49:07 GMT  
		Size: 4.5 MB (4515223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:d62e3b8cc088bbb82e807ada6acd68eacd8814311fd800d095eb61adf4990379
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4319671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3203b1f93fb4fc279f849f72f54e08b6427164dec09306dbc6592b9a1c8adf1f`

```dockerfile
```

-	Layers:
	-	`sha256:060bde9c324f54b921b147e335dc95fcfb429502d9a87cc13a077bf5705c2a70`  
		Last Modified: Tue, 04 Aug 2026 02:49:07 GMT  
		Size: 4.3 MB (4303803 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12e509b4efaa4cbec0d8e4381884881f9159b387edb2711eba0ac44e4fa713d7`  
		Last Modified: Tue, 04 Aug 2026 02:49:06 GMT  
		Size: 15.9 KB (15868 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:3e9f7468b0982fd0bb3a3e02465b753a1cb1694ef2d8321932731374522bdd9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.3 MB (210298944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c988e6643bab78b4ecaa0191d7bcbd0bcf22f2bf9ae46700700407331a8d7300`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 04:50:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 04:50:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 04:50:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 04:50:54 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 04:50:54 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 04:50:54 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 04:53:58 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 04:53:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 04:53:58 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 04:54:01 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 04:54:01 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:380d3eabd945505d4db48078d6d4aeda6a011b9da5c9767fd7ea92fdb78f37f3`  
		Last Modified: Tue, 14 Jul 2026 00:12:57 GMT  
		Size: 52.3 MB (52341834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98564b48110dd65b324ab9ead88f4ef7f5c0a14e48628a131490c2ec81364b7e`  
		Last Modified: Tue, 04 Aug 2026 04:54:38 GMT  
		Size: 133.1 MB (133109636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d63ef790b796a0fda1bbd55778c4efe3febd2774b7cc55228a81b739a465c8db`  
		Last Modified: Tue, 04 Aug 2026 04:54:35 GMT  
		Size: 20.3 MB (20332229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be2aed51f2127d6bd30dd2e0d1cda24eef8cd211370fbb00fd70643fdd60a67d`  
		Last Modified: Tue, 04 Aug 2026 04:54:34 GMT  
		Size: 4.5 MB (4515213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:614f0f3d4618cf509eec08aeab250055e1ff491ffdf30e45bd633035e6ff1ae5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4320608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72a2f6a5fbed65091f9d29e04f5edf63402bea7e1b4f30d555fc5b3a70e08b17`

```dockerfile
```

-	Layers:
	-	`sha256:30dd13a65117e651b4656b8ee6c3981e4f846246e87d813480f9c125d9754755`  
		Last Modified: Tue, 04 Aug 2026 04:54:34 GMT  
		Size: 4.3 MB (4304816 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4764f26014a58ff45cf109bdaabef6be2baed9d1021fb738068d8d7609e697fa`  
		Last Modified: Tue, 04 Aug 2026 04:54:34 GMT  
		Size: 15.8 KB (15792 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:ee9200d7bf7e3e2e10484f6a81c1d9a1e2d06720d9d8d7ffe8349e52b08244e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.1 MB (198095037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d4261be3e9b32974d58c30737c04bc2bcc6349645fc4c2c47ae193d0ef4b5be`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:48:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:48:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:48:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:48:08 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:48:08 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:48:08 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:49:25 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:49:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:49:25 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:49:27 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:49:27 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d65642bbcc0659abb67fb458474d1565054b3f0c1bdf2a9931965ac027d18df`  
		Last Modified: Tue, 04 Aug 2026 02:49:53 GMT  
		Size: 126.7 MB (126652412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36d85ca611d3c68fede020667980128e2e175585648d4ce7c9a84dfb178bd167`  
		Last Modified: Tue, 04 Aug 2026 02:49:51 GMT  
		Size: 19.8 MB (19770084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3b9e779124100c0c999cba9f62651ab66eccf7c37e6969fc1f5eafd8075d37b`  
		Last Modified: Tue, 04 Aug 2026 02:49:51 GMT  
		Size: 4.5 MB (4515230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:b76d1fc1d381c50c11672fe0e69787df997a81cffc97df7b6304f7a7de175ff6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4311136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df427527fef0247eca07ab0ea64e540ec38ecb020c5827a983668e549e4bc69e`

```dockerfile
```

-	Layers:
	-	`sha256:1b108ae6466c7d8e9c37f5d01b212b15a82d1d4c863e317b29f7873e186c1c92`  
		Last Modified: Tue, 04 Aug 2026 02:49:51 GMT  
		Size: 4.3 MB (4295388 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91a030ee785c8f6a672c3375205659bd969ced684675a9e95c1ef4da90f97172`  
		Last Modified: Tue, 04 Aug 2026 02:49:51 GMT  
		Size: 15.7 KB (15748 bytes)  
		MIME: application/vnd.in-toto+json
