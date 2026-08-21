## `clojure:temurin-25-lein-2.13.0-bullseye-slim`

```console
$ docker pull clojure@sha256:d7950ab94c12827d1b55fc5a8d9bd440ceed1baa1b23e26d490f46b586fee7e7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-25-lein-2.13.0-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:b2e2657735011622c0ef0111c2564304819a9357a5ba02a89ded1fad9c286d18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (143033221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7bf30dbe62826f02538f8d95e21c12f930dfa6673c5b58afb91bfcd740a0147`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 19:19:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:19:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:19:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:19:49 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:19:49 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:19:49 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:20:52 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:20:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:20:52 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:20:53 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:20:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:20:54 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:20:54 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ab75afe6a0f0027cc830f1ca4a2c484e7056871a1adf91bd3a0b73c6ffb517b1`  
		Last Modified: Tue, 04 Aug 2026 23:52:04 GMT  
		Size: 30.3 MB (30259620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7225a55438f283075beebbafd837628f5a3af97b7f0b720ccb4eccbd9283f6c1`  
		Last Modified: Fri, 21 Aug 2026 19:21:11 GMT  
		Size: 92.6 MB (92615092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b96a02aa661f0731476889d9017483d6a0989867b54f9f183775cfb6c3c4d205`  
		Last Modified: Fri, 21 Aug 2026 19:21:09 GMT  
		Size: 15.6 MB (15642906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ea386711a0eb650bfe29880b999ad9c510228157b3ad89a9854628e7079fb69`  
		Last Modified: Fri, 21 Aug 2026 19:21:09 GMT  
		Size: 4.5 MB (4515174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:465c0fd515e69bdb2807389164691419d93163a727cf35ff5c10e5cd012f6a23`  
		Last Modified: Fri, 21 Aug 2026 19:21:08 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e6b3e84742d0262c7da325d80c44844c764383733fc2ad48163b5c131e18b0aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3028799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7236236bbf9747e33bf61786213b9d58f15ab2bd2fcd3b2b0754f9a3a7ed18e2`

```dockerfile
```

-	Layers:
	-	`sha256:d336e0d58a164fcef792f294f7ba4f72cb2ba560d2c17d4dfa9e9b8d9af32774`  
		Last Modified: Fri, 21 Aug 2026 19:21:08 GMT  
		Size: 3.0 MB (3010371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c80dac6514a08e7a4d7e6c7f1d6be7115dbdb1ca5df1d0981ea4d9e0ac875d94`  
		Last Modified: Fri, 21 Aug 2026 19:21:08 GMT  
		Size: 18.4 KB (18428 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f7852235a4c447a63d38000c37b4252e17cfdbcda2684caeeacb17864a612b64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.4 MB (140428002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c95334eef6fca3952c2f0b9d316b829c4f9f3855f8d05340d7c84704f79c6893`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 19:08:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:08:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:08:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:08:04 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:08:04 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:08:04 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:09:13 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:09:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:09:13 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:09:15 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:09:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:09:15 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:09:15 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:93e0ff6a69cbbe5e567bea0ae7560cdd816fd4205541e7cb6b0fd3998b169541`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 28.7 MB (28748907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:601876c1ab80273271881a45bf017a511f624f221bf0f2541aaca2fbdf6d6d15`  
		Last Modified: Fri, 21 Aug 2026 19:09:34 GMT  
		Size: 91.5 MB (91532202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4d33d2cb030a3d4d3868dd5b9020077d414c6158ec8ff22f9249d9dce8a135f`  
		Last Modified: Fri, 21 Aug 2026 19:09:32 GMT  
		Size: 15.6 MB (15631265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8bdebc26b6e686e0915c62a91503dc4aa3e835548addd7d63b264640bde3cf`  
		Last Modified: Fri, 21 Aug 2026 19:09:31 GMT  
		Size: 4.5 MB (4515199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:686f4cc3fefea77867b64e028b96cf216a8e2ee005e15398524471ad65e5082b`  
		Last Modified: Fri, 21 Aug 2026 19:09:31 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:aba0aaddc6c1a0ee002869e1f726282e97a743ee0dd3b62c1921b814946347ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3028574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef27de2e7538f1d3f9cbb7c3bbe4f910f0a68b7d50eec57341b471f661492307`

```dockerfile
```

-	Layers:
	-	`sha256:4dbd4ccf1af66f71ab8cea0c9e95ff69fa3319b4c38ec3dd26f7a79551b76a53`  
		Last Modified: Fri, 21 Aug 2026 19:09:31 GMT  
		Size: 3.0 MB (3010001 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7aa817895d5cf0ffd598c8737a5ffb54a5b28f09d58fc0992cbe1d614c6f96a6`  
		Last Modified: Fri, 21 Aug 2026 19:09:31 GMT  
		Size: 18.6 KB (18573 bytes)  
		MIME: application/vnd.in-toto+json
