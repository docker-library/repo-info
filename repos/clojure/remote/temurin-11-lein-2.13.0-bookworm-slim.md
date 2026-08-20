## `clojure:temurin-11-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:fe621be68c6e8d1c33156668b874dc1ce5cde0da3729f05701dd19b4f1fb8e85
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

### `clojure:temurin-11-lein-2.13.0-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:02d426ed36e09dea67902ed2df598516b411d0a7095097515fb73d071191a42f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196705670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81ea00343b1a2c5f019462af6005b0c3ff36dd5e5bf78e0e9af1873f549e0618`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Tue, 18 Aug 2026 20:41:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:41:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:41:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:41:03 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:41:03 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:41:03 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:42:12 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:42:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:42:12 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:42:13 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:42:13 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1460250d7899b56851d200d61d7d2545e9aeecb6c093310c84728199e139d67a`  
		Last Modified: Tue, 18 Aug 2026 20:42:34 GMT  
		Size: 145.9 MB (145884873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed273fbbefa917b970c3fbac9421f50a6fbd9a4f95a24dc89f2ce7358fe3534e`  
		Last Modified: Tue, 18 Aug 2026 20:42:30 GMT  
		Size: 18.1 MB (18072970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b116f42abc2f06860ff64f792e9b1904d9de4abc3afee1cfa0c0478a7b4b743`  
		Last Modified: Tue, 18 Aug 2026 20:42:30 GMT  
		Size: 4.5 MB (4515205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:19660fa890ee2557deb066f0690a1f2e6a7c2e3638e9ee7cb10d4a8a4ee51f6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2772870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51404a0e439e0a04c1e7d79a078a2c3a3402f410c2ec66b372616f31b3dffb8d`

```dockerfile
```

-	Layers:
	-	`sha256:97ed8d949e97d5095c66f1229bb2b0dda6e1525605da1308458be8eec2f82a79`  
		Last Modified: Tue, 18 Aug 2026 20:42:29 GMT  
		Size: 2.8 MB (2757092 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81b3429d06eaa21a3b99e8f0dcddbe11d0e9a634afbc18afd812e736e1bba4bc`  
		Last Modified: Tue, 18 Aug 2026 20:42:29 GMT  
		Size: 15.8 KB (15778 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:3c9ddefc1601f0ebe2b25331a540dd9cdbe5719e7e2d745fc07a73b33cd78d94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.1 MB (193121189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4d5e1a18a1dddaae7b95745e8ad33719dcbbf2cfcf651775b340ea6b9d17023`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Tue, 18 Aug 2026 20:41:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:41:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:41:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:41:28 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:41:28 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:41:28 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:42:33 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:42:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:42:33 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:42:35 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:42:35 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74ecb9504aff3741a9be2d8b59d43bdd73e40f67281b9a880be908420f00135f`  
		Last Modified: Tue, 18 Aug 2026 20:42:54 GMT  
		Size: 142.6 MB (142582140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90891654136f17ed9e2c708d586690bfbd3a20bf447239ff81502792011b4322`  
		Last Modified: Tue, 18 Aug 2026 20:42:52 GMT  
		Size: 17.9 MB (17906631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:592036c79ef3b5de65539bc90b879016145215467f9f5f3057ce78820b884b39`  
		Last Modified: Tue, 18 Aug 2026 20:42:51 GMT  
		Size: 4.5 MB (4515184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ff0e8beb9bf0671bbe1eaa86bb43908f2200177e1412f2adc1632738c6b0a7fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2773224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a990fa087c2d0ee24efbe3585502958ae49cfa8310ffbb6c573064bfc9ab7162`

```dockerfile
```

-	Layers:
	-	`sha256:c0318abe244d392f9e4e6c5e6816192a4bc17ac99976cf366e633deeb3c6d84b`  
		Last Modified: Tue, 18 Aug 2026 20:42:51 GMT  
		Size: 2.8 MB (2757325 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10590bf775582a7cdc903a88fda2ec0b773e748e7f98ba8a3ca11e446eb308d6`  
		Last Modified: Tue, 18 Aug 2026 20:42:51 GMT  
		Size: 15.9 KB (15899 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:b589eff8def40dbf40d01a60796cf69ebc5c37c785c37c5a4c03ed8db0326f54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (187980813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e1be7c39e7c07e17e499600f64b3e9a74f08a43152f7a6a3f411beef854a28c`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Thu, 20 Aug 2026 00:52:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 00:52:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 00:52:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 00:52:34 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 20 Aug 2026 00:52:34 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 20 Aug 2026 00:52:34 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 00:55:20 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 20 Aug 2026 00:55:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 20 Aug 2026 00:55:20 GMT
ENV LEIN_ROOT=1
# Thu, 20 Aug 2026 00:55:23 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 20 Aug 2026 00:55:23 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:b6fe9465bb56c5ee0b339163090868949baf79f3712bdaf93416fb87b05b7d0a`  
		Last Modified: Tue, 04 Aug 2026 23:50:26 GMT  
		Size: 32.1 MB (32076323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cece95074d9f98cb7ffd64415805e6108cc4eafe0736f316502a68df5e465cba`  
		Last Modified: Thu, 20 Aug 2026 00:56:04 GMT  
		Size: 133.1 MB (133110156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c1a06d08af4478fdea2c61cea99d2bd55f35996df0a7786a1a9a5c51cab8eed`  
		Last Modified: Thu, 20 Aug 2026 00:56:02 GMT  
		Size: 18.3 MB (18279099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f209c136f9a9719b9ccbef8ae9e1a054114cdd9aa34a310c02a02c83bfef918`  
		Last Modified: Thu, 20 Aug 2026 00:56:01 GMT  
		Size: 4.5 MB (4515203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d120a741ec47ef2d2203427c8dfb891cea4399fd1de203c32590f2cc4f3e98dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2774132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7653a0f8575d970401f03432ed13117ce604145493bf5361ded8dcdb56878269`

```dockerfile
```

-	Layers:
	-	`sha256:65f039fb714807f78a2d2633094d23e3a02406b8946c245cf80efbc6c8cf713a`  
		Last Modified: Thu, 20 Aug 2026 00:56:01 GMT  
		Size: 2.8 MB (2758310 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:35da1f6952de94786da8074f2ffe57dc959ce5491a38a7ca588aa921ebd408f7`  
		Last Modified: Thu, 20 Aug 2026 00:56:01 GMT  
		Size: 15.8 KB (15822 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:1159cacd7723a03b332fbcb7b3f502da66b4624206b3128ef4239b2e4b39c889
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.8 MB (175780600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11f33882dcb1f7fe31781ac3921fbdfb3cb9dc0d3db7861526e20f3bb0892187`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:48:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:48:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:48:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:48:07 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:48:07 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:48:07 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:49:21 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:49:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:49:21 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:49:23 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:49:23 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a628df3bc4b8979eb35b19e174103d827ef21f8bebd6f7f511de67c5851da047`  
		Last Modified: Tue, 04 Aug 2026 02:49:48 GMT  
		Size: 126.7 MB (126652412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c4c492f301f783d06a1a8196102417b2c6614c6b9fc01229e8136ea1f8ac3b8`  
		Last Modified: Tue, 04 Aug 2026 02:49:46 GMT  
		Size: 17.7 MB (17724690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4008a01ce877faee517b493e555ae118f82b633fdc498c146f105905ff1ea97d`  
		Last Modified: Tue, 04 Aug 2026 02:49:46 GMT  
		Size: 4.5 MB (4515199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:18387bbba52242685bcb910592b43f78c0d888ec30777ee909b6086e0ab6777a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2759485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8cd93ea4d63f961a60459d90d13c769d9ca1dc296aed09decaf567491d6ac0e`

```dockerfile
```

-	Layers:
	-	`sha256:703bfca2458421063e15f7aaf811583e97c8a9634045ab2e1bade6d9f29f9c76`  
		Last Modified: Tue, 04 Aug 2026 02:49:46 GMT  
		Size: 2.7 MB (2743707 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7bf67842c0f009ebe32df468e6d0d7ad25e948ef5c4d59d24ad843a2c0addf8f`  
		Last Modified: Tue, 04 Aug 2026 02:49:46 GMT  
		Size: 15.8 KB (15778 bytes)  
		MIME: application/vnd.in-toto+json
