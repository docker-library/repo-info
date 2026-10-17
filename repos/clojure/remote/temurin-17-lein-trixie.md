## `clojure:temurin-17-lein-trixie`

```console
$ docker pull clojure@sha256:6d77ecd653739d5b0dbabe7a8191a57fd64176b2ccabb3192985efec84d49807
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:511eb885f733aff3f4eb17261494e65d96401499e16b3a045d9ae597acae53c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.6 MB (218621660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89370596606d6a5816f3d49f84a0f9fe5c392f3ed02bc82d6ea6ece5b53ee499`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:48:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:48:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:48:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:48:41 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 01:48:41 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 01:48:41 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:50:05 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 01:50:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 01:50:05 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 01:50:07 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 01:50:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:50:07 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:50:07 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4846f29007305297af653c57bf9b60ba8f676a38695c68d98460063442581671`  
		Last Modified: Tue, 06 Oct 2026 00:14:13 GMT  
		Size: 49.4 MB (49393200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e69994f02a33c32b68795290338ba4176565bd4781b148eaf4c4d895810c2def`  
		Last Modified: Sat, 17 Oct 2026 01:50:28 GMT  
		Size: 145.8 MB (145825484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c8b5aa15efdd17adde5ee5145b02180b844608ff6f996b54052f104ccbce2a1`  
		Last Modified: Sat, 17 Oct 2026 01:50:26 GMT  
		Size: 18.9 MB (18887316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ab9675ce86c83b2b258fe783ded692652a809ebc613cfe1a590f086f923ed14`  
		Last Modified: Sat, 17 Oct 2026 01:50:25 GMT  
		Size: 4.5 MB (4515231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38334be951f2ec52d565fc8f8e7a9e45ba02a16a52d46ddde11f559a2889c351`  
		Last Modified: Sat, 17 Oct 2026 01:50:25 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:d3545ea354cf9d4ff9f5af8374e4ab34fef83ffca676f650c903de7e89d1fae7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3845465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04b3b2e80539389af6ce2bf14385a05b6d5ec38cd042207a4125b9b47e7b0834`

```dockerfile
```

-	Layers:
	-	`sha256:3bc4a8e25727cb71b2071b54f10a17b0666878f192a5acf2620e627bc12de14d`  
		Last Modified: Sat, 17 Oct 2026 01:50:25 GMT  
		Size: 3.8 MB (3827747 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09d813942ed18809630d6c0a9860be607c700b465b42d04797253247548ae722`  
		Last Modified: Sat, 17 Oct 2026 01:50:25 GMT  
		Size: 17.7 KB (17718 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:713e50fcce3ae574e999a74f943273508f8678df73fcb18027542ce5e72dc6ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.8 MB (217770461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a55073fb7c99746a24b827f5be31c7383f23c9720a68ae7cfee3e85876dc7259`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:49:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:49:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:49:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:49:00 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 01:49:00 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 01:49:01 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:50:25 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 01:50:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 01:50:25 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 01:50:27 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 01:50:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:50:27 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:50:27 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:df9831efb49cab24dec437e8482f2a9ddbd9e239131fa3ffe095dc1492081e1d`  
		Last Modified: Tue, 06 Oct 2026 00:13:30 GMT  
		Size: 49.8 MB (49761105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bdf19a8cf70b27167348cad153d08795e40a204d48a18fb23e8b2f7a1d30174`  
		Last Modified: Sat, 17 Oct 2026 01:50:48 GMT  
		Size: 144.6 MB (144648263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e875320f2abd5d0ac7560cb15e0922d5a3963e268c24a5b8a31aee488e70b13`  
		Last Modified: Sat, 17 Oct 2026 01:50:45 GMT  
		Size: 18.8 MB (18845456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:843d6288df5d61de7bc1dfceba403efb99b37494919d2fc701a367c970efc2da`  
		Last Modified: Sat, 17 Oct 2026 01:50:45 GMT  
		Size: 4.5 MB (4515208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:290ff4532ca0f9bb5ba604e43457c5fa86f2485a7ee625cabf88f14099cdbc03`  
		Last Modified: Sat, 17 Oct 2026 01:50:44 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:47860a59a15d53e14542592dff4a199cc865d616607234fcd2b70f8573ecfbcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3845826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:664054817d8798081ff412ea68432833fce4013d56346e6531f2baf42c8a99f5`

```dockerfile
```

-	Layers:
	-	`sha256:d3d83e5e153a5cc332d7c3b46f98f1b9d1f5fc7af78bbdaec4144c665f8d7520`  
		Last Modified: Sat, 17 Oct 2026 01:50:45 GMT  
		Size: 3.8 MB (3827987 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c807828309badc9604abc17e05d64f2c56f7e2aaf2ed82e1cd6d601d568dc170`  
		Last Modified: Sat, 17 Oct 2026 01:50:44 GMT  
		Size: 17.8 KB (17839 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:a8fbb60f9dd0bf00de9d92cd3fda097200897ebe83ab33f38b23999d91f98e0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.3 MB (222336996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7764cd1c187576b9132e18323ae5d9b06335223e2ad7a5fe695e915b4aec8d78`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 10:05:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 10:05:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 10:05:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 10:05:56 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 06 Oct 2026 10:05:56 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 06 Oct 2026 10:05:57 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 10:10:30 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 06 Oct 2026 10:10:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 06 Oct 2026 10:10:30 GMT
ENV LEIN_ROOT=1
# Tue, 06 Oct 2026 10:10:36 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 06 Oct 2026 10:10:38 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 10:10:38 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 10:10:38 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1216778738c2d0f00bc38a90447aff403e59888e07d78e8b1c4f2dde2aa2eded`  
		Last Modified: Tue, 06 Oct 2026 00:16:25 GMT  
		Size: 53.2 MB (53207124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa0f6933bd8bd26adacc595c8a148238e4b5f31352d2ec5037e049b8b2cfb52a`  
		Last Modified: Tue, 06 Oct 2026 10:11:45 GMT  
		Size: 145.7 MB (145671564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f2765749171a8ce05a90603bae15252b645f1dd15651cc7a5a99246166b6a8c`  
		Last Modified: Tue, 06 Oct 2026 10:11:42 GMT  
		Size: 18.9 MB (18942656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3de5f56ceeb4c3564f8eac82bb1279ea9c15d561d7f77a4fbf1deddc66681aa`  
		Last Modified: Tue, 06 Oct 2026 10:11:41 GMT  
		Size: 4.5 MB (4515221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb48f5abed537ddbeb9c628c0cd675090e053973fe63cfc27c845a1e049f1109`  
		Last Modified: Tue, 06 Oct 2026 10:11:41 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:f43260bf986cd46ffd0846906e2c9bb456c3702cb95abb075e627dfdefc190b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3846507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e84c826f075eedcb09b65ac718a8fd4af93af22830725501e6ded8ecc1e43078`

```dockerfile
```

-	Layers:
	-	`sha256:b367a4d5d7ada45d8685e499a703e74c5053b6aac918589381b2a0ebdf38401c`  
		Last Modified: Tue, 06 Oct 2026 10:11:41 GMT  
		Size: 3.8 MB (3828745 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6315c195374d6dab5eee97af95626079c039b8ff6c4903342e2ade59c3e14ad7`  
		Last Modified: Tue, 06 Oct 2026 10:11:41 GMT  
		Size: 17.8 KB (17762 bytes)  
		MIME: application/vnd.in-toto+json
