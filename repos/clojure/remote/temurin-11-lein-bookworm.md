## `clojure:temurin-11-lein-bookworm`

```console
$ docker pull clojure@sha256:f33bb7401078fc8864bba56021695af087a529571b3ea0fe5189c52ed85fe336
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:4b04903d0b25b6ebf286ea45958c4077f47bc2d7895a8739cc6889d7014a682e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.1 MB (219097897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a466e2caad0fda8002dab6574bd0b9a827caef4ad7a9eba5aa7d11a0891189da`
-	Default Command: `["lein","repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 00:46:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 00:46:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 00:46:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:46:05 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 00:46:05 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 00:46:05 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 00:47:15 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 00:47:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 00:47:15 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 00:47:16 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 00:47:16 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:735ad60ae4e442f44796def88792fd7e8cfc5cccab90db3727e085e5835d791f`  
		Last Modified: Thu, 12 Nov 2026 00:47:36 GMT  
		Size: 145.9 MB (145923120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dca0cd60b2eff4ef65207f214de5f0da9c643a78a81ad3445f434c4104b4bd48`  
		Last Modified: Thu, 12 Nov 2026 00:47:34 GMT  
		Size: 20.1 MB (20133076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8537a1be858a46fae6cab2dbdf651df46c52b12b415dcc6d97c6e7e161fffda0`  
		Last Modified: Thu, 12 Nov 2026 00:47:33 GMT  
		Size: 4.5 MB (4515186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:88f894224e73b1c3e1cddb4d61806e23af84f0e5e8a18b22a95684cb6dccd423
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4323262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52d7fe2c98029d0e933f0691f72183b2957a53fc3cdb31898ba83e644d27afc2`

```dockerfile
```

-	Layers:
	-	`sha256:8c9bf7b5260bd8c129c40200fae76f771bfe00720ab7ca949f946e2f0caa93e0`  
		Last Modified: Thu, 12 Nov 2026 00:47:33 GMT  
		Size: 4.3 MB (4307514 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b58c777cee08f3efd0667daa7d3203dcecd7a424fcec24cdec03168ace987f7`  
		Last Modified: Thu, 12 Nov 2026 00:47:33 GMT  
		Size: 15.7 KB (15748 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:8a0b462c67561fee24b5881c14f091ac44fa8ba115febc67884a63d9eebcaa1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.5 MB (215515865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:610f23cb28b890b83b27182da0cfa928c82a11378ece9a45a01c40c5a8b3b171`
-	Default Command: `["lein","repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 01:01:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:01:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:01:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:01:18 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 01:01:18 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 01:01:18 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:02:34 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 01:02:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 01:02:34 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 01:02:36 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 01:02:36 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04db4b36cf40223820772529ef832238f2dd925ae771e9a7773233c53250b331`  
		Last Modified: Thu, 12 Nov 2026 01:02:57 GMT  
		Size: 142.6 MB (142621057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:128351633bf524e517230442394908b0e874e310acf06f9be51ef17988469e6c`  
		Last Modified: Thu, 12 Nov 2026 01:02:54 GMT  
		Size: 20.0 MB (19967105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65ae168986de4d4377032b0cc0e044d44f6bf6e3ebcd4f0c5b76efea16cb3ded`  
		Last Modified: Thu, 12 Nov 2026 01:02:54 GMT  
		Size: 4.5 MB (4515217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:2c7e338d57ac78ca26d86455e475a6176a2e15d566c5a55a13ba82cc02d35228
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4323615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:636e584c76df375df44a69c73aebbf21edb2eeee768b973b8440189debb1c254`

```dockerfile
```

-	Layers:
	-	`sha256:0cadd36bd8e1840123498ed0b077a5f8a644a648b0cf9a20d3fa91786df18f0f`  
		Last Modified: Thu, 12 Nov 2026 01:02:53 GMT  
		Size: 4.3 MB (4307747 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be40cbd7c986405de6282b93c85b90d2de037977c27975ebcb781ee22a09d226`  
		Last Modified: Thu, 12 Nov 2026 01:02:53 GMT  
		Size: 15.9 KB (15868 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:531738c61d91b2885eae1720352b743b2ad006d3780f960754460ad8e215785e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.5 MB (209513929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2e813c5717b9fe16a8414da2a6708627cc1df0274b7ee342fe7ee3691994cc6`
-	Default Command: `["lein","repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 07:39:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 07:39:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 07:39:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 07:39:15 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 07:39:15 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 07:39:16 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 07:44:47 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 07:44:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 07:44:47 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 07:44:52 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 07:44:52 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1d1049bf611e4e36df206803b6b1a21c41bdc08836e50b24d23176a364d6299`  
		Last Modified: Thu, 12 Nov 2026 07:45:39 GMT  
		Size: 132.3 MB (132272163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f4b8d99d7fa729ec1dc0e807556b8e03ff996d87e3779abc27619b416465a6c`  
		Last Modified: Thu, 12 Nov 2026 07:45:36 GMT  
		Size: 20.4 MB (20357890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79be93d783b5f4147c71e0707f62d04e3821b711cb80e1531d3bccc4799793ba`  
		Last Modified: Thu, 12 Nov 2026 07:45:36 GMT  
		Size: 4.5 MB (4515224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:97492d1aaf4ad13a8e70a8cf8501191a361f981657644d958ee4809617215320
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4323305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9caffcd41d557e937f481a72928d33a31aae60945a2b1e1ab4a130ec2936c9f7`

```dockerfile
```

-	Layers:
	-	`sha256:13e4fc7e3724db958fe3fdfaccd21f5b13cdf56b1a8290956dab70f4d9e2e824`  
		Last Modified: Thu, 12 Nov 2026 07:45:36 GMT  
		Size: 4.3 MB (4307514 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65034fb286f0b523df621d967e05c52fe3a77fe590c6b61a9895170cd81add4a`  
		Last Modified: Thu, 12 Nov 2026 07:45:35 GMT  
		Size: 15.8 KB (15791 bytes)  
		MIME: application/vnd.in-toto+json
