## `clojure:temurin-25-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:4ac680456b459e78fa315e3b11a24c47d6adc0ca25e3b7d3f6ce9ee11a888f72
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:f7155b083ef8f4b79937fe1f1fcb91e2cff708465cbd3df16ae3a9191049b6b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.9 MB (168889635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ed8c7d4a69a2329cb387a926ceba0c6389212781eb934c3e02707dba3816dee`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 03:50:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:50:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:50:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:50:09 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 09 Sep 2026 03:50:09 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 09 Sep 2026 03:50:09 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 03:51:36 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 03:51:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 03:51:36 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 03:51:37 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 03:51:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 03:51:37 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 03:51:37 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:038be36110f6893d1782a7839dc73a12765fcb8199af60951aba8380a4407b03`  
		Last Modified: Wed, 09 Sep 2026 03:51:57 GMT  
		Size: 92.6 MB (92615081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5387c91fef4dc146f20b973237806da47b111fb499b07a1df6bde959bcf9a41`  
		Last Modified: Wed, 09 Sep 2026 03:51:56 GMT  
		Size: 22.4 MB (22421103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59195b22a6c7cfa7acc87c10259f1a3aedff49610bb8e01ca7fb2cb751d850a0`  
		Last Modified: Wed, 09 Sep 2026 03:51:55 GMT  
		Size: 4.5 MB (4515194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40f948a01eddd6864026c11d4daaa8c4a5c7b8b11ee3482a59746d20d2b8024a`  
		Last Modified: Wed, 09 Sep 2026 03:51:54 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:c4a6276d26572685c457dcd527733532ffd6ab301f0bf14f0061e51cb983941d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3809207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3851a421f8209154be7308edce3fdbc9120d1d70772450a62f0760c2ce6e46b`

```dockerfile
```

-	Layers:
	-	`sha256:ba83e195a39e11531b78cf31c9b1584d1ef037b7f193266f3f8209dd71796f66`  
		Last Modified: Wed, 09 Sep 2026 03:51:55 GMT  
		Size: 3.8 MB (3790862 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e15523807d61a7ec7437dc042962c005c5ce09eba58182c392997f27ac038127`  
		Last Modified: Wed, 09 Sep 2026 03:51:54 GMT  
		Size: 18.3 KB (18345 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:1ff6da0cb4769ff29d5d24751e74f61f69e228de56c88867491986fcabe2f9ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.5 MB (168495262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2deafd7ed6fb68de20e6ab86603e492167223666f365c910d8cf53aafe57ac37`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 04:01:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 04:01:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 04:01:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 04:01:35 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 09 Sep 2026 04:01:35 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 09 Sep 2026 04:01:35 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 04:02:55 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 04:02:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 04:02:55 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 04:02:57 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 04:02:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 04:02:57 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 04:02:57 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbcbe2097816cebeb25b7f6335ba60cdf09e7090c405ca11de20e76dad6966fc`  
		Last Modified: Wed, 09 Sep 2026 04:03:18 GMT  
		Size: 91.5 MB (91532215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9ee4884bb8e26403653777ece38c453713f83e6a010afa45196033ffb814347`  
		Last Modified: Wed, 09 Sep 2026 04:03:16 GMT  
		Size: 22.7 MB (22742571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecba760d54f7113ea2ea89da10e8f19c1825b57ec772d76f75db5bbec72b44d2`  
		Last Modified: Wed, 09 Sep 2026 04:03:15 GMT  
		Size: 4.5 MB (4515193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b93c7d372ddcc4ca23ff9431f5d7a0d43c734c2b4fd9b4a2ae03865aba590af8`  
		Last Modified: Wed, 09 Sep 2026 04:03:15 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:e042bdb13b79b21004bd7eab789bf629a48721f536d5318c98d6cf4e9855f12b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3809613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fd6eda9f32bb86978060f318acd913743218eba6d33818d599e5293cf0aaf49`

```dockerfile
```

-	Layers:
	-	`sha256:2dd5fce0cd59d285e7ebedf32d98f7419537acd855cbc1f1f390088e331685b8`  
		Last Modified: Wed, 09 Sep 2026 04:03:15 GMT  
		Size: 3.8 MB (3791123 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6fdb9c9a3416b0af3571db66c358cafeb485b27756d5aa6234cde190d3b2e304`  
		Last Modified: Wed, 09 Sep 2026 04:03:15 GMT  
		Size: 18.5 KB (18490 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:43e3619bbd64e3728ee09263188596f18197876e0f1a450316846376a6da4faf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.6 MB (171645640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9541413fbfacc973bf895f4140bc025fa8df450d9bd6f4602f7f1473ccc8356`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:28:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:28:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:28:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:28:24 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 04 Sep 2026 00:28:24 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 04 Sep 2026 00:28:25 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 11:15:15 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 11:15:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 11:15:15 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 11:15:19 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 11:15:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 11:15:20 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 11:15:20 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f042512cdeeb3671805656526c674d63e4666ca8945ffdb37a0a08d4079e481`  
		Last Modified: Fri, 04 Sep 2026 00:30:08 GMT  
		Size: 91.3 MB (91255831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71cee4322e520bb54c6b66c2f6de8f1213568ef80f2efef6c0c12c1110b1d266`  
		Last Modified: Wed, 09 Sep 2026 11:15:40 GMT  
		Size: 22.7 MB (22709871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8011671975348737bdadfa7688b88f61f3f67342122e66ee292802a5ce8a52e`  
		Last Modified: Wed, 09 Sep 2026 11:15:40 GMT  
		Size: 4.5 MB (4515225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:086c8a12379ed8bc4beba672dd8aa7ce07b0ad26ed839744a1b55d7a7176b1b5`  
		Last Modified: Wed, 09 Sep 2026 11:15:39 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:c1f5c322fa104c9a4b270bd6906856486bb28847d8572bf566337219bb0b2557
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3793586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f289827b68256ab1b9f3796c57b98a3f5296aafab780f2e8eb28425211d0c46d`

```dockerfile
```

-	Layers:
	-	`sha256:342ab41e4eb8480aa081727c67c498fa7151c4fc0665f210ed55d4d7044d1519`  
		Last Modified: Wed, 09 Sep 2026 11:15:40 GMT  
		Size: 3.8 MB (3775186 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ae7203a88131d9b7eebdf77f505c2cd39065760fe4c1b2def4564e37159039a`  
		Last Modified: Wed, 09 Sep 2026 11:15:39 GMT  
		Size: 18.4 KB (18400 bytes)  
		MIME: application/vnd.in-toto+json
