## `clojure:temurin-25-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:a7334ab7a347b185ea5ebea500027bf13ca54875af97fed75e99a2784e106a3d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-lein-2.13.0-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:6151a87d0146d5efcf3dfd7ac65054b3aa77231054ab163950b822612f78ba30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.7 MB (145745627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8ef1d88082b682fe86e54fea9e8a89cc1f6f4b3fcd44cfbae649dfd96959750`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:51:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:51:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:51:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:51:44 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 01:51:44 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 01:51:44 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:53:03 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 01:53:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 01:53:03 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 01:53:05 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 01:53:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:53:05 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:53:05 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d146c9516ba7c9c6c75141da24c018a68bb92b7cbf5dc34f3f0d0e237af8869`  
		Last Modified: Sat, 17 Oct 2026 01:53:25 GMT  
		Size: 92.6 MB (92618012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f3ec49806f91be14561055f3f847c9294f6e17815b080c30c1942daa80264c9`  
		Last Modified: Sat, 17 Oct 2026 01:53:23 GMT  
		Size: 20.4 MB (20362640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a8262ad131d63ac899e570287c204edf7300e42422c2bcb06d70725988cd8a7`  
		Last Modified: Sat, 17 Oct 2026 01:53:22 GMT  
		Size: 4.5 MB (4515224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:661155cf79b088a2937582867376958869406dbf26e110f76e3119ddd98d936a`  
		Last Modified: Sat, 17 Oct 2026 01:53:22 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:9a5cb1d0d0f5efd07554341f43ec48a26020cfdfce4775c8bf3f22e12679e8d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2724104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23d66971a0065853792c9312e09b1ed41ec895cbbbe73569cac18045e16f15f9`

```dockerfile
```

-	Layers:
	-	`sha256:c5685522a56563a3dc1d25d2d53501d6ec3ffb975f318884e91c1e53dc6a6e37`  
		Last Modified: Sat, 17 Oct 2026 01:53:22 GMT  
		Size: 2.7 MB (2705676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b92e31a73b9c92945e3680253238338ff3bdb5483d924d308d664d6e4a3b33f`  
		Last Modified: Sat, 17 Oct 2026 01:53:22 GMT  
		Size: 18.4 KB (18428 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:c834c04cb1ac411a7edcc4963ea3b2e370bf7f4ac4b42129063bc0fd95b66cb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.3 MB (144338388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2359bac8a029ad2a57d1fa4fe4f92ace5e5b33804fd3ebd2fdc6037651227456`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:51:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:51:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:51:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:51:54 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 01:51:54 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 01:51:54 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:53:10 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 01:53:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 01:53:10 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 01:53:12 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 01:53:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:53:12 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:53:12 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a32453514004e3d2294577e78d7cc229a07f498de9ba32fdc9075953f01d51a`  
		Last Modified: Sat, 17 Oct 2026 01:53:31 GMT  
		Size: 91.5 MB (91528876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5157cd636384207d0fde017926a25e8d267933749ae632724bc755b7dce0c77e`  
		Last Modified: Sat, 17 Oct 2026 01:53:29 GMT  
		Size: 20.2 MB (20156682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3ff772778b39d1764d573c2b82b7d1fd8c9498c6ca1963d1987cef6ec7eb9ff`  
		Last Modified: Sat, 17 Oct 2026 01:53:29 GMT  
		Size: 4.5 MB (4515223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86aea696206211477513be7d4ec0d94bd86b0782ee8ccc3cf3236e2b90137078`  
		Last Modified: Sat, 17 Oct 2026 01:53:29 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8f1502bbd3806a1bea42a1169df854ae1abb7b75252c73c47ccd6bc074327809
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2723885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5b857d67c2bbb397de8da70690c39a303d5e9374ccbbe9cfd8408880470dcd3`

```dockerfile
```

-	Layers:
	-	`sha256:679dffa9389127e1e175a3b4882053563df89dbc5c75a8cdd945970f90d16720`  
		Last Modified: Sat, 17 Oct 2026 01:53:29 GMT  
		Size: 2.7 MB (2705312 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd2fc7a0b229a16404d7bcfb1c4d93f45a229fcc26c1bc9f484862e07fff49fe`  
		Last Modified: Sat, 17 Oct 2026 01:53:28 GMT  
		Size: 18.6 KB (18573 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:4034a1cda1de687b65238700d43913af801b1e4aa3db43f31f33a52494a61aa6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.6 MB (148599137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eea3efccd1947e4cfc5935f919b527ec8395368b69f7cbb0138a97a8d2b1f802`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 06:17:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 06:17:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 06:17:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 06:17:44 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 06:17:44 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 06:17:49 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 06:21:32 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 06:21:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 06:21:32 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 06:21:36 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 06:21:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 06:21:36 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 06:21:36 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf5c80906303dd2c3506329826dc50a79e29f917ec2a088bb2d847a50163986e`  
		Last Modified: Sat, 17 Oct 2026 06:22:15 GMT  
		Size: 91.3 MB (91256227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:921c44992290b8c7e440b138031c5bdb42e4335681b1ef6c60e8858573d5c48a`  
		Last Modified: Sat, 17 Oct 2026 06:22:13 GMT  
		Size: 20.7 MB (20734821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:605a1559e2436462ad44d2cbc5f5e09f1bbed67aa7fdd3319daccbccc69143c4`  
		Last Modified: Sat, 17 Oct 2026 06:22:13 GMT  
		Size: 4.5 MB (4515226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a81f2b00c7933d95eed2b1f5f5498d4a2e387904c90cfcf4424facb189127de`  
		Last Modified: Sat, 17 Oct 2026 06:22:13 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4da6aaa6321d04ef799e26c905e6d312b82dc13177ffed4043b86675089db6bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2709315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f103c0fd8ba84ec0daf1c473b1b25c368f9875b3d9209a87156d4d5a1b085745`

```dockerfile
```

-	Layers:
	-	`sha256:b1885255fee1d40137456253031c84697660ec5b8c23a82d46718c3b0183eff5`  
		Last Modified: Sat, 17 Oct 2026 06:22:13 GMT  
		Size: 2.7 MB (2690833 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:831e336a787652644a8cf0034d0709f9f44650eb5d3724dc22dd74dfc6b9a312`  
		Last Modified: Sat, 17 Oct 2026 06:22:13 GMT  
		Size: 18.5 KB (18482 bytes)  
		MIME: application/vnd.in-toto+json
