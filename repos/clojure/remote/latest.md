## `clojure:latest`

```console
$ docker pull clojure@sha256:03716b5a5fd1c600b4ecd83ab016330c8095c71e21d5637ad81676299c827deb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:latest` - linux; amd64

```console
$ docker pull clojure@sha256:9c847832c26695ab663f23d803ac206d42a5273fbdcec126399babe3722512b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.8 MB (237836853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1692da881df449583072c91185b1c6ff19a3fc14954a1c82c6e53a79627c5d9d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:12:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:12:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:12:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:12:12 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 01:12:12 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 01:12:12 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:13:20 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 01:13:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 01:13:20 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 01:13:21 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 01:13:21 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:13:21 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:13:34 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:13:34 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:13:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:13:34 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:13:34 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5e33730f4aa7fdd1f8c11496783d84c37edd405a00314191880aa12fc1d43fc`  
		Last Modified: Sat, 19 Sep 2026 01:13:57 GMT  
		Size: 92.6 MB (92615084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:905976719a56a8e8655e66fba33b0d2df2e3b4f45494ed7d8bfdbd38842a8150`  
		Last Modified: Sat, 19 Sep 2026 01:13:55 GMT  
		Size: 20.1 MB (20133541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6edeb9f85b38d2ddbe14301c728ebf2015c09f92b4f7c2549d98b38afbea003b`  
		Last Modified: Sat, 19 Sep 2026 01:13:54 GMT  
		Size: 4.5 MB (4515177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd94aceebe41af596d0a00900aa52135ca76c584bdde7879debb0f89fd7e587f`  
		Last Modified: Sat, 19 Sep 2026 01:13:57 GMT  
		Size: 72.1 MB (72068538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04d8653dbffcd678d9c95ec2f0416016bc5a5cdb50673362ac538ee039c4a01e`  
		Last Modified: Sat, 19 Sep 2026 01:13:55 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d3453c377a45ef5eb5a74f5785de6eb9c23320a69d2fe192ab766167246c4b7`  
		Last Modified: Sat, 19 Sep 2026 01:13:56 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:12bb7df6c6930e9b6431ffa95317eabb071ae269e72c4d862b8e7a4d6c4dbb48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7466655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a5cfee61bd790b05223ca5a24c5c6393c707e3c194fddb40df33928c3c68e66`

```dockerfile
```

-	Layers:
	-	`sha256:1405a3c9fc99dd780fea94c9c6c84883cb8cd32e230ae99c0c1e91ae6f490ccf`  
		Last Modified: Sat, 19 Sep 2026 01:13:54 GMT  
		Size: 7.4 MB (7441680 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:89c5bef1159fc469dcdc0d81fdb31ae4064aaf6ea83c432f5177a9a9515f9e89`  
		Last Modified: Sat, 19 Sep 2026 01:13:53 GMT  
		Size: 25.0 KB (24975 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:latest` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:1b5236cef2066729f95ac77331cf797e2f0fd1814a0d51412c3c87ebca75915a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.6 MB (236625289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85fce37d1fe97ebebf50076bf8f67017334d780428049c3ef0b21bfa2ec67a36`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:19:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:19:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:19:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:19:38 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 01:19:38 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 01:19:38 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:20:46 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 01:20:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 01:20:46 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 01:20:48 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 01:20:48 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:20:48 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:21:01 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:21:01 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:21:01 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:21:01 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:21:01 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e66c748f1acc1febba202eb87e080f9fd16c1116e9f3c94c101a7c68f881f7cb`  
		Last Modified: Sat, 19 Sep 2026 01:21:23 GMT  
		Size: 91.5 MB (91532224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f6e4993649449aa221d5cce302a686d9c35d92c20ebf99d41e241faea136f42`  
		Last Modified: Sat, 19 Sep 2026 01:21:21 GMT  
		Size: 20.0 MB (19956703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8be3b24b8722b933a9c9146dee70fa53908c47d9617d6ef2ea055f084a9ea56e`  
		Last Modified: Sat, 19 Sep 2026 01:21:20 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aaf33778caf8ec889112242921c99dc1e0d238030091a92531363cf6e22171c`  
		Last Modified: Sat, 19 Sep 2026 01:21:23 GMT  
		Size: 72.2 MB (72230162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:929b5b1694c5033f3200b019636101e2bc15c00d87a4a93ce69d0ee140296f6f`  
		Last Modified: Sat, 19 Sep 2026 01:21:21 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de5c50d6527baf0cdaae827ad9815e87501f58b6244dfc7e4e014aea1a4c5ca3`  
		Last Modified: Sat, 19 Sep 2026 01:21:22 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:648477237a9883f7ecf9e77e3b5a2ca25ec32ebd5b654740bc8ef9f3c85d5046
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7472515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:579f8227d4082879039213bde0259a6dc3a3c053c6a8d71c1a27f4504bda10a6`

```dockerfile
```

-	Layers:
	-	`sha256:310deb9ef1153875f4debd606002cad348a298d43cdfd156619b791b9a318c4b`  
		Last Modified: Sat, 19 Sep 2026 01:21:20 GMT  
		Size: 7.4 MB (7447416 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1510bf2575a6e265bab19dbfb607104e511a8e1cf7bd29e7461753318c94a1e0`  
		Last Modified: Sat, 19 Sep 2026 01:21:19 GMT  
		Size: 25.1 KB (25099 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:latest` - linux; ppc64le

```console
$ docker pull clojure@sha256:0126f6c30e9f4a59c5fdf6d46180ed498aa9963a2456ba68da054c9e1a2afab1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.1 MB (246139950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dfe29599cedea671d36234f18c4cfdcc36357b92c907d97585b0a13109eddee`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Thu, 03 Sep 2026 23:58:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 03 Sep 2026 23:58:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 03 Sep 2026 23:58:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 03 Sep 2026 23:58:55 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 03 Sep 2026 23:58:55 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 03 Sep 2026 23:58:55 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:02:44 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 04 Sep 2026 00:02:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 04 Sep 2026 00:02:44 GMT
ENV LEIN_ROOT=1
# Fri, 04 Sep 2026 00:02:50 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 04 Sep 2026 00:02:50 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:02:51 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:03:44 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:03:44 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:03:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:03:45 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:03:45 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3773e458eb79072928ad9cf963ff5e5431e28ee9d9937b28b7e31b8272cf8e1`  
		Last Modified: Fri, 04 Sep 2026 00:04:38 GMT  
		Size: 91.3 MB (91255825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17787f631a015fed889a35c730ca329f60ae02a4d8ef800df76a3325020ab9e8`  
		Last Modified: Fri, 04 Sep 2026 00:04:35 GMT  
		Size: 20.3 MB (20348701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f854bf7258a3e8cf3c876c36f12a11f4f075274de2df4c65f4ea55f72ec6773`  
		Last Modified: Fri, 04 Sep 2026 00:04:34 GMT  
		Size: 4.5 MB (4515249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7f4348736b37a020504db82005b7bfec9df367a81afd061af727f12d286802a`  
		Last Modified: Fri, 04 Sep 2026 00:04:37 GMT  
		Size: 77.7 MB (77677333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57e02f15a4c4facfce2375f4b40021ad4a28670a6e69792a682f46b028f48017`  
		Last Modified: Fri, 04 Sep 2026 00:04:35 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2efec471d99cc90f42a25edc81d5299b5b692cdc3c0756c45bca17c7667c11b1`  
		Last Modified: Fri, 04 Sep 2026 00:04:36 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:0979195e0517c4a9a79f874244c656fb34f482d0f85cfc6fe5b28865ac60cefc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7455950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74386fb7b8c4dc5322572ced87e8454ae998d603ea04d1c97b1b73d8d8784333`

```dockerfile
```

-	Layers:
	-	`sha256:f7d2cb2b8d8e6bcdad12c9eee0e64fdd428e0167c0b15bd94093c4c3b239cd96`  
		Last Modified: Wed, 16 Sep 2026 10:16:56 GMT  
		Size: 7.4 MB (7430935 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:abc2287b98bb053d36e995642e93db5ef2024844dd33372724409a74748ced04`  
		Last Modified: Wed, 16 Sep 2026 10:16:56 GMT  
		Size: 25.0 KB (25015 bytes)  
		MIME: application/vnd.in-toto+json
