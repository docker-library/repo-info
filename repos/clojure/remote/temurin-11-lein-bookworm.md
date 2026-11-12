## `clojure:temurin-11-lein-bookworm`

```console
$ docker pull clojure@sha256:fff610ba070c04f415fc4b351ecab022fcd8d77dbe8acd3637a135c969dd234e
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
$ docker pull clojure@sha256:f9073c989f2e02b53b726def9c854a9c6937bd3476af0cf2c421b4d18764273f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.5 MB (209512963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf8726c28b5e0541869391505f3cd44b69e01e7c2aa5a5c36d747559a2e21abe`
-	Default Command: `["lein","repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 01:51:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 01:51:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 01:51:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 01:51:37 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 01:51:37 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 01:51:37 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 01:55:16 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 01:55:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 01:55:16 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 01:55:20 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 01:55:20 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c99480d32360f3e8371c7b109fa06ad2a0c77407781fa839292f976381012efb`  
		Last Modified: Tue, 10 Nov 2026 01:56:09 GMT  
		Size: 132.3 MB (132272201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99fbb143fe0cc104d96d8a72e56786992c46cd3e6595a6ca56942d63b58e8a27`  
		Last Modified: Tue, 10 Nov 2026 01:56:06 GMT  
		Size: 20.4 MB (20356916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26e66354c7e1b38a9ca7d6023ad6d9ec22b184c32097bef64e6952f80bebedff`  
		Last Modified: Tue, 10 Nov 2026 01:56:06 GMT  
		Size: 4.5 MB (4515194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:2e27a38522be73e0d0d9dfb7aa1f3ca22d625697563fdbc01ae31e6d37dcf7cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4323306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6bbe44cb5ec24720ffa5b4261462ae6b62759884a00eed8ec255a41d67a87ca`

```dockerfile
```

-	Layers:
	-	`sha256:dab78de5317cf6d5b0545536a4415fd2dc11c4582b7c4f9ea1780b2750d80a3b`  
		Last Modified: Tue, 10 Nov 2026 01:56:06 GMT  
		Size: 4.3 MB (4307514 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:abb211e65e2d9c1484326b585e00dbc899f7cec98a05245f25d162c802dab0a5`  
		Last Modified: Tue, 10 Nov 2026 01:56:05 GMT  
		Size: 15.8 KB (15792 bytes)  
		MIME: application/vnd.in-toto+json
