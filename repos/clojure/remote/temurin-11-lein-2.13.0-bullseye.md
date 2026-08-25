## `clojure:temurin-11-lein-2.13.0-bullseye`

```console
$ docker pull clojure@sha256:8ef7f7f12df7db55bc72b37397700d936452f65a52f955dde7d44752e92e7d81
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-11-lein-2.13.0-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:853916295db52a97f537c082d93370c18783192e30855bba8d075c9e932947f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.1 MB (221094396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1fde6507c116265b46f9d458354a437041b094701f94cc7ad565425345eeafd`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:25:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:25:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:25:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:25:39 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 01:25:39 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:25:39 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:26:51 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:26:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:26:51 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:26:52 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:26:52 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:94b0efe6d4f788b1b894c04a6c6885d53a41bcd0b85757fffacd2bc4de142847`  
		Last Modified: Mon, 24 Aug 2026 23:20:41 GMT  
		Size: 53.8 MB (53777392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6429775844f935ee0218303c9136052f64299b7758e8fd7b1281b6c3d8dced3`  
		Last Modified: Tue, 25 Aug 2026 01:27:16 GMT  
		Size: 145.9 MB (145861401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73ba4e5707dad2bd694c7cdb49610bfaa91051d415247740b0d2bd0825fb98dc`  
		Last Modified: Tue, 25 Aug 2026 01:27:13 GMT  
		Size: 16.9 MB (16940400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63c5459d68f689473f18e4fbee8d825f3e5b136d56a1b0299aaa669180f3a0a4`  
		Last Modified: Tue, 25 Aug 2026 01:27:13 GMT  
		Size: 4.5 MB (4515171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:c401b4ec154dc34dc679c1961f8af7e2dee0e5f75b6ae446f406555646f0c4a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4541492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae0d1e07fd6f8b5b18df76f86ae90d9a1692c55f24ca56e779e477af7b64c5c6`

```dockerfile
```

-	Layers:
	-	`sha256:8a23bd728ea3b1046d0059684d277845ef06274ec1c6a999fc6c0e64b2658f72`  
		Last Modified: Tue, 25 Aug 2026 01:27:13 GMT  
		Size: 4.5 MB (4525744 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a6d49dd089172491ec2feceb0206b13a9cdf918f16d6b1b4f0e1b9782395518e`  
		Last Modified: Tue, 25 Aug 2026 01:27:13 GMT  
		Size: 15.7 KB (15748 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d7bc415236dee22327d2a5d6b40260a06dd53f055fc304008b237e39cd62881b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.3 MB (216273903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de50dd79a89316d1f271c03bf79c231962e958275c508086190f14d25fde676e`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:29:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:29:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:29:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:29:57 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 01:29:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:29:57 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:31:07 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:31:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:31:07 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:31:08 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:31:08 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:efeeefc1421af2e3b9b27f2b236e6fca6b6df5f1f1d5919c2608f27cc4503c31`  
		Last Modified: Mon, 24 Aug 2026 23:20:19 GMT  
		Size: 52.3 MB (52261343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:071a7a86657f76b00c335f6e7b150d2c8345989689d3a1cbcbc75295f5247119`  
		Last Modified: Tue, 25 Aug 2026 01:31:29 GMT  
		Size: 142.6 MB (142566596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cb3900d4de2bdca4f5544be9ac96c761e5a904849bf5f156b115f3cadd9ac79`  
		Last Modified: Tue, 25 Aug 2026 01:31:26 GMT  
		Size: 16.9 MB (16930743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:668baa313ecafe69aa8c8cae4770d44c1bf2583071b68bdb89fdb97a8ca05b90`  
		Last Modified: Tue, 25 Aug 2026 01:31:26 GMT  
		Size: 4.5 MB (4515189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:95828b41d237a14e3db56ae5dd3211407fa6b4a4ceb192bb5101482091f45712
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4541205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a826a9982005cbc045e5026383ac5b8160877c6bd28213431ff1edf1d0bf798`

```dockerfile
```

-	Layers:
	-	`sha256:584af1d22a043f5a46489c9eb3283addc3b6225cb038189237931fcfa20779d6`  
		Last Modified: Tue, 25 Aug 2026 01:31:26 GMT  
		Size: 4.5 MB (4525336 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a52a410a2615cd047b5e9f1c6fc0d0fbce6a70462a0ddde93cd41531c1115de`  
		Last Modified: Tue, 25 Aug 2026 01:31:25 GMT  
		Size: 15.9 KB (15869 bytes)  
		MIME: application/vnd.in-toto+json
