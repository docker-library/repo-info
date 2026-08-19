## `clojure:temurin-26-lein-2.13.0-bullseye-slim`

```console
$ docker pull clojure@sha256:7c12e0ba6b95b07220ce51fb575cc5778d4128860a261121ad7494dcd7ae4ccd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-26-lein-2.13.0-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:6e9156ac6976fff30302af6a37a28fb3bc34b1e28ede59bc48b6988f24957616
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.9 MB (144942935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff0f59d52ee9c01c152d94b62645a1110045010d1f47644bed45e34f93b4bf4e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Tue, 18 Aug 2026 20:49:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:49:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:49:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:49:53 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:49:53 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:49:53 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:51:03 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:51:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:51:03 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:51:05 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:51:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:51:05 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:51:05 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ab75afe6a0f0027cc830f1ca4a2c484e7056871a1adf91bd3a0b73c6ffb517b1`  
		Last Modified: Tue, 04 Aug 2026 23:52:04 GMT  
		Size: 30.3 MB (30259620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b90474118f24ba07f8f7b93c67fb3bdee62e15692654b910ac9c84846de459e`  
		Last Modified: Tue, 18 Aug 2026 20:51:24 GMT  
		Size: 94.5 MB (94524364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03fdda29836e898bf4bc34fc2221e1106a8619b4a509180a4b90ac4cee620d67`  
		Last Modified: Tue, 18 Aug 2026 20:51:23 GMT  
		Size: 15.6 MB (15643332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7efe8580fec29a628ac68eae7ce66a5db2da2d59b7c5fdc47f21fd5f0bdebae2`  
		Last Modified: Tue, 18 Aug 2026 20:51:22 GMT  
		Size: 4.5 MB (4515189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5b55981a130b8b56ac823bf3ee3d21fdd77d08817badad5fe563b04db14ab48`  
		Last Modified: Tue, 18 Aug 2026 20:51:22 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:37050d9a5b5fc6925c4c099f8e4248f32a5429d6cb33912389c66bd9bb982bf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3024972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:879f9508a555d1380f60c6326066616a941404cbd336d87a4c21c35ff0a972bf`

```dockerfile
```

-	Layers:
	-	`sha256:89e364e627dac46bda55c6cd8dba1c8f56f5568189a8fd9299e54ebd67155a9d`  
		Last Modified: Tue, 18 Aug 2026 20:51:22 GMT  
		Size: 3.0 MB (3007206 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0bb119396a2be3da063f95e49de86da15a4e1b40c8774c11eff92b32c6bbbae9`  
		Last Modified: Tue, 18 Aug 2026 20:51:22 GMT  
		Size: 17.8 KB (17766 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:3113beea83842e377710897f788e518a11bffddbdb2bb3e2fba0d50c542ec1a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.4 MB (142400340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89b49fafea6ca9f66f6987b5357aecdc492a61ba9de8492f546b5d119db3b60c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Tue, 18 Aug 2026 20:49:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:49:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:49:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:49:53 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:49:53 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:49:53 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:51:04 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:51:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:51:04 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:51:05 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:51:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:51:05 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:51:05 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:93e0ff6a69cbbe5e567bea0ae7560cdd816fd4205541e7cb6b0fd3998b169541`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 28.7 MB (28748907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03bee9951dfc49cbf51d44da02cbc42e759b566403175dab9a8019d20f9d7d78`  
		Last Modified: Tue, 18 Aug 2026 20:51:24 GMT  
		Size: 93.5 MB (93504345 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7b3e7b415391a81d256841e75fc329c3321021838e060638c7a0b620dcdf50b`  
		Last Modified: Tue, 18 Aug 2026 20:51:22 GMT  
		Size: 15.6 MB (15631482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bb819d439a6c7f00bd1100ce8da3a5b4a14e52676cd566e763404f042c8724d`  
		Last Modified: Tue, 18 Aug 2026 20:51:22 GMT  
		Size: 4.5 MB (4515176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5b55981a130b8b56ac823bf3ee3d21fdd77d08817badad5fe563b04db14ab48`  
		Last Modified: Tue, 18 Aug 2026 20:51:22 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4391ad8e22b69bc2aee592a8f4d4bf9c6514cea114e80a957c5f34b86e2df336
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3024699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8391fb070273bfb6448e019a61f4b3c1d72314085501608a6dd6b79ba91f6435`

```dockerfile
```

-	Layers:
	-	`sha256:0cd4815431f0e9e2a1deabccb508a78876804008c93cb04990d314ee965b9f67`  
		Last Modified: Tue, 18 Aug 2026 20:51:22 GMT  
		Size: 3.0 MB (3006812 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e274789464e75366b804e4f6d743783b956592f6bb27100521b5e28831d1cfc9`  
		Last Modified: Tue, 18 Aug 2026 20:51:21 GMT  
		Size: 17.9 KB (17887 bytes)  
		MIME: application/vnd.in-toto+json
