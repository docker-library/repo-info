## `clojure:temurin-26-lein-trixie`

```console
$ docker pull clojure@sha256:baca8bda283043fa67c1a417b84f021204184c839568377d7d1edb913d90cd06
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

### `clojure:temurin-26-lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:5c08e565856df6dc95338b518ab408abc2e7c3e6432e4f3b7c137a89d20e1cc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.2 MB (167243854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7245ff9af3a423927116fcccf4a1b464ac9636fea6db9da7b98337f6cf6d8f8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:23:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:23:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:23:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:23:20 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:23:20 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:23:21 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:24:33 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:24:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:24:33 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:24:35 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:24:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:24:35 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:24:35 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3368d27661f2c0197ee2ef2efcb93ee7af5eebd8a03bf3698fe141a5d09f114`  
		Last Modified: Tue, 14 Jul 2026 02:24:53 GMT  
		Size: 94.5 MB (94524312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2d6eaaf27cdeb3b3bbe4e1ba8c7990f5075f4ee81a3092a09889d12e53334dc`  
		Last Modified: Tue, 14 Jul 2026 02:24:52 GMT  
		Size: 18.9 MB (18891343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5a6c6833b1dd027a15c06a5fc7a647d89598950496a929ed103469b0edd7268`  
		Last Modified: Tue, 14 Jul 2026 02:24:51 GMT  
		Size: 4.5 MB (4515198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aac7556e792995e90bbceec665c5e9c8c116d6c090160ffbf20341f13dbc90b`  
		Last Modified: Tue, 14 Jul 2026 02:24:51 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:7ca414b7323c4a3a0e2e1f19a6f25e5392023499374cc92537503825fbe87a07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3800458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bf9217db0f902904be4ec3e1a84fb84fdfa81be8fffe093a610fb4b84898502`

```dockerfile
```

-	Layers:
	-	`sha256:63e51885b1c13c4213a98631d4f562fd991835a552b605d07e0f440e36ddb0c4`  
		Last Modified: Tue, 14 Jul 2026 02:24:51 GMT  
		Size: 3.8 MB (3782747 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd3cc32c9d08ddc1c3ea1b2e21e36f9d6203af5733349d01b2281688ca765aa3`  
		Last Modified: Tue, 14 Jul 2026 02:24:51 GMT  
		Size: 17.7 KB (17711 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e145c2d8b2edc16cab3229543e11a12510c55a35f6ba696757c50b17458ccde0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.5 MB (166546173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a18220c7cf6a31f67da24d443b318a39f0d4fd6fa4c4c28d85173f6f4d37dcb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:30:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:30:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:30:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:30:41 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:30:41 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:30:41 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:31:56 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:31:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:31:56 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:31:58 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:31:58 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:31:58 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:31:58 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99a5862c89042318fc98b2f91c87b4a0943d609e233d0182b307727d3123e685`  
		Last Modified: Tue, 14 Jul 2026 02:32:17 GMT  
		Size: 93.5 MB (93504335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9e8848f9236ef61c30dff469d6fc9b76ee45dd65618ae239b08daac89b1f3ae`  
		Last Modified: Tue, 14 Jul 2026 02:32:15 GMT  
		Size: 18.9 MB (18852023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7f1b7a26a06dcabdadbcdf063a4cc699f861aceadf1412a87d12f61ade480cd`  
		Last Modified: Tue, 14 Jul 2026 02:32:15 GMT  
		Size: 4.5 MB (4515202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7abb3f49e67b7769dea3add5e5c7f69330d3e776c3e4dcc4665aca9cfc435803`  
		Last Modified: Tue, 14 Jul 2026 02:32:14 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:0b366f56db7812e25b42ee4c563bb390b0be5e1fc1a2f185205c5f0e870d09fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3800815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c794b5a303aa1a97e30aee23387c5ff78ef7ea70f4711276ab8db801d6424646`

```dockerfile
```

-	Layers:
	-	`sha256:a615cc60cd034f46d3efe6e6b9f737c54e2115d24a78eb1b18a882fca95f7710`  
		Last Modified: Tue, 14 Jul 2026 02:32:15 GMT  
		Size: 3.8 MB (3782984 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b4f8ea463d79227508f11c86bf9909f278f24f195019beae64eee5ead57dfe9b`  
		Last Modified: Tue, 14 Jul 2026 02:32:14 GMT  
		Size: 17.8 KB (17831 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:4f846c5da4a0be4c30f4e288c9dd60c45380419621bedb12defb8302f92566b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.5 MB (170488281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a64431d717267eaf03a67b4a6d854f0720f40bdf5750ca408f90958f0b4d615b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 08:58:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 08:58:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 08:58:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 08:58:07 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 08:58:07 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 08:58:08 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 09:00:38 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 09:00:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 09:00:38 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 09:00:41 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 09:00:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 09:00:41 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 09:00:41 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:745b2c9d3139d6aed0b2af22d15f023d127776cd4cd5c9d5188be038d8d70a3e`  
		Last Modified: Tue, 14 Jul 2026 00:15:39 GMT  
		Size: 53.1 MB (53134011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96a7badcc1fa9ad746ebb9552e5881ca4910ee681cb7bbcd6cf93c7093d66707`  
		Last Modified: Tue, 14 Jul 2026 09:01:17 GMT  
		Size: 93.9 MB (93902052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a7410f34130dbd345150bddf65d5dc6673baac367feed6e208e94a481d7c261`  
		Last Modified: Tue, 14 Jul 2026 09:01:14 GMT  
		Size: 18.9 MB (18936585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cb772acd9c7e5dfb4d6f6b1007eb41155cf9c042b510791f4c953589ab1c30e`  
		Last Modified: Tue, 14 Jul 2026 09:01:13 GMT  
		Size: 4.5 MB (4515205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1074372953f15e2dd182fc40ac0c85ecc69b95b52d6e27ac03d77bfe081048d7`  
		Last Modified: Tue, 14 Jul 2026 09:01:13 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:3f8777a3ddfc544d33668f05b5df3b529dc98980e85b3dd07ace61735a29aac5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3785438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a213ec199d9882b55481585f501ad1776d90f8d6475c32acd632909be580aba`

```dockerfile
```

-	Layers:
	-	`sha256:ba08ac774d3b455c8a812769f409f813cd94b9fb39d995181adb4c0b318935e2`  
		Last Modified: Tue, 14 Jul 2026 09:01:13 GMT  
		Size: 3.8 MB (3767683 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd84ca018d409817070ad0f2612a6649be84a70983fc42be1960be6049da5f76`  
		Last Modified: Tue, 14 Jul 2026 09:01:13 GMT  
		Size: 17.8 KB (17755 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:08404850b2f66c8c82b115481581eb24e9a58c75c020235b3f3713ed93c9e85d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.4 MB (163356776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4d57be929ad3174f4ae34f9eefac745922637fa9a213174fb48b49bd236a4dc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 04:36:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 04:36:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 04:36:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:36:32 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 04:36:32 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 04:36:32 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 04:37:44 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 04:37:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 04:37:44 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 04:37:46 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 04:37:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 04:37:46 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 04:37:46 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:3b67c0872a1a1dce2849ed0a6773531451a02c1a681d58d89f062b6003c72e9c`  
		Last Modified: Tue, 14 Jul 2026 00:17:47 GMT  
		Size: 49.4 MB (49381708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a247e220221ae19df19c706ca94c4cd50e9069186f2009b7daf0d3b713dc2c22`  
		Last Modified: Tue, 14 Jul 2026 04:38:12 GMT  
		Size: 90.5 MB (90536963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ef7732c7725cef06581a2c2d1d61fa9aaeebebceccfdab01d5b7f20ec684768`  
		Last Modified: Tue, 14 Jul 2026 04:38:11 GMT  
		Size: 18.9 MB (18922454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef0b5414dcd5d5e46abfd31b6a9348042de09410d991ea6501f2d01b0a97b16c`  
		Last Modified: Tue, 14 Jul 2026 04:38:11 GMT  
		Size: 4.5 MB (4515221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d11532da220e69da4bfd6e97150e80e4d186aed31439832f6e00bf8dea21c50c`  
		Last Modified: Tue, 14 Jul 2026 04:38:10 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:8947f5884b7526e7dc73b4cc414c589111d3292800835f1bae27bcbab0e71866
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3782071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f24a491bd35ed919bcc5fffdaf6cff2ac32bbab688d8b5bb4f9ed09cbe4fef4c`

```dockerfile
```

-	Layers:
	-	`sha256:68f9ff1741276ddb0712a6785748e3af13d1ca52c9f544e65c9ce6b23d51ba1d`  
		Last Modified: Tue, 14 Jul 2026 04:38:11 GMT  
		Size: 3.8 MB (3764360 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0c22d6feb6e422d8961012e85041b78d5cc7c7224580fb4e8c7ff43c2b081b3`  
		Last Modified: Tue, 14 Jul 2026 04:38:10 GMT  
		Size: 17.7 KB (17711 bytes)  
		MIME: application/vnd.in-toto+json
