## `clojure:temurin-17-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:38ec7013b738dcd4eff4895d649f10037f312e3df5399e5ba88afbe7011b624c
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

### `clojure:temurin-17-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:503a215e8650f55184b0ea11e1a54027a92b2fe917b49a5633a2ca33541ac737
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.6 MB (218556830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a13e6023895c3b9bc8fba7a0a715001530c900af52d3ec38378f1dbc9207c28f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:27:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:27:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:27:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:27:25 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 01:27:25 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:27:25 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:28:41 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:28:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:28:41 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:28:42 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:28:42 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:28:42 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:28:42 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16b2a1f5bd6d4ddbfec8e7912438453a215ef567fc1a02e91b105b301e5fd996`  
		Last Modified: Tue, 25 Aug 2026 01:29:04 GMT  
		Size: 145.8 MB (145822657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab654e034c08ea3dc43a736bafea4b0ec169a65bfef26c613472b9c62e267c95`  
		Last Modified: Tue, 25 Aug 2026 01:29:01 GMT  
		Size: 18.9 MB (18880729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed400e53465211d517dceb7f9809a14c99837c1753ff8aaf009c985715c0e0c5`  
		Last Modified: Tue, 25 Aug 2026 01:29:00 GMT  
		Size: 4.5 MB (4515187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3dcbc1a29c81a344043d081cd7db649a6ef02b32c8a7c115b6deb800009254f`  
		Last Modified: Tue, 25 Aug 2026 01:29:00 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:928bef24ce5680711affb79815583ad1b2be4a76deee133d066f0409e0b1b8dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3840550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:408b4d36caf4d63cc1cc6ce88345fee9fd3e6ec91be16d31a27ea2c5a51092c8`

```dockerfile
```

-	Layers:
	-	`sha256:dd16f91cb3bf969c1ad1228f7c660629aab3f34dca1ec265ec122dfe47852264`  
		Last Modified: Tue, 25 Aug 2026 01:29:00 GMT  
		Size: 3.8 MB (3822832 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d36029b1f07d471b38d676fea4368dcaa2179dd760976adcd3801ab4f97e6e08`  
		Last Modified: Tue, 25 Aug 2026 01:29:00 GMT  
		Size: 17.7 KB (17718 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:69eca9620923ae5874faccec1611167b9564bad8c11363f459f61a5097b15746
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.7 MB (217707621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cacc653d8f6b78e26eb27da32aaa412df3f7ae1641b423f491e689e1c0559eb5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:31:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:31:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:31:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:31:55 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 01:31:55 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:31:55 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:33:11 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:33:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:33:11 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:33:13 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:33:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:33:13 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:33:13 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8681d562a33656240c50e152ed299d21c73c322fe9ad409904756db8e08418af`  
		Last Modified: Tue, 25 Aug 2026 01:33:34 GMT  
		Size: 144.6 MB (144647501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:933577b4199133cefa9561d96f020f99a523152a060bbe3c585a718eb2a61588`  
		Last Modified: Tue, 25 Aug 2026 01:33:31 GMT  
		Size: 18.8 MB (18839623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c579c1189ac28d465c38a5a1c5df7474594c03f7c532bb666a41744ade1e7a02`  
		Last Modified: Tue, 25 Aug 2026 01:33:31 GMT  
		Size: 4.5 MB (4515214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a1ecff0b73318f494e2313994b512923217e2eb79eadc3c00a81c03f45e0f8d`  
		Last Modified: Tue, 25 Aug 2026 01:33:30 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:2c30a467aa121dcf5ab52ff4e2b89802b9da9559f653dd0819cd3afdf5df6100
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3840911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5754323db1202f963f55f5c3846d0d2908cbb303d2cc0e4d186fc5c2822bd553`

```dockerfile
```

-	Layers:
	-	`sha256:bb97af15e5da060edc018553a1f7cd0fcf443b603ce2a871c93c180457365b5c`  
		Last Modified: Tue, 25 Aug 2026 01:33:30 GMT  
		Size: 3.8 MB (3823072 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7385dccb5e2d9f5f5aeaf0f68c31d58375d4937269aca194cc19402c9950cf86`  
		Last Modified: Tue, 25 Aug 2026 01:33:30 GMT  
		Size: 17.8 KB (17839 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:16f5afc89d142e9a698d73bad6df3b0a5cf63dc3f1f00e7739c54b77bebbd44d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.3 MB (222290764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68863294a40856632245e9ef361738cca472ca5d05c01c1b9b5fe7d5cdad5a13`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 08:21:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 08:21:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 08:21:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 08:21:36 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 08:21:36 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 08:21:36 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 08:25:11 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 08:25:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 08:25:11 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 08:25:14 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 08:25:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 08:25:15 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 08:25:15 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:325684583cfb9d8f4ad29d21cf8ea44a6f7d66b1d18f3941dfd457c2584e0f74`  
		Last Modified: Tue, 25 Aug 2026 08:25:57 GMT  
		Size: 145.7 MB (145674314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d1cf85083c3dd925bf0cea7cfb815deaab44589d7181b0d67df3a6626549a4d`  
		Last Modified: Tue, 25 Aug 2026 08:25:54 GMT  
		Size: 18.9 MB (18936523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e1d8437089b7238af7916ebbb43d8b8b17bdd41f1b9338e96f56aa046ec92c1`  
		Last Modified: Tue, 25 Aug 2026 08:25:53 GMT  
		Size: 4.5 MB (4515214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e02643bbbc16d07f8db53431b9ad4d406c3a6be5d2441d46d717409799f01cca`  
		Last Modified: Tue, 25 Aug 2026 08:25:53 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:91418a7751b910c744557352e4a8f11dc1f8601d483cc4363fde9d2c511e099c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3841594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f484fe80a0abb94776b0f691295108fb6d1f4141268a00eb2a09a7e5ae57c61e`

```dockerfile
```

-	Layers:
	-	`sha256:0ca247b557fe12934d9d673d59df069f022d29e387f3c623050e88e9885e306c`  
		Last Modified: Tue, 25 Aug 2026 08:25:53 GMT  
		Size: 3.8 MB (3823832 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be910b839480d05764b7cde74a1c72b5bad897cb8f943666da1c3f313568c00c`  
		Last Modified: Tue, 25 Aug 2026 08:25:53 GMT  
		Size: 17.8 KB (17762 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:b4bdddedcbbc31fae1d979f003fce339bd9f00fbddca06df026f25ce9642afaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.7 MB (208715595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:878df4ec2938e82af52f4f78a2e31f8cc2694bec157f83550e0db7e35547ccfe`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 02:06:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 02:06:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 02:06:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 02:06:17 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 02:06:17 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 02:06:17 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 02:07:38 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 02:07:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 02:07:38 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 02:07:40 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 02:07:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 02:07:40 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 02:07:40 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4415ebc808ead343ed2ff09e9ddd7fb38001c3cd021262fe1ae58bf5fa958333`  
		Last Modified: Mon, 24 Aug 2026 23:20:18 GMT  
		Size: 49.4 MB (49406697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:879a03dd8288e9de5870ec1015ec74139e6d703d9c5d69ac1f9ae16ec176ddf0`  
		Last Modified: Tue, 25 Aug 2026 02:08:06 GMT  
		Size: 135.9 MB (135871069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2db79a6dc61e108d570bc494865bfc36be8994c1de5ec021dd54db8c4a38c072`  
		Last Modified: Tue, 25 Aug 2026 02:08:04 GMT  
		Size: 18.9 MB (18922196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f65464dedb81c77cf43071c53277aba2845ba857d8a90db8b9f6d55fbac0e35d`  
		Last Modified: Tue, 25 Aug 2026 02:08:04 GMT  
		Size: 4.5 MB (4515204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4b33793a9920a82c1d9aaddacb8d075ab402c96ff7102af3d2d2c7975a2a491`  
		Last Modified: Tue, 25 Aug 2026 02:08:04 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:e9c3bb8a9e3d856af9ea42848067ebd63bc52855ff4363d6b218d0a56046a46a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3836977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0adba5942554b9271f78c8c53f76c4494037ae88b3b4061d0216fc148d39683`

```dockerfile
```

-	Layers:
	-	`sha256:0831165eaaed59b2ce3a9d2b507f339e72e01667c50ab05f2d2be3ad05c632ee`  
		Last Modified: Tue, 25 Aug 2026 02:08:04 GMT  
		Size: 3.8 MB (3819259 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f5ae4c5a545c3f9c1470468573ab77eb3dff575ea8633d8b8a3333a8bde943cc`  
		Last Modified: Tue, 25 Aug 2026 02:08:03 GMT  
		Size: 17.7 KB (17718 bytes)  
		MIME: application/vnd.in-toto+json
