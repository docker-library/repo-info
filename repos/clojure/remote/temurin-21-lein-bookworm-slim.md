## `clojure:temurin-21-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:ec9a93471cf4afe0868081552b5bee8eb8ac0f9d63dd2ef0d2fb422bedbdab27
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:17528a0fb0c169d260fa6025ed2eeeb2cabcbbee4c419bd9fe055d6019058178
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.0 MB (208953611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cada94e28ce6cddc15299734b5decae70f46e128b0c62585b1fb3c4118d43e3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:18:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:18:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:18:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:18:36 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:18:36 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:18:36 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:19:46 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:19:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:19:46 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:19:48 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:19:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:19:48 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:19:48 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4750f76526a84455166c026139b7fb0883643a0c04c58f15cfdab7ab56e01918`  
		Last Modified: Wed, 21 Oct 2026 01:20:10 GMT  
		Size: 158.1 MB (158117468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39a6f5989c820eded05c2025f8685e88f482ae44a8860f64924bebd2caba29ba`  
		Last Modified: Wed, 21 Oct 2026 01:20:07 GMT  
		Size: 18.1 MB (18072561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b73b4d139fb578b1424b1d88d0fc26b608f551b8ae50cbe7fbecd71d3f06064f`  
		Last Modified: Wed, 21 Oct 2026 01:20:06 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bd138b1006f188d96d6e8e4f88e3d2c4557fd09ee88df99a4b2f751e069316c`  
		Last Modified: Wed, 21 Oct 2026 01:20:06 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4a60110d75c503bf9e2c5aad98cbc7cc2a7b76d7e89d5756a389d6b97eceb63a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2755948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91c08158cd54f6f27a1db285a328e0f0c14b4f8ce7acfe89a869160b58be52ff`

```dockerfile
```

-	Layers:
	-	`sha256:0b2af6349cf76c71b2cf7ebeecc4fdf2db42a47649ea3ce2c601a9629bc954d6`  
		Last Modified: Wed, 21 Oct 2026 01:20:05 GMT  
		Size: 2.7 MB (2738175 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae050cc67197d639c4c70e7729d7dac60877bd07dda1eb21d44033797ed506aa`  
		Last Modified: Wed, 21 Oct 2026 01:20:06 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ac740f3a0b883cd64f9af0cdd4ad62277d0b06755cee8c210b8b951c46c482cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.0 MB (206960994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6aa23b0db910f3e5744baeba1ff146f04cb7db15f6bdb299c34a0df66645f3d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:24:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:24:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:24:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:24:45 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:24:45 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:24:45 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:25:55 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:25:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:25:55 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:25:57 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:25:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:25:57 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:25:57 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93e11c712056a152781c2376970b931a395d4b874d33ff16695ddad869e9dfe0`  
		Last Modified: Wed, 21 Oct 2026 01:26:19 GMT  
		Size: 156.4 MB (156400670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d4d41e006aaf96c31cbe5cbece962dd96921c9646371eb1eb836ab312714c33`  
		Last Modified: Wed, 21 Oct 2026 01:26:16 GMT  
		Size: 17.9 MB (17906275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d38ce31cdfd9f69ad0cd0f6c4560bd6b64ca70e85edead19aea9c5ff39bc5e6f`  
		Last Modified: Wed, 21 Oct 2026 01:26:15 GMT  
		Size: 4.5 MB (4515194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6293dbcf3e1c1a45d186a065a5f4b501b473305732c47f35143a0ac5eb26ef89`  
		Last Modified: Wed, 21 Oct 2026 01:26:15 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b9e51a38b371b9ae7e4cece620518373070bf4e342c9ff283ac26c42e41fbcc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2755683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ae067f466754145479ab32444e10b9cff57c22dd1aaad6057066f7d4c90bb34`

```dockerfile
```

-	Layers:
	-	`sha256:87aceda80694e4580d4dbed79ca301b289e6b10d7467479f33d0f253d778d531`  
		Last Modified: Wed, 21 Oct 2026 01:26:15 GMT  
		Size: 2.7 MB (2737790 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c101f48dc70c1ef91b79330465efec8489061e71ba02cc2ee45364331b868a1`  
		Last Modified: Wed, 21 Oct 2026 01:26:15 GMT  
		Size: 17.9 KB (17893 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:db652b78a70eb522dd5e67384e40e3624a336e1d145151ff8f5d4254f27b421d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.6 MB (215626362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b7977b4a624ef821a48a9e4daab993f9ac6e852e02b404a475f465aadd266d6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 05:54:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 05:54:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 05:54:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 05:54:40 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 05:54:40 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 05:54:41 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 05:57:49 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 05:57:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 05:57:49 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 05:57:53 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 05:57:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 05:57:54 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 05:57:54 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7593202845ab98fc7d37dbc710b97478d09d50c58de70f5671c2d3613ba77de7`  
		Last Modified: Sat, 17 Oct 2026 05:58:43 GMT  
		Size: 158.3 MB (158282663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac7902f4ab7d97b3c80f6b23379e1dcc8fc915e4ffdf6e688bf4fceb075944f`  
		Last Modified: Sat, 17 Oct 2026 05:58:40 GMT  
		Size: 20.7 MB (20735608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:077ff0ab6d331011d2c0e8d8a18d383bbb17fcadcf1d6efa33d1147398437503`  
		Last Modified: Sat, 17 Oct 2026 05:58:39 GMT  
		Size: 4.5 MB (4515227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdf4c02220435da0ed0691a9f25e11bd974c89aa7b1e45a7c02defc3e1a10ef7`  
		Last Modified: Sat, 17 Oct 2026 05:58:39 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6a5d48154f26598812496a73854e56d722fd3f89383a9422eaab78b010af1a4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2759120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fae94cad81ce2e80c4134638319a5d949820c80139d92a98f4f0335421d0c60f`

```dockerfile
```

-	Layers:
	-	`sha256:1f1619324b96e6c8a7baa20b4dbba2f976cdf2bfa6144eea27be73da97df04a8`  
		Last Modified: Sat, 17 Oct 2026 05:58:39 GMT  
		Size: 2.7 MB (2741303 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b5a4382a3fad86f4ba3ad0f06c70c026ae1c90b811527d54cece49064c5ccdc5`  
		Last Modified: Sat, 17 Oct 2026 05:58:39 GMT  
		Size: 17.8 KB (17817 bytes)  
		MIME: application/vnd.in-toto+json
