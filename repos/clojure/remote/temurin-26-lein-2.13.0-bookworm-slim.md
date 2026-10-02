## `clojure:temurin-26-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:8ceae2330609c2836d8360f515df9a273308a6ce8313e55d66f8bf245a169a4a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:49eb66681bf08c03f5646bf38024783a162db7a61e54f33441b166d3e4a3eaa7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.4 MB (145404318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63d7bad1cb0c40d84dbd82db76f90fa6b8a6f72914e1bf9b6f6acb071fb31427`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:49:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:49:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:49:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:49:18 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 02:49:18 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 02:49:18 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:50:27 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 02:50:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 02:50:27 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 02:50:28 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 02:50:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:50:28 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:50:28 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e90433b3b3af0be8a95876ce161c41a15f583fffee2b5333781c04920808c2b`  
		Last Modified: Fri, 02 Oct 2026 02:50:47 GMT  
		Size: 94.6 MB (94563480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5fb8d44e2371265a0998c25600524041c917d2ae6dc58e7d3bb6ef13bdbe46a`  
		Last Modified: Fri, 02 Oct 2026 02:50:45 GMT  
		Size: 18.1 MB (18086784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29be61504ed0f62f0b6534fe95bc16df30314c52a73f4418cd07049f5f652b69`  
		Last Modified: Fri, 02 Oct 2026 02:50:45 GMT  
		Size: 4.5 MB (4515181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e94c5f49a84db18c305d1a77c49bedc0765c799c60c054a6d29c9d78a0bc609b`  
		Last Modified: Fri, 02 Oct 2026 02:50:44 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6f60b1a8b1a32cad8943e49a9e4a84c0807264a5250fc8b458e790e423e200ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2720277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69397a9456ae678615dc12d8b68344e17c0c38d799ec0ed99aa751a12ca706da`

```dockerfile
```

-	Layers:
	-	`sha256:5c3d6c535507ffb65feb02ef7e8623df45ba5843defc23db4e8a79e6aecb2600`  
		Last Modified: Fri, 02 Oct 2026 02:50:45 GMT  
		Size: 2.7 MB (2702511 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:36542c3b517bffbb3c867d3943bfbd0727bcb914f31ae064809dde55eb481df5`  
		Last Modified: Fri, 02 Oct 2026 02:50:44 GMT  
		Size: 17.8 KB (17766 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:5612751bf63c226f60db2bedded25dc7ce55bbe48ba151143e3707e5db5df673
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.1 MB (144091198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dad1ddb29abbcf4aaff4b15ff031c31a82dba3ea0be83ed8e84b404a1586319e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:49:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:49:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:49:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:49:30 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 02:49:30 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 02:49:30 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:50:39 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 02:50:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 02:50:39 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 02:50:41 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 02:50:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:50:41 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:50:41 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5acab652a4583544e804cefac66b0dbcd1e4bd80adbd7f7ecc92eec1b458180`  
		Last Modified: Fri, 02 Oct 2026 02:51:00 GMT  
		Size: 93.5 MB (93543596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80df7f6aeafd352e6ef226e6f5e6f618e808e0e35542c1c9455f5c42aa469a41`  
		Last Modified: Fri, 02 Oct 2026 02:50:58 GMT  
		Size: 17.9 MB (17908311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54f455e128de20f634b5286ec1b4e7e48ef53d7c737d24630c434fa910794dcc`  
		Last Modified: Fri, 02 Oct 2026 02:50:58 GMT  
		Size: 4.5 MB (4515182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1d70da78b6c7e36189597c11182ac70b5f70a76131a4bef3510d24e3567da4f`  
		Last Modified: Fri, 02 Oct 2026 02:50:58 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:82e50e90d161149f95e309938c643f84ebf5101047e2155a719a1b48116baf07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2720010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eee2a5a064e458e28974fcce1ddf802d070d5a65383fd80e3ee606da540f09fe`

```dockerfile
```

-	Layers:
	-	`sha256:5d62cfa1d46dda6acc9106b32a4d01160de968a8c3824ebab4f43f5c70ae0c46`  
		Last Modified: Fri, 02 Oct 2026 02:50:58 GMT  
		Size: 2.7 MB (2702123 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1fa992b4d60abe589ec2b6a3871e2bd4ed43d7bbf0bad26c969228fbba32578d`  
		Last Modified: Fri, 02 Oct 2026 02:50:58 GMT  
		Size: 17.9 KB (17887 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:cf9a868ebe8e186c77243e811e009d003c5d72e51f10dd9687a3debd83479542
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.2 MB (148230801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:734285ad6d0a02fad7923dc85249fb2ab2c30767f391458a6a97e23d70817c85`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 26 Sep 2026 05:42:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 05:42:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 05:42:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 05:42:27 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 26 Sep 2026 05:42:27 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 26 Sep 2026 05:42:28 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 05:44:37 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 26 Sep 2026 05:44:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 26 Sep 2026 05:44:37 GMT
ENV LEIN_ROOT=1
# Sat, 26 Sep 2026 05:44:41 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 26 Sep 2026 05:44:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 26 Sep 2026 05:44:41 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 26 Sep 2026 05:44:41 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b165d89f1b791c34b9c20f2a31fc4c5d2df2528fb278dbc56b0e78f166c6b6b4`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 32.1 MB (32083564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f78aba62c87ef2fa4ecb84e96b86f5c61e0c65fe1b2c3012725f0a490280614c`  
		Last Modified: Sat, 26 Sep 2026 05:45:17 GMT  
		Size: 93.4 MB (93350859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee99f4ae277abe52d78d07cbda79a6168e975edd3c09006ce489f4c4056889c8`  
		Last Modified: Sat, 26 Sep 2026 05:45:15 GMT  
		Size: 18.3 MB (18280731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ba891a21832a79a69e632566ee4c264a18938ca3638c10714bec064fbcc929e`  
		Last Modified: Sat, 26 Sep 2026 05:45:14 GMT  
		Size: 4.5 MB (4515219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e488e710505d848ec1c88c1819453e3bf131280c4b6bc77b93e6b332fa2927f0`  
		Last Modified: Sat, 26 Sep 2026 05:45:14 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7bc5534ad31e63402778f15bc54bacc9ab04660b745bb792d6c88068a7a56970
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2706090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:638d3a20422c3e6ec1f74e370c714d5ebcf8e8aa5154d38ad7c11bb0b072050d`

```dockerfile
```

-	Layers:
	-	`sha256:cfabf6b3ac2b20a4b78aee2b90380aace5814918471122a2cba537cf742ff971`  
		Last Modified: Sat, 26 Sep 2026 05:45:14 GMT  
		Size: 2.7 MB (2688280 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:791d7a9aa1cef8e7d3bf70a0911c0704b11d4d951fc7399e04ab1f3c747a9311`  
		Last Modified: Sat, 26 Sep 2026 05:45:13 GMT  
		Size: 17.8 KB (17810 bytes)  
		MIME: application/vnd.in-toto+json
