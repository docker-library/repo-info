## `clojure:temurin-11-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:34b33ab4fdb181b21f5d4aaa6d087aade91add4bff9fb518828c282c88e21b30
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:f956d0126ff11823bfc500f48a39827047473de8288f3f534391a27475360f0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.0 MB (196965054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc561a923f4e10e369ae96f5b6654cacee2f5de591bb941893f9515473dc040d`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 00:46:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:46:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:46:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:46:46 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 27 Oct 2026 00:46:46 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 27 Oct 2026 00:46:46 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:48:04 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 27 Oct 2026 00:48:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 27 Oct 2026 00:48:04 GMT
ENV LEIN_ROOT=1
# Tue, 27 Oct 2026 00:48:05 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 27 Oct 2026 00:48:05 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f70982520850134d499d77bb77e283fd0c16b664f433fde62d24d03e65a523ce`  
		Last Modified: Tue, 27 Oct 2026 00:48:26 GMT  
		Size: 145.9 MB (145864282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2948189586d666340bf2160c1dcd630e3d3f20c0cb3dcc0d61e440a380ad8697`  
		Last Modified: Tue, 27 Oct 2026 00:48:23 GMT  
		Size: 16.7 MB (16741990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c27e612c407a930de2ea63c2115d3ba88f3d40ffa5a708f6b4f6a66c68980a2`  
		Last Modified: Tue, 27 Oct 2026 00:48:23 GMT  
		Size: 4.5 MB (4515171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:df73bfc20430991a0105dcbab3c74f95e1afbc9a059b359f93230d45ba17279c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2407034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:232a7a6191e5bbb6e9c585d81377c81ac64ce29db52512279ca36e7665b77a01`

```dockerfile
```

-	Layers:
	-	`sha256:e6ebac1497ddc1e078cbd7cfc16856d329a09dca92e4531aa91497dfdf947304`  
		Last Modified: Tue, 27 Oct 2026 00:48:22 GMT  
		Size: 2.4 MB (2391270 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bfcec7175696fafb9997279792e38fecb32ff3f067e8a157cac5abaa554c62ef`  
		Last Modified: Tue, 27 Oct 2026 00:48:22 GMT  
		Size: 15.8 KB (15764 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:cfb07d8d6211778f96e6c4d69e2b43441b8702506dd5e383d07e122fa1e25c16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.0 MB (194010134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34167a3c97d7db87c98896b42ad968d116481d9227a8ff8f3cea37a3c4a85b8f`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 00:27:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:27:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:27:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:27:56 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 27 Oct 2026 00:27:56 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 27 Oct 2026 00:46:25 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:47:47 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 27 Oct 2026 00:47:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 27 Oct 2026 00:47:47 GMT
ENV LEIN_ROOT=1
# Tue, 27 Oct 2026 00:47:49 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 27 Oct 2026 00:47:49 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6503d56b1cac1f7254b0dd7381ac8d99aad571ec8d25d3041ad4e6df9d919885`  
		Last Modified: Tue, 27 Oct 2026 00:28:56 GMT  
		Size: 142.6 MB (142576509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:949c1a3f63707545fdc97186c3664e94ed90e2d1ec7c4949a878d5cf86c856fd`  
		Last Modified: Tue, 27 Oct 2026 00:48:02 GMT  
		Size: 16.7 MB (16717893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:512e0fd73976c1c55dd86a6f3402ef0a1176f9055c76c8d31e3a1b10644f02bf`  
		Last Modified: Tue, 27 Oct 2026 00:48:01 GMT  
		Size: 4.5 MB (4515222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:102fb0d3b863cc8387b8ab074d0f5c26928657323582a1442c344651818b58d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2406428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6e4d657f4daee5f668fd0c7a999b7e2270cce028a2d851f3e477b835913c1e9`

```dockerfile
```

-	Layers:
	-	`sha256:ae40a1f7dd01dffedb663f323cf4ab2e438830554347fef98aeb8aa159ba7aa2`  
		Last Modified: Tue, 27 Oct 2026 00:48:01 GMT  
		Size: 2.4 MB (2391498 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f6045e23970cac7ed3b75c072c1961f0e4d2a9c63a3570a05010219b16227f3`  
		Last Modified: Tue, 27 Oct 2026 00:48:01 GMT  
		Size: 14.9 KB (14930 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:14cff27cb238c18a2fdcbcc6e9edeb5df8ebd2f6bf3894be85a98a3424381b21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (188041895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67d77999195654ac077e0b5a7a87a9aa381b17df655a909a1fa36f14c24532f6`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 10:04:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 10:04:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 10:04:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 10:04:16 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 10:04:16 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 10:04:17 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:09:26 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 10:09:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 10:09:26 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 10:09:32 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 10:09:32 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dcac8f1fb37221206ec9e42f91e7f9060981927dfbb2129eed28dc10e1790b7`  
		Last Modified: Wed, 21 Oct 2026 10:10:39 GMT  
		Size: 133.1 MB (133095132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f61e5f91aff23c7f73e444db36fdb5cad49f610ce0f2ccd82f2318212bf15ae1`  
		Last Modified: Wed, 21 Oct 2026 10:10:36 GMT  
		Size: 16.8 MB (16779576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c0ccd1f29dcc9bb0c2a89cd4b0452c2879bc348936d5cf14e7ecd560937b21f`  
		Last Modified: Wed, 21 Oct 2026 10:10:35 GMT  
		Size: 4.5 MB (4515220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:99d7d1aa6892f32256d25bc504d827850e7826ee2830458582b989ae4da2469f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2407443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13a43f4b2a4ee4610a7cc30674f2f04a2261f30f78f644a198495db01c5a24a3`

```dockerfile
```

-	Layers:
	-	`sha256:186c17d594650366c0eb0af878a2b1eeb891bffab32451099b08f5802d203578`  
		Last Modified: Wed, 21 Oct 2026 10:10:35 GMT  
		Size: 2.4 MB (2391635 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3016db481cbe6e0c4b930f22a072f268908d5a1ef24b1024d67f39bb2b6eaed`  
		Last Modified: Wed, 21 Oct 2026 10:10:35 GMT  
		Size: 15.8 KB (15808 bytes)  
		MIME: application/vnd.in-toto+json
